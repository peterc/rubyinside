---
title: 'PX: A quick and silly Ruby obfuscation system'
date: '2006-05-26'
author: Peter Cooper
author_slug: admin
post_id: 7
slug: px-a-quick-and-silly-ruby-obfuscation-system-7
url: "/px-a-quick-and-silly-ruby-obfuscation-system-7.html"
categories:
- cool
- miscellaneous
- nonsense
---

{{< rawhtml >}}
<p>For the fun of it, I developed a quick Ruby obfuscation tool a few weeks ago. It's not a proper obfuscater that changes variable names and such, but it'll keep your code from being immediately understood. Here's the library, <em>px.rb</em>:</p>
<pre><span class="keyword">class </span><span class="class">PX</span><span class="punct">;</span> <span class="keyword">def </span><span class="method">self.method_missing</span><span class="punct">(</span><span class="ident">m</span><span class="punct">,</span> <span class="punct">*</span><span class="ident">args</span><span class="punct">);</span> <span class="ident">m</span> <span class="punct">=</span> <span class="ident">m</span><span class="punct">.</span><span class="ident">to_s</span><span class="punct">;</span> <span class="ident">eval</span> <span class="global">$c</span><span class="punct">.</span><span class="ident">join</span> <span class="keyword">if</span> <span class="ident">m</span> <span class="punct">==</span> <span class="punct">'</span><span class="string">-@</span><span class="punct">';</span> <span class="ident">m</span><span class="punct">.</span><span class="ident">scan</span><span class="punct">(/</span><span class="regex">(</span><span class="escape">w</span>)(<span class="escape">w</span>)<span class="punct">/).</span><span class="ident">each</span> <span class="punct">{</span> <span class="punct">|</span><span class="ident">t</span><span class="punct">|</span> <span class="punct">(</span><span class="global">$c</span> <span class="punct">||=</span> <span class="punct">[])</span> <span class="punct">&lt;&lt;</span> <span class="punct">(((</span><span class="ident">t</span><span class="punct">[</span><span class="number">0</span><span class="punct">][</span><span class="number">0</span><span class="punct">]</span> <span class="punct">-</span> <span class="number">97</span><span class="punct">)</span> <span class="punct">*</span> <span class="number">26</span><span class="punct">)</span> <span class="punct">+</span> <span class="punct">(</span><span class="ident">t</span><span class="punct">[</span><span class="number">1</span><span class="punct">][</span><span class="number">0</span><span class="punct">]</span> <span class="punct">-</span> <span class="number">97</span><span class="punct">)).</span><span class="ident">chr</span> <span class="punct">};</span> <span class="keyword">end</span><span class="punct">;</span> <span class="keyword">end</span></pre>
<p>And here's a demonstration program, using the <em>px.rb</em> decoder, that displays some text on the screen:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">px</span><span class="punct">'</span> <span class="constant">PX</span><span class="punct">.</span><span class="ident">bxbwbuemebefdxelbgdwehakeienemelbgbndjdxeedvehefdxbgemehbgdudtdwbgdeenduerbg</span> <span class="constant">PX</span><span class="punct">.</span><span class="ident">ehdudyeneldvdtemebehegbhbnakdxegdwak</span> <span class="punct">-</span><span class="constant">PX</span></pre>
<p>Pretty incomprehensible, right? Here's a program that will help you create your own encoded / obfuscated Ruby scripts called <em>pxcode.rb</em>:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">px</span><span class="punct">'</span> <span class="constant">PX</span><span class="punct">.</span><span class="ident">eienemelbgbiekdxejenebekdxbgbneieqbnbiakdueebgcjbgdndpakebbgcjbgbwakbkelemdw</span> <span class="constant">PX</span><span class="punct">.</span><span class="ident">ebegbudxdtdveabgetbgeueeebegdxeuakeeebegdxbuelendubhbobvdqdoelbrbvbsbgbnbnbp</span> <span class="constant">PX</span><span class="punct">.</span><span class="ident">akeeebegdxbudxdtdveadrdueremdxbgetbgeudueuakdubgcjbgdubuemehdrebakebbgbrcjbg</span> <span class="constant">PX</span><span class="punct">.</span><span class="ident">bxbgebdybgdueednebdpbgbmbmbgdueednebdpbueedxegdzemeabgckbgcdcbakdueednebdpbg</span> <span class="constant">PX</span><span class="punct">.</span><span class="ident">eueucjbgbnbnakdueednebdpbgbrcjbgbodubgbvbgbyccbgbrbgcfcdbpbudveaekbgbrbgbodu</span> <span class="constant">PX</span><span class="punct">.</span><span class="ident">bgblbgbyccbgbrbgcfcdbpbudveaekakevakevakdueebudxdtdveabgetbgeueeeuakeienemel</span> <span class="constant">PX</span><span class="punct">.</span><span class="ident">bgbidcdkbubjeteeevbiakevakeienemelbgbibtdcdkbi</span> <span class="punct">-</span><span class="constant">PX</span></pre>
<p>To use it, you'll run.. <em>ruby pxcode.rb &lt; your_source_file.rb</em> <em>&gt; output_file.rb </em>where your_source_file.rb is the file you want to encode and output_file.rb is the output file. A PX encrypted Ruby file is created and can be run immediately in the normal way.</p>
<p><!-- technorati tags start --></p>
<p style="text-align: right; font-size: 10px">Technorati Tags: <a rel="tag" href="http://www.technorati.com/tag/obfuscation">obfuscation</a>, <a rel="tag" href="http://www.technorati.com/tag/ruby">ruby</a></p>
<p><!-- technorati tags end --></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Bruno Michel</strong> &middot; <time datetime="2006-06-03T17:26:00+00:00">June 3, 2006 at 5:26 pm</time></p>
      <p>It's too easy to decode a file :<br>
1. replace eval by puts in the px.rb file<br>
2. run the obfuscated script<br>
3. you got the original source code</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
