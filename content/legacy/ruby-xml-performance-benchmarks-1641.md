---
title: 'Ruby XML Performance Shootout: Nokogiri vs LibXML vs Hpricot vs REXML'
date: '2009-03-16'
author: Peter Cooper
author_slug: admin
post_id: 1641
slug: ruby-xml-performance-benchmarks-1641
url: "/ruby-xml-performance-benchmarks-1641.html"
categories:
- controversy
- news
---

{{< rawhtml >}}
<p><img src="/assets/2009/03/xmlresults.gif" width="121" height="112" alt="xmlresults.gif" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"><em>Disclaimer: Every time we've run a piece about benchmarking or performance numbers on Ruby Inside, a retraction or significant correction has come out shortly thereafter. Benchmarking is hard, ugly, and quite often wrong or biased. It is not useless, however, but if you depend on the results in any way, you should certainly try to do your own benchmarking to confirm.</em></p>
<p>Last week, <a href="libxml-ruby-1x-released-ruby-now-a-serious-xml-player-1630.html">libxml-ruby 1 was released</a> - a significant achievement since it had been under development for seven years. I <em>suspected</em> that it might just pip <a href="nokogiri-ruby-html-parser-and-xml-parser-1288.html">Nokogiri</a> to the "fastest way to parse XML in Ruby" post and invited people to benchmark them. Turns out.. it ain't so. Nokogiri is the fastest.</p>
<p><a href="http://twitter.com/tenderlove">Aaron Peterson</a>, the developer behind Nokogiri, decided to run some tests and <a href="http://github.com/tenderlove/xml_truth/blob/29c76c4fab978ca9dfbe146d90aba21f9f7ca267/document_parsing.rdoc">he's published the results</a> in a dossier called xml_truth. The benchmarking environment was Ruby 1.8.6 on OS X 10.5 with libxml2 2.7.3 installed. <a href="http://wiki.github.com/why/hpricot">Hpricot</a> 0.6.170 competes against Nokogiri 1.2.2, LibXML-Ruby 1.1.2, and the standard library's <a href="http://www.germane-software.com/software/rexml/">REXML</a>.</p>
<p>Aaron put together a whole suite of benchmarks, but if you just want an overview, here's a chart showing the results for in memory parsing of a 14 megabyte XML document. Note that the parsing time is in seconds and the Y-axis is <em>logarithmic</em>. Yes, Hpricot took over a minute, and REXML took over two minutes, while Nokogiri and libxml-ruby came in at a few seconds each:</p>
<p><img src="/assets/2009/03/xmlresults1.gif" width="282" height="263" alt="xmlresults.gif" style="margin-right:12px;"></p>
<p>Want all the actual numbers? Want to see the actual tests? Want to run them for yourself? Head over to Aaron's project <a href="http://github.com/tenderlove/xml_truth/blob/29c76c4fab978ca9dfbe146d90aba21f9f7ca267/document_parsing.rdoc">here</a>. Have fun! I'll putting on my flame-retardant jacket in preparation for all of the fallout about how inaccurate these tests are in 3.. 2.. 1.. :-)</p>
<p><b>Update: <a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/331411">Hpricot 0.7 has been released</a> and Patrick Tulskie has run <a href="http://github.com/PatrickTulskie/xml_truth/blob/c9bd1b932e74059ae3d93efaf8fcb306619f1fd3/document_parsing_v2.rdoc">some extra benchmarks.</a></b> These results show that Hpricot beats libxml-ruby and Nokogiri under certain circumstances (quite significantly under an XPath test).</p>
<p><b>Update 2 (March 22, 2009):</b> libxml-ruby's developer Charles Savage has found why libxml-ruby lagged behind Nokogiri and <a href="http://cfis.savagexi.com/2009/03/21/libxml-ruby-1-1-3-boosting-performance">has resolved it..</a> :)</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-03-16T08:26:00+00:00">March 16, 2009 at 8:26 am</time></p>
      <p>Just in case anyone's wondering, Y-axis is seconds ;-) Now I know why statistics was my least favorite part of math..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Weitzman</strong> &middot; <time datetime="2009-03-16T13:56:00+00:00">March 16, 2009 at 1:56 pm</time></p>
      <p>I use hpricot to parse thousands of very small (&lt; 1k) xml documents.  I wonder what that benchmark would look like.  (I am currently happy with the performance, so only a big boost would cause me to switch.)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aaron Patterson</strong> &middot; <time datetime="2009-03-16T18:11:00+00:00">March 16, 2009 at 6:11 pm</time></p>
      <p>These benchmarks are not complete.  I want to compare document parse times, xpath search, css search, document traversal, attribute accessing, and memory usage.</p><p>I would also like to compare API for similar functions.</p><p>I will post to my website when I feel it is "done".</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Davis</strong> &middot; <time datetime="2009-03-16T18:16:00+00:00">March 16, 2009 at 6:16 pm</time></p>
      <p>I think just as important as the speed, if not more so, is the API:</p><p>    LibXML::XML::Parser.string(@xml).parse # in memory<br>
    LibXML::XML::Parser.io(xml).parse # via file/socket/whatever</p><p>vs:</p><p>    Nokogiri::XML(xml) # both</p><p>No contest.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>flavio</strong> &middot; <time datetime="2009-03-16T18:26:00+00:00">March 16, 2009 at 6:26 pm</time></p>
      <p>I tested, rexml and libxml<br>
