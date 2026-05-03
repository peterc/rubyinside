---
title: Publish Your Ruby Documentation on Github with Rdoc.info
date: '2009-06-19'
author: Peter Cooper
author_slug: admin
post_id: 1844
slug: publish-your-ruby-documentation-on-github-with-rdocinfo-1844
url: "/publish-your-ruby-documentation-on-github-with-rdocinfo-1844.html"
categories:
- miscellaneous
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2009/06/cthuluoooo.png" width="91" height="83" alt="cthuluoooo.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"><em>This post is by <a href="http://mattsears.com/">Matt Sears</a> of <a href="http://littlelines.com/">Littlelines</a>.</em></p>
<p><a href="http://rdoc.info">Rdoc.info</a> is simple web service that uses <a href="http://yard.soen.ca">YARD</a> (a documentation generation tool for Rubyists) to generate documentation for Ruby libraries hosted on <a href="http://www.github.com/">Github.</a> If you’re not familiar with YARD, it allows you to add metadata to Ruby documentation similar to other languages such as Java and Objective-C. Another cool thing about YARD is its extensibility and allowing you to plug in custom handlers and output.</p>
<p>Rdoc.info, <a href="http://blog.zerosum.org/2009/4/29/rdoc-info">announced</a> in April, was launched as a side project by Nick Plante. Nick leveraged Github’s <a href="http://github.com/guides/post-receive-hooks">post-receive-hooks</a> to automatically generate and host Ruby documentation each time a Github project receives a commit. As a standalone work, Rdoc.info is a smart and simple idea. But wait, there’s more!</p>
<p>Nick teamed up with Jeff Rafter and took the project a step further by making the documentation available on Github itself. Jeff put together <a href="http://neverlet.be/2009/5/14/github-has-an-apps-platform">Github Has An Apps Platform</a>, a splendid article on how they made this possible. The end result, a sleek RDoc browser hosted at <a href="http://docs.github.com">docs.github.com</a> allowing you to quickly view methods, namespaces, and the source code all within Github.</p>
<p>While still young, this project shows a lot of promise. Many popular Ruby libraries have already added their documentation to Github. Projects like <a href="http://docs.github.com/rack/rack/">Rack</a>, <a href="http://docs.github.com/dchelimsky/rspec">Rspec</a>, and <a href="http://docs.github.com/sinatra/sinatra/">Sinatra</a> to name a few.</p>
<p>To get your documentation on Github, check out the instructions available on the <a href="http://docs.github.com">docs.github.com</a>.</p>
<div style="background-color: #ffd; padding: 8px; font-family: verdana; font-size: 12px">
<a href="http://mobileorchard.com/inside" rel="nofollow"><img src="/assets/2009/06/rupho.png" width="74" height="40" alt="rupho.png" style="float:left; margin-right:12px;"></a><em>Also worth seeing.. </em> <strong>Mobile Orchard's <a href="http://mobileorchard.com/ri">Beginning iPhone Programming Workshop</a>.</strong>  Bay Area/July 30-31.  Seattle/Aug 20-21. Ruby Inside discount of $200 -- use "ri" discount code.</div>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2009-06-23T19:34:00+00:00">June 23, 2009 at 7:34 pm</time></p>
      <p>I suppose this is as good a place as any to note my own site:</p><p><a href="http://allgems.faithpromotingstories.org/gems" rel="nofollow">http://allgems.faithpromotingstories.org/gems</a></p><p>lists all the (currently rubyforge) gems *with their rdocs* and is very nice.</p><p>Slightly different niche.<br>
Cheers!<br>
-=r</p>
    </li>
      <li>
      <p class="comment-meta"><strong>trans</strong> &middot; <time datetime="2009-06-24T01:07:00+00:00">June 24, 2009 at 1:07 am</time></p>
      <p>Nice. I am impressed by this integration.</p><p>A couple of points:</p><p>1. The RDocs are old school. It would be nice to see a more modern template used.</p><p>2. It states that it is based on Gihub Pages. How is that?</p><p>Thanks.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
