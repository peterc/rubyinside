---
title: 'Gosu: A Cross-Platform 2D Game Development Library for Ruby and C++'
date: '2007-08-16'
author: Peter Cooper
author_slug: admin
post_id: 579
slug: gosu-a-cross-platform-2d-game-development-library-for-ruby-and-c-579
url: "/gosu-a-cross-platform-2d-game-development-library-for-ruby-and-c-579.html"
categories:
- cool
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2007/08/gosu.jpg" height="144" width="259" border="1" hspace="4" vspace="4" alt="Gosu"></p>
<p><a href="http://code.google.com/p/gosu/">Gosu</a> claims it's the "coolest gamedev library around." That's pretty hard to qualify, but with a focus on Ruby, I won't be one to argue. It's installable as a gem, with a simple <em>gem install gosu</em>, is MIT licensed (although the sound component is third party closed source), and works on OS X, Linux and Windows. It supports 2D graphics (accelerated with your 3D hardware), sound, and various forms of input (keyboard, mouse, gamepad, etc).</p>
<p><em>(Note: Sorry for the slow flow of posts on Ruby Inside this week.. I still have no broadband due to the house move, but it will be back on in the next few days.. and there's a great flow of Ruby news that has built up coming your way.)</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Greg</strong> &middot; <time datetime="2007-08-16T15:13:00+00:00">August 16, 2007 at 3:13 pm</time></p>
      <p>Maybe I'm doing something wrong, but after I install gosu using gem, gosu isn't available to require.  So far I've only tried this on Mac.  Anyone else have this problem?</p><p>Greg</p>
    </li>
      <li>
      <p class="comment-meta"><strong>zerohalo</strong> &middot; <time datetime="2007-08-16T16:05:00+00:00">August 16, 2007 at 4:05 pm</time></p>
      <p>Rubygame (<a href="http://sourceforge.net/projects/rubygame/" rel="nofollow">http://sourceforge.net/projects/rubygame/</a>) also looks promising.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Daigle</strong> &middot; <time datetime="2007-08-16T17:09:00+00:00">August 16, 2007 at 5:09 pm</time></p>
      <p>For a great summary of Ruby game development be sure to check out "Andrea O.K. Wright's talk at the recent Ruby Hoedown":<a href="http://rubyhoedown2007.confreaks.com/session09.html" rel="nofollow">http://rubyhoedown2007.confreaks.com/session09.html</a>.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>AndrewO</strong> &middot; <time datetime="2007-08-16T20:29:00+00:00">August 16, 2007 at 8:29 pm</time></p>
      <p>Greg: had the same problem.  You need to add require 'rubygems' to Tutorial.rb (or open it using ruby -rubygems Tutorial.rb).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>AndrewO</strong> &middot; <time datetime="2007-08-16T20:48:00+00:00">August 16, 2007 at 8:48 pm</time></p>
      <p>Oh, and to get the CptnRuby example working, you'll have to change the name of the Gem class to something that doesn't conflict the Gem module from Rubygems.  Tsk, tsk... no namespacing...</p><p>That said, this looks pretty cool and I'm definitely looking forward to playing with it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Julian</strong> &middot; <time datetime="2007-08-16T22:06:00+00:00">August 16, 2007 at 10:06 pm</time></p>
      <p>Greg: Did you require 'rubygems' before requiring 'gosu'? Then it works for me (Mac too). Note that when installing as a gem, there's a name clash in one of the samples, CptnRuby.rb, so you'll have to add "Gem = nil" before "class Gem".<br>
HTH!</p><p>:)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Scott Thorpe</strong> &middot; <time datetime="2007-08-16T22:59:00+00:00">August 16, 2007 at 10:59 pm</time></p>
      <p>Greg,</p><p>you have to require the guso.so file located in the folder.</p><p>PM if you have questions. aol:salve345</p><p>--Scott</p>
    </li>
      <li>
      <p class="comment-meta"><strong>zerohalo</strong> &middot; <time datetime="2007-08-17T05:09:00+00:00">August 17, 2007 at 5:09 am</time></p>
      <p>@greg: I believe you have to copy gosu.so into your program folder.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>David Richards</strong> &middot; <time datetime="2007-08-25T00:41:00+00:00">August 25, 2007 at 12:41 am</time></p>
      <p>Hey, gosu is good stuff. I ported some game logic i made a year ago that rendered using rmagick to it in a few hours (tho I did go spagetti, it was not gosu's fault. ) </p><p>re: Ryan Daigle Says:<br>
The link to the correct video above should be: </p><p><a href="http://rubyhoedown2007.confreaks.com/session05.html" rel="nofollow">http://rubyhoedown2007.confreaks.com/session05.html</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
