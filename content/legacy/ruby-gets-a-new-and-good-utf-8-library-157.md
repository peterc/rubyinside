---
title: Ruby gets a new (and good!) UTF-8 library
date: '2006-07-25'
author: Peter Cooper
author_slug: admin
post_id: 157
slug: ruby-gets-a-new-and-good-utf-8-library-157
url: "/ruby-gets-a-new-and-good-utf-8-library-157.html"
categories:
- cool
- elsewhere
- ruby-tricks
---

{{< rawhtml >}}
<p>_why <a href="http://redhanded.hobix.com/inspect/nikolaiSUtf8LibIsAllReady.html">announces a release of a new UTF-8 library</a> (which adds UTF-8 support to Ruby, without using KCODE) by Nikolai Weibull. _why has also packaged it up (unofficially) into a gem to make it even easier to install (not all of us use <em>git</em>). Here's some demonstration code:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">encoding/character/utf-8</span><span class="punct">'</span>
<span class="ident">str</span> <span class="punct">=</span> <span class="ident">u</span><span class="punct">"</span><span class="string">hëllö</span><span class="punct">"</span>
<span class="ident">str</span><span class="punct">.</span><span class="ident">length</span>
  <span class="comment">#=&gt; 5</span>
<span class="ident">str</span><span class="punct">.</span><span class="ident">reverse</span><span class="punct">.</span><span class="ident">length</span>
  <span class="comment">#=&gt; 5</span>
<span class="ident">str</span><span class="punct">[/</span><span class="regex">ël</span><span class="punct">/]</span>
  <span class="comment">#=&gt; "ël"</span>
</pre>
{{< /rawhtml >}}
