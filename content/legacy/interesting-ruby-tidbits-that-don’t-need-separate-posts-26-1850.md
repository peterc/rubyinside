---
title: 'Interesting Ruby Tidbits That Don’t Need Separate Posts #26'
date: '2009-06-22'
author: Peter Cooper
author_slug: admin
post_id: 1850
slug: interesting-ruby-tidbits-that-don’t-need-separate-posts-26-1850
url: "/interesting-ruby-tidbits-that-don’t-need-separate-posts-26-1850.html"
categories:
- compilations
- miscellaneous
---

{{< rawhtml >}}
<p>The latest installment of the series of posts crammed with random Ruby links, articles, and resources to kick off your week!</p>
<p><img src="/assets/2009/06/gogaruco.png" width="111" height="70" alt="gogaruco.png" style="float:right; margin-bottom:12px; margin-left:12px;"></p>
<h3>17 High Quality Videos from GoGaRuCo</h3>
<p>Earlier this month, <a href="http://pivotallabs.com/gogaruco/talks">the videos</a> from the <a href="http://gogaruco.com/">GoGaRuCo</a> (Golden Gate Ruby Conference) conference that took place back in April went online. The talks are all available in MPEG 4 video and MP3 audio formats. Video and audio quality are really good overall (no annoying humming or reverb that often plague such undertakings).</p>
<p>Talks include <a href="http://pivotallabs.com/gogaruco/talks/62-using-ruby-to-fight-aids">Using Ruby to Fight AIDS</a>, <a href="http://pivotallabs.com/gogaruco/talks/50-macruby-and-hotcocoa">MacRuby and HotCocoa</a>, <a href="http://pivotallabs.com/gogaruco/talks/55-building-custom-web-proxies-in-ruby">Building Custom Web Proxies in Ruby</a>, and <a href="http://pivotallabs.com/gogaruco/talks/51-sinatra-the-framework-within">Sinatra: The Framework Within</a>, although there are 17 to check out overall.</p>
<p><img src="/assets/2009/06/totally-weird-ass-phusion-logo.png" width="109" height="53" alt="totally-weird-ass-phusion-logo.png" style="float:right; margin-bottom:12px; margin-left:12px;"></p>
<h3>Phusion Passenger 2.2.4 Released - Stability and Bug Fixes</h3>
<p>Yesterday Phusion <a href="http://blog.phusion.nl/2009/06/21/phusion-passenger-224-released/">released version 2.2.4 of Passenger</a> - the de facto Rails and Rack-based Web app deployment module for Apache and nginx. It's the latest in a line of security and stability releases so you might want to get up to date. Crucially, a 8KB-per-request memory leak has been fixed since 2.2.3. Upgrading is as easy as with all previous point releases.</p>
<p><img src="/assets/2009/06/api-warm-32.gif" width="32" height="32" alt="API_warm_32.gif" style="float:right; margin-bottom:12px; margin-left:12px;"></p>
<h3>"Enterprise" Ruby - Write Ruby in XML?</h3>
<p>Perhaps the most horrible Ruby project I've seen in some time but, luckily, an entirely tongue in cheek one - <a href="http://github.com/tenderlove/enterprise/tree/master">Enterprise</a> by Aaron Patterson (of <a href="nokogiri-ruby-html-parser-and-xml-parser-1288.html">Nokogiri</a> fame). <i>Enterprise</i> suggests that writing Ruby in XML yields all sorts of "enterprise" benefits. I wasn't going to link to it, but it blew up on both Reddit and del.icio.us, so someone must find it entertaining. If it keeps Aaron entertained enough to keep developing awesome libraries like Nokogiri, I'm grudgingly for it..</p>
<h3>Eventful - Improvements for Observable, Adding Events To Your Objects</h3>
<p><a href="http://github.com/jcoglan/eventful/tree/master">Eventful</a> is a small extension for Ruby's <a href="http://www.ruby-doc.org/stdlib/libdoc/observer/rdoc/index.html">Observable</a> module that adds named events, block listeners and event bubbling features. If you haven't used Observable before, it basically provides a simple mechanism for objects to inform other objects of state changes - Eventful builds upon that basic functionality. The <a href="http://github.com/jcoglan/eventful/tree/master">basic Eventful page</a> has a few simple examples to whet your appetite.</p>
<p><img src="/assets/2009/06/newrelicrack.png" width="114" height="79" alt="newrelicrack.png" style="float:right; margin-bottom:12px; margin-left:12px;"></p>
<h3>Free Rack &amp; Rails Metal Screencast</h3>
<p>Gregg Pollack of RailsEnvy has produced a new, free screencast for the New Relic <a href="http://railslab.newrelic.com/">RailsLab</a> site called <a href="http://railslab.newrelic.com/2009/06/05/episode-14-rack-metal">Rack &amp; Metal</a>. In about twenty minutes Gregg covers the basics of Rack and Rack middleware before moving on to showing how Rack fits into the Rails stack. It's a great primer if Rack and Rails Metal are still new to you or you want to see how they fit together in the grand scheme of things.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Tomash</strong> &middot; <time datetime="2009-06-23T09:53:00+00:00">June 23, 2009 at 9:53 am</time></p>
      <p>I can't find the video with Matt Aimonetti's "CouchDB: Perform Like a Pornstar" talk.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-06-23T11:13:00+00:00">June 23, 2009 at 11:13 am</time></p>
      <p>I asked about that. Basically due to the whole debacle, Matt asked for it to not be distributed.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tomash</strong> &middot; <time datetime="2009-06-23T16:41:00+00:00">June 23, 2009 at 4:41 pm</time></p>
      <p>Awww. Now that everything has been tried, explained, condemned and executed I'd love to see the original. GoGaRuCo guys shouldn't act like *** ****. *</p><p>*Who, apparently ashamed of his ghetto rant, removed it from his website, the website from webarchive and almost threatened anyone thinking about mirroring the rant.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-06-23T17:12:00+00:00">June 23, 2009 at 5:12 pm</time></p>
      <p>I think it's a shame, but I totally get the reasoning. I don't think it's down to the GoGaRuCo guys though, but more because Matt didn't want it to go up. That said, there is no doubt the organizers would rather this were quickly forgotten :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
