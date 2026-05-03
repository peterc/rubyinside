---
title: 'Cool.io: Node.js-style Event Driven Awesomeness for Rubyists'
date: '2010-12-15'
author: Peter Cooper
author_slug: admin
post_id: 4071
slug: cool-io-node-js-for-rubyists-4071
url: "/cool-io-node-js-for-rubyists-4071.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2010/12/cooldude.png" width="86" height="94" alt="cooldude.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;">Been missing esteemed rapper and author Coolio (real name <i>Tony Arcieri</i>) recently? He's been busy studying Ruby and building <a href="http://coolio.github.com/">Cool.io</a> (or <a href="https://github.com/tarcieri/cool.io">GitHub repo</a>), a <a href="http://nodejs.org/">Node.js</a> and <a href="http://sinatrarb.com/">Sinatra</a> inspired "event framework" for Ruby powered by <a href="http://software.schmorp.de/pkg/libev.html">libev</a>. Think <a href="http://rubyeventmachine.com/">EventMachine</a> but with a cuter, Sinatra-style API. <i>cool.io</i> isn't exactly new, though, it's a rewrite-meets-rebrand of <a href="http://www.ruby-forum.com/topic/136583">Rev</a> (which started life back in 2007).</p>
<blockquote class="stylized">
<p>Cool.io (formerly known as Rev, and pronounced like Coolio of Gangster's Paradise fame) is an event framework for Ruby built on libev, the same library that provides high performance asynchronous I/O for Node.js. Cool.io is great for building TCP clients and servers which handle large numbers of connections and are primarily I/O bound. Cool.io also provides APIs for filesystem monitoring.</p>
<p>Cool.io is an alternative to EventMachine, albeit one which using Ruby's own native I/O primitives rather than reinventing them, and does as much as possible in Ruby instead of C, which should make it easier for interested contributors to hack on.</p>
</blockquote>
<p><cite>Tony Arcieri</cite></p>
<p>You can install cool.io with <code>gem install cool.io</code> (it just feels <i>weird</i> to have a period in a gem name, no?) and be up and running quickly with cool.io's default example script:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">rubygems</span><span class="punct">'</span>
<span class="ident">require</span> <span class="punct">'</span><span class="string">cool.io</span><span class="punct">'</span>

<span class="constant">ADDR</span> <span class="punct">=</span> <span class="punct">'</span><span class="string">127.0.0.1</span><span class="punct">'</span>
<span class="constant">PORT</span> <span class="punct">=</span> <span class="number">4321</span>

<span class="ident">cool</span><span class="punct">.</span><span class="ident">io</span><span class="punct">.</span><span class="ident">server</span> <span class="constant">ADDR</span><span class="punct">,</span> <span class="constant">PORT</span> <span class="keyword">do</span>
  <span class="ident">on_connect</span> <span class="keyword">do</span>
    <span class="ident">puts</span> <span class="punct">"</span><span class="string"><span class="expr">#{remote_addr}</span>:<span class="expr">#{remote_port}</span> connected</span><span class="punct">"</span>
  <span class="keyword">end</span>

  <span class="ident">on_close</span> <span class="keyword">do</span>
    <span class="ident">puts</span> <span class="punct">"</span><span class="string"><span class="expr">#{remote_addr}</span>:<span class="expr">#{remote_port}</span> disconnected</span><span class="punct">"</span>
  <span class="keyword">end</span>

  <span class="ident">on_read</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">data</span><span class="punct">|</span>
    <span class="ident">write</span> <span class="ident">data</span>
  <span class="keyword">end</span>
<span class="keyword">end</span>

<span class="ident">puts</span> <span class="punct">"</span><span class="string">Echo server listening on <span class="expr">#{ADDR}</span>:<span class="expr">#{PORT}</span></span><span class="punct">"</span>
<span class="ident">cool</span><span class="punct">.</span><span class="ident">io</span><span class="punct">.</span><span class="ident">run</span></pre>
<p>This program listens on localhost at port 4321, accepts connections, and echos data back to them. You could make it serve up Web pages (especially through Rainbows), have it share data between clients to make a chat system or.. whatever you like.</p>
<p>Unlike a non-event driven single threaded daemon, a cool.io powered daemon can take multiple connections and manage them simultaneously without needing to fork or create extra threads. In this respect it's similar to EventMachine although it doesn't use EventMachine at all (but cutely has an <a href="https://github.com/tarcieri/cool.io/blob/master/lib/cool.io/eventmachine.rb">EventMachine emulator</a> baked in) and is developed mostly in Ruby rather than C.</p>
<p>Want to know more? <a href="http://coolio.github.com/">cool.io's snazzy homepage</a> is the place to start.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Andy Blake</strong> &middot; <time datetime="2010-12-15T08:34:00+00:00">December 15, 2010 at 8:34 am</time></p>
      <p>Coolio? It's a joke, right?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Guoliang Cao</strong> &middot; <time datetime="2010-12-15T21:22:00+00:00">December 15, 2010 at 9:22 pm</time></p>
      <p>This is cool! We do not want cool to appear in every object's method list though ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Roland</strong> &middot; <time datetime="2010-12-17T08:16:00+00:00">December 17, 2010 at 8:16 am</time></p>
      <p>hey, they took my name!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paul H</strong> &middot; <time datetime="2010-12-18T06:14:00+00:00">December 18, 2010 at 6:14 am</time></p>
      <p>I'm having trouble installing this on Windows 7 / Ruby 1.9.2. I am also unable to install iobuffer. Has anyone had this issue?</p><p>Both had the same behavior, failed to build gem native extension.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paul</strong> &middot; <time datetime="2010-12-23T17:26:00+00:00">December 23, 2010 at 5:26 pm</time></p>
      <p>@Andy It obviously is. The Guy on the cool.io homepage is the rapper Coolio whos realname is Artis Leon Ivey, Jr. according to wikipedia. Tony Arcieri looks a bit different according to his github account.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>mario</strong> &middot; <time datetime="2010-12-29T15:30:00+00:00">December 29, 2010 at 3:30 pm</time></p>
      <p>Is there an HTTP example anywhere? Would like to see how cool.io stacks up. node.js is blazing FAST and is about to get another speed boost from v8. I'm not tied to javascript, but the speed difference between Ruby and V8 Javascript is night and day.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nathan</strong> &middot; <time datetime="2011-01-08T01:44:00+00:00">January 8, 2011 at 1:44 am</time></p>
      <p>@mario node.js uses libev so cool.io should be the same as node.js</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
