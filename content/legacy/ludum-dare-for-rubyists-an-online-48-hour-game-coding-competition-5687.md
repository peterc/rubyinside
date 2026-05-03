---
title: 'Ludum Dare for Rubyists: An Online 48 Hour Game Coding Competition'
date: '2011-12-13'
author: Peter Cooper
author_slug: admin
post_id: 5687
slug: ludum-dare-for-rubyists-an-online-48-hour-game-coding-competition-5687
url: "/ludum-dare-for-rubyists-an-online-48-hour-game-coding-competition-5687.html"
categories:
- events
- news
---

{{< rawhtml >}}
<p><strong><a href="http://ludumdare.com/">Ludum Dare</a> is an online accelerated game development event that focuses on regular 48 hour competitions.</strong> Think Rails Rumble but for games! It's been around since 2002 but has had a big publicity boost recently due to the participation of Notch, the creator of the mind-bogglingly popular indie game <a href="http://www.minecraft.net/">Minecraft.</a></p>
<p><a href="http://ludumdare.com/"><img src="/assets/2011/12/ludum-dare.jpg" alt="" title="ludum-dare" width="640" height="127" class="alignnone size-full wp-image-5688"></a></p>
<p><strong>The next Ludum Dare contest is taking place this coming weekend between December 16-19, 2011 and I want to encourage Rubyists to take part.</strong> The competition tends to be dominated by Java, Flash, Microsoft XNA developers, and HTML5 developers, so it'd be great to see more Ruby entries (of which there have only been a couple so far).</p>
<p>During August's event, I, along with hundreds of others, was glued to Notch's livestream watching him code his game, Prelude of the Chambered (a <a href="https://www.youtube.com/watch?v=KcfFJ6pNEZk">6 minute version is on YouTube</a>). I was inspired enough to port his Java code into Ruby using JRuby, producing<br>
<a href="https://github.com/peterc/potc-jruby">potc-jruby</a> (sadly far slower than the original Java version). This time, I plan to enter for real and build my own original game.</p>
<p><iframe width="560" height="315" src="https://www.youtube.com/embed/KcfFJ6pNEZk" frameborder="0" allowfullscreen></iframe></p>
<h3>How to Take Part in Ludum Dare</h3>
<p>Go to the Ludum Dare homepage, read <a href="http://www.ludumdare.com/compo/rules/">the rules and guide</a>, <a href="http://www.ludumdare.com/compo/wp-admin/">register</a> on their WordPress blog, wait until the 'theme' has been decided, and start coding once the countdown is finished.</p>
<p>During the 48 hours (or 72 if you do the 'jam' version), you can post blog entries directly to the main Ludum Dare site (if you want) and submit your entry via a special link at the end. Entrants play and judge each other's entries for a period of three weeks before the winners are announced. Having more Rubyists involved would be useful since our games may be less likely to work cross platform or without Ruby installed.. (more on this shortly)</p>
<p>A quick summary of the rules:</p>
<ul>
<li>You have to work alone. (If you want to do a team effort, you need to enter the less restrictive 'jam' contest.)</li>
<li>All content and code must be created within the 48 hours (except for libraries, legally licensed fonts and drum/instrument samples).</li>
<li>Your game has to be based on the theme given out before the contest.</li>
<li>You must share the source code with the other participants at the end of the contest though you do <strong>not</strong> have to give it an open source license.</li>
</ul>
<p>The contest has a popular IRC channel (which is already quite active) at <strong>#ludumdare</strong> on <strong>irc.afternet.org.</strong> I'm <strong>petercooper</strong> on there - say hi! I'll be lurking in there a lot over the next week. Also, <a href="http://twitter.com/ludumdare">follow @ludumdare</a> on IRC for more updates and info.</p>
<p>To get a feel for the contest, check out this "keynote" from the <em>last</em> Ludum Dare. There'll be a new one for this year soon:</p>
<p><iframe width="640" height="480" src="https://www.youtube.com/embed/aHD1QBP4ww8" frameborder="0" allowfullscreen></iframe></p>
<h3>Building a Game in Ruby?</h3>
<p><img src="/assets/2009/05/rubystein-300x247.png" style="float: right; border: 2px solid #ccc">Building games in Ruby isn't popular but it's not frontier country either. <a href="rubystein-wolfenstein-3d-recreated-in-ruby-1751.html">Rubystein</a>, a Wolfenstein 3D pastiche by the Phusion guys, remains a favorite of mine and it even runs on 1.9 with only a few tweaks.</p>
<p>There's a <a href="http://www.oreillynet.com/pub/a/ruby/2007/12/04/creating-games-in-ruby.html">great series by Andrea Wright</a> that dates from 2007 but still has some handy pointers. We also have <a href="http://mon-ouie.github.com/projects/ray.html">Ray</a>, <a href="http://rubygame.org/">RubyGame</a>, and <a href="http://www.libgosu.org/">Gosu</a> which all have their fans (Ray is the most recent Ruby game library I'm aware of).</p>
<h3>Or.. JRuby!</h3>
<p>My choice for the contest is none of the above. Instead, it's <a href="http://jruby.org/">JRuby.</a> As part of the 'warmup process' for the contest, I've been playing with JRuby and the popular <a href="http://slick.cokeandcode.com/">Slick2D</a> Java library. The performance is amazing and the development process pretty straightforward.</p>
<p>Being a popular library in the Java world, I can use a lot of the Java-based tutorials and code samples for Slick2D to get a feel for how it all works. And.. I'll be writing an article for Ruby Inside in the next day or two showing you how to get started with it for yourself :-)</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Martijn</strong> &middot; <time datetime="2011-12-13T15:22:00+00:00">December 13, 2011 at 3:22 pm</time></p>
      <p>Don't forget <a href="https://github.com/ippa/chingu" rel="nofollow">chingu</a>, an excellent game library that leverages Gosu but also handles game states, input and assets. I was able to create a pretty complete game with it in mere hours.</p><p>However I'm curious about JRuby + Slick, too. Somehow I missed Slick in my search for a game library, even though I know of games that use it :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Karlin</strong> &middot; <time datetime="2011-12-13T15:25:00+00:00">December 13, 2011 at 3:25 pm</time></p>
      <p>You left out <a href="http://shawn42.github.com/gamebox/" rel="nofollow">gamebox</a> (which makes use of Gosu and Chipmunk). It's been used in LD compos in the past, and it's a great way to start making games with Ruby!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>kikito</strong> &middot; <time datetime="2011-12-13T16:57:00+00:00">December 13, 2011 at 4:57 pm</time></p>
      <blockquote cite="Peter"><p>And.. I'll be writing an article for Ruby Inside in the next day or two showing you how to get started with it for yourself</p></blockquote><p>Man, what a teaser.</p><p>Hopefully on the next Ludum Dare <a href="http://www.justskins.com/forums/matz-thoughts-on-rite-24356.html" rel="nofollow">rite</a> will have already been opensource, and we'll have another tool in our belt for this kind of things.</p><p>Until then, I'll keep using <a href="http://love2d.org" rel="nofollow">LÖVE</a> (warning! Not ruby!) for my 2d gaming experiments.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Soleone</strong> &middot; <time datetime="2011-12-13T23:58:00+00:00">December 13, 2011 at 11:58 pm</time></p>
      <p>+1 for Chingu, really nice little framework!</p><p>Very productive environment to build 2D based games. Good documentation and tons of example files to get started.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael Bensoussan</strong> &middot; <time datetime="2011-12-14T10:39:00+00:00">December 14, 2011 at 10:39 am</time></p>
      <p>I've been playing with JRuby and libGDX (based on LWJGL) and it's great.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
