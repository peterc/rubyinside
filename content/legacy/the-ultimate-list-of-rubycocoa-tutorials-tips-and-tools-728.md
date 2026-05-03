---
title: The Ultimate List of RubyCocoa Tutorials, Tips and Tools
date: '2008-02-06'
author: Peter Cooper
author_slug: admin
post_id: 728
slug: the-ultimate-list-of-rubycocoa-tutorials-tips-and-tools-728
url: "/the-ultimate-list-of-rubycocoa-tutorials-tips-and-tools-728.html"
categories:
- compilations
- elsewhere
- os-x-specific
- reference
- tools
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2008/02/rubycocoa.png" alt="rubycocoa.png" width="143" height="32"></p>
<p><a href="http://rubycocoa.sourceforge.net/HomePage">RubyCocoa</a> is a Ruby library and Mac OS X framework that bridges the Ruby programming language to the delights of Objective C and, more precisely, Cocoa, Apple's primary OS X application development framework. Included with Mac OS X Leopard (10.5.x), but also available to install for Tiger, RubyCocoa makes it easy to develop Ruby applications that take full advantage of what OS X's internal frameworks and libraries have to offer, whether it's building a regular GUI application or interacting with low level elements of OS X.</p>
<p>This post rounds up a lot of RubyCocoa-focused resources, tutorials, and other links, so that if you're new to RubyCocoa and just want to "dive in," a lot of the pages you'll want to visit are organized here. Enjoy!</p>
<p><big><strong>Introduction</strong></big></p>
<div style="margin-left: 2em">
<p><a href="http://rubycocoa.sourceforge.net/HomePage">Official RubyCocoa Homepage</a> - News and official information about RubyCocoa, including how to get started, links to documentation and a few code snippets.</p>
<p><a href="http://rubycocoa.sourceforge.net/ProjectsUsingRubyCocoa">List of Projects using RubyCocoa</a> - Just what it says, a list of projects using the RubyCocoa library! Some of them come with source so could be worth checking out.</p>
<p><a href="http://treadpath.typepad.com/thoughtintomotion/2008/01/rubycocoa-top-5.html">5 Things to Get Started with RubyCocoa</a> - Chris Schmitt outlines five things you should do in order to get up to speed with RubyCocoa.</p>
<p><a href="http://developer.apple.com/leopard/overview/scriptingcocoa.html">Using Scripting Languages for Cocoa Development</a> - A brief, but well put, overview from Apple of using languages such as Ruby to develop Cocoa applications.</p>
</div>
<p><big><strong>Tutorials</strong></big></p>
<div style="margin-left: 2em">
<p><a href="http://metaatem.net/2007/05/27/your-first-few-days-on-rubycocoa">Your First Few Days on RubyCocoa</a> - Slightly old (mid 2007) but this tutorial demonstrates how to put together a bare-bones OS X GUI application using RubyCocoa and XCode's Interface Builder. Tiger users might find this useful as it covers installation on that version of OS X.</p>
<p><a href="http://blog.8thlight.com/articles/2007/08/13/rubycocoa-tutorial">RubyCocoa Tutorial</a> - Eric Smith has put together a great, well illustrated, tutorial that walks you through from start to finish in building a currency conversion application (as Apple likes to use in their own Cocoa tutorial) with Ruby and Xcode.</p>
<p><span style="font-weight: bold; color: #f00;">NEW!</span> <a href="http://blog.8thlight.com/articles/2008/04/20/bowled-over-by-rubycocoa">Bowled Over By Cocoa</a> - A newer, more up to date (as of April 2008) tutorial by Eric Smith that demonstrates how to create a Mac application using RubyCocoa, XCode and RSpec!</p>
<p><a href="http://limechat.net/rubycocoa/tutorial/">Japanese RubyCocoa Tutorial</a> - It's in a RubyCocoa tutorial in Japanese but it's immaculately illustrated so shouldn't be dismissed out of hand. It seems to focus more on using Xcode than other tutorials.</p>
<p><a href="http://developer.apple.com/documentation/Cocoa/Conceptual/RubyPythonCocoa/Articles/UsingScriptingBridge.html#//apple_ref/doc/uid/TP40005424-SW1">Using Scripting Bridge in RubyCocoa Code</a> - A tutorial from Apple that looks at how Ruby can interface with OS X applications through Scripting Bridge.</p>
<p><a href="http://developer.apple.com/documentation/Cocoa/Conceptual/RubyPythonCocoa/Articles/Using%20RubyOSA.html#//apple_ref/doc/uid/TP40006573">Using RubyOSA</a> - A tutorial from Apple demonstrating how to use AppleScript-like scripting techniques in Ruby to interface with OS X applications. This is not directly related to RubyCocoa but provides an alternative to the Scripting Bridge approach.</p>
<p><img src="/assets/2008/02/rubyrocks.jpg" alt="rubyrocks.jpg" width="223" height="109"></p>
<p><a href="http://www.rubycocoa.com/ruby-rocks">Ruby Rocks: Build A Whole Game With RubyCocoa!</a> - A really interesting tutorial that walks you through the process of building an entire Asteroids-esque game using RubyCocoa <em>(note: rubycocoa.com occasionally gives 404 errors accidentally, just refresh)</em></p>
<p><a href="http://www.rubycocoa.com/ruby-extensions-with-rubycocoa">Writing Ruby Extensions with RubyCocoa</a> - Tim Burks looks at how you can build Ruby extensions with C wrapped in Objective-C classes using RubyCocoa. Considering OS X's fine support for gcc (and therefore RubyInline) I'm not entirely sure how useful this is.</p>
<p><a href="http://www.macdevcenter.com/pub/a/mac/2004/10/05/cocoa.html">An O'Reilly Introduction to RubyCocoa</a> - A <strong>very old</strong> RubyCocoa tutorial from 2004 (!!) that is mostly out of date but does provide a good overview. Don't put this at the top of your reading list though. For RubyCocoa junkies only.</p>
</div>
<p><big><strong>Specific Tasks and Tricks</strong></big></p>
<div style="margin-left: 2em">
<p><a href="http://www.railsonwave.com/railsonwave/2008/2/6/rubycocoa-a-simple-wireless-signal-strength-meter">Simple Wireless Signal Strength Meter</a> - Sandro Paganotti demonstrates how to read information about your wireless signal on OS X. Curiously, this doesn't use RubyCocoa for the main task, but for playing a sound instead.</p>
<p><a href="http://www.rubycocoa.com/appleremote">Using Your Apple Remote from Ruby</a> - A demonstration of how to use RubyCocoa to interface with the Apple Remote (well, pick up its requests, at least!)</p>
<p><img src="/assets/2008/02/outlineme.png" alt="OutlineMe.png" width="254" height="148"></p>
<p><a href="http://www.rubycocoa.com/outline-views">Outline Views with RubyCocoa</a> - Tim Perrett provides code for producing a tree / outline-type view on OS X using Ruby.</p>
<p><a href="http://redartisan.com/2007/12/12/attachment-fu-with-core-image">attachment_fu magic with Core Image and RubyCocoa</a> - A tutorial that demonstrates how to use RubyCocoa and OS X's Core Image library to perform graphical operations on files uploaded through the attachment_fu plugin.</p>
<p><img src="/assets/2008/02/line-theme-keynote-.png" alt="line_theme_keynote_.png" width="255" height="191"></p>
<p><a href="http://www.rubycocoa.com/cocoa-magic-for-gruff-graphs">Cocoa Magic for Gruff Graphs</a> - Using RubyCocoa and the Gruff charting library to produce graphs without relying on installing ImageMagick!</p>
<p><a href="http://pitecan.com/RubySaver/">RubySaver</a> - It's in Japanese, but it seems to be demonstrating how to create a screen saver using Ruby and RubyCocoa, specifically one that shows information from Wikipedia?</p>
<p><a href="http://blog.8-p.info/articles/2006/12/24/rubycocoa-skype-itunes">Interfacing with Skype</a> - In Japanese again, but a demonstration of how to hook up with Skype from Ruby, specifically to set your status text to your currently playing iTunes track.</p>
<p><a href="http://redartisan.com/tags/rubycocoa">Screen Capture with RubyCocoa</a> - A walk through developing a small Ruby application to take screenshots.</p>
<p><a href="http://redartisan.com/2007/12/31/core-image-effects">Cool Image Effects with Core Image</a> - A great look at how to use Core Image's graphics effects from Ruby code. Lots of pictures and code examples. RMagick is history!</p>
<p><a href="http://redochre.wordpress.com/2007/12/10/rubycocoa-example-speakline/">Text to Speech App</a> - A quick code demonstration of how to get your Mac saying things to you from Ruby.</p>
<p><a href="http://andymatuschak.org/articles/2007/11/29/ohman-scripting-bridge-is-so-cool/">Control iTunes from Ruby</a> - A code snippet showing how to use ScriptingBridge to control iTunes and get back the name of the current track.</p>
<p><img src="/assets/2008/02/selectable-toolbar.png" alt="selectable-toolbar.png" width="286" height="62"></p>
<p><a href="http://mattmccray.com/archive/2008/01/16/Selectable_Toolbar_Icons_in_Ru">Selectable Toolbar Icons in RubyCocoa</a> and <a href="http://www.mattmccray.com/archive/2008/01/18/Animating_NSViews_In_RubyCocoa">Animating NSViews in RubyCocoa</a> - Matt McCray demonstrates how to create a funky, animated GUI preferences panel using Ruby.</p>
<p><a href="http://blog.deadbeaf.org/archives/1890">Write a QuickSilver Plugin with RubyCocoa</a> - How to use Objective C and Ruby to build a plugin for the QuickSilver launcher / general purpose tool.</p>
<p><a href="http://www.dribin.org/dave/blog/archives/2008/01/04/fswatch/">Ruby and FSEvents</a> - Info about a Ruby app called fswatch that can use OS X's File System Events framework to monitor what occurs on the file system.</p>
<p><img src="/assets/2008/02/pierliscaptcha.png" alt="pierliscaptcha.png" width="152" height="77"></p>
<p><a href="http://pierlis.com/blog/2008/1/2/having-rails-cocoa-play-together">CAPTCHA Creator</a> - A blog post outlining how a CAPTCHA generator was built using Ruby and RubyCocoa (along with Quartz Composer). A ZIP of the full source code is also available.</p>
</div>
<p><big><strong>Tools and Libraries</strong></big></p>
<div style="margin-left: 2em">
<p><a href="http://rubycocoa.sourceforge.net/RubyInject">RubyInject</a> - RubyInject provides a mechanism to 'inject' a Ruby interpreter into any running OS X application. This can provide you with the ability to mess around with OS X applications on the fly from an irb-esque prompt.</p>
<p><a href="http://rucola.rubyforge.org/">Rucola</a> - Rucola is a framework that makes it easier to build Cocoa applications using Ruby and RubyCocoa. Essentially it provides a set of generators that can generate controllers, window controllers, and document-based applications. A bit like a "Rails" for Cocoa, but, erm, not.</p>
<p><img src="/assets/2008/02/platypus-screenshot.jpg" alt="platypus_screenshot.jpg" width="240" height="196"></p>
<p><a href="http://www.sveinbjorn.org/platypus">Platypus</a> - Not specifically related to RubyCocoa, Platypus is an OS X application that can "package up" Ruby applications for easier distribution. This could make distributing your RubyCocoa creations a lot easier and give other users a seamless installation experience.</p>
<p><a href="http://capture.rubyforge.org/">Capture</a> - A Gem-installable (<em>gem install capture</em>) OS X screenshot tool.</p>
<p><a href="http://alternateidea.com/blog/articles/2007/5/25/newcocoa-rails-like-command-for-rubycocoa">NewCocoa</a> - A Rails-like command for building RubyCocoa apps. A little like Rucola (above). This post features a screencast of its use.</p>
</div>
<p><big><strong>Miscellaneous</strong></big></p>
<div style="margin-left: 2em">
<p><img src="/assets/2008/02/default3col.png" alt="default3col.png" width="248" height="189"></p>
<p><a href="http://limechat.sourceforge.net/">LimeChat</a> - An IRC client written in Ruby and using RubyCocoa. Comes with source code!</p>
<p><a href="http://www.rubycocoa.com/an-introduction-to-rubycocoa/6">RubyCocoa Tips</a> - Building RubyCocoa Projects with Rake, debugging RubyCocoa problems with gdb, converting Objective-C Cocoa apps into Ruby, and dealing with special Cocoa data types in Ruby.</p>
<p><img src="/assets/2008/02/pong.png" alt="pong.png" width="187" height="164"></p>
<p><a href="file:///Developer/Examples/Ruby/RubyCocoa">/Developer/Examples/Ruby/RubyCocoa</a> - Not a Web-accessible URL, just a folder on your system (if running Leopard) that contains a whole bunch of Apple-developed RubyCocoa examples! There's even a Pong game.</p>
<p><a href="http://chopine.be/lrz/diary/2007-12-07_ruby-objc-Part-1.html">Rewriting Ruby's classes in Objective C?</a> - Laurent Sansonetti talks about an interesting project to migrate chunks of Ruby over to Objective C.</p>
<p><a href="http://rubyforge.org/projects/code74/">Code74</a> - An OS X Webkit-powered Web browser written in Ruby.</p>
<p><a href="http://theocacao.com/document.page/428/">Objective C, Ruby and Python for Cocoa</a> - A well written discussion of the cultural and technical aspects involved in writing Cocoa applications with various languages.</p>
<p><a href="http://blog.smartbomb.com.au/2007/9/16/logeye-a-rails-log-gui">LogEye - a Rails log-file GUI</a> - An OS X RubyCocoa app that can view your Rails log files with coloring, etc.</p>
<p><a href="http://minikidsgames.sourceforge.net/rubycocoa/tips-and-pitfalls-in-using-rubycocoa/">Tips and Pitfalls</a> - A list of tips and pitfalls to using RubyCocoa from the perspective of one developer.</p>
</div>
<p><em>Many thanks to <a href="http://d.hatena.ne.jp/ma_ko/20071218#p1">this curious Japanese list of RubyCocoa links</a> for inspiring some of the links in this post. Most of them are in Japanese, however!</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Mirko</strong> &middot; <time datetime="2008-02-07T00:15:00+00:00">February 7, 2008 at 12:15 am</time></p>
      <p>Nice collection of RubyCocoa tutorials! Thanks for putting this list together. I've been planning to play with RubyCocoa, so this should come in handy.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2008-02-07T01:18:00+00:00">February 7, 2008 at 1:18 am</time></p>
      <p>Superb list, Mr. Cooper.  Thank you.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-02-07T01:21:00+00:00">February 7, 2008 at 1:21 am</time></p>
      <p>@Chris: Thanks! I have been meaning to post about Ambition lately, especially since it "opened up" somewhat.. but I'm struggling to find a way to succinctly get over how awesome it is and do it justice. Anyway, I think it could be a game changer in the future, and hope to get to it!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Adam Conroy</strong> &middot; <time datetime="2008-02-07T04:50:00+00:00">February 7, 2008 at 4:50 am</time></p>
      <p>Echo to the above praise, this will help me a lot.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ma_ko</strong> &middot; <time datetime="2008-02-07T05:45:00+00:00">February 7, 2008 at 5:45 am</time></p>
      <p>Nice list. Many thanks, too:-)<br>
# A writer of Japanese list of RubyCocoa links</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alex</strong> &middot; <time datetime="2008-02-07T14:49:00+00:00">February 7, 2008 at 2:49 pm</time></p>
      <p>Wow, great list!  And for the Windows users, any interesting API with mega list like that in the future ??</p>
    </li>
      <li>
      <p class="comment-meta"><strong>c0ld_</strong> &middot; <time datetime="2008-02-08T07:35:00+00:00">February 8, 2008 at 7:35 am</time></p>
      <p>Nice, thats a good list. </p><p>I was wondering if you have any more good links to Japanese tutorials. As a CS student who speaks Japanese, part of the draw to Ruby is the opportunity to try branching out my technical skills in my second language.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