the benchmarking it's true</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hugo</strong> &middot; <time datetime="2009-03-17T03:22:00+00:00">March 17, 2009 at 3:22 am</time></p>
      <p>I'd like to see these tests for Ruby 1.9.1</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-03-17T05:21:00+00:00">March 17, 2009 at 5:21 am</time></p>
      <p>If you can get Hpricot running on 1.9.1, you can run Aaron's code. Despite trying many times, I've never succeeded, although Nokogiri installs fine. Perhaps I'll install libxml-ruby on 1.9.1 now and just run the head to head tests...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-03-17T05:27:00+00:00">March 17, 2009 at 5:27 am</time></p>
      <p>Okay, tests are running... :) Commented out the Hpricot parts!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-03-17T05:39:00+00:00">March 17, 2009 at 5:39 am</time></p>
      <p><strong>Ruby 1.9.1. Nokogiri: 1.2.2 vs LibXML: 1.1.2</strong></p><pre>test_IO_parsing N=100
                  user     system      total        real   kBps
null         10.250000   0.750000  11.000000 ( 10.990493) 64822.66
nokogiri     44.870000   1.560000  46.430000 ( 46.380883) 15360.49
libxml-ruby  53.670000   1.470000  55.140000 ( 55.097135) 12930.49</pre><p>So, nokogiri still wins. Including REXML and going to N=10:</p><pre>test_IO_parsing N=10
                  user     system      total        real   kBps
null          0.990000   0.070000   1.060000 (  1.063771) 66972.40
nokogiri      4.160000   0.240000   4.400000 (  4.400213) 16190.88
libxml-ruby   5.270000   0.170000   5.440000 (  5.440546) 13094.88
rexml       420.520000   1.530000 422.050000 (421.625631) 168.97</pre><p>So REXML is still a waste of time, even in 1.9.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael Campbell</strong> &middot; <time datetime="2009-03-17T11:28:00+00:00">March 17, 2009 at 11:28 am</time></p>
      <p>Using a log scale with a linearly spaced axis is bad form, btw.   Despite your footnote, it is counter-intuitive.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-03-17T19:05:00+00:00">March 17, 2009 at 7:05 pm</time></p>
      <p>That's Numbers for you. It's really shitty at making graphs. Sadly the linear axis was even worse.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Patrick Tulskie</strong> &middot; <time datetime="2009-03-17T22:14:00+00:00">March 17, 2009 at 10:14 pm</time></p>
      <p>I think we need to modify the tests to take into consideration this little announcement here:</p><p><a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/331411" rel="nofollow">http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/331411</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Patrick Tulskie</strong> &middot; <time datetime="2009-03-18T04:33:00+00:00">March 18, 2009 at 4:33 am</time></p>
      <p>Couldn't wait for someone to address Why's complaints so I forked the tests, updated a few things, and re-ran them.  Here's my fork and I've submitted a pull request to Aaron: <a href="http://github.com/PatrickTulskie/xml_truth/" rel="nofollow">http://github.com/PatrickTulskie/xml_truth/</a></p><p>Interesting to say the least.  I'm a performance nut and I love knowing what each gem is best at.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan Wedekind</strong> &middot; <time datetime="2009-03-18T09:26:00+00:00">March 18, 2009 at 9:26 am</time></p>
      <p>I haven't used XML with Ruby so far. In the past I've used Xalan-C with C++. It supports XML parsing, XPath queries, XSD verification, and XSLT transformations. In terms of functionality most other XML libraries are not even close. But then again you don't need to rely on XML so much if you are using Ruby.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charlie</strong> &middot; <time datetime="2009-03-22T05:24:00+00:00">March 22, 2009 at 5:24 am</time></p>
      <p>Finally had a chance to look into this.  libxml-ruby and nokogiri should have equivalent performance, and now do with the libxml-ruby 1.1.3 release.  I posted what was causing the difference on my blog at <a href="http://cfis.savagexi.com/2009/03/21/libxml-ruby-1-1-3-boosting-performance" rel="nofollow">http://cfis.savagexi.com/2009/03/21/libxml-ruby-1-1-3-boosting-performance</a>.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kris</strong> &middot; <time datetime="2009-03-22T12:49:00+00:00">March 22, 2009 at 12:49 pm</time></p>
      <p>On Ubuntu Hardy:</p><p>sudo apt-get update<br>
sudo apt-get install libxslt1-dev<br>
sudo apt-get install libxml2-dev<br>
sudo gem install nokogiri</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
