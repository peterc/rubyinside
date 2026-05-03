---
title: Dynamically adding methods to classes through their objects
date: '2006-08-04'
author: Peter Cooper
author_slug: admin
post_id: 169
slug: dynamically-adding-methods-to-classes-through-their-objects-169
url: "/dynamically-adding-methods-to-classes-through-their-objects-169.html"
categories:
- cool
- elsewhere
- ruby-tricks
---

{{< rawhtml >}}
<p>Lucas Carlson <a href="http://tech.rufy.com/2006/08/dynamically-add-methods-to-classes.html">comes up with a cute trick</a> to make Ruby feel a little more like a prototyped language by allowing you to define methods on a class in real-time through child objects, like so:</p>
<pre><span class="ident">f</span> <span class="punct">=</span> <span class="constant">Foo</span><span class="punct">.</span><span class="ident">new</span>
<span class="ident">f</span><span class="punct">.</span><span class="ident">greet</span> <span class="punct">=</span> <span class="ident">lambda</span> <span class="punct">{|</span><span class="ident">t</span><span class="punct">|</span> <span class="punct">"</span><span class="string">Hello </span><span class="expr">#{t}</span>!<span class="punct">"}</span>
<span class="ident">f</span><span class="punct">.</span><span class="ident">greet</span> <span class="punct">"</span><span class="string">Lucas Carlson</span><span class="punct">"</span> <span class="comment"># =&gt; Hello Lucas Carlson!</span>

<span class="ident">j</span> <span class="punct">=</span> <span class="constant">Foo</span><span class="punct">.</span><span class="ident">new</span>
<span class="ident">j</span><span class="punct">.</span><span class="ident">greet</span> <span class="punct">"</span><span class="string">World</span><span class="punct">"</span> <span class="comment"># =&gt; Hello World!</span>
</pre>
<p><a href="http://tech.rufy.com/2006/08/dynamically-add-methods-to-classes.html">Find out how.</a> A cute trick.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Kent</strong> &middot; <time datetime="2006-08-04T16:16:00+00:00">August 4, 2006 at 4:16 pm</time></p>
      <p>require 'ostruct'</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joey</strong> &middot; <time datetime="2006-08-05T07:45:00+00:00">August 5, 2006 at 7:45 am</time></p>
      <p>Kent, if it works how I think it works(I havent checked yet), OpenStruct won't work.</p><p>f = OpenStruct.new<br>
f.puts = lamba{|t|puts t}<br>
f.puts(1) #=&gt; gives you a proc</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
