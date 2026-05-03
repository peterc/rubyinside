---
title: scRUBYt – Hot, New Ruby Web-Scraping Toolkit Released
date: '2007-02-06'
author: Peter Cooper
author_slug: admin
post_id: 378
slug: scrubyt-hot-new-ruby-web-scraping-toolkit-released-378
url: "/scrubyt-hot-new-ruby-web-scraping-toolkit-released-378.html"
categories:
- cool
- elsewhere
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2007/02/scrubyt.jpg" height="65" width="361" border="1" hspace="4" vspace="4" alt="Scrubyt"></p>
<p>For the past few months Peter Szinek has been giving me lots of tasty tidbits about his forthcoming <a href="http://scrubyt.org/">ScRUBYt</a> Web-scraping toolkit, and now <a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/237712">it's finally fully released to the public!</a> Peter describes ScRUBYt as "WWW::Mechanize and Hpricot on Steroids" and this description is pretty bang on.</p>
<p><img src="/assets/2007/02/process.jpg" height="97" width="419" border="1" hspace="4" vspace="4" alt="Process"><br>
As well as providing a simple DSL for performing Web actions (clicking links, submitting forms, etc.), one of ScRUBYt's most impressive features is that you can provide it with 'example' data from which it will extrapolate a search pattern and then find any other similar data within the same page. This is demonstrated perfectly by Peter's basic example:</p>
<pre>ebay_data = Scrubyt::Extractor.define do
   fetch 'http://www.ebay.com/'
   fill_textfield 'satitle', 'ipod'
   submit
   click_link 'Apple iPod'

   record do
     item_name 'APPLE NEW IPOD MINI 6GB MP3 PLAYER SILVER'
     price '$71.99'
   end
   next_page 'Next &gt;', :limit =&gt; 5
end
</pre>
<p>This code goes to ebay.com, looks for iPods, and then extracts all records using a dummy one as an example. It then proceeds through up to 5 more pages of records, returning them all as an XML dataset.</p>
<p>If this all floats your boat, there's a lot to explore. Start off with <a href="http://scrubyt.org/">the official site</a> and Peter's comprehensive <a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/237712">announcement</a>. Peter also has a <a href="http://www.rubyrailways.com/data-extraction-for-web-20-screen-scraping-in-rubyrails-episode1/">lengthy tutorial available</a> which makes good reading.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Tom Sparplan</strong> &middot; <time datetime="2007-02-07T12:34:00+00:00">February 7, 2007 at 12:34 pm</time></p>
      <p>This is rather impressive. The end result could just as well be done with Curl, but this way, it is a lot clearer to understand in the source. On the downside, this script will stop working when pricing changes or the item does not show on the first page any more.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Szinek</strong> &middot; <time datetime="2007-02-09T14:23:00+00:00">February 9, 2007 at 2:23 pm</time></p>
      <p>Tom,</p><p>This is simply not true :-)</p><p>as Peter also pointed out, this is just a dummy example. The system learns how to extract similar examples, then the learned rules are extracted - and those are agnostic to any older example or anything, thus they will work until the page *structure* is changed - then you must provide actual examples to learn the new rules... working on the automatization of this, btw.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
