---
title: MacRuby + Mac App Store == Low Hanging Fruit for Rubyists
date: '2010-10-21'
author: Peter Cooper
author_slug: admin
post_id: 3922
slug: macruby-and-the-mac-app-store-3922
url: "/macruby-and-the-mac-app-store-3922.html"
categories:
- controversy
- os-x-specific
---

{{< rawhtml >}}
<p><img src="/assets/2010/10/appstoreformac.png" width="118" height="105" alt="appstoreformac.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;">At its "Back To Mac" presentation yesterday, Apple unveiled the <a href="http://www.apple.com/mac/app-store/">Mac App Store</a>, an equivalent of the iOS App Store for the Mac. Given the relentless development and improvement of <a href="http://www.macruby.org/">MacRuby</a> and the power it brings Rubyists in developing complete OS X applications, I'm convinced that the time is right for Ruby to make a big splash on the OS X GUI app development front.</p>
<p>When I mentioned the above observation on Twitter, Geoffrey Grosenbach of PeepCode <a href="http://twitter.com/#!/topfunky/status/28000569136">pointed out</a>:</p>
<p>
<img src="/assets/2010/10/geoffrey.png" width="349" height="123" alt="geoffrey.png"></p>
<p>He's right, but things like app stores have a funny way of acting as catalysts for developers to come out of the woodwork and try new things out. Even taking the "evils" of app stores into account (and Apple's performed more than its fair share of evil incantations on iPhone developers), the ease with which you can put apps for sale and take money from customers (if only a 70% share) is appealing. The iPhone App Store almost reinvented casual gaming, for instance, and people I'd never have considered to try and develop a mobile app have been lured into the iPhone fold.</p>
<p>Given all of this, I think that if you want to develop OS X apps without moving away from Ruby, and you want to make proper money for your apps without setting up a Web site, building up traffic, and what not, now's the perfect time to look into MacRuby and Apple's Mac Developer Program. (But if you want to work on open source or sell your own stuff, do that too!)</p>
<h3>Will Apple even allow Ruby built apps on to the App Store?</h3>
<p>Keeping in mind the now semi-resolved <a href="http://daringfireball.net/2010/04/why_apple_changed_section_331">3.3.1 imbroglio</a>, it's worth maintaining some healthy disdain as to Apple's intentions and future actions until they say something officially.</p>
<p>Someone's leaked <a href="http://pastebin.ca/1968393">the Mac Developer Program terms</a> on to a pastebin site already, and nothing stands out to me as blocking the use of MacRuby for building App Store-deployed apps. Point 2.14 notes that apps must be packaged and submitted with <i>Apple's own packaging tools included in Xcode</i>, but since MacRuby is being developed <i>at</i> Apple, one hopes this will be easily done. Apple even has a guide called <a href="http://developer.apple.com/library/mac/#featuredarticles/UsingMacRuby/">Developing Cocoa Applications Using MacRuby</a> that digs into using Xcode.</p>
<p>Other points note that you can't install kexts (kernel extensions), have your own licensing system, offer "trials", download other apps from within your own, or use setuid/root privileges, but these affect the behavior of your program rather than its underlying formation.</p>
<p>John E Vincent <a href="http://twitter.com/#!/lusis/status/28001792708">suggests</a> that point 2.24 <em>"Apps that use deprecated or optionally installed technologies (e.g., Java, Rosetta) will be rejected"</em> would reject the use of MacRuby. I disagree. In OS X, Java is a giant collection of frameworks maintained and updated by Apple as part of the OS, whereas you can build fully packaged, standalone OS X .app files with the MacRuby framework tightly packaged inside. I could be wrong, though - what say you?</p>
<h3>Where next?</h3>
<p>First, you're going to need to test the waters of building OS X GUI-based apps with MacRuby so <a href="http://www.macruby.org/">head to the official site</a> to download and install it. Be aware that you need to be running OS X 10.6 (Snow Leopard) or higher.</p>
<p>Next, read up on how to build a basic app. Choice reads include:</p>
<ul>
<li>Apple's <a href="http://developer.apple.com/library/mac/#featuredarticles/UsingMacRuby/">Developing Cocoa Applications Using MacRuby</a> guide is a reasonable place to start.</li>
<li>A more significant and up to date resource is the currently-in-beta <a href="http://macruby.labs.oreilly.com/">MacRuby: The Definitive Guide</a> by Matt Aimonetti.</li>
<li>Phusion's <a href="http://blog.phusion.nl/2010/03/12/creating-our-very-first-mac-application-with-ruby-how-exciting/">Creating our very first Mac application with Ruby</a> is a great (and recent) step-by-step walkthrough.</li>
</ul>
<p>Not a fan of reading? Alex Vollmer and Geoffrey Grosenbach have put together <a href="http://peepcode.com/products/meet-macruby">a Meet MacRuby screencast</a>. It costs $12, but you're going to be raking in the millions with your new Mac app on the App Store, right?</p>
<p>Finally, once you're happy with the idea of developing Mac software in Ruby, you'll need to become a member of the <a href="http://developer.apple.com/programs/mac/">Mac Developer Program</a>. This is <i>not</i> the same as the iOS Developer Program and you'll need to pay another $99 per year fee to get into it. What do you get? Private discussion forums, technical support, pre-release software (including OS X builds), and the ability to sign and submit Mac apps to Apple for inclusion in the Mac App Store.</p>
<p><i>Disclaimer: If Apple comes out and says you have to use Objective C for your Mac App Store apps, don't blame me!</i></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Antonio Cangiano</strong> &middot; <time datetime="2010-10-21T13:27:00+00:00">October 21, 2010 at 1:27 pm</time></p>
      <p>A bit of a shameless plug, but people may be interested in our "Introduction to MacRuby and HotCocoa": <a href="http://thinkcode.tv/catalog/introduction-macruby/" rel="nofollow">http://thinkcode.tv/catalog/introduction-macruby/</a></p><p>It normally costs $9, but if you use the coupon RUBYINSIDEROCKS today only, you'll be able to buy it for 5 bucks. </p><p>(Peter, I hope you don't mind.)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Steve Klabnik</strong> &middot; <time datetime="2010-10-21T14:43:00+00:00">October 21, 2010 at 2:43 pm</time></p>
      <p>I intend to try and get Hackety Hack in there.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jake</strong> &middot; <time datetime="2010-10-21T15:21:00+00:00">October 21, 2010 at 3:21 pm</time></p>
      <p>With MacRuby's migration to LLVM, isn't this debate a moot point? Compile it into a native Mach-O and upload it to the App Store.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael</strong> &middot; <time datetime="2010-10-21T15:53:00+00:00">October 21, 2010 at 3:53 pm</time></p>
      <p><a href="http://pastie.org/1236378" rel="nofollow">http://pastie.org/1236378</a> sez “deprecated or optionally-installed technologies” will be rejected from the App Store this would include MacRuby, no?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dennis</strong> &middot; <time datetime="2010-10-24T00:31:00+00:00">October 24, 2010 at 12:31 am</time></p>
      <p>From the Mac Developer web site:</p><p>Objective-C’s dynamic runtime is similar to many modern scripting languages, making it easy to map Cocoa’s features to other languages using the Cocoa Bridge. With the Cocoa Bridge, developers can create first-class Mac OS X applications using AppleScript, Ruby, and Python.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Travis Tilley</strong> &middot; <time datetime="2010-10-24T16:12:00+00:00">October 24, 2010 at 4:12 pm</time></p>
      <p>Looking at the commit log for macruby, it seems that using a nightly build might be necessary for this:</p><p>Author: <a href="mailto:lsansonetti@apple.com">lsansonetti@<!--*-->apple.com</a><br>
Date:   Tue Oct 19 05:56:37 2010 +0000<br>
    +[MacRuby sharedRuntime]: make the load path relocatable in case MacRuby.framework is embedded in a .app</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Marcelo Alves</strong> &middot; <time datetime="2010-10-25T16:26:00+00:00">October 25, 2010 at 4:26 pm</time></p>
      <p>There's nothing to prohibits you to bundle entire MacRuby inside your application. The problem lies if you NEED something deprecated, like Java, Flash or Rosetta. If you bundle Java/Ruby or another ancient piece of code inside your application, there's no dependency on something optionally installed or deprecated to make Apple block the app.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
