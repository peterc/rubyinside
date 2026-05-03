---
title: Yahoo! Video Library for Ruby Released
date: '2006-12-05'
author: Peter Cooper
author_slug: admin
post_id: 321
slug: yahoo-video-library-for-ruby-released-321
url: "/yahoo-video-library-for-ruby-released-321.html"
categories:
- cool
- elsewhere
- news
- ruby-tricks
---

{{< rawhtml >}}
<p>Walter Korman has <a href="http://lemurware.blogspot.com/2006/12/yahoo-video-ruby-api-release.html">released the first version</a> of a Yahoo! Video library for Ruby. All it takes is a <em>gem install yahoo-video</em> and some simple code like this:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">rubygems</span><span class="punct">'</span>
<span class="ident">require</span> <span class="punct">'</span><span class="string">yahoo-video</span><span class="punct">'</span>

<span class="comment"># your application id for use with the yahoo search services.  you can</span>
<span class="comment"># get one at http://api.search.yahoo.com/webservices/register_application.</span>
<span class="constant">APP_ID</span> <span class="punct">=</span> <span class="constant">YOUR_APP_ID_HERE</span>

<span class="ident">query</span> <span class="punct">=</span> <span class="constant">ARGV</span><span class="punct">[</span><span class="number">0</span><span class="punct">]</span>
<span class="ident">print</span> <span class="punct">"</span><span class="string">Running a video search for '</span><span class="expr">#{query}</span>'...<span class="escape">\</span>n<span class="punct">"</span>

<span class="ident">client</span> <span class="punct">=</span> <span class="constant">YahooVideo</span><span class="punct">::</span><span class="constant">Client</span><span class="punct">.</span><span class="ident">new</span> <span class="constant">APP_ID</span>
<span class="ident">request</span> <span class="punct">=</span> <span class="constant">YahooVideo</span><span class="punct">::</span><span class="constant">SearchRequest</span><span class="punct">.</span><span class="ident">new</span> <span class="symbol">:query</span> <span class="punct">=&gt;</span> <span class="ident">query</span>
<span class="ident">response</span> <span class="punct">=</span> <span class="ident">client</span><span class="punct">.</span><span class="ident">search</span> <span class="ident">request</span>
</pre>
<p>As Walter <a href="http://lemurware.blogspot.com/2006/12/yahoo-video-ruby-api-release.html">points out</a>, this gives Ruby the distinct honor of supporting the trifecta of video search services: Yahoo! Video, Google Video, and YouTube.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http:///" rel="external nofollow" class="url">AdSense Money Maker</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
