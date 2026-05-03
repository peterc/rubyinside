---
title: 'Feedalizer: Easy Webpage to RSS Conversion from Ruby'
date: '2006-08-11'
author: Peter Cooper
author_slug: admin
post_id: 183
slug: feedalizer-easy-webpage-to-rss-conversion-from-ruby-183
url: "/feedalizer-easy-webpage-to-rss-conversion-from-ruby-183.html"
categories:
- cool
- ruby-tricks
- tools
---

{{< rawhtml >}}
<p><a href="/assets/2006/08/flizer-1.png" onclick="window.open('http://www.rubyinside.com/wp-content/uploads/2006/08/flizer-1.png','popup','width=371,height=134,scrollbars=no,resizable=yes,toolbar=no,directories=no,location=no,menubar=no,status=yes,left=0,top=0');return false"><img src="/assets/2006/08/flizer-1-tm.jpg" height="100" width="276" border="1" hspace="4" vspace="4" alt="Flizer-1"></a></p>
<p><a href="http://termos.vemod.net/feedalizer">Feedalizer</a> is a Ruby library that lets you easily scrape Web pages and convert them into RSS feeds. Some demo code that generates a feed:</p>
<pre><span class="ident">require</span> <span class="punct">"</span><span class="string">feedalizer</span><span class="punct">"</span>
<span class="ident">require</span> <span class="punct">"</span><span class="string">time</span><span class="punct">"</span>

<span class="ident">url</span> <span class="punct">=</span> <span class="punct">"</span><span class="string">http://sydsvenskan.se/serier/nemi/article101047.ece?context=serie</span><span class="punct">"</span>

<span class="ident">feedalize</span><span class="punct">(</span><span class="ident">url</span><span class="punct">)</span> <span class="keyword">do</span>
  <span class="ident">feed</span><span class="punct">.</span><span class="ident">title</span> <span class="punct">=</span> <span class="punct">"</span><span class="string">Nemi</span><span class="punct">"</span>
  <span class="ident">feed</span><span class="punct">.</span><span class="ident">about</span> <span class="punct">=</span> <span class="punct">"</span><span class="string">...</span><span class="punct">"</span>
  <span class="ident">feed</span><span class="punct">.</span><span class="ident">description</span> <span class="punct">=</span> <span class="punct">"</span><span class="string">Daily Nemi strip scraped from Sydsvenskan</span><span class="punct">"</span>

  <span class="ident">scrape_items</span><span class="punct">("</span><span class="string">option</span><span class="punct">")</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">rss_item</span><span class="punct">,</span> <span class="ident">html_element</span><span class="punct">|</span>
    <span class="ident">rss_item</span><span class="punct">.</span><span class="ident">link</span>  <span class="punct">=</span> <span class="ident">html_element</span><span class="punct">.</span><span class="ident">attributes</span><span class="punct">["</span><span class="string">value</span><span class="punct">"]</span>
    <span class="ident">rss_item</span><span class="punct">.</span><span class="ident">date</span>  <span class="punct">=</span> <span class="constant">Time</span><span class="punct">.</span><span class="ident">parse</span><span class="punct">(</span><span class="ident">html_element</span><span class="punct">.</span><span class="ident">innerHTML</span><span class="punct">)</span>
    <span class="ident">rss_item</span><span class="punct">.</span><span class="ident">title</span> <span class="punct">=</span> <span class="ident">rss_item</span><span class="punct">.</span><span class="ident">date</span><span class="punct">.</span><span class="ident">strftime</span><span class="punct">("</span><span class="string">%Y-%m-%d</span><span class="punct">")</span>

    <span class="comment"># This grabs the page for a particular strip and extracts the relevant img element</span>
    <span class="ident">rss_item</span><span class="punct">.</span><span class="ident">description</span> <span class="punct">=</span> <span class="ident">grab_page</span><span class="punct">(</span><span class="ident">rss_item</span><span class="punct">.</span><span class="ident">link</span><span class="punct">).</span><span class="ident">search</span><span class="punct">("</span><span class="string">//img[@width=748]</span><span class="punct">")</span>
  <span class="keyword">end</span>

  <span class="ident">output!</span>
<span class="keyword">end</span>
</pre>
{{< /rawhtml >}}
