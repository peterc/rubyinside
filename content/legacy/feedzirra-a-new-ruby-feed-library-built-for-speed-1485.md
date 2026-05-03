---
title: Feedzirra – A New Ruby Feed Library “Built for Speed”
date: '2009-02-04'
author: Peter Cooper
author_slug: admin
post_id: 1485
slug: feedzirra-a-new-ruby-feed-library-built-for-speed-1485
url: "/feedzirra-a-new-ruby-feed-library-built-for-speed-1485.html"
categories:
- cool
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2009/02/feedzirra.gif" width="137" height="116" alt="feedzirra.gif" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"> <a href="http://github.com/pauldix/feedzirra/tree/master">Feedzirra</a> is an all-new Ruby feed parsing (it's <em>not</em> a generator) library by Paul Dix. The choice of feed parsing libraries in Ruby has been reasonably limited so far, so Feedzirra is a most welcome addition to the Ruby ecosystem. Its focus is on pure speed - it uses <a href="nokogiri-ruby-html-parser-and-xml-parser-1288.html">Nokogiri</a> (an ultra fast Ruby XML parser that depends on libxml) and <a href="http://github.com/taf2/curb/tree/master">curb</a> (bindings for libcurl - to do the HTTP work) so compilation is required. Feedzirra was designed to be used to fetch thousands of feeds, process updates quickly, save on bandwidth (with conditional GETs, etc) and be dead simple to use.</p>
<p>Paul is also interested in flexibility:</p>
<blockquote>
<p>A second design consideration was that I wanted the library to be extensible and customizable. This means that you can add custom parsers to Feedzirra to handle different feed types (like microformats, for example). What this also means is that if you find a bug in the parsing on a specific feed, you can write a parser (should take less than 20 lines of code) and use it with Feedzirra while you wait for me or a contributor to get the bug fix in. Feedzirra also allows you to define callback behavior after success or failure of fetching a feed.</p>
</blockquote>
<p>Paul has put together <a href="http://gist.github.com/57285">a compelling code example</a> that shows off several of Feedzirra's features - including basic fetching and parsing, multiple feed fetching, feed update fetching, and callbacks. To run it, just install Feedzirra:</p>
<pre><span class="ident">gem</span> <span class="ident">sources</span> <span class="punct">-</span><span class="ident">a</span> <span class="ident">http</span><span class="punct">:/</span><span class="regex"></span><span class="punct">/</span><span class="ident">gems</span><span class="punct">.</span><span class="ident">github</span><span class="punct">.</span><span class="ident">com</span>
<span class="ident">sudo gem</span> <span class="ident">install</span> <span class="ident">pauldix</span><span class="punct">-</span><span class="ident">feedzirra</span></pre>
<p>See <a href="http://www.pauldix.net/2009/02/feedzirra-a-ruby-feed-library-built-for-speed.html">Paul's announcement post for more</a>, along with comments regarding problems during installation (one key problem I had on OS X Leopard with <em>native</em> Ruby is that curb doesn't install properly - to resolve it <code>git clone git://github.com/taf2/curb.git</code> then run <code>rake gem</code> in the curb directory, then <code>sudo gem install pkg/curb-0.2.4.0.gem</code> - it's not a MacPorts only issue as Paul seems to indicate).</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Nazar</strong> &middot; <time datetime="2009-02-04T10:54:00+00:00">February 4, 2009 at 10:54 am</time></p>
      <p>Congratulations and well done on releasing a much needed library.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
