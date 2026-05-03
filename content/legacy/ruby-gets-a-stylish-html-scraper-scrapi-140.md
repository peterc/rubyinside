---
title: Ruby gets a stylish HTML scraper – scrAPI
date: '2006-07-12'
author: Peter Cooper
author_slug: admin
post_id: 140
slug: ruby-gets-a-stylish-html-scraper-scrapi-140
url: "/ruby-gets-a-stylish-html-scraper-scrapi-140.html"
categories:
- cool
- elsewhere
- miscellaneous
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2006/07/scrapi.jpg" height="72" width="267" border="0" hspace="4" vspace="4" alt="Scrapi"><span style="font-size:12pt;"><br>
</span><br>
The indefatigable <a href="http://blog.labnotes.org/">Assaf Arkin</a> has done it again by developing a new Ruby HTML scraping toolkit, <a href="http://blog.labnotes.org/2006/07/11/scraping-with-style-scrapi-toolkit-for-ruby/">scrAPI</a>. Peter Szinek recently wrote a popular article about <a href="http://www.rubyrailways.com/data-extraction-for-web-20-screen-scraping-in-rubyrails">scraping from Ruby using Manic Miner, RubyfulSoup, REXML, and WWW::Mechanize</a>, but none of these are as immediately useful as scrAPI.. so why?</p>
<p>scrAPI lets you scrape from HTML using CSS selectors. For example, here's Assaf's example that defines scraper objects that can scrape auctions from eBay:</p>
<pre><span class="ident">ebay_auction</span> <span class="punct">=</span> <span class="constant">Scraper</span><span class="punct">.</span><span class="ident">define</span> <span class="keyword">do</span>
    <span class="ident">process</span> <span class="punct">"</span><span class="string">h3.ens&gt;a</span><span class="punct">",</span> <span class="symbol">:description=</span><span class="punct">&gt;</span><span class="symbol">:text</span><span class="punct">,</span>
                        <span class="symbol">:url=</span><span class="punct">&gt;"</span><span class="string">@href</span><span class="punct">"</span>
    <span class="ident">process</span> <span class="punct">"</span><span class="string">td.ebcPr&gt;span</span><span class="punct">",</span> <span class="symbol">:price=</span><span class="punct">&gt;</span><span class="symbol">:text</span>
    <span class="ident">process</span> <span class="punct">"</span><span class="string">div.ebPicture &gt;a&gt;img</span><span class="punct">",</span> <span class="symbol">:image=</span><span class="punct">&gt;"</span><span class="string">@src</span><span class="punct">"</span>

    <span class="ident">result</span> <span class="symbol">:description</span><span class="punct">,</span> <span class="symbol">:url</span><span class="punct">,</span> <span class="symbol">:price</span><span class="punct">,</span> <span class="symbol">:image</span>
<span class="keyword">end</span>

<span class="ident">ebay</span> <span class="punct">=</span> <span class="constant">Scraper</span><span class="punct">.</span><span class="ident">define</span> <span class="keyword">do</span>
    <span class="ident">array</span> <span class="symbol">:auctions</span>

    <span class="ident">process</span> <span class="punct">"</span><span class="string">table.ebItemlist tr.single</span><span class="punct">",</span>
            <span class="symbol">:auctions</span> <span class="punct">=&gt;</span> <span class="ident">ebay_auction</span>

    <span class="ident">result</span> <span class="symbol">:auctions</span>
<span class="keyword">end</span>
</pre>
<p>Now that the objects are set up ready to scrape, you can put them into action like so:</p>
<pre><span class="ident">auctions</span> <span class="punct">=</span> <span class="ident">ebay</span><span class="punct">.</span><span class="ident">scrape</span><span class="punct">(</span><span class="ident">html</span><span class="punct">)</span>

<span class="comment"># No. of auctions found</span>
<span class="ident">puts</span> <span class="ident">auctions</span><span class="punct">.</span><span class="ident">size</span>

<span class="comment"># First auction:</span>
<span class="ident">auction</span> <span class="punct">=</span> <span class="ident">auctions</span><span class="punct">[</span><span class="number">0</span><span class="punct">]</span>
<span class="ident">puts</span> <span class="ident">auction</span><span class="punct">.</span><span class="ident">description</span>
<span class="ident">puts</span> <span class="ident">auction</span><span class="punct">.</span><span class="ident">url</span>
</pre>
<p>Simple example with serious power. Go <a href="http://blog.labnotes.org/2006/07/11/scraping-with-style-scrapi-toolkit-for-ruby/">get scrAPI</a> and play.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Danno</strong> &middot; <time datetime="2006-07-12T16:17:00+00:00">July 12, 2006 at 4:17 pm</time></p>
      <p>I'm not on the up and up with Page Scraping, how does this compare to _why's Hpricot?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-07-12T18:22:00+00:00">July 12, 2006 at 6:22 pm</time></p>
      <p>Hpricot lets you pull certain elements from a page programatically.. whereas this kinda bundles that sort of functionality into a reusable pattern. So rather than 'get this, then get this', this is.. 'get each of these things and return them to me in a solid lump'.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael @ SEOG</strong> &middot; <time datetime="2006-08-03T17:19:00+00:00">August 3, 2006 at 5:19 pm</time></p>
      <p>That looks really interesting. Do you think you could post an example with the original HTML as well? So that we can see from original document, to scrAPI code, to the final output?</p><p>It looks like it might be a much more elegant solution for those of us looking to build databases of information from other sites and need an easier way to do that.</p><p>thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>assaf</strong> &middot; <time datetime="2006-08-05T00:36:00+00:00">August 5, 2006 at 12:36 am</time></p>
      <p>Michael,</p><p>The original HTML for this example is an eBay page with search results. For the demo I did, I just searched for "iPod nano", saved the page and ran this code on the saved page.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
