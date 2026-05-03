---
title: 'Autumn: Easy, Feature-Rich IRC Bots in Ruby'
date: '2008-07-15'
author: Peter Cooper
author_slug: admin
post_id: 953
slug: autumn-ruby-irc-bot-framework-953
url: "/autumn-ruby-irc-bot-framework-953.html"
categories:
- cool
- miscellaneous
- tools
---

{{< rawhtml >}}
<p><a href="http://github.com/RISCfuture/autumn/tree/master"><img src="/assets/2008/07/autumnbot.jpg" width="220" height="260" alt="autumnbot.jpg" style="border:1px #000000 solid;"></a><a href="http://github.com/RISCfuture/autumn/tree/master"></a></p>
<p><a href="http://github.com/RISCfuture/autumn/tree/master">Autumn</a> is a framework by <a href="http://www.timothymorgan.info/">Tim Morgan</a> that makes it easy to develop powerful IRC (Internet Relay Chat) bots with Ruby. Version 3, a significant update, was launched just a week ago. The code is <a href="http://github.com/RISCfuture/autumn/tree/master">available</a> on Github, so it's ready to fork, tweak and work on to your heart's content.</p>
<p>An instance of an "Autumn app" is laid out in a similar way to a Rails app. There are <em>config</em>, <em>doc</em>, <em>script</em>, <em>libs</em>, <em>tmp</em>, and <em>log</em> folders, containing much what you'd expect, as well as a <em>leaves</em> folder (Autumn refers to "bots" as "leaves") that contains any number of folders each containing data, helpers, models, tasks, and "views" for individual bots. A default Autumn app comes with two bots pre-installed called <em>insulter</em> and <em>scorekeeper</em> that you can use to learn from.</p>
<p>Autumn is a pretty significant piece of work and Tim has done an excellent job at documenting it, leaving almost no stone unturned in <a href="http://github.com/RISCfuture/autumn/tree/master/README.textile">demonstrating how to create bots / leaves of your own</a> with the framework.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Soleone</strong> &middot; <time datetime="2008-07-15T20:09:00+00:00">July 15, 2008 at 8:09 pm</time></p>
      <p>I can only recommend this! I tried version 2, which was already great, and allowed me to have my own Bot (with loads of features) within one day. It's really a nice and clean framework, which was fun to use.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rob Kaufman</strong> &middot; <time datetime="2008-07-15T20:10:00+00:00">July 15, 2008 at 8:10 pm</time></p>
      <p>I wonder how this compares to [Butler](http://butler.rubyforge.org/)?  When I looked at 2.x version of Autumn a while back it didn't have anywhere near Butlers chops...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tim Morgan</strong> &middot; <time datetime="2008-07-15T22:48:00+00:00">July 15, 2008 at 10:48 pm</time></p>
      <p>Thanks for the writeup!  I just wanted to let the curious reader know that I recently checked a new authentication module into the master branch. The docs haven't been updated yet, so if you're just learning how to do Autumn, you will see some discrepancies regarding how to authenticate/protect your bots.</p><p>The stable branch contains the old, tried-and-true authentication code, so you can work from there if you don't want to use the newer, greener auth code.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>apeiros</strong> &middot; <time datetime="2008-07-17T22:14:00+00:00">July 17, 2008 at 10:14 pm</time></p>
      <p>Thank you Rob Kaufmann, you just made my day :)<br>
I hope you'll like what butler 2 got in store.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-07-18T01:09:00+00:00">July 18, 2008 at 1:09 am</time></p>
      <p>apeiros: Make sure to post about it on RubyFlow and/or e-mail me when you drop a new version. I might be able to write about that too :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
