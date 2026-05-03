---
title: 'Interesting Ruby Tidbits That Don’t Need Separate Posts #13'
date: '2008-01-08'
author: Peter Cooper
author_slug: admin
post_id: 689
slug: interesting-ruby-tidbits-that-dont-need-separate-posts-13-689
url: "/interesting-ruby-tidbits-that-dont-need-separate-posts-13-689.html"
categories:
- compilations
- miscellaneous
- news
- ruby-on-rails
- tools
- microsoft-windows
---

{{< rawhtml >}}
<p><strong>Anvil (Ruby GUI App Framework) Gets an Update</strong></p>
<p><strong><img src="/assets/2008/01/anvilblankapp.png" width="225" height="154"><br></strong></p>
<p>A new version of <a href="http://anvil.rubyforge.org/">Anvil</a>, a Ruby framework for developing GUI applications, <a href="anvil-another-framework-for-developing-gui-applications-602.html">previously covered here</a> on Ruby Inside, has been released. Lance Carlson has done a great job of making developing a basic GUI application on OS X, Windows or Linux a job that takes minutes rather than hours. All you need to do is install the Anvil gem, run a basic app generator, and a "Rails-esque" structure and basic app is created. If you haven't taken a look at Anvil yet, give it a look.</p>
<p>Lucas Carlson also wanted to let everyone know that Anvil now includes the "widget_wrapper" gem which is a new gem focusing on "DSLing GUI toolkits" starting with WxRuby but progressing on to RubyCocoa, Swing, IronRuby, OpenGL, and so forth. Anything that makes cross-platform GUI apps easier to develop is exciting, so check it out.</p>
<p><strong>Instant Rails 2.0 for Windows Released</strong></p>
<p>Windows Rails developers will know of <a href="http://instantrails.rubyforge.org/wiki/wiki.pl">Instant Rails</a>, a "one app installs the whole stack" type affair that installs Rails, Apache, MySQL and Ruby all in one lump, pre-configured and ready to run. Well, <a href="http://rubyforge.org/projects/instantrails/">Instant Rails 2.0</a> is now available and, surprise surprise, includes Rails 2.0!</p>
<p><strong>ADS Mantis - Dedicated Management of your EC2/RightScale Deployed Rails Apps</strong></p>
<p>Robert Dempsey wanted to let everyone know about Atlantic Dominion Solutions' new <a href="http://www.techcfl.com/ads-mantis">ADS Mantis service</a> that provides dedicated management of RightScale-deployed EC2-based Rails applications.</p>
<p><strong>New Erlang / Ruby Bridge Released, "RBridge"</strong></p>
<p>In May 2007, I <a href="erlang-ruby-bridge-its-erlectricity-487.html">wrote about</a> an early stage interoperability bridge between the Erlang and Ruby programming languages called <a href="http://code.google.com/p/erlectricity/">Erlectricity</a>. I also said:</p>
<blockquote>
<p>Ruby / Erlang interoperability and co-operation is likely to become a big topic in the Ruby community towards the end of the year.</p>
</blockquote>
<p>That didn't really happen, and as far as I can tell, Erlectricity didn't get beyond version 0.1. Just this week, however, Chuck Vose has written in to say he's working on a new effort called <a href="http://ruby-mnesia.rubyforge.org/">RBridge</a> that uses code from an older project called RulangBridge. He has a <a href="http://www.chuckvose.com/articles/2008/01/07/concurrent-code-in-ruby-1-8-6-through-inlining">quick tutorial up here</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Alex MacCaw</strong> &middot; <time datetime="2008-01-08T18:50:00+00:00">January 8, 2008 at 6:50 pm</time></p>
      <p>How would you go about deploying something like this? You can expect the average user to install Ruby. Perhaps JRuby is the answer? Most people have Java installed.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alex MacCaw</strong> &middot; <time datetime="2008-01-08T18:54:00+00:00">January 8, 2008 at 6:54 pm</time></p>
      <p>Sorry, I was referring to the Anvil project</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-08T19:09:00+00:00">January 8, 2008 at 7:09 pm</time></p>
      <p>On OS X it's not going to be a real issue, as long as the right gems can get installed (potentially tricky, I think compilation is involved with wxruby, although you could package the libraries up, I reckon). With other platforms, it's the same issue as always.. there are a few packaging systems out there that can help but nothing particularly slick that I've seen. For developing GUI apps for yourself though, no problem, of course. I'd like to hear from others on this issue though.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sam</strong> &middot; <time datetime="2008-01-09T00:30:00+00:00">January 9, 2008 at 12:30 am</time></p>
      <p>At one point you refer to Lance as "Lucas".  Gotta keep those Carlsons straight!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-09T00:31:00+00:00">January 9, 2008 at 12:31 am</time></p>
      <p>Fixed, thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tomash</strong> &middot; <time datetime="2008-01-09T12:17:00+00:00">January 9, 2008 at 12:17 pm</time></p>
      <p>InstantRails? With RoR 2.0? Dammit, they've announced the end of the project and recommended switching to Bitnami RubyStack (which sucks a bit compared to IRails), which I did, and now they're telling we can get back into InstantRails?</p><p>I want to hug them, then kick their butt, and then hug'em again :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Lance Carlson</strong> &middot; <time datetime="2008-01-10T05:33:00+00:00">January 10, 2008 at 5:33 am</time></p>
      <p>The average person in the future should not have to install Ruby. I have various ideas for the packaging of applications but I'm not sure what is best. I'm not sure any of the GUI packages have figured this out yet without installing ruby. Any suggestions?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Robert Dempsey</strong> &middot; <time datetime="2008-01-10T18:41:00+00:00">January 10, 2008 at 6:41 pm</time></p>
      <p>Peter - thank you for the mention of ADS Mantis. It is something that we are very excited about. Developers shouldn't have to worry about the sys admin side of the equation when deploying to EC2, and now, they don't have to. We are in the process of expanding ADS Mantis to provide management and monitoring of Rails applications hosted on services other than EC2, as well as a partner program. Thanks again.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alex Fenton</strong> &middot; <time datetime="2008-01-15T15:05:00+00:00">January 15, 2008 at 3:05 pm</time></p>
      <p>For redistributing wxRuby-based applications, rubyscript2exe or exerb both work well, although the latter is Windows only. It's trivial to create a runnable .exe file that contains ruby and all the necessary libraries including wxRuby. This can then be packaged into a installer using something like InnoSetup or NSIS to make a program that's indistinguishable from a compiled application.</p><p>It's similarly easy to do this with FxRuby, but somewhat harder with Ruby/QT and GTK because they're built differently.</p><p>On compilation - wxRuby can be compiled on any major platform, but most people install using pre-compiled binary gems for OS X, Windows or Linux. These have no external dependencies - it's a one-step install.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
