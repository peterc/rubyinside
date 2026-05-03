---
title: Providing context for Rails’ controller action
date: '2006-07-13'
author: Peter Cooper
author_slug: admin
post_id: 143
slug: providing-context-for-rails-controller-action-143
url: "/providing-context-for-rails-controller-action-143.html"
categories:
- cool
- elsewhere
- ruby-on-rails
---

{{< rawhtml >}}
<p>There are many scenarios where you might want the same controller action / method in your Rails application to perform multiple functions. For example, a wizard with multiple steps or a single form with multiple-stage AJAX calls. What you want to do is provide a 'context' to the specific request and have the controller handle that in some different way.</p>
<p>Until now, one way to do this would be to use a parameter on the URL (e.g.: <em>http://yourapp/post/show/1?stage=something_here</em>) and then simply branch the logic based on the parameter. <a href="http://codefluency.com/">Bruce Williams</a> saw an opportunity to make things a little better, and has developed <a href="http://codefluency.com/articles/2006/07/01/rails-views-getting-in-context/">in_context</a>. It still uses a parameter on the URL or in the request, but he made the branching mechanism somewhat cleaner.</p>
<p>The <a href="http://codefluency.com/articles/2006/07/01/rails-views-getting-in-context/">in_context page</a> provides the best info, but here's a quick demonstration of the branching:</p>
<pre><span class="ident">render</span> <span class="symbol">:update</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">page</span><span class="punct">|</span>
	<span class="comment"># Stuff at this point happens regardless of context</span>
	<span class="ident">in_context</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">context</span><span class="punct">|</span>
		<span class="ident">context</span><span class="punct">.</span><span class="ident">nil?</span> <span class="keyword">do</span>
			<span class="comment"># This happens if no context is passed</span>
		<span class="keyword">end</span>
   		<span class="ident">context</span><span class="punct">.</span><span class="ident">workflow_one</span> <span class="keyword">do</span>
			<span class="comment"># One workflow goes through here..</span>
   		<span class="keyword">end</span>
   		<span class="ident">context</span><span class="punct">.</span><span class="ident">workflow_two</span> <span class="keyword">do</span>
     		<span class="comment"># And another through here..</span>
   		<span class="keyword">end</span>
 	<span class="keyword">end</span>
<span class="keyword">end</span>
</pre>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Danno</strong> &middot; <time datetime="2006-07-13T04:18:00+00:00">July 13, 2006 at 4:18 am</time></p>
      <p>Sounds a lot like how Continuation based frameworks work, except you can even undo steps in those.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jerrett</strong> &middot; <time datetime="2006-07-13T21:39:00+00:00">July 13, 2006 at 9:39 pm</time></p>
      <p>it kinda looks like it's just a glorified case statement on params[:context] ... </p><p>only i think a case statement might actually be a bit cleaner here</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bruce</strong> &middot; <time datetime="2006-07-16T19:04:00+00:00">July 16, 2006 at 7:04 pm</time></p>
      <p>Essentially it *is* a case statement.  The plus here is you don't need to know what the param being passed is (especially if you're using the helpers on the view side), and that is reads differently than data manipulation code in your actions (ie, case statements, ifs, etc)-- it's a bit of syntactic sugar.</p><p>It's just an abstraction I find useful, considering the size of my application and how often I have to deal with different workflows.  I would probably use a case statement if didn't have to look at it so often.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
