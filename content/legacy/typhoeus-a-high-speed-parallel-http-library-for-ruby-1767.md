---
title: 'Typhoeus: A High Speed, Parallel HTTP Library for Ruby'
date: '2009-05-13'
author: Peter Cooper
author_slug: admin
post_id: 1767
slug: typhoeus-a-high-speed-parallel-http-library-for-ruby-1767
url: "/typhoeus-a-high-speed-parallel-http-library-for-ruby-1767.html"
categories:
- cool
- news
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2009/05/typhon.jpg" width="92" height="149" alt="typhon.jpg" style="float:left; margin-right:12px; margin-bottom:12px;">Paul Dix, of <a href="feedzirra-a-new-ruby-feed-library-built-for-speed-1485.html">Feedzirra</a> fame, strikes again! This time with <a href="http://www.pauldix.net/2009/05/breath-fire-over-http-in-ruby-with-typhoeus.html"><strong>Typhoeus</strong></a> (<a href="http://github.com/pauldix/typhoeus/tree/master">Github repo</a>), a high-speed, parallel HTTP request library for Ruby. At first glance, you could be forgiven for wondering what the point is when we already have John Nunemaker's awesome <a href="http://github.com/jnunemaker/httparty/tree/master">HTTParty</a> to build simple HTTP clients, but Typhoeus is, in many ways, like HTTParty on ten cans of Red Bull.</p>
<p>Typhoeus was built because Paul wanted to make numerous simultaneous HTTP requests at a time from his Ruby code. He didn't want any blocking and the whole setup had to be as fast as possible. To do this, he's interfaced with <a href="http://curl.haxx.se/">libcurl</a> and <a href="http://curl.haxx.se/libcurl/c/libcurl-multi.html">libcurl-multi</a> to pull off high speed concurrent HTTP requests and then laid a tidy Ruby API over the top.</p>
<p>Paul has <a href="http://www.pauldix.net/2009/05/breath-fire-over-http-in-ruby-with-typhoeus.html">some example code</a> for you to check out, and while it's a <em>little</em> more verbose than HTTParty, the benefits available to you if you need to do high speed, concurrent requests make this a must-have for your Ruby repertoire. An interesting part of Paul's approach is that Typhoeus uses lazy evaluation to pull off the concurrency. When you build a request, the request isn't performed right away, as it would be with, say, Net::HTTP or HTTParty. Instead, a proxy object is maintained that then triggers the request at the very point that data is demanded from the client app.</p>
<p>Installation instructions, potential snafus, and usage information is covered <a href="http://github.com/pauldix/typhoeus/tree/master">on the official Github repo page</a>.</p>
<p><em>Note: Paul plans to update Feedzirra to using Typhoeus in due course, but currently they use totally different HTTP request techniques.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-05-13T18:51:00+00:00">May 13, 2009 at 6:51 pm</time></p>
      <p>Controversy! Matt Aimonetti has put together <a href="http://gist.github.com/109902" rel="nofollow">a benchmark</a> that he claims shows net/http to be faster. Don't be too quick to judge though, there's a bit of <a href="http://search.twitter.com/search?q=typhoeus" rel="nofollow">a discussion on Twitter</a> going on.. so watch this space :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paul Dix</strong> &middot; <time datetime="2009-05-13T19:21:00+00:00">May 13, 2009 at 7:21 pm</time></p>
      <p>Thanks for the coverage Peter! I've forked Matt's gist to show <a href="http://gist.github.com/111223" rel="nofollow">how it should be done to have Typhoeus make the calls in parallel</a>.</p><p>Also note that the end number output of how much slower or faster one is than the other is off. The 45s sleep throws that number out of wack.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-05-13T19:23:00+00:00">May 13, 2009 at 7:23 pm</time></p>
      <p>Phew, that's good news! I was wondering what was going on for a minute there :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paul Dix</strong> &middot; <time datetime="2009-05-13T19:24:00+00:00">May 13, 2009 at 7:24 pm</time></p>
      <p>There's one other thing I forgot to mention. Typhoeus keeps a pool of libcurl easy handles to run requests. Warming the pool can take a little extra time. In the grand scheme of things this doesn't matter. For a benchmark, however, the pool should really be warmed before starting measurements.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ashley</strong> &middot; <time datetime="2009-05-15T07:19:00+00:00">May 15, 2009 at 7:19 am</time></p>
      <p>This is awesome, I love mythical greek gods with 100 fire breathing serpent heads! And combining that with the mighty Feedzirra will be even better...</p><p>Rock on Paul! :D</p>
    </li>
      <li>
      <p class="comment-meta"><strong>мeнимбaлaм</strong> &middot; <time datetime="2009-05-22T18:25:00+00:00">May 22, 2009 at 6:25 pm</time></p>
      <p>Автор, посты у вас, конечно, очень интересные. Но вы не подумывали заменить дизайн?</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
