---
title: Muhammed Ali’s Free Ruby 1.9.x Web Servers E-Book
date: '2009-10-12'
author: Peter Cooper
author_slug: admin
post_id: 2644
slug: muhammed-alis-free-ruby-1-9-x-web-servers-e-book-2644
url: "/muhammed-alis-free-ruby-1-9-x-web-servers-e-book-2644.html"
categories:
- cool
- elsewhere
- reference
---

{{< rawhtml >}}
<p><img src="/assets/2009/10/socket.png" width="90" height="90" alt="socket.png" style="float:left; margin-right:12px; margin-bottom:12px;">Egyptian Ruby developer Muhammed Ali (of <a href="mysqlplus-non-blocking-mysql-driver-for-ruby-1138.html">MySQLPlus</a> fame) has released <a href="http://oldmoe.blogspot.com/2009/10/ruby-19x-web-servers-booklet.html">the first draft of a "Ruby 1.9.x Web Servers" booklet</a>. It looks at how different HTTP daemons and server libraries (<a href="thin-a-ruby-http-daemon-thats-faster-than-mongrel-688.html">Thin</a>, <a href="http://www.modrails.com/">Passenger</a>, <a href="http://en.wikipedia.org/wiki/WEBrick">WEBrick</a> and <a href="http://mongrel.rubyforge.org/">Mongrel</a>) perform in Ruby 1.9.1. You can read the book for free on his site <a href="http://www.scribd.com/doc/20755982/The-Ruby-1-9-x-Web-Servers-Booklet">or on Scribd</a>, but if you want to download a PDF to view locally you'll need to have a free Scribd account, alas.</p>
<p>As of this first draft, the e-book's 60 pages long - resulting in about 50 pages of actual content. It's clearly a draft, but Mohammed has put together a pretty readable overview of the state of not only Web servers but basic TCP servers and concurrency issues on Ruby 1.9. There are even several diagrams that provide visual demonstrations of how the different servers manage requests.</p>
<p>The bulk of the booklet, however, is turned over to graphs showing the results of performance tests made upon each library under different scenarios. There are too many data to summarize here, but unsurprisingly WEBrick typically loses (though not always, in a few it wins!) and Thin is typically in the lead.</p>
<p><object codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" id="doc_553928157880354" name="doc_553928157880354" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" align="middle" height="500" width="640"><param name="movie" value="http://d1.scribdassets.com/ScribdViewer.swf?document_id=20755982&amp;access_key=key-11g4fpp0rh82bj7p3wko&amp;page=1&amp;version=1&amp;viewMode=slideshow">
<param name="quality" value="high">
<param name="play" value="true">
<param name="loop" value="true">
<param name="scale" value="showall">
<param name="wmode" value="opaque">
<param name="devicefont" value="false">
<param name="bgcolor" value="#ffffff">
<param name="menu" value="true">
<param name="allowFullScreen" value="true">
<param name="allowScriptAccess" value="always">
<param name="salign" value="">
<param name="mode" value="slideshow">
<embed src="http://d1.scribdassets.com/ScribdViewer.swf?document_id=20755982&amp;access_key=key-11g4fpp0rh82bj7p3wko&amp;page=1&amp;version=1&amp;viewMode=slideshow" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" play="true" loop="true" scale="showall" wmode="opaque" devicefont="false" bgcolor="#ffffff" name="doc_553928157880354_object" menu="true" allowfullscreen="true" allowscriptaccess="always" salign="" type="application/x-shockwave-flash" align="middle" mode="slideshow" height="500" width="640"></embed></object></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Lee</strong> &middot; <time datetime="2009-10-12T17:52:00+00:00">October 12, 2009 at 5:52 pm</time></p>
      <p>Float like a butterfly, sting like a bee...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>oldmoe</strong> &middot; <time datetime="2009-10-12T18:43:00+00:00">October 12, 2009 at 6:43 pm</time></p>
      <p>Thanks for the review, I added a direct download link to the end of my blog post, you no longer need to register @ scribd</p>
    </li>
      <li>
      <p class="comment-meta"><strong>renoke</strong> &middot; <time datetime="2009-10-12T22:12:00+00:00">October 12, 2009 at 10:12 pm</time></p>
      <p>I've just started to read. Very interesting, good introduction on multiprocess and multithread principles. The benchmark between the servers is quite amazing.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daffy</strong> &middot; <time datetime="2009-10-13T13:39:00+00:00">October 13, 2009 at 1:39 pm</time></p>
      <p>What about Ebb? Wasn't that considered the greatest recently?</p><p><a href="ebb-web-framework-http-server-786.html" rel="nofollow">http://www.rubyinside.com/ebb-web-framework-http-server-786.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-10-13T13:45:00+00:00">October 13, 2009 at 1:45 pm</time></p>
      <p>@Daffy: It's certainly missing some other options that would be interesting to see. Ebb, certainly (though I'm not sure what its 1.9 status is) but especially Unicorn - which we'll be mentioning soon.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
