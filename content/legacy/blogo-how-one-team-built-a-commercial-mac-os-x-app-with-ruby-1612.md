---
title: Blogo – How One Team Built a Commercial Mac OS X App with Ruby
date: '2009-03-09'
author: Peter Cooper
author_slug: admin
post_id: 1612
slug: blogo-how-one-team-built-a-commercial-mac-os-x-app-with-ruby-1612
url: "/blogo-how-one-team-built-a-commercial-mac-os-x-app-with-ruby-1612.html"
categories:
- interviews
- os-x-specific
---

{{< rawhtml >}}
<p><img src="/assets/2009/03/blogoguys.jpg" width="175" height="113" alt="blogoguys.jpg" style="float:right; margin-bottom:12px; margin-left:12px;"><a href="http://www.drinkbrainjuice.com/blogo">Blogo</a> is a Mac / OS X blogging client developed by Brainjuice - the business name of Benjamin Jackson and Ivan Neto, Rio based Ruby developers and Web designers - and born out of their frustration with existing commercial blog editors.</p>
<p>Brainjuice believe Blogo is the first commercial OS X Ruby app (though the first <em>cross-platform</em> one goes to someone else - see the footer of this post for info!). Rather than use Objective C (which they found to be a serious time hurdle), they tried out RubyCocoa and discovered the beauties of Cocoa (other than the rather gangly method names!) in that way instead (along with MacRuby). After a lot of work and more than a few conversations with <a href="http://chopine.be/lrz/">Laurent Sansonetti</a> <em>[of</em> <a href="http://www.macruby.org/trac/wiki/MacRuby"><em>MacRuby</em></a> <em>fame]</em>, they were able to get Blogo to release.</p>
<p><img src="/assets/2009/03/blogoapp.png" width="400" height="85" alt="blogoapp.png"></p>
<p>I asked Ben some questions about the pains, pleasures, and processes behind releasing a desktop Ruby app for Mac OS X:</p>
<p><strong><em>Ruby Inside:</em> Blogo is an OS X only application. Was writing for OS X your initial idea or did you look at alternatives (such as JRuby and Monkeybars)?</strong></p>
<blockquote>
<p>
  <em>Benjamin Jackson:</em> Not a chance. We don't settle for non-native interfaces. We hate AIR. We use Safari. When you take the native interface away from the user, it just feels wrong. Controls don't respond the way you know they should. Tab ordering NEVER works correctly. Drag and drop becomes drag and pray.</p>
<p>Firefox doesn't import our bookmarklet properly. It sticks a bunch of ugly javascript in the title. Why? Because it's being dragged from a WebKit view, not a Firefox window. And I don't want to single out Mozilla. This is everywhere, and with very few exceptions it's the unavoidable result of trying to please everyone.</p>
<p>Coca Cola adapts their recipes for every single country in the world. If you care about a platform's users enough to dedicate time which could be spent making your product better to make a version of your software for them, it should imply that you care enough to deliver something which does more than just compile and run on their system.</p>
</blockquote>
<p><strong>What process did you go through to package Blogo for distribution? Were there any surprises or snags along the way?</strong></p>
<blockquote>
<p>
  Hell! I learned more about ruby's internals than I ever wanted to know. Patched Jonathan Paisley's excellent standaloneify script to work with our build environment. Compiled every single C extension for both PPC and Intel. Hacked the main ruby file to chop the load path down and avoid crashes due to conflicts with non-standard ruby installations (hello, readers). Rewrote the entire remote IO to use native Cocoa functions with asynchronous callbacks rather than running their much more convenient ruby equivalents. Swapped out all gems which dealt with remote data for Cocoa equivalents, or rolled our own. Removed all ruby threads and used NSThreads.</p>
<p>MacRuby will be better. <em>*knocks on wood*</em></p>
</blockquote>
<p><strong>I noticed that Blogo was quite a large install (28MB download) for what it is. Do you think large file sizes will be off putting to users and that progress needs to be made in this area regarding Ruby app packaging, or is it a non-issue from your point of view?</strong></p>
<blockquote><p>
  We build for Tiger and Leopard. We will not be doing this for long. The limitations imposed by a dual build include having to embed your entire ruby distribution as well as all gems and frameworks. Growl+Installer is one of the heavier ones. GData, <a href="http://shiira.jp/hmblkappkit/en.html">HMBlkAppKit</a>, Sparkle and <a href="http://appscript.sourceforge.net/">rb-appscript</a> are other disk hogs.
</p></blockquote>
<p><strong>What advice would you give for someone looking to build Mac apps in Ruby?</strong></p>
<blockquote>
<p>
  Study Cocoa. Read the conceptual documentation and the <a href="http://developer.apple.com/documentation/userexperience/Conceptual/AppleHIGuidelines/XHIGIntro/chapter_1_section_1.html">HIG</a> (Human Interface Guidelines). Learn the APIs, because you're going to have to know what that slidey thing is called before you subclass it. Cocoa forces you to wrap your brain around a lot of patterns that don't get much air time in other frameworks. Delegates and bindings don't just save programmer time, they change the way you think about your code.</p>
