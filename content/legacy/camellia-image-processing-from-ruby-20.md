---
title: 'Camellia: Image processing from Ruby'
date: '2006-06-01'
author: Peter Cooper
author_slug: admin
post_id: 20
slug: camellia-image-processing-from-ruby-20
url: "/camellia-image-processing-from-ruby-20.html"
categories:
- cool
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2006/06/camellia.png" height="196" width="268" border="1" hspace="4" vspace="4" alt="Camellia"><br>
<em>In this photo, a Ruby script has found the license plate and marked it with a red box (source below).</em></p>
<p><strong><a href="http://camellia.sourceforge.net/">Camellia</a></strong> is a powerful 'computer vision' library you can use from Ruby. It's written in C, is cross platform, and offers lots of features like color conversion, warping, filtering, drawing, and labeling. Here's the source code to find the license plate in the photo above:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">rubygems</span><span class="punct">'</span>
<span class="ident">require_gem</span> <span class="punct">'</span><span class="string">camellia</span><span class="punct">'</span>
<span class="ident">include</span> <span class="constant">Camellia</span>

<span class="ident">image</span><span class="punct">=</span><span class="constant">CamImage</span><span class="punct">.</span><span class="ident">new</span>

<span class="comment"># load picture alfa156.bmp</span>
<span class="ident">image</span><span class="punct">.</span><span class="ident">load_bmp</span><span class="punct">("</span><span class="string">resources/alfa156.bmp</span><span class="punct">")</span>
<span class="ident">yuv</span><span class="punct">=</span><span class="ident">image</span><span class="punct">.</span><span class="ident">to_yuv</span>

<span class="comment"># consider only the V plane (red)</span>
<span class="ident">yuv</span><span class="punct">.</span><span class="ident">set_roi</span><span class="punct">(</span><span class="constant">CamROI</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="number">3</span><span class="punct">,</span><span class="number">0</span><span class="punct">,</span><span class="number">0</span><span class="punct">,</span><span class="ident">yuv</span><span class="punct">.</span><span class="ident">width</span><span class="punct">,</span><span class="ident">yuv</span><span class="punct">.</span><span class="ident">height</span><span class="punct">))</span> 

<span class="comment"># threshold and encode</span>
<span class="ident">thr</span><span class="punct">=</span><span class="ident">yuv</span><span class="punct">.</span><span class="ident">encode_threshold</span><span class="punct">(</span><span class="number">150</span><span class="punct">)</span>

<span class="comment"># labeling</span>
<span class="ident">blobs</span><span class="punct">=</span><span class="ident">thr</span><span class="punct">.</span><span class="ident">labeling!</span>
<span class="ident">puts</span> <span class="punct">"</span><span class="expr">#{blobs.nb_blobs}</span> blobs detected<span class="punct">"</span>

<span class="comment"># draw rectangle on all detected blobs </span>
<span class="ident">blobs</span><span class="punct">.</span><span class="ident">each</span> <span class="punct">{|</span><span class="ident">b</span><span class="punct">|</span> <span class="ident">image</span><span class="punct">.</span><span class="ident">draw_rectangle</span><span class="punct">(</span><span class="ident">b</span><span class="punct">.</span><span class="ident">left</span><span class="punct">,</span><span class="ident">b</span><span class="punct">.</span><span class="ident">top</span><span class="punct">,</span><span class="ident">b</span><span class="punct">.</span><span class="ident">left</span><span class="punct">+</span><span class="ident">b</span><span class="punct">.</span><span class="ident">width</span><span class="punct">-</span><span class="number">1</span><span class="punct">,</span><span class="ident">b</span><span class="punct">.</span><span class="ident">top</span><span class="punct">+</span><span class="ident">b</span><span class="punct">.</span><span class="ident">height</span><span class="punct">-</span><span class="number">1</span><span class="punct">,</span><span class="ident">cam_rgb</span><span class="punct">(</span><span class="number">255</span><span class="punct">,</span><span class="number">0</span><span class="punct">,</span><span class="number">0</span><span class="punct">))}</span>

<span class="comment"># save the resulting picture</span>
<span class="ident">image</span><span class="punct">.</span><span class="ident">save_bmp</span><span class="punct">("</span><span class="string">output/ruby_alfa156_labeling.bmp</span><span class="punct">")</span>

<span class="comment"># find out the biggest blob</span>
<span class="ident">sorted</span><span class="punct">=</span><span class="ident">blobs</span><span class="punct">.</span><span class="ident">sort</span> <span class="punct">{|</span><span class="ident">a</span><span class="punct">,</span><span class="ident">b</span><span class="punct">|</span> <span class="ident">b</span><span class="punct">.</span><span class="ident">surface</span><span class="punct">&lt;=&gt;</span><span class="ident">a</span><span class="punct">.</span><span class="ident">surface</span><span class="punct">}</span>
<span class="ident">puts</span> <span class="punct">"</span><span class="string">The bigger blob is at position (</span><span class="expr">#{sorted[0].cx}</span>,<span class="expr">#{sorted[0].cy}</span>) and its surface is <span class="expr">#{sorted[0].surface}</span><span class="punct">"</span>
</pre>
<p><strong><em>Update - May 2007: Paul Battley has worked out </em></strong><strong><em><a href="http://po-ru.com/diary/camellia-and-ruby-on-mac-os-x/">how to get this all running on Mac OS X</a></em></strong><strong><em>.<br>
</em></strong><br>
<!-- technorati tags start -->
</p>
<p style="text-align:right;font-size:10px;">Technorati Tags: <a href="http://www.technorati.com/tag/camellia" rel="tag">camellia</a>, <a href="http://www.technorati.com/tag/ruby" rel="tag">ruby</a></p>
<p><!-- technorati tags end --></p>
{{< /rawhtml >}}
