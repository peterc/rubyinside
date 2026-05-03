---
title: 'Rubystein: Wolfenstein 3D Recreated in Ruby'
date: '2009-05-11'
author: Peter Cooper
author_slug: admin
post_id: 1751
slug: rubystein-wolfenstein-3d-recreated-in-ruby-1751
url: "/rubystein-wolfenstein-3d-recreated-in-ruby-1751.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img class="alignleft size-medium wp-image-1752" title="rubystein" src="/assets/2009/05/rubystein-300x247.png" alt="" width="130" style="margin: 0px 12px 12px 0px">At <a href="http://en.oreilly.com/rails2009/">RailsConf 2009</a> (of which a summary will be coming soon to Ruby Inside), Hongli Lai and Ninh Bui of Phusion (the guys behind <a href="http://www.modrails.com/">Passenger</a>) gave a presentation called <em>Scaling Rails.</em> As part of this, they wanted to demonstrate that Ruby is powerful enough to run a 3D game at a decent speed so they built <strong><a href="http://github.com/FooBarWidget/rubystein/tree/master">Rubystein, a Wolfenstein 3D clone in Ruby</a></strong>, using the <a href="http://www.libgosu.org/">Gosu</a> game development library.</p>
<p>Rubystein is not a <em>true</em> clone in the sense that it's exactly the same as Wolfenstein 3D, but the principles are the same. It's heavily tailored to Ninh and Hongli's presentation, however, and features a "pack of Mongrels", various Rubyists, and *** **** as a boss.</p>
<p><a href="/assets/2009/05/rubystein2.png"><img src="/assets/2009/05/rubystein2-300x209.png" alt="" title="rubystein2" width="300" height="209" class="alignnone size-medium wp-image-1754"></a></p>
<p>As a standalone work, it's impressive. I've not seen such a slick 3D game developed in Ruby before. On my netbook running stock Ruby 1.8.6 it runs slow, but under Ruby Enterprise Edition it's somewhat faster though. To my surprise, however, it also runs perfectly under Ruby 1.9 and it <em>flies</em> there.</p>
<p>Hongli and Ninh are quick to point out that Rubystein is a very, very rough work. The project has no directory structure and is just a giant mass of files. The application itself is reasonably well structured, though, and there's plenty of opportunity to use this code as a base to build your own variations. No instructions are provided, however, so it's not for the timid. To try out Rubystein as it is, just git clone the repository from <code><a href="git://github.com/FooBarWidget/rubystein.git">git://github.com/FooBarWidget/rubystein.git</a></code> and then run <code>wolf3d.rb</code>.</p>
<p><em>Note: If you don't have the font Myriad Pro installed, the game will quit when you reach a boss. Either install Myriad Pro or change the font name to something more generic in <code>wolf3d.rb</code>.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>rubylicio.us</strong> &middot; <time datetime="2009-05-11T04:38:00+00:00">May 11, 2009 at 4:38 am</time></p>
      <p>.. 3D in 2D-game-library accelerated by 3D-hardware :P</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Zoran Rilak</strong> &middot; <time datetime="2009-05-11T06:22:00+00:00">May 11, 2009 at 6:22 am</time></p>
      <p>...and it features none other than Sean Connery, of the Zardoz (in)fame, as the main protagonist!  Impressive. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Vidmantas</strong> &middot; <time datetime="2009-05-11T07:22:00+00:00">May 11, 2009 at 7:22 am</time></p>
      <p>Can't try, because gosu fails to install through gems or even source :(</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Thijs van der Vossen</strong> &middot; <time datetime="2009-05-11T08:20:00+00:00">May 11, 2009 at 8:20 am</time></p>
      <p>Somehow, I don't think recreating a game engine in Ruby that ran fine on a 25 Mhz 386 says much about the performance of Ruby.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ninh Bui</strong> &middot; <time datetime="2009-05-11T10:32:00+00:00">May 11, 2009 at 10:32 am</time></p>
      <p>Hey Pete,</p><p>Thanks for the plug :-) Just wanted to let people know that if you're attending rubyonosx.com that Julian Raschke of Gosu and I will do a talk on game development there with Ruby!</p><p>@rubylicio.us I know right? Doesn't get more contrived than that (apart from using a 3d game to drive a point home at a scaling rails talk perhaps ;-))</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew</strong> &middot; <time datetime="2009-05-11T12:48:00+00:00">May 11, 2009 at 12:48 pm</time></p>
      <p>This is amazing :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gregg Pollack</strong> &middot; <time datetime="2009-05-11T14:02:00+00:00">May 11, 2009 at 2:02 pm</time></p>
      <p>Just posted the video I made with Ninh of him walking through the game:</p><p><a href="http://www.railsenvy.com/2009/5/11/rubystein-ruby-meets-wolfenstein" rel="nofollow">http://www.railsenvy.com/2009/5/11/rubystein-ruby-meets-wolfenstein</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alex</strong> &middot; <time datetime="2009-05-11T15:03:00+00:00">May 11, 2009 at 3:03 pm</time></p>
      <p>Great work. Run with jruby ?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brian</strong> &middot; <time datetime="2009-05-11T17:04:00+00:00">May 11, 2009 at 5:04 pm</time></p>
      <p>I guess I don't see why this is all that impressive. Wolfenstein is nearly two decades old. I sure as hell hope Ruby can run such a game on modern hardware. This feels like demonstrating the towing capacity of a pickup by tossing a cinder block in the back.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Derek Neighbors</strong> &middot; <time datetime="2009-05-11T17:59:00+00:00">May 11, 2009 at 5:59 pm</time></p>
      <p>This is just too incredible to not share with others.  Boss *** is the best spoof ever.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Marlon</strong> &middot; <time datetime="2009-05-11T18:03:00+00:00">May 11, 2009 at 6:03 pm</time></p>
      <p>It's interesting to try it on Matz Ruby 1.8.7 vs REE....there's a definte speed difference.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stephen</strong> &middot; <time datetime="2009-05-11T18:06:00+00:00">May 11, 2009 at 6:06 pm</time></p>
      <p>Next up...Ruake? :P</p>
    </li>
      <li>
      <p class="comment-meta"><strong>seydar</strong> &middot; <time datetime="2009-05-11T18:15:00+00:00">May 11, 2009 at 6:15 pm</time></p>
      <p>Sweet job with the game! However, I must object to having people (ie, *** ****) portrayed derogatorily in this. It's a dick move, and while it's funny for about 3 seconds, I kind of expected better from professionals.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-05-11T18:45:00+00:00">May 11, 2009 at 6:45 pm</time></p>
      <p>seydar: I didn't provide the context on this, but *** **** actually supplied sounds for the game and so, I assume, supports his inclusion in it. I know everyone else in the game was also asked whether they wanted to be included or not.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-05-11T18:46:00+00:00">May 11, 2009 at 6:46 pm</time></p>
      <p>@Thijs van der Vossen: I was thinking that on my journey back from RailsConf. I was trying to work out roughly the multiple in processing power of my machine back then to now, and therefore coming up with a vague multiplier of how much slower Ruby is than x86 ;-P It was at least 100x.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2009-05-11T19:07:00+00:00">May 11, 2009 at 7:07 pm</time></p>
      <p>seydar: we, the makers of the game, are also portrayed in the game so I'm not sure why you think it's a "dick move" or why it's not "professional". And unlike ***, which only turns into a pony, we actually die in the game.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stephen</strong> &middot; <time datetime="2009-05-11T19:57:00+00:00">May 11, 2009 at 7:57 pm</time></p>
      <p>@seydar: begone, troll that thou are!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ninh Bui</strong> &middot; <time datetime="2009-05-11T20:06:00+00:00">May 11, 2009 at 8:06 pm</time></p>
      <p>@Thijs van der Vossen: From a performance perspective, definitely, you're right: it just affirms that interpreted language are in general slower than compiled languages. In the case of Carmack, the guy wrote some of the raycasting routines in asm to gain speed seeing as compilers couldn't optimize as aggressively as they can nowadays.</p><p>That's not necessarily the point I want to drive home. Instead, I think one must take into consideration that the code for this game was written in roughly 2500 lines of ruby code in about 80 hours from scratch: from two guys who have never written a game before in their life. I believe that's something that's worth more taking a look at that we believe is the power of Ruby (and Gosu) for enabling one to write games like this in a concise and effective manner.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ninh Bui</strong> &middot; <time datetime="2009-05-11T20:18:00+00:00">May 11, 2009 at 8:18 pm</time></p>
      <p>Also, during our talk at Railsconf and as one can also see in the video of the guys from Railsenvy, we assert and confirm that Ruby is indeed relatively slow. Having said that however, one is still able to write silly stuff like games. I believe the headliner on our slides summarizes it best: "Ruby is slow, but not THAT slow".</p><p>(Pete, could you merge this with my previous comment? I'm affraid I hit the submit a bit too soon ;-))</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael Hartl</strong> &middot; <time datetime="2009-05-11T21:35:00+00:00">May 11, 2009 at 9:35 pm</time></p>
      <p>I cut my video game teeth on Wolfenstein 3D back in the day ("Mein Leiben!"), and seeing this game in action was one of the highlights of RailsConf for me. Thanks to Hongli Lai and Ninh Bui for making it, and to Gregg Pollack for making that awesome video!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>*** ****</strong> &middot; <time datetime="2009-05-11T23:13:00+00:00">May 11, 2009 at 11:13 pm</time></p>
      <p>Just a quick FYI for y'all.  First, I not only gave Ninh and Hongli permission to use my "evil rocker" image in their game, but helped write most of the songs and sound effects for my part of it.</p><p>Why?  Because it's damn funny that's why.</p><p>I don't take myself all that seriously, and I'm always interested in helping someone pull off a good laugh.  Especially when they do it with code, art, and music.</p><p>I mean c'mon, Sean Connery is running around killing packs of mongrels with a ruby.  Right, that's totally meant to be serious.  My name comes from a Sean Connery movie named Zardoz.  Fucking awesome.  This is probably the best tribute yet.</p><p>P.S. Whoever wrote "I like it" up there wasn't me.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-05-12T00:55:00+00:00">May 12, 2009 at 12:55 am</time></p>
      <p>Whoever it was was posting from a Canadian IP address :P (Brock University, specifically)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Shairon Toledo</strong> &middot; <time datetime="2009-05-12T11:32:00+00:00">May 12, 2009 at 11:32 am</time></p>
      <p>it's very funny</p><p>"PHP Power down" - badness... :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hubert Łępicki</strong> &middot; <time datetime="2009-05-12T16:51:00+00:00">May 12, 2009 at 4:51 pm</time></p>
      <p>Woow, this is amazing :D. Good stuff, I split tea all over my t-shirt when I noticed Jed being transformed into pink ponny!</p><p>However, I also can't see this being a proof of Ruby speed, or that it scales well, it's more like a funny joke than that :).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hubert Łępicki</strong> &middot; <time datetime="2009-05-12T16:56:00+00:00">May 12, 2009 at 4:56 pm</time></p>
      <p>Sorry, I mean "***" not "Jed" :). Ugh, I wish we had editing comments here.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan Wedekind</strong> &middot; <time datetime="2009-05-12T19:23:00+00:00">May 12, 2009 at 7:23 pm</time></p>
      <p>LOL. That's brilliant. 2600 lines of code. Maybe one should add some <a href="http://projects.comu.edu.tr/sefir/images/python-logo.gif" rel="nofollow">nasty snakes</a> as well ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Patrick Espake</strong> &middot; <time datetime="2009-05-31T15:20:00+00:00">May 31, 2009 at 3:20 pm</time></p>
      <p>He is a very simple game, but extramamente heavy to run. I tried to run Ruby 1.8 and no chance. I tried also with Ruby Enterprise Edition.</p><p>Ruby is a very beautiful language, but also very heavy. The performance is not a strong point of Ruby.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
