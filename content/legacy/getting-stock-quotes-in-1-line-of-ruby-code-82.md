---
title: Getting stock quotes in 1 line of Ruby code
date: '2006-06-14'
author: Peter Cooper
author_slug: admin
post_id: 82
slug: getting-stock-quotes-in-1-line-of-ruby-code-82
url: "/getting-stock-quotes-in-1-line-of-ruby-code-82.html"
categories:
- cool
- ruby-tricks
---

{{< rawhtml >}}
<p>The <a href="http://www.hprog.org/fhp/RubyExamples">RubyExamples</a> page is a few years old now, but I just came across a great example which still works, and which demonstrates the intense power of Ruby. <em>Please note that Justin Bishop deserves all the credit for this one.</em></p>
<p>Here's the routine:</p>
<pre><span class="keyword">class </span><span class="class">RubyStock</span>
	<span class="ident">require</span> <span class="punct">'</span><span class="string">net/http</span><span class="punct">'</span>
    <span class="keyword">def </span><span class="method">RubyStock::getStocks</span><span class="punct">(*</span><span class="ident">symbols</span><span class="punct">)</span>
        <span class="constant">Hash</span><span class="punct">[*(</span><span class="ident">symbols</span><span class="punct">.</span><span class="ident">collect</span><span class="punct">{|</span><span class="ident">symbol</span><span class="punct">|[</span><span class="ident">symbol</span><span class="punct">,</span><span class="constant">Hash</span><span class="punct">[\</span>
        <span class="punct">*(</span><span class="constant">Net</span><span class="punct">::</span><span class="constant">HTTP</span><span class="punct">.</span><span class="ident">get</span><span class="punct">('</span><span class="string">quote.yahoo.com</span><span class="punct">','</span><span class="string">/d?f=nl1&amp;s=</span><span class="punct">'+</span><span class="ident">symbol</span><span class="punct">).</span><span class="ident">chop\</span>
        <span class="punct">.</span><span class="ident">split</span><span class="punct">('</span><span class="string">,</span><span class="punct">').</span><span class="ident">unshift</span><span class="punct">("</span><span class="string">Name</span><span class="punct">").</span><span class="ident">insert</span><span class="punct">(</span><span class="number">2</span><span class="punct">,"</span><span class="string">Price</span><span class="punct">"))]];}.</span><span class="ident">flatten</span><span class="punct">)];</span>
    <span class="keyword">end</span>
<span class="keyword">end</span>
</pre>
<p>Using it is simple:</p>
<pre><span class="ident">puts</span> <span class="constant">RubyStock</span><span class="punct">::</span><span class="ident">getStocks</span><span class="punct">("</span><span class="string">MSFT</span><span class="punct">",</span> <span class="punct">"</span><span class="string">IBM</span><span class="punct">",</span> <span class="punct">"</span><span class="string">GOOG</span><span class="punct">").</span><span class="ident">inspect</span> 

=&gt; {"GOOG"=&gt;{"Name"=&gt;""GOOGLE"", "Price"=&gt;"386.525"}, "IBM"=&gt;{"Name"=&gt;""INTL BUSINESS MAC"", "Price"=&gt;"76.93"}, "MSFT"=&gt;{"Name"=&gt;""MICROSOFT CP"", "Price"=&gt;"21.51"}}
</pre>
<p>Amazing! It returns within half a second on my machine, and I can't believe the same scraping logic works after three years.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2006-06-14T18:59:00+00:00">June 14, 2006 at 6:59 pm</time></p>
      <p>Well, it's not really scraping because it relies on Yahoo's very nice API. That URL spits out just raw CSV, so it's easy to parse.</p><p>But thanks for the reference, I _was_ using screenscraping to get quotes, and it did break often. Using that CSV API is much, much nicer. (BTW you can tweak the 'f' parameter to change what data gets included (and the order). Try appending 'o', 'c', 'v', 'g', 't1', d1' and more to get opening price, change, high, low, time, date, etc.)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-06-14T20:17:00+00:00">June 14, 2006 at 8:17 pm</time></p>
      <p>Oh cool, I didn't reverse engineer down to the URL, but that's interesting to know. I'm surprised they offer that access to the data. Sweet. I think I'll remove the word 'scraping', as yeah, it's a bit out of place :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
