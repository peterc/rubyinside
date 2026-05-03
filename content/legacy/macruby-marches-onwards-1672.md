---
title: MacRuby Marches Onwards
date: '2009-04-01'
author: Peter Cooper
author_slug: admin
post_id: 1672
slug: macruby-marches-onwards-1672
url: "/macruby-marches-onwards-1672.html"
categories:
- controversy
- cool
- miscellaneous
- news
---

{{< rawhtml >}}
<p><img src="/assets/2009/04/macruby.png" width="137" height="38" alt="macruby.png" style="float:left; margin-right:12px; margin-bottom:12px;"> It was just several months ago that we <a href="apple-and-ruby-the-ongoing-relationship-1016.html">first began to mention</a> MacRuby on Ruby Inside, but it's been coming on by leaps and bounds since then. <a href="http://www.macruby.org/"><strong>MacRuby</strong></a> is a Mac OS X-based Ruby implementation that works on the Objective C runtime. It's based on Ruby 1.9 and uses the YARV VM (as Ruby 1.9 does) but will be switching to LLVM at the next major release. MacRuby is attempting to make Ruby a first class OS X development language.</p>
<p>The developments so far have been very promising and a lot of MacRuby news has come out in the past few weeks, which I'll try to summarize:</p>
<h3>MacRuby 0.4 Released</h3>
<p><a href="http://www.macruby.org/blog/2009/03/09/macruby-0.4.html">MacRuby 0.4 was released</a> a few weeks ago. Lots of new goodies too: a threaded garbage collector, full 64 bit support, DTrace probes (<a href="http://en.wikipedia.org/wiki/DTrace">DTrace</a> being a rather cool <em>tracing</em> feature in Solaris, FreeBSD and OS X), an Objective C API (so that MacRuby can be controlled from other Cocoa apps), and new Xcode templates.</p>
<p><a href="http://hcg.drtoast.com/"><img src="/assets/2009/04/hotcocoa-graphics.png" width="84" height="85" alt="hotcocoa-graphics.png" style="float:right; margin-bottom:12px; margin-left:12px; border:1px #000000 solid;"></a>MacRuby's samples are now particularly compelling. You can put together a fully(ish) featured OS X application in Ruby (using MacRuby), use Cocoa, and look fully native, but without the downsides of RubyCocoa (horrendous method names, for one). It's also possible to package up MacRuby based apps into regular OS X applications without too much difficulty, since MacRuby's runtime can be bundled as a framework. You should also check out <a href="http://hcg.drtoast.com/">HotCocoa::Graphics</a> - an easy-to-use graphics library that comes along with MacRuby.</p>
<h3>New site</h3>
<p><a href="http://www.macruby.org/"><img src="/assets/2009/04/macrubysite.png" width="129" height="85" alt="macrubysite.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"></a></p>
<p>MacRuby has signalled its transition into implementation adolescence by getting a snazzy new official Web site at <a href="http://www.macruby.org/">http://www.macruby.org/</a></p>
<p>It's not just a snazzy design though. This is probably my favorite Ruby implementation site already (although ruby-lang.org is pretty good) in terms of actually being useful. Relevant events, install instructions, blog posts, and download links are right there on the front page, along with the obligatory code example.</p>
<p>The design was by <a href="http://www.boboroshi.com/">John Athayde</a>.</p>
<h3>Experimental 0.5 announced and.. the controversial benchmarks</h3>
<p>MacRuby 0.5 has yet to arrive but it's already causing a stir..</p>
<p>The <a href="http://lists.macosforge.org/pipermail/macruby-devel/2009-March/001411.html">biggest change</a> is that MacRuby will be switching to an LLVM-based JIT compiler (layman's translation: it should be super fast) and a new IO subsystem. The early performance benchmarks in the alpha of all alphas of 0.5 were so exciting that Antonio Cangiano <a href="http://antoniocangiano.com/2009/03/29/why-macruby-matters/">wrote a blog post with lots of benchmark results and cool graphs</a> and (with some disclaimers) stated <em>"that at this stage of the game, MacRuby 0.5 is the fastest Ruby implementation around."</em> This caused, as most benchmarking tends to, a little bit of controversy to say the least.</p>
<p>I can't blame Antonio's enthusiasm, however. The early benchmarks show a generally positive picture of MacRuby's potential performance with just a few benchmarks working out slow than Ruby 1.9.1 and the majority coming in at between 1.1 to 8 times faster than Ruby 1.9.1 (though with a very high standard deviation). Charles Nutter <a href="http://blog.headius.com/2009/03/on-benchmarking.html">rightly pointed out</a> that it's wrong to call MacRuby the fastest anything just yet, since it still crashes for a lot of scripts and it's a <em>long</em> way from being mature. He cites MagLev as an example of why premature performance parading can backfire.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Brian Dunbar</strong> &middot; <time datetime="2009-04-01T18:35:00+00:00">April 1, 2009 at 6:35 pm</time></p>
      <p>I use a Mac.  So .. cool.</p><p>Except ... my production hosts .. and heck, dev hosts as well .. are Solaris.</p><p>Is there any point to tarting up my local machine with MacRuby if that's the only place I'll use it?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-04-01T19:24:00+00:00">April 1, 2009 at 7:24 pm</time></p>
      <p>The MacRuby team might have a different answer, but I'd say.. there's no point in using MacRuby in the near future /unless/ you want to use the Mac-specific features. Of course, from 0.5 and beyond MacRuby might be a lot faster and totally compatible with MRI, meaning, yes, you should use it, but it seems to be far from that point so far.</p><p>For the current moment, however, MacRuby is mostly useful if you want to use the Cocoa APIs in a nice way from Ruby.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2009-04-01T19:32:00+00:00">April 1, 2009 at 7:32 pm</time></p>
      <p>@Brian - HEATHEN! How dare you question the cult of Mac! Nobody deploys on OS X, but nevermind that! We must continue to develop a version of Ruby that only works on a Mac so we make cool Cocoa apps! Cocoa apps that could be built with standard Ruby and a C extension library, but nevermind that!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>George McGrumble</strong> &middot; <time datetime="2009-04-01T20:16:00+00:00">April 1, 2009 at 8:16 pm</time></p>
      <p>@Daniel - MacRuby makes it much more pleasant to develop Cocoa apps. If you don't see an advantage in that, well then perhaps Ruby is not really right for you in the first place.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brian Dunbar</strong> &middot; <time datetime="2009-04-01T20:39:00+00:00">April 1, 2009 at 8:39 pm</time></p>
      <p><i>If you don't see an advantage in that, well then perhaps Ruby is not really right for you in the first place.</i></p><p>I myself don't see an advantage to having something that makes it more pleasant to develop Cocoa apps - I don't develop Cocoa apps in the first place.</p><p>But then I've always seen my Mac as more a 'nix box with a fancy windows manager than 'a mac'.  Perhaps I'm odd.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>pjm</strong> &middot; <time datetime="2009-04-01T21:54:00+00:00">April 1, 2009 at 9:54 pm</time></p>
      <p>Nobody deploys on Macs? Wow, thanks for telling me: I almost thought that I deployed on Macs for a moment... </p><p>Perhaps it's worth pointing out that not every Rails application (for example) has a constant stream of hundreds or thousands of users per minute, so deploying to desktop machines is perfectly feasible in many situations. For example, I have a number of Rails applications that have a grand total of about 50 users each (by design, not by unpopularity!), and those users might spend 15 minutes each per week interacting with them. All apps sit perfectly happily, and respond quite quickly, on a desktop iMac, but if there's a significantly faster ruby available (and it runs Rails down the track) it'd be great to swap out MRI for MacRuby. Heck, even for developing applications for deployment elsewhere, or day to day scripts with or without a GUI, it'd be great to have a faster ruby in OS X. </p><p>So many grouches...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonno</strong> &middot; <time datetime="2009-04-02T00:18:00+00:00">April 2, 2009 at 12:18 am</time></p>
      <p>Is the ruby standard library able to be used from MacRuby? Can I require, for example, 'net/http'?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>George McGrumble</strong> &middot; <time datetime="2009-04-02T04:16:00+00:00">April 2, 2009 at 4:16 am</time></p>
      <p><i>I myself don't see an advantage to having something that makes it more pleasant to develop Cocoa apps - I don't develop Cocoa apps in the first place.</i></p><p>So you're saying that you're unable to perceive the advantage of something unless you personally have a need for it? Besides, you have a Mac. Perhaps someone else will now develop an app that you find useful.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brian Dunbar</strong> &middot; <time datetime="2009-04-02T13:00:00+00:00">April 2, 2009 at 1:00 pm</time></p>
      <p><i>So you're saying that you're unable to perceive the advantage of something unless you personally have a need for it?</i></p><p>No, I see how it's useful.  I don't see an advantage for me personally to use it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>David D'Andrea</strong> &middot; <time datetime="2009-04-02T17:07:00+00:00">April 2, 2009 at 5:07 pm</time></p>
      <p>@Jonno</p><p>david-dandreas-macbook:/ ddandrea$ /usr/local/bin/macirb --simple-prompt<br>
&gt;&gt; require 'net/http'<br>
=&gt; true</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nate Todd</strong> &middot; <time datetime="2009-04-02T17:39:00+00:00">April 2, 2009 at 5:39 pm</time></p>
      <p>@Jonno</p><p>Yes, net/http works just fine.  It's really gems that have problems running in MR right now.  You can vendor some and include them in your project, but some just won't install in macgems (here's looking at you hpricot...).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonno</strong> &middot; <time datetime="2009-04-02T23:29:00+00:00">April 2, 2009 at 11:29 pm</time></p>
      <p>@Nate @David </p><p>thanks. I had got the impression it was just a ruby interpreter - the stdlib + cocoa. I am pleased to see I can still get the productivity gains of the ruby stdlib. I am defiantly going to download it now.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ade</strong> &middot; <time datetime="2009-04-03T02:14:00+00:00">April 3, 2009 at 2:14 am</time></p>
      <p>"So many grouches..."</p><p>So true. Like my mom likes to say, if you don't have something nice to say, why say anything at all?  It's not like you're funding this project with your tax dollars.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ab5tract</strong> &middot; <time datetime="2009-04-06T17:36:00+00:00">April 6, 2009 at 5:36 pm</time></p>
      <p>Well, Cocoa is all well and good but are they aiming at cross platform support by trying to be compatible with GNUStep as well?</p><p>Just a question..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Soleone</strong> &middot; <time datetime="2009-04-07T19:26:00+00:00">April 7, 2009 at 7:26 pm</time></p>
      <p>@ab5tract</p><p>I don't think so, there's a reason it is called MacRuby! And imo it's not worth to get to the lowest common denominator to make it work on both platforms. Although I don't have any experience (yet) with Cocoa, it looks like a really nice framework - feature-wise, not syntax :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
