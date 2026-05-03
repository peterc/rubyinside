---
title: Create “Exception Filters” in Rails Using Execeptional
date: '2006-12-03'
author: Peter Cooper
author_slug: admin
post_id: 316
slug: create-exception-filters-in-rails-using-execeptional-316
url: "/create-exception-filters-in-rails-using-execeptional-316.html"
categories:
- cool
- enterprise
- ruby-on-rails
---

{{< rawhtml >}}
<p><a href="http://nullstyle.com/">Scott Fleckenstein</a> has developed a plugin for Ruby on Rails called <a href="http://nullstyle.com/home/exceptional">Exceptional</a> that 'brings exception handling into the world of Rails filters'. The code speaks for itself on this one:</p>
<pre><span class="keyword">class </span><span class="class">SampleController</span> <span class="punct">&lt; </span> <span class="constant">ApplicationController</span>
  <span class="ident">handles</span> <span class="constant">AccessDeniedError</span><span class="punct">,</span>
    <span class="symbol">:with</span> <span class="punct">=&gt;</span> <span class="symbol">:access_denied</span><span class="punct">,</span>
    <span class="symbol">:only</span> <span class="punct">=&gt;</span> <span class="punct">[</span><span class="symbol">:supah_sekret_akshun</span><span class="punct">]</span>

  <span class="keyword">def </span><span class="method">supah_sekret_akshun</span>
    <span class="punct">...</span>
    <span class="keyword">raise</span> <span class="constant">AccessDeniedError</span>
    <span class="punct">...</span>
  <span class="keyword">end</span>

  <span class="ident">private</span>
  <span class="keyword">def </span><span class="method">access_denied</span>
    <span class="ident">render</span> <span class="symbol">:text</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">no, u kant</span><span class="punct">'</span>
  <span class="keyword">end</span>
<span class="keyword">end</span></pre>
<p>There's a bit more to it than that, so check out <a href="http://nullstyle.com/home/exceptional">the official plugin site</a> for examples and how to download the plugin.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Danno</strong> &middot; <time datetime="2006-12-03T04:35:00+00:00">December 3, 2006 at 4:35 am</time></p>
      <p>This sort of reminds me of Lisp's before, after, and around AOP stuff for the CLOS.</p><p>I know there were some people yakking about AOP libraries on the Ruby List a long while ago... know of any developments in that area?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-12-03T04:41:00+00:00">December 3, 2006 at 4:41 am</time></p>
      <p>Are you referring to <a href="http://aspectr.sourceforge.net/" rel="nofollow">AspectR?</a> Unfortunately that page seems kinda old now, although I'm sure I heard something more recent about it..</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
