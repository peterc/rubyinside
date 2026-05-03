---
title: How to Build a “Spy Camera” App for an Android Phone with Ruby and Sinatra
date: '2010-09-02'
author: Peter Cooper
author_slug: admin
post_id: 3780
slug: spy-camera-android-with-ruby-and-sinatra-3780
url: "/spy-camera-android-with-ruby-and-sinatra-3780.html"
categories:
- jruby
- tutorials
---

{{< rawhtml >}}
<blockquote class="stylized"><p>It's been a great year for Ruby on Android, but no one knows it. You can start writing Ruby apps for Android devices TODAY.  You don't need to install any SDK, you don't need to install some giant Eclipse IDE, and you certainly don't need to write any Java.</p></blockquote>
<p><cite>Mike Leone</cite></p>
<p>In <a href="http://leone.panopticdev.com/2010/08/turn-your-android-phone-into-remote-spy.html">Turn your Android Phone Into a Remote Spy Camera with Ruby in 15 Minutes</a>, Mike Leone demonstrates how to use Ruby, <a href="http://www.sinatrarb.com/">Sinatra</a> and <a href="http://code.google.com/p/android-scripting/">Scripting Layer for Android</a> (SL4A) to build and deploy a phone-hosted "spy camera" Web service.</p>
<p><img src="/assets/2010/09/Screen-shot-2010-09-02-at-3.07.13-AM.jpg" alt="" title="Screen shot 2010-09-02 at 3.07.13 AM" width="446" height="200" class="alignnone size-full wp-image-3781"></p>
<p><a href="http://code.google.com/p/android-scripting/">SL4A</a> is a system that allows you to run "scripting language" scripts and interactive interpreters on the Android platform. It currently supports JRuby, Python, Perl, Lua, JavaScript, BeanShell, and Tcl. Mike demonstrates how to set up a Sinatra project to use SL4A to run on an Android phone using JRuby. Upon receiving a request, Mike's app takes a picture using the phone's camera and serves it back over HTTP. He has also released the source code to a larger Ruby app called <a href="http://github.com/mleone/broadcast">Broadcast</a> that implements general Android device management functionality over HTTP.</p>
<p>Even if you don't want to build a "spy camera", Mike's walkthrough is a must-read if building Web services in Ruby that can run directly on the Android platform is of interest to you.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Carlos Taborda</strong> &middot; <time datetime="2010-09-03T16:19:00+00:00">September 3, 2010 at 4:19 pm</time></p>
      <p>Interesting, but also creepy!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Vlad</strong> &middot; <time datetime="2010-09-07T13:32:00+00:00">September 7, 2010 at 1:32 pm</time></p>
      <p>Great tool. Perfect for those wannabe spies. Also, It is a great proof of concept for integrating web services with the Android platform.</p><p>Vlad<br>
<a href="http://www.how-to-build.net" rel="nofollow">how to build</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
