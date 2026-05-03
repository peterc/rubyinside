---
title: 'Ruby Refinements: An Overview of a New Proposed Ruby Feature'
date: '2010-12-06'
author: Peter Cooper
author_slug: admin
post_id: 3978
slug: ruby-refinements-an-overview-of-a-new-proposed-ruby-feature-3978
url: "/ruby-refinements-an-overview-of-a-new-proposed-ruby-feature-3978.html"
categories:
- controversy
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2010/12/finches.png" width="130" height="105" alt="finches.png" style="float:left; margin-right:12px; margin-bottom:12px;">Significant and serious improvements to the core Ruby language come along as infrequently as TextMate updates. Given that TextMate has had an update recently, an important new Ruby feature was sure to be just around the corner and it is: <a href="http://timeless.judofyr.net/refinements-in-ruby">refinements</a>! Shugo Maeda (who works with Matz and developer of mod_ruby) <a href="http://www.rubyconf.org/presentations/51">presented</a> the idea at RubyConf 2010 last month.</p>
<p>In a nutshell, refinements clear up the messiness of Ruby's monkey patching abilities by letting you override methods within a <i>specific</i> context only. Magnus Holm has done <a href="http://timeless.judofyr.net/refinements-in-ruby">a great write up of the concepts involved</a>, and presents a good example:</p>
<pre><span class="keyword">module </span><span class="module">TimeExtensions</span>
  <span class="ident">refine</span> <span class="constant">Fixnum</span> <span class="keyword">do</span>
    <span class="keyword">def </span><span class="method">minutes</span><span class="punct">;</span> <span class="constant">self</span> <span class="punct">*</span> <span class="number">60</span><span class="punct">;</span> <span class="keyword">end</span>
  <span class="keyword">end</span>
<span class="keyword">end</span>

<span class="keyword">class </span><span class="class">MyApp</span>
  <span class="ident">using</span> <span class="constant">TimeExtensions</span>

  <span class="keyword">def </span><span class="method">initialize</span>
    <span class="ident">p</span> <span class="number">2</span><span class="punct">.</span><span class="ident">minutes</span>
  <span class="keyword">end</span>
<span class="keyword">end</span>

<span class="constant">MyApp</span><span class="punct">.</span><span class="ident">new</span>    <span class="comment"># =&gt; 120</span>
<span class="ident">p</span> <span class="number">2</span><span class="punct">.</span><span class="ident">minutes</span>  <span class="comment"># =&gt; NoMethodError</span></pre>
<p>In this example, rather than adding the <code>minutes</code> method to the <code>Fixnum</code> class in the typical way, it's been added as a "refinement" within a module which is then used elsewhere to spread the context of the change. Going a step further, <code>minutes</code> could be defined on <code>Fixnum</code> in many different ways within different classes and none of them would tread on each other's toes (or, at least, this could be mitigated).</p>
<h3>Good for Rails?</h3>
<p>Shortly after Magnus' explanation, Yehuda Katz stepped in with his own take in <a href="http://yehudakatz.com/2010/11/30/ruby-2-0-refinements-in-practice/">Ruby 2.0 Refinements in Practice</a> - mostly focused around the impact refinements could have on Rails. Refinements seem particularly useful in the context of Rails considering how much monkeypatching ActiveSupport does in implementing methods like <code>minutes</code>, <code>days</code>, and so forth.</p>
<p>Yehuda also looks at a situation where monkey patches in one library tread on the patches made in another library and how refinements could help clear things up.</p>
<h3>Not so Good for Implementations?</h3>
<p>Charles Oliver Nutter (of the JRuby team) <a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-core/33487">also wrote up his take</a>, and it's somewhat less positive. He argues that implementing refinements will reduce performance across the board and introduce several structural complexities, especially around the combination of runtime-mutable lexical scoping structures, concurrency, and method caching concerns.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>raggi</strong> &middot; <time datetime="2010-12-06T03:02:00+00:00">December 6, 2010 at 3:02 am</time></p>
      <p>Have fun debugging that.</p><p>Hint: you're going to have to walk up frames to see what methods are what.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>postmodern</strong> &middot; <time datetime="2010-12-06T06:33:00+00:00">December 6, 2010 at 6:33 am</time></p>
      <p>I wish `include` and modules always had this behaviour. Also the performance implications scare me a bit, better to wait and see.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>joesb</strong> &middot; <time datetime="2010-12-06T09:48:00+00:00">December 6, 2010 at 9:48 am</time></p>
      <p>@reggi: </p><p>I think you got it backward, what you described was what already happens with Ruby's monkey patching. </p><p>The point of refinement is so that you don't have to walk up the frames to know what refinement are applied; it's supposed to be psuedo-lexically scoped.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>seydar</strong> &middot; <time datetime="2010-12-06T13:13:00+00:00">December 6, 2010 at 1:13 pm</time></p>
      <p>@raggi, could you elaborate more on your concern? It sounds like it will be just as hard as normal debugging with modules.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>skrat</strong> &middot; <time datetime="2010-12-06T16:05:00+00:00">December 6, 2010 at 4:05 pm</time></p>
      <p>Patching the patches with a language feature. Monkey patching IS NOT a feature of Ruby, it's programmers' bad practice, mostly popular thanks to monstrosity of ActiveSupport and such. Have to agree with raggi, debugging hell. But still an improvement over current status. I mean, what price are you willing to pay for 1.day?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dave</strong> &middot; <time datetime="2010-12-06T23:02:00+00:00">December 6, 2010 at 11:02 pm</time></p>
      <p>Why have ruby-core preferred refinements over classboxes?</p><p>Refinements do not have local rebinding which leads, in my view, to some really counter-intuitive results (see <a href="http://goo.gl/4P4Wa" rel="nofollow">http://goo.gl/4P4Wa</a> slide 39 and here <a href="http://goo.gl/p7ReQ" rel="nofollow">http://goo.gl/p7ReQ</a>).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Christian Romney</strong> &middot; <time datetime="2010-12-07T00:00:00+00:00">December 7, 2010 at 12:00 am</time></p>
      <p>&gt; I mean, what price are you willing to pay for 1.day</p><p>A pretty high one, especially given the fact that I've never had a problem with that particular method. Now, I concede that I wouldn't wish for a world where every library extended base types on a whim. But having a few basic libraries specifically devoted to providing extended functionality (think Facets) seems like a good idea to me. Then application developers can leverage them if they so desire. The problem only comes when library designers introduce dependencies and haphazardly or without adequate documentation.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Guoliang Cao</strong> &middot; <time datetime="2010-12-08T15:47:00+00:00">December 8, 2010 at 3:47 pm</time></p>
      <p>I like this in general. It is a much better alternative to monkey-patching. If the performance impact is really a issue, then maybe we should have a second thought.</p><p>Introduce two keywords for one single feature is a little too much though. "using" is not necessary here and "include" will suffice because refinements are new and include can be extended to handle them.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
