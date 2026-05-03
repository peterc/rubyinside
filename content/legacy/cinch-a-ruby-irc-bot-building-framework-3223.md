---
title: 'Cinch: A Ruby IRC Bot Building Framework'
date: '2010-04-27'
author: Peter Cooper
author_slug: admin
post_id: 3223
slug: cinch-a-ruby-irc-bot-building-framework-3223
url: "/cinch-a-ruby-irc-bot-building-framework-3223.html"
categories:
- cool
---

{{< rawhtml >}}
<p><img src="/assets/2010/04/bot.png" class="alignleft size-thumbnail bordered"><a href="http://rdoc.injekt.net/cinch/">Cinch</a> <sup>(or <a href="http://github.com/injekt/cinch">GitHub repo</a>)</sup> is a new Ruby "microframework" for creating <a href="http://en.wikipedia.org/wiki/Internet_Relay_Chat"><span class="caps">IRC</span></a> bots. Effectively, Cinch is a library that both abstracts away all of the complexities of dealing with <span class="caps">IRC</span> servers and presents a <span class="caps">DSL</span> for rolling out your own functionality.</p>
<p>Cinch's <a href="http://wiki.github.com/injekt/cinch/hello-bot">Hello Bot example</a> demonstrates how you can easily create a bot that connects to an <span class="caps">IRC</span> server (irc.freenode.org), joins a channel (#cinch) and then replies to greetings:</p>
<pre><span class="ident">irc</span> <span class="punct">=</span> <span class="constant">Cinch</span><span class="punct">.</span><span class="ident">setup</span> <span class="symbol">:verbose</span> <span class="punct">=&gt;</span> <span class="constant">true</span> <span class="keyword">do</span>
  <span class="ident">server</span> <span class="punct">"</span><span class="string">irc.freenode.org</span><span class="punct">"</span>
  <span class="ident">nick</span> <span class="punct">"</span><span class="string">Cinchbot</span><span class="punct">"</span>
  <span class="ident">channels</span> <span class="punct">%w(</span><span class="string">#cinch</span><span class="punct">)</span>
<span class="keyword">end</span>

<span class="ident">irc</span><span class="punct">.</span><span class="ident">plugin</span> <span class="punct">"</span><span class="string">hello</span><span class="punct">"</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">m</span><span class="punct">|</span>
  <span class="ident">m</span><span class="punct">.</span><span class="ident">reply</span> <span class="punct">"</span><span class="string">Hello, <span class="expr">#{m.nick}</span>!</span><span class="punct">"</span>
<span class="keyword">end</span>

<span class="ident">irc</span><span class="punct">.</span><span class="ident">run</span></pre>
<p>Cinch isn't the first attempt at building a <span class="caps">DSL</span> for creating bots in Ruby. <a href="autumn-ruby-irc-bot-framework-953.html">Autumn</a> is perhaps the most famous existing library, but it's extremely <em>heavy</em> compared to Cinch. Cinch vs Autumn is almost like Sinatra vs Rails. Other libraries include <a href="http://ruby-rbot.org/">Rbot</a> and <a href="http://rubyforge.org/projects/butler/">Butler</a>.</p>
<p><strong>Update: I've been reminded in the comments that <a href="http://github.com/ichverstehe/isaac">Isaac</a> is another IRC bot DSL that's very much like Cinch.</strong></p>
<p>If you prefer to get nearer the wire and see how the <span class="caps">IRC</span> protocol works, <a href="http://snippets.dzone.com/posts/show/1785">this Ruby code snippet</a> provides basic <span class="caps">IRC</span> functionality.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>robgleeson</strong> &middot; <time datetime="2010-04-28T01:17:00+00:00">April 28, 2010 at 1:17 am</time></p>
      <p>Reminds me of Isaac ( <a href="http://github.com/ichverstehe/isaac" rel="nofollow">http://github.com/ichverstehe/isaac</a> ).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-04-28T01:35:00+00:00">April 28, 2010 at 1:35 am</time></p>
      <p>I had a hunch there was one I was missing! Great call out.. I'll try and work this in somehow.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>KTamas</strong> &middot; <time datetime="2010-04-28T06:32:00+00:00">April 28, 2010 at 6:32 am</time></p>
      <p>It's weird that nobody seems to know about RBot, which is a very mature Ruby IRC Bot:<br>
<a href="http://ruby-rbot.org/" rel="nofollow">http://ruby-rbot.org/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Zach Karpinski</strong> &middot; <time datetime="2010-05-13T18:38:00+00:00">May 13, 2010 at 6:38 pm</time></p>
      <p>The big problem with Rbot is that it requires the custom BDB library which frequently is not available.  The site is located in France and I have frequently had problems retrieving it.  Rbot should keep a local copy at least.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Adam Pearson</strong> &middot; <time datetime="2010-05-14T15:24:00+00:00">May 14, 2010 at 3:24 pm</time></p>
      <p>I have also created smirc (<a href="http://github.com/radamant/smirc" rel="nofollow">http://github.com/radamant/smirc</a>) heavily based on Isaac, but with a less DSL-ish approach.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
