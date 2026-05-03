---
title: Get a temporary context with ‘self.dup.instance_eval’
date: '2006-08-31'
author: Peter Cooper
author_slug: admin
post_id: 215
slug: get-a-temporary-context-with-selfdupinstance_eval-215
url: "/get-a-temporary-context-with-selfdupinstance_eval-215.html"
categories:
- cool
- ruby-tricks
---

{{< rawhtml >}}
<pre><span class="keyword">def </span><span class="method">foo</span>
  <span class="punct">'</span><span class="string">bar</span><span class="punct">'</span>
<span class="keyword">end</span>

<span class="keyword">module </span><span class="module">M</span>
  <span class="keyword">def </span><span class="method">foo</span>
    <span class="punct">'</span><span class="string">baz</span><span class="punct">'</span>
  <span class="keyword">end</span>
<span class="keyword">end</span>

<span class="ident">puts</span> <span class="punct">"</span><span class="string">should be 'bar': </span><span class="expr">#{foo}</span><span class="punct">"</span>

<span class="constant">self</span><span class="punct">.</span><span class="ident">dup</span><span class="punct">.</span><span class="ident">instance_eval</span> <span class="keyword">do</span>
  <span class="ident">extend</span><span class="punct">(</span><span class="constant">M</span><span class="punct">)</span>
  <span class="ident">puts</span> <span class="punct">"</span><span class="string">should be 'baz': </span><span class="expr">#{foo}</span><span class="punct">"</span>
<span class="keyword">end</span>

<span class="ident">puts</span> <span class="punct">"</span><span class="string">should be 'bar': </span><span class="expr">#{foo}</span><span class="punct">"</span>
</pre>
<p>Garry Dolley worked out some <a href="http://www.bigbold.com/snippets/posts/show/2493">interesting Ruby-fu to create a temporary execution context</a> on the fly using self.dup.instance_eval. Any other tricks we could use this for?</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2006-08-31T18:18:00+00:00">August 31, 2006 at 6:18 pm</time></p>
      <p>That's real hot.  Real hot.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
