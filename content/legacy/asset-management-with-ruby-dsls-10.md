---
title: Asset Management with Ruby DSLs
date: '2006-05-27'
author: Peter Cooper
author_slug: admin
post_id: 10
slug: asset-management-with-ruby-dsls-10
url: "/asset-management-with-ruby-dsls-10.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p>Jeremy Voorhis has written an interesting, and seemingly overlooked, <a href="http://www.infoq.com/articles/Agile-Asset-Management">article about asset management</a> in Ruby and Rails. Firstly he talks about using rake to build a basic asset compiler, and then demonstrates a basic DSL (Domain Specific Language) he created to manipulate image assets in only a few lines of code. An example:</p>
<pre><span class="ident">define_image_transformation</span> <span class="punct">'</span><span class="string">thumbnailize</span><span class="punct">'</span> <span class="keyword">do</span>
  <span class="ident">crop_to</span> <span class="punct">'</span><span class="string">62x62</span><span class="punct">',</span> <span class="symbol">:north</span>
<span class="keyword">end</span>

<span class="ident">define_image_transformation</span> <span class="punct">'</span><span class="string">bronze</span><span class="punct">'</span> <span class="keyword">do</span>
  <span class="ident">greyscale</span>
  <span class="ident">lighten</span>
  <span class="comment">#    r     g     b     tint</span>
  <span class="ident">tint</span> <span class="number">0.25</span><span class="punct">,</span> <span class="number">0.25</span><span class="punct">,</span> <span class="number">0.25</span><span class="punct">,</span> <span class="punct">'</span><span class="string">#706000</span><span class="punct">'</span>
<span class="keyword">end</span>

<span class="ident">image_task</span> <span class="punct">'</span><span class="string">bronze_thumbnail</span><span class="punct">'</span> <span class="keyword">do</span>
  <span class="ident">from</span> <span class="ident">images</span> <span class="punct">'</span><span class="string">images/*.jpg</span><span class="punct">'</span>
  <span class="ident">to</span>   <span class="ident">build</span> <span class="punct">'</span><span class="string">greyscale_thumbnail</span><span class="punct">'</span>
  <span class="ident">remote_dirs</span> <span class="punct">&lt;&lt;</span> <span class="constant">REMOTE_DIR</span><span class="punct">[</span><span class="symbol">:greyscale_thumbnail</span><span class="punct">]</span>
  <span class="ident">transformation</span> <span class="keyword">do</span>
    <span class="ident">bronze</span>
    <span class="ident">thumbnailize</span>
  <span class="keyword">end</span>
<span class="keyword">end</span>
</pre>
{{< /rawhtml >}}
