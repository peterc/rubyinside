---
title: RubyNode – Like ‘.inspect’ but for code instead of data
date: '2006-06-18'
author: Peter Cooper
author_slug: admin
post_id: 102
slug: rubynode-like-inspect-but-for-code-instead-of-data-102
url: "/rubynode-like-inspect-but-for-code-instead-of-data-102.html"
categories:
- cool
- elsewhere
- miscellaneous
- ruby-tricks
---

{{< rawhtml >}}
<p><a href="http://rubynode.rubyforge.org/">RubyNode</a> is an interesting Ruby library that spits out semantic representations of code much in the same way the <em>inspect</em> method does with data. Here's a demo:</p>
<pre><span class="punct">&gt;&gt;</span> <span class="keyword">def </span><span class="method">plus_1</span><span class="punct">(</span><span class="ident">x</span><span class="punct">)</span>
<span class="punct">&gt;&gt;</span>   <span class="ident">x</span> <span class="punct">+</span> <span class="number">1</span>
<span class="punct">&gt;&gt;</span> <span class="keyword">end</span>
<span class="punct">=&gt;</span> <span class="constant">nil</span>
<span class="punct">&gt;&gt;</span> <span class="ident">pp</span> <span class="ident">method</span><span class="punct">(</span><span class="symbol">:plus_1</span><span class="punct">).</span><span class="ident">body_node</span><span class="punct">.</span><span class="ident">transform</span>
<span class="punct">[</span><span class="symbol">:scope</span><span class="punct">,</span>
 <span class="punct">{</span><span class="symbol">:next=</span><span class="punct">&gt;</span>
   <span class="punct">[</span><span class="symbol">:block</span><span class="punct">,</span>
    <span class="punct">[[</span><span class="symbol">:args</span><span class="punct">,</span> <span class="punct">{</span><span class="symbol">:rest=</span><span class="punct">&gt;-</span><span class="number">1</span><span class="punct">,</span> <span class="symbol">:cnt=</span><span class="punct">&gt;</span><span class="number">1</span><span class="punct">,</span> <span class="symbol">:opt=</span><span class="punct">&gt;</span><span class="constant">false</span><span class="punct">}],</span>
     <span class="punct">[</span><span class="symbol">:call</span><span class="punct">,</span>
      <span class="punct">{</span><span class="symbol">:args=</span><span class="punct">&gt;[</span><span class="symbol">:array</span><span class="punct">,</span> <span class="punct">[[</span><span class="symbol">:lit</span><span class="punct">,</span> <span class="punct">{</span><span class="symbol">:lit=</span><span class="punct">&gt;</span><span class="number">1</span><span class="punct">}]]],</span>
       <span class="symbol">:mid=</span><span class="punct">&gt;:+,</span>
       <span class="symbol">:recv=</span><span class="punct">&gt;[</span><span class="symbol">:lvar</span><span class="punct">,</span> <span class="punct">{</span><span class="symbol">:vid=</span><span class="punct">&gt;</span><span class="symbol">:x</span><span class="punct">,</span> <span class="symbol">:cnt=</span><span class="punct">&gt;</span><span class="number">2</span><span class="punct">}]}]]],</span>
  <span class="symbol">:rval=</span><span class="punct">&gt;[</span><span class="symbol">:cref</span><span class="punct">,</span> <span class="punct">{</span><span class="symbol">:next=</span><span class="punct">&gt;</span><span class="constant">false</span><span class="punct">,</span> <span class="symbol">:clss=</span><span class="punct">&gt;</span><span class="constant">Object</span><span class="punct">}],</span>
  <span class="symbol">:tbl=</span><span class="punct">&gt;[</span><span class="symbol">:x</span><span class="punct">]}]</span>
</pre>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Matt Mower</strong> &middot; <time datetime="2006-06-19T15:01:00+00:00">June 19, 2006 at 3:01 pm</time></p>
      <p>Any idea how this compares with Ryan Davis &amp; Eric Hodel's work with ParseTree?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-06-20T11:54:00+00:00">June 20, 2006 at 11:54 am</time></p>
      <p>Unfortunately, no, as I haven't looked at that yet. Thanks for the reference though!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gene</strong> &middot; <time datetime="2006-06-30T13:08:00+00:00">June 30, 2006 at 1:08 pm</time></p>
      <p>more node info<br>
<a href="http://rubystuff.org/nodewrap/" rel="nofollow">http://rubystuff.org/nodewrap/</a></p><p><a href="http://sean-carley.blogspot.com/2006/04/assignment-in-ruby-simple-scoped.html" rel="nofollow">http://sean-carley.blogspot.com/2006/04/assignment-in-ruby-simple-scoped.html</a></p><p><a href="http://www.namikilab.tuat.ac.jp/~sasada/prog/rubynodes/nodes.html" rel="nofollow">http://www.namikilab.tuat.ac.jp/~sasada/prog/rubynodes/nodes.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>zimbatm</strong> &middot; <time datetime="2006-07-06T15:03:00+00:00">July 6, 2006 at 3:03 pm</time></p>
      <p>@Matt : With ParseTree, I was not able to parse a whole source file. I can only pass existing classes, modules or methods to it.</p><p>On the other side, RubyNode doesn't seem to have a Sexp processor included like ParseTree.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>zenspider</strong> &middot; <time datetime="2006-08-01T20:02:00+00:00">August 1, 2006 at 8:02 pm</time></p>
      <p>@zimbatm: the latest version of ParseTree will be able to parse whole files. We're releasing that in a couple of days.</p><p>Not having a sexp processor architecture is a biggie, IMO. We consider SexpProcessor to be the strongest feature in ParseTree. Not having a processing framework is probably not quite as bad as not having comprehensive tests.</p><p>@gene: you should point out that Sean's article is on ParseTree, not nodewrap.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
