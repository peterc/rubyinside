---
title: A WebKit Plugin Written in MacRuby
date: '2011-01-13'
author: Peter Cooper
author_slug: admin
post_id: 4189
slug: a-webkit-plugin-written-in-macruby-4189
url: "/a-webkit-plugin-written-in-macruby-4189.html"
categories:
- cool
- os-x-specific
---

{{< rawhtml >}}
<p><img src="/assets/2011/01/webkit.png" width="66" height="70" alt="webkit.png" style="float:left; margin-right:12px; margin-bottom:12px;">Eloy Duran (of the Dutch Rails consultancy <a href="http://www.fngtps.com/">Fingertips</a>) has put together an interesting side project: a <a href="https://github.com/alloy/MacRubyWebKitPlugInExample">WebKit plugin written in MacRuby</a>. His 'MacRubyWebKitPluginExample' project on GitHub is a short, self contained example of how to pull it off, so it's worth checking out if you want to do something similar. Eloy's example simply allows Ruby code to be supplied by a text box in a WebView and then executed by MacRuby on the back end.</p>
<p>Here's <a href="http://www.youtube.com/watch?v=EZXX4Esl3jM">a video</a> showing it in action:</p>
<p><object width="600" height="475"><param name="movie" value="http://www.youtube.com/v/EZXX4Esl3jM?fs=1&amp;hl=en_US&amp;rel=0">
<param name="allowFullScreen" value="true">
<param name="allowscriptaccess" value="always">
<embed src="http://www.youtube.com/v/EZXX4Esl3jM?fs=1&amp;hl=en_US&amp;rel=0" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="600" height="475"></embed></object></p>
<p>Before you get too excited, there are some significant provisos. Eloy explains:</p>
<blockquote class="stylized">
<p>Whoa, hold your horses, son. Because this brings us to the most important note, and will most probably be sad news to you, which is that none of the common WebKit based browsers support this... This means <b>no</b> Safari <b>nor</b> Chrome. [Due to their lack of support for garbage collection.]</p>
<p>The latter could possibly be compiled with garbage collection support, it’s completely open-source after all, but I was not able to do so in my quick attempts. In case you'd like to have a go, I could not get ‘Chromium Framework.framework’ to support it. Let me know if you are successful.</p>
<p>However, it's possible to use the plugin from a Web browser because, well, that's what a WebView <i>is</i>. You can build a simple Web browser</p>
</blockquote>
<p><cite>Eloy Duran</cite></p>
<p>So it's early days, but these problems seem surmountable, and in the interim it could be a useful technique for those of you building MacRuby OS X apps with custom WebKit WebViews.</p>
<p><i>Thanks to</i> <a href="http://www.igvita.com/"><i>Ilya Grigorik</i></a> <i>for pointing this project out on Twitter.</i></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Eloy Durán</strong> &middot; <time datetime="2011-01-13T10:55:00+00:00">January 13, 2011 at 10:55 am</time></p>
      <p>Thanks for the mention Peter!</p><p>It's worth noting, that the example illustrates how to get custom NSView instances in a WebView. In this case I just used a simple NSTextField, which, in itself, might not look very interesting besides the point that you can do things like eval Ruby code ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-01-13T11:13:00+00:00">January 13, 2011 at 11:13 am</time></p>
      <p>Could that as easily have been a TEXTAREA rigged up through JavaScript to call through to your code? I'm assuming so and that's what smells particularly interesting to me (the idea of extending existing app views with this stuff).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Eloy Durán</strong> &middot; <time datetime="2011-01-13T11:26:00+00:00">January 13, 2011 at 11:26 am</time></p>
      <p>Sure thing! See the code of Miner, the app we wrote for the RubyAndRails 2010 hackfest:</p><p>* MacRuby side exposing methods to the JS runtime: <a href="https://github.com/Fingertips/miner/blob/master/app/MainWindowController.rb" rel="nofollow">https://github.com/Fingertips/miner/blob/master/app/MainWindowController.rb</a><br>
* JS side using the exposed MacRuby methods: <a href="https://github.com/Fingertips/miner/blob/master/site/public/javascripts/install_gem.js" rel="nofollow">https://github.com/Fingertips/miner/blob/master/site/public/javascripts/install_gem.js</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
