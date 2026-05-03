---
title: 'Rhodes: Develop Full iPhone, RIM, and Symbian Apps using Ruby'
date: '2009-01-23'
author: Peter Cooper
author_slug: admin
post_id: 1475
slug: rhodes-develop-full-iphone-rim-and-symbian-apps-using-ruby-1475
url: "/rhodes-develop-full-iphone-rim-and-symbian-apps-using-ruby-1475.html"
categories:
- cool
- miscellaneous
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2009/01/rhomobile.png" width="137" height="78" alt="rhomobile.png" style="float:left; margin-right:12px; margin-bottom:12px;"> <a href="http://www.rhomobile.com/products/rhodes">Rhodes</a> - developed by <a href="http://rhomobile.com/">Rhomobile</a> - is an intriguing framework of Ruby interpreters that can be used to develop native applications for the iPhone, Windows Mobile, RIM (Blackberry) and Symbian smartphone platforms (with Android support to come). Last month, Werner Schuster (of InfoQ) wrote <a href="http://www.infoq.com/news/2008/12/rhodes-iphone-winmobile-rim">a basic roundup of how Rhodes works</a>.</p>
<p>Essentially, Rhomobile has put together a set of technologies that each work on each mobile platform supported, including a Ruby interpreter, a synchronization library, an object mapper, and functions that enable developers to gain access to features like GPS, accelerometers, and contact storage. Rhodes is not yet at version 1.0 and while some developers are beginning to submit Rhodes-powered apps to the iPhone App Store - none have yet been accepted (although Rhomobile claim that there's no reason why they shouldn't be).</p>
<p>Notably, Rhodes is open source (GNU GPL) and is <a href="http://github.com/rhomobile/rhodes/tree/master">available directly from Github</a>. Rhomobile has put together <a href="http://rhomobile.com/wiki/index.php?title=Mobilizing_Your_Application_with_Rhomobile">a solid tutorial on how to get started</a>. They've also launched <a href="http://rhomobile.com/contest">a mobile application "Development Challenge"</a> with <strong>a top prize of $10,000</strong> in order to promote the framework.</p>
<p>Rhodes is a pretty exciting technology and opening up the iPhone to Ruby developers is a big deal, so we'll be catching up with Rhodes again when it hits its 1.0 release next month.</p>
<p class="s" style="font-family:verdana;font-style:italic;padding:8px;font-size: 12px"><strong>Support from: <a href="http://www.actsasconference.com/">acts_as_conference</a></strong>; - A <em>two day Rails conference</em> in Orlando, Florida on February 6 and 7. Only $125, free food, a great venue, and lots of top Rails speakers including DHH. <a href="http://www.actsasconference.com/">Click here to learn more.</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Chuck</strong> &middot; <time datetime="2009-01-23T19:38:00+00:00">January 23, 2009 at 7:38 pm</time></p>
      <p>There actually is a reason why these apps wouldn't be accepted for the iPhone: Interpreted languages are against the App Store rules.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matthew Lang</strong> &middot; <time datetime="2009-01-23T20:21:00+00:00">January 23, 2009 at 8:21 pm</time></p>
      <p>Looking forward to seeing what the Rhodes framework can do when the Android support is ready.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-01-23T20:46:00+00:00">January 23, 2009 at 8:46 pm</time></p>
      <p>Chuck: I brought up that issue with Rhomobile and they seem to think it's not an issue in this case. They claim (and I hope they correct me if I got this wrong!) that as long as an app cannot fetch and execute code that's not initially included with the app, it's okay, and supposedly they have locked down the interpreter to go along with this.</p><p>I would really love it if someone from Rhomobile could comment on this here though, so I will give them a prod :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Adam</strong> &middot; <time datetime="2009-01-23T21:21:00+00:00">January 23, 2009 at 9:21 pm</time></p>
      <p>Peter: Thanks for the great post. First of all, to clarify, we precompile all framework and app code down to Ruby 1.9 VM bytecode. This yields great performance advantages. We also disable eval and other dynamic execution aspects of Ruby. In the end, on all platforms your app gets compiled with our framework all into one single executable, indistinguishable from any other executable.     </p><p>But even if we were shipping a fullon Ruby interpreter without compiling to bytecode and leaving dynamic evaluation enabled (as has been well remarked in the blogosphere by now) App Store rule 3.3.2 does not disallow interpreters but only downloading code to be executed by the interpreter.   </p><p>Matthew: The full 1.0 release with it should be available in late February.</p><p>- Adam</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew</strong> &middot; <time datetime="2009-01-24T00:29:00+00:00">January 24, 2009 at 12:29 am</time></p>
      <p>Wonderful! I'm looking forward to seeing some working examples. </p><p>I'll keep an eye on rhomobile.com for announcements of Rhodes apps on the App Store :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Apostlion</strong> &middot; <time datetime="2009-01-24T14:52:00+00:00">January 24, 2009 at 2:52 pm</time></p>
      <p>Interesting as a concept, but iPhone apps built without touching iPhone SDK are kind of killing the purpose—almost (but not completely) ditto for Android.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Adam</strong> &middot; <time datetime="2009-01-24T17:05:00+00:00">January 24, 2009 at 5:05 pm</time></p>
      <p>If you mean that it's important to expose rich device capabilities then I agree with you and we're committed to doing that. If you want to write for all smartphones keeping six (or even three) device operating system implementations in multiple languages in sync isn't really a practical option. If you only want to write for iPhone, you don't need synced data and other features that our framework provides and you like writing in objective c versus ruby then by all means you should stick with the iPhone ask. Best of luck with you mobile app projects.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>David</strong> &middot; <time datetime="2009-01-24T18:17:00+00:00">January 24, 2009 at 6:17 pm</time></p>
      <p>Adam, thank you so much, this is very cool. I'm excited to learn and extra excited I don't have to learn new languages/technologies to write some simple apps to work with my web apps. I was really wanting to develop some iphone apps, even bought the book, but got turned off pretty quick when I realized I was going to have to learn a bunch of new stuff just for one platform. Good luck and good day! cheers.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hubert Łępicki</strong> &middot; <time datetime="2009-01-25T23:34:00+00:00">January 25, 2009 at 11:34 pm</time></p>
      <p>Is there a way to actually run and develop applications in this framework on Linux? Or any other ruby-enabled system which is not-osx and not-windows?</p><p>I mean - is this possible to develop and test applications without SDKs for iphone/symbian/etc, and then just build/test on emulators after? In the end these are "just" web apps so any browser should do the basic job - right?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Adam</strong> &middot; <time datetime="2009-01-26T16:02:00+00:00">January 26, 2009 at 4:02 pm</time></p>
      <p>Hubert,</p><p>No, you need to have a machine with the build environment of the device SDK you want to build for: a Mac for iPhone, Windows for everything else.  We are going to release a hosted service in about a month which offers (among other things) the ability for you to do builds for all devices on our servers.</p><p>Currently testing can only happen on the emulators.   This is something we'll think about changing based on user demand (i.e. we could do a Rhodes which would run on your desktop/server if its widely requested).   </p><p>- Adam</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kai</strong> &middot; <time datetime="2009-02-05T03:55:00+00:00">February 5, 2009 at 3:55 am</time></p>
      <p>would love to know which apps built on top of Rhodes are indeed approved by Apple.<br>
Until that day comes, I will be holding off.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
