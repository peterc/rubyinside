---
title: Parse XML quickly and easily with Hpricot
date: '2006-08-01'
author: Peter Cooper
author_slug: admin
post_id: 166
slug: parse-xml-quickly-and-easily-with-hpricot-166
url: "/parse-xml-quickly-and-easily-with-hpricot-166.html"
categories:
- cool
- ruby-tricks
---

{{< rawhtml >}}
<p>Following on from the <a href="parsing-xml-with-rexml-using-expat-163.html">Parsing XML with REXML using Expat</a> post about using Expat to make REXML faster, Chris Wanstrath e-mailed me to let me know about his co-worker PJ's post, "<a href="http://errtheblog.com/post/8">Parse XML with Hpricot</a>". Hpricot, covered previously in <a href="fast-html-parsing-in-ruby-with-hpricot-125.html">Fast HTML parsing in Ruby with Hpricot</a>, is a fast HTML parser for Ruby written mostly in C by Ruby legend <a href="http://redhanded.hobix.com/">whytheluckystiff</a>.</p>
<p>PJ says that as a subset of XML, Hpricot should work fine with raw XML, and it does:</p>
<pre><span class="constant">FIELDS</span> <span class="punct">=</span> <span class="punct">%w[</span><span class="string">SKU ItemName CollectionNo Pages</span><span class="punct">]</span>

<span class="ident">doc</span> <span class="punct">=</span> <span class="constant">Hpricot</span><span class="punct">.</span><span class="ident">parse</span><span class="punct">(</span><span class="constant">File</span><span class="punct">.</span><span class="ident">read</span><span class="punct">("</span><span class="string">my.xml</span><span class="punct">"))</span>
<span class="punct">(</span><span class="ident">doc</span><span class="punct">/</span><span class="symbol">:product</span><span class="punct">).</span><span class="ident">each</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">xml_product</span><span class="punct">|</span>
  <span class="ident">product</span> <span class="punct">=</span> <span class="constant">Product</span><span class="punct">.</span><span class="ident">new</span>
  <span class="keyword">for</span> <span class="ident">field</span> <span class="keyword">in</span> <span class="constant">FIELDS</span>
    <span class="ident">product</span><span class="punct">[</span><span class="ident">field</span><span class="punct">]</span> <span class="punct">=</span> <span class="ident">xml_product</span><span class="punct">.</span><span class="ident">search</span><span class="punct">("</span><span class="string">/</span><span class="expr">#{field}</span><span class="punct">").</span><span class="ident">first</span><span class="punct">.</span><span class="ident">children</span><span class="punct">.</span><span class="ident">first</span><span class="punct">.</span><span class="ident">raw_string</span>
  <span class="keyword">end</span>
  <span class="ident">product</span><span class="punct">.</span><span class="ident">save</span>
<span class="keyword">end</span>
</pre>
<p>There's less hoops to jump through than with the REXML/Expat route, and it's still extremely fast. <a href="http://errtheblog.com/post/8">Learn more.</a></p>
{{< /rawhtml >}}