<p>Use <a href="http://www.macruby.org/trac/wiki/MacRuby">MacRuby.</a> It's stable and Leopard-only. Forget Tiger.</p>
<p>Read <a href="http://developer.apple.com/mac/articles/scriptingautomation/cocoaappswithmacruby.html">Apple's article on building Cocoa apps with MacRuby.</a></p>
<p>Join <a href="http://lists.macosforge.org/mailman/listinfo.cgi/macruby-devel">the macruby-devel mailing list.</a> Give the devs feedback. They're nice guys. They'll help you.</p>
<p>Look into <a href="http://andymatuschak.org/articles/2008/09/12/hotcocoa-is-pretty-damn-hot/">Hot Cocoa.</a> Rich Kilmer has done a great job on this, and it looks like it will be one of the nicer bits of MacRuby. Writing little domain-specific-languages like this is generally against the <code>sayExactlyWhatYouMeanToSay: andMore:</code> syntax of Cocoa, but at the end of the day it's Ruby, dammit. Terse and clean makes Matz smile.</p>
</blockquote>
<p><strong>What next for you and Blogo? Do you plan to develop any further desktop applications using Ruby?</strong></p>
<blockquote><p>
  We have many plans. Some of them will likely involve MacRuby to one degree or another. Not having to compile is incredibly convenient on many levels. Some may involve <a href="http://github.com/rhomobile/rhodes/tree/master">Rhodes</a>. But I don't ever see us writing an application without a single line of Objective-C. And I don't want to. It's beautiful in a strange, Lisp-y way, and reads much better than Lisp IMHO. Ruby is one more tool for us to get the job done quickly.
</p></blockquote>
<p>Thanks Ben!</p>
<p><strong><em>Note:</em></strong> Blogo is far from the only commercial Ruby desktop app - David Koontz, James Britt, and Logan Barnett's <a href="http://www.getjotbot.com/">JotBot</a> (an innovative time tracking app) is also a fine example as the first commercial <em>cross-platform</em> desktop Ruby app (built around <a href="http://www.monkeybars.org/">Monkeybars</a>). David even posted <a href="http://dkoontz.wordpress.com/2008/12/22/jotbot-post-mortem-2/">a good wrap up of how it came together</a> recently.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Rod Schmidt</strong> &middot; <time datetime="2009-03-09T16:00:00+00:00">March 9, 2009 at 4:00 pm</time></p>
      <p>Packrat (www.infinitenil.com/packrat) used to use RubyCocoa as well to render Backpack pages.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matt Aimonetti</strong> &middot; <time datetime="2009-03-09T18:24:00+00:00">March 9, 2009 at 6:24 pm</time></p>
      <p>Great job by the Blogo team.<br>
The readers might also be interested in knowing that MacRuby 0.4 got released few hours ago: <a href="http://www.macruby.org/post/macruby-04/" rel="nofollow">http://www.macruby.org/post/macruby-04/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>John</strong> &middot; <time datetime="2009-03-09T22:43:00+00:00">March 9, 2009 at 10:43 pm</time></p>
      <p>Its great to see commercial apps written in Ruby being commercially distributed. Great job!</p><p>There's one thing that really haunts me tho: having the entire source code of the application visible when you "show package contents" of the bundled application. What are your thoughts about that?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matt Aimonetti</strong> &middot; <time datetime="2009-03-10T03:25:00+00:00">March 10, 2009 at 3:25 am</time></p>
      <p>@john this is something that MacRuby is planning on fixing in a future release. In the meantime, if you are really worried about a part of your app that you don't want anyone to see, you can write this exclusive part in obj-c or use a ruby to c compiler.</p><p>- Matt</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John</strong> &middot; <time datetime="2009-03-10T19:19:00+00:00">March 10, 2009 at 7:19 pm</time></p>
      <p>@matt True, you can interface obj-c with ruby to 'hide' the parts you don't want anyone to see, but with Blogo's example I was able to easily skip their license verification in the part where their ruby code interacts with their 'hidden' license validation obj-c controller.</p><p>IMHO I don't think there's a very safe and secure way to prevent the above from happening until ruby gets some sort of pre-compiler/compiler.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matt Aimonetti</strong> &middot; <time datetime="2009-03-11T06:45:00+00:00">March 11, 2009 at 6:45 am</time></p>
      <p>@john true, hopefully MacRuby will support compilation in a near future. But if people really want to crack your app, they will find a way to do so.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2009-03-16T10:02:00+00:00">March 16, 2009 at 10:02 am</time></p>
      <p>This sounded great until I saw their reply to the "Were there any surprises or snags along the way?" question. I could be wrong, but that sounds like a hell of a lot of really difficult, time-consuming work. Once that is taken into account, wouldn't it have been just as fast to code the whole thing in Objective-C? Don't get me wrong, I love Ruby, but Objective-C is a very nice language once you get used to it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>David Berube</strong> &middot; <time datetime="2009-03-18T21:05:00+00:00">March 18, 2009 at 9:05 pm</time></p>
      <p>CastingFrontier's iSession software predates this by at least a year and a half or so.</p><p>Take it easy,</p><p>David Berube</p>
    </li>
      <li>
      <p class="comment-meta"><strong>David Berube</strong> &middot; <time datetime="2009-03-18T21:14:00+00:00">March 18, 2009 at 9:14 pm</time></p>
      <p>Actually, upon further research and realizing that this interview is *not* an initial release announcement, the numbers are a bit closer - they might be right.</p><p>Take it easy,</p><p>David Berube</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
