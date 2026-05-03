---
title: 'MessagePack: Efficient, Cross Language Binary Object Serialization'
date: '2010-03-20'
author: Peter Cooper
author_slug: admin
post_id: 3150
slug: messagepack-binary-object-serialization-3150
url: "/messagepack-binary-object-serialization-3150.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2010/03/crushed.png" class="alignleft size-thumbnail notbordered"><a href="http://msgpack.sourceforge.net/">MessagePack</a> <sup><a href="http://github.com/msgpack/msgpack">GitHub repo</a></sup> is a new binary-based object serialization protocol and library built with efficiency and speed in mind. Developer Sadayuki Furuhashi presents it as a faster alternative to <span class="caps">JSON</span> that has similarly broad support across several popular languages.</p>
<p>Serialization is the process of taking an object (such as a string, hash, or even something of your own creation) and turning it into a single time of data that can be transmitted down a network connection, stored in a file, or similar. Protocols like <span class="caps">JSON</span>, <span class="caps">YAML</span>, and <span class="caps">XML</span> are commonly used for this purpose, but for the highest efficiency, binary protocols are an alternative. One option available to all Ruby developers (as it's in the standard library) is the <a href="http://ruby-doc.org/core/classes/Marshal.html">Marshal library</a> but this protocol isn't cross-language friendly (or even between some Ruby versions).</p>
<p>To demonstrate MessagePack's speed, the developer presents the results of a benchmark where 200,000 objects made up of three integers and a 512 byte string were serialized and deserialized once each:</p>
<p><img src="/assets/2010/03/speedtest.png" alt=""></p>
<p>While Ruby is the focus, there are <a href="http://msgpack.sourceforge.net/#GettingStarted">also libraries</a> for Python, Perl, C/C++, Haskell, and Lua ready to roll.</p>
<h3>Installation and Example</h3>
<p>To install MessagePack:</p>
<pre><code>gem install msgpack</code></pre>
<p>Example:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">msgpack</span><span class="punct">'</span>
<span class="ident">msg</span> <span class="punct">=</span> <span class="punct">[</span><span class="number">1</span><span class="punct">,</span><span class="number">2</span><span class="punct">,</span><span class="number">3</span><span class="punct">].</span><span class="ident">to_msgpack</span>  <span class="comment">#=&gt; "x93x01x02x03"</span>
<span class="constant">MessagePack</span><span class="punct">.</span><span class="ident">unpack</span><span class="punct">(</span><span class="ident">msg</span><span class="punct">)</span>   <span class="comment">#=&gt; [1,2,3]</span></pre>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>rwz</strong> &middot; <time datetime="2010-03-20T16:31:00+00:00">March 20, 2010 at 4:31 pm</time></p>
      <p>MessagePack.pack({ :lol =&gt; :wut })<br>
NoMethodError: undefined method `to_msgpack' for :lol:Symbol</p><p>holy crap</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Scott Stubbs</strong> &middot; <time datetime="2010-03-20T19:49:00+00:00">March 20, 2010 at 7:49 pm</time></p>
      <p>This sounds a lot like BSON (<a href="http://bsonspec.org" rel="nofollow">http://bsonspec.org</a>).  I would be interested in seeing a comparison if that in fact was the case.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jerod Santo</strong> &middot; <time datetime="2010-03-20T21:37:00+00:00">March 20, 2010 at 9:37 pm</time></p>
      <p>The big win for JSON is how easily in-browser clients can consume the payload. This does look interesting for scenarios when neither serialization endpoint is a browser (or if there were a lightweight JavaScript implementation).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>AW</strong> &middot; <time datetime="2010-03-20T22:05:00+00:00">March 20, 2010 at 10:05 pm</time></p>
      <p>sounds good for Interprocess Communication or talking between basic TCP/IP based apps but for web stuff I'd definitely stick with JSON... seems kind of stupid to even have JSON on that graph to be honest.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>zimbatm</strong> &middot; <time datetime="2010-03-21T10:43:00+00:00">March 21, 2010 at 10:43 am</time></p>
      <p><code><br>
  &gt;&gt; (10**100).to_msgpackRangeError: bignum too big to convert into `unsigned long long'<br>
  	from (irb):8:in `to_msgpack'<br>
  	from (irb):8<br>
</code></p><p>This can be a problem if you expect all your ruby numbers to be packable.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Shane</strong> &middot; <time datetime="2010-03-21T14:40:00+00:00">March 21, 2010 at 2:40 pm</time></p>
      <p>BERT is another binary protocol that looks very similar on the surface and supports a bunch of languages as well: <a href="http://bert-rpc.org/" rel="nofollow">http://bert-rpc.org/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Flinn</strong> &middot; <time datetime="2010-03-22T15:50:00+00:00">March 22, 2010 at 3:50 pm</time></p>
      <p>A while back I did some benchmarking vs. JSON (C), Marshal, YAJL, BSON (C) and Bert.  MessagePack comes out on top.  <a href="http://gist.github.com/290425" rel="nofollow">http://gist.github.com/290425</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tony Arcieri</strong> &middot; <time datetime="2010-03-22T19:54:00+00:00">March 22, 2010 at 7:54 pm</time></p>
      <p>And as many have already noted, type support for MessagePack seems to be lacking (e.g. no symbols, no bignums)</p><p>BERT seems to have these problems handled a little better</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
