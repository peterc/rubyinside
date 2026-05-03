---
title: 'Rounded Corners in Rails: The Easy Way'
date: '2006-06-05'
author: Peter Cooper
author_slug: admin
post_id: 43
slug: rounded-corners-in-rails-the-easy-way-43
url: "/rounded-corners-in-rails-the-easy-way-43.html"
categories:
- cool
- ruby-on-rails
---

{{< rawhtml >}}
<p>A few days ago I learned about <a href="http://www.curvycorners.net/index.php">Curvy Corners</a>, an incredible JavaScript that lets you put rounded corners on your DIV elements that can do anti-aliasing and handle any size border. It's the best rounded corner script so far.</p>
<p>Craig Webster saw it too and has created a <a href="http://beer-monkey.com/articles/2006/06/04/curvy-corners-in-rails">Curvy Corners in Rails helper method</a> that means you can do stuff like:</p>
<pre><span class="punct">&lt;%</span> <span class="ident">curvy_div</span><span class="punct">(</span><span class="symbol">:tl</span> <span class="punct">=&gt;</span> <span class="constant">false</span><span class="punct">,</span> <span class="symbol">:br</span> <span class="punct">=&gt;</span> <span class="constant">false</span><span class="punct">)</span> <span class="keyword">do</span> <span class="punct">-%&gt;</span><span class="string">
  Oyy, stylish.
&lt;% end -%</span><span class="punct">&gt;</span>
</pre>
<p>Very neat.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Richard White</strong> &middot; <time datetime="2006-06-13T08:49:00+00:00">June 13, 2006 at 8:49 am</time></p>
      <p>Curvy Corners seems to use a *lot* of DIVs in accomplishing some of the best rounded corners I have seen. I'm a little hesistant to add ~220 divs to my page for each rounded corner.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-06-13T10:37:00+00:00">June 13, 2006 at 10:37 am</time></p>
      <p>Unfortunately so. It's just a shame this workaround is required. One DIV for each pixel? It's funny in a sad way!</p><p>That said, I feel similarly about the thousands of lines of JavaScript being thrown into almost every pageload nowadays, and browsers seem to be coping with it (just), so it might not be so bad after all.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
