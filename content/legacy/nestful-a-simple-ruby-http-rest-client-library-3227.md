---
title: 'Nestful: A Simple Ruby HTTP/REST Client Library'
date: '2010-04-28'
author: Peter Cooper
author_slug: admin
post_id: 3227
slug: nestful-a-simple-ruby-http-rest-client-library-3227
url: "/nestful-a-simple-ruby-http-rest-client-library-3227.html"
categories:
- cool
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2010/04/laweb.png" class="alignleft size-thumbnail notbordered"><a href="http://github.com/maccman/nestful">Nestful</a> is a simple <span class="caps">HTTP</span>/<span class="caps">REST</span> client library for Ruby, developed by Alex MacCaw (of <a href="juggernaut-real-time-socket-connection-between-your-rails-views-and-your-app-151.html">Juggernaut</a>) fame. Nestful allows you to consume basic Web services easily, usually in a single line of code. It can deal with <span class="caps">JSON</span>, buffered downloads, and callbacks out of the box.</p>
<p><a href="httparty-web-api-rest-service-consumption-from-ruby-class-981.html">HTTParty</a> is the current, <em>de-facto</em> simple <span class="caps">HTTP</span>/<span class="caps">REST</span> client library used by most Rubyists (when <code>net/http</code> won't do or when <a href="typhoeus-a-high-speed-parallel-http-library-for-ruby-1767.html">Typhoeus</a> is too overkill) but Nestful differs enough from HTTParty to live alongside it. While HTTParty encourages you to build up some structure and separate the types of resources you're accessing into classes (that HTTParty then extends), Nestful offers a simpler, "just call a method from anywhere" approach.</p>
<p>Some basic Nestful examples:</p>
<pre>Nestful.get 'http://example.com' #=&gt; "body"
Nestful.post 'http://example.com', :format =&gt; :form #=&gt; "body"
Nestful.get 'http://example.com', :params =&gt; {:nestled =&gt; {:params =&gt; 1}}
Nestful.get 'http://example.com', :format =&gt; :json #=&gt; {:json_hash =&gt; 1}
Nestful::Resource.new('http://example.com')['assets'][1].get(:format =&gt; :xml) #=&gt; {:xml_hash =&gt; 1}</pre>
<p>Nestful's features include:</p>
<ul>
<li>Simple <span class="caps">API</span>
</li>
<li>File buffering</li>
<li>Before/Progress/After Callbacks</li>
<li>
<span class="caps">JSON</span> &amp; <span class="caps">XML</span> requests</li>
<li>Multipart requests (file uploading)</li>
<li>Resource <span class="caps">API</span>
</li>
<li>Proxy support</li>
<li>
<span class="caps">SSL</span> support</li>
</ul>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Technocrat</strong> &middot; <time datetime="2010-04-28T16:28:00+00:00">April 28, 2010 at 4:28 pm</time></p>
      <p>This is different from REST Client how?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alex</strong> &middot; <time datetime="2010-04-28T17:57:00+00:00">April 28, 2010 at 5:57 pm</time></p>
      <p>Technocrat,</p><p>You're right - this is similar to RestClient. However, I guess I made Nestful as an act of stubbornness of my part - I personally didn't like RestClient's code or API - and had a enough issues with it to make my own library.</p><p>Alex</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sohan</strong> &middot; <time datetime="2010-04-28T22:56:00+00:00">April 28, 2010 at 10:56 pm</time></p>
      <p>Your post has been linked at the drink rails blog.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tim</strong> &middot; <time datetime="2010-05-18T05:07:00+00:00">May 18, 2010 at 5:07 am</time></p>
      <p>Hey, are there some examples of how this is used in an application?</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
