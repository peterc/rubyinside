---
title: 'MacRuby 0.5 Released: A Significant, Stable Release'
date: '2010-02-02'
author: Peter Cooper
author_slug: admin
post_id: 2951
slug: macruby-0-5-released-2951
url: "/macruby-0-5-released-2951.html"
categories:
- news
- os-x-specific
---

{{< rawhtml >}}
<p><img src="/assets/2010/02/macruby_logo.png" width="118" height="88" alt="macruby_logo.png" style="float:left; margin-right:12px; margin-bottom:12px;"><a href="http://www.macruby.org/">MacRuby</a> has hit a significant milestone in its development today: <a href="http://www.macruby.org/blog/2010/01/31/macruby05.html">version 0.5</a>! The key features include improved HotCocoa support (though this is now maintained <a href="http://github.com/richkilmer/hotcocoa">separately from core on GitHub</a>), better Ahead-Of-Time (AOT) compilation, and support for OS X 10.6's Grand Central Dispatch.</p>
<h3>Give It A Go!</h3>
<p>If you've got a Mac and haven't yet tried out MacRuby, give it a go - its speed and general level of support for Ruby is very impressive. You can <a href="http://www.macruby.org/downloads.html">download MacRuby as a standalone package with installer</a> (for OS X 10.6 and higher) or if you're using <a href="rvm-ruby-version-manager-2347.html">RVM</a>, do an update and then <code>rvm install macruby</code> to get the latest nightly build. Matt Aimonetti, of the MacRuby project, reassures us that "MacRuby is namespaced and won’t affect your current Ruby installations" - but RVM is still an option, nonetheless.</p>
<p>Once you give MacRuby a try, check out HotCocoa too (installed with <code>macgem install hotcocoa</code>). It's a library that acts as a "Ruby layer" between Cocoa and MacRuby. Instead of wrestling with Cocoa's classes and verbose method names, HotCocoa wraps up Cocoa in a big, warm blanket of familiar Ruby. Take this very simple "throw a window with a button on the screen" app, for example:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">rubygems</span><span class="punct">'</span>
<span class="ident">require</span> <span class="punct">'</span><span class="string">hotcocoa</span><span class="punct">'</span>

<span class="ident">include</span> <span class="constant">HotCocoa</span>

<span class="ident">application</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">app</span><span class="punct">|</span>
  <span class="ident">win</span> <span class="punct">=</span> <span class="ident">window</span> <span class="symbol">:size</span> <span class="punct">=&gt;</span> <span class="punct">[</span><span class="number">100</span><span class="punct">,</span><span class="number">50</span><span class="punct">]</span>
  <span class="ident">b</span> <span class="punct">=</span> <span class="ident">button</span> <span class="symbol">:title</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">Hello</span><span class="punct">'</span>
  <span class="ident">b</span><span class="punct">.</span><span class="ident">on_action</span> <span class="punct">{</span> <span class="ident">puts</span> <span class="punct">'</span><span class="string">World!</span><span class="punct">'</span> <span class="punct">}</span>
  <span class="ident">win</span> <span class="punct">&lt;&lt;</span> <span class="ident">b</span>
<span class="keyword">end</span></pre>
<h3>Will the iPad support MacRuby?</h3>
<p>Matt <a href="http://merbist.com/2010/01/31/macruby-0-5-final-is-out/">says</a> "No." The problem isn't a lack of desire or interest, but that the iPhone OS (also used on the iPad) doesn't do automatic garbage collection or have BridgeSupport support - both of which are needed for MacRuby. Supposedly, though, contributors are looking into ways to circumvent these issues, but I'm more hopeful of GC support in iPhone OS 4.0..</p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><em>[ruby inside news]</em> Peter here! My next "big thing" is a new site called <a href="http://coder.io/">coder.io</a>. If you're into technologies like Ruby, Git, Python, the iPhone, MySQL, JavaScript, Clojure, etc, you might want to get on the coming sooon list :-) There should hopefully be some freebies/bonuses along with exclusive early access. Thanks!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Patrick Hernandez</strong> &middot; <time datetime="2010-02-02T00:41:00+00:00">February 2, 2010 at 12:41 am</time></p>
      <p>Congratulations to lrz and his team! Currently compiling and installing :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-02-02T00:42:00+00:00">February 2, 2010 at 12:42 am</time></p>
      <p>This release was totally born to be alive.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ronie Uliana</strong> &middot; <time datetime="2010-02-02T02:21:00+00:00">February 2, 2010 at 2:21 am</time></p>
      <p>Hmmmm... Nice! Time to check it out! Congratz!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tom Bortels</strong> &middot; <time datetime="2010-02-02T08:16:00+00:00">February 2, 2010 at 8:16 am</time></p>
      <p>Sweet - macruby is awesomer by the moment. It's wicked fast compared to the stock stuff. </p><p>Small quibble - the hotcocoa source above is slightly borked. The 2nd to last line should read "win &lt;&lt; b", with no space between the "&lt;"s.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John</strong> &middot; <time datetime="2010-02-02T09:06:00+00:00">February 2, 2010 at 9:06 am</time></p>
      <p>Looks great, time to learn Ruby! ps: sorry to nitpick but I think the last line of the example above should be "win &lt;&lt; b" rather than "win &lt; &lt; b". (Obvious to any Ruby programmer, but not to us noobs ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-02-02T21:48:00+00:00">February 2, 2010 at 9:48 pm</time></p>
      <p>Thanks for the note - not sure what happened there as I copied and pasted it from a working example on my machine. My syntaxer either threw a wobbly or my fingers did.. :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2010-02-03T16:54:00+00:00">February 3, 2010 at 4:54 pm</time></p>
      <p>anybody want to throw out a macruby benchmark using sinatra (or what not), for a speed comparison? (and also against rubinius)?</p><p>Also my usual complaint--no linux support?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>nate</strong> &middot; <time datetime="2010-02-04T15:33:00+00:00">February 4, 2010 at 3:33 pm</time></p>
      <p>i should probably look at the docs for this, but will installing this stomp on my existing ruby 1.9.x installed from source under /usr/local/bin?</p><p>i'd like to try this but would need both to coexist. is rvm the best way to manage this?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>andrew</strong> &middot; <time datetime="2010-02-04T22:59:00+00:00">February 4, 2010 at 10:59 pm</time></p>
      <p>Well, it is MACRuby so I wouldn't expect Linx support anytime (soon). </p><p>I'm going to check it out right away :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-02-05T05:10:00+00:00">February 5, 2010 at 5:10 am</time></p>
      <p>nate: It turns into "macruby", "macirb" and "macgem" so probably not :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jacob Atzen</strong> &middot; <time datetime="2010-02-11T09:36:00+00:00">February 11, 2010 at 9:36 am</time></p>
      <p>Looks very sweet. Unfortunately I couldn't get it to run under Leopard using rvm:</p><p>installer: Cannot install on volume / because it is disabled.<br>
installer: This package is only meant for SnowLeopard.</p><p>Would be nice if it didn't try to be clever and just used rvm's way of handling multiple rubies.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-02-11T19:41:00+00:00">February 11, 2010 at 7:41 pm</time></p>
      <p>If you install it with RVM, I believe it does just use RVM's way. At least, that's how it feels when I use it.</p><p>But, yeah, it needs Snow Leopard due to the APIs used.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
