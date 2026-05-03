---
title: 'Apple and Ruby: The Ongoing Relationship'
date: '2008-08-21'
author: Eldon Alameda
author_slug: eldon
post_id: 1016
slug: apple-and-ruby-the-ongoing-relationship-1016
url: "/apple-and-ruby-the-ongoing-relationship-1016.html"
categories:
- news
- os-x-specific
- ruby-on-rails
---

{{< rawhtml >}}
<p><img style="float:left;margin-right:12px; margin-bottom: 12px" src="/assets/2008/08/apple-ruby-3.jpg" alt="apple_ruby-3.jpg" width="120"> While it was pretty momentous last year when Mac OS X (Leopard) was <a href="ruby-and-rails-in-mac-os-x-leopard-633.html">released with full support for Ruby and Rails</a> included with the OS, it seems that the Ruby train is still rolling with Apple.</p>
<p>A recent InfoQ article <a href="http://www.infoq.com/news/2008/08/apple-ruby-iphoneutil-sproutcore">highlights some ways that Apple is using Ruby</a> that you might have missed - including:</p>
<ul style="clear: left">
<li>The <a href="http://www.apple.com/support/downloads/iphoneconfigurationutility10formacosx.html">iPhone Configuration Web Utility</a> - A tool written in Ruby on Rails for allowing enterprise customers to manage iPhones.</li>
<li>The <a href="http://www.sproutcore.com/">SproutCore JavaScript framework</a> - Which is designed for making desktop-like applications on the web and is used in Apple's new <a href="http://www.apple.com/mobileme/">MobileMe</a> applications. SproutCore is installed as a gem, uses generators written in Ruby to create resources and it utilizes <a href="http://merbivore.com/">Merb</a> to generate HTML artifacts. <em>(Update: SproutCore isn't a Ruby project / Ruby-based system per se, but it does offer some good tie-ins to the Ruby ecosystem.)</em>
</li>
<li>The <a href="http://www.macruby.org/trac/wiki/MacRuby">MacRuby</a> project - Apple's own port of Ruby to the Objective-C runtimes - which should make it much easier to integrate with Cocoa for Desktop development.</li>
</ul>
<p>I haven't played with the MobileMe web applications much, but I recall thinking that they looked fairly impressive. Have any other Ruby developers tried SproutCore yet? How's it working out for you?</p>
<p class="s"><cite>Post supported by Brightbox:</cite> <a href="http://www.brightbox.co.uk/">Brightbox</a> is a specialist European <a href="http://www.brightbox.co.uk/">Rails hosting</a> company. Each Brightbox server includes an optimised Ruby on Rails stack, SAN storage and access to a managed MySQL database cluster. They also manage dedicated clusters for large scale Rails deployments. <a href="http://www.brightbox.co.uk/">Click here to learn more..</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Mike Subelsky</strong> &middot; <time datetime="2008-08-21T03:17:00+00:00">August 21, 2008 at 3:17 am</time></p>
      <p>I am using Sproutcore heavily and loving it.  It's still early days for the framework, but definitely has some of the same feel as Rails, once you learn to think about how a client-side app is different from a server app.  It's a very powerful and effective use of Ruby.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonno</strong> &middot; <time datetime="2008-08-21T05:51:00+00:00">August 21, 2008 at 5:51 am</time></p>
      <p>Sproutcore is often associated with ruby and this confuses many people. Sproutcore is JS through and through. It is like saying that ruby code is actually C code because Ruby is written in C. The ruby simply acts as a compiler. It could easily be substitute for perl/python/objc or whatever.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Johannes Fahrenkrug</strong> &middot; <time datetime="2008-08-21T07:05:00+00:00">August 21, 2008 at 7:05 am</time></p>
      <p>I was able to talk to the SproutCore Dev team right after their WWDC session and have been in touch since. I'm working on using SproutCore for OpenSocial development and it works like a charm. One of my patches was included in the 0.9.13 release.<br>
SproutCore's Ruby generators and helpers are very elegantly coded and make great use of this wonderful language.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tom</strong> &middot; <time datetime="2008-08-21T09:26:00+00:00">August 21, 2008 at 9:26 am</time></p>
      <p>Pretty sure MobileMe uses WebObjects, not Ruby / Rails.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Subelsky</strong> &middot; <time datetime="2008-08-21T16:06:00+00:00">August 21, 2008 at 4:06 pm</time></p>
      <p>Tom, yes, but the JS and HTML that are rendered in the browser are generated using Javascript and Ruby helpers (ERB etc.)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-08-21T16:07:00+00:00">August 21, 2008 at 4:07 pm</time></p>
      <p>Just while we're here, I wanted to point out this is Eldon Alameda's first post. He's one of three new writers on Ruby Inside - including Shalev NessAiver (who did a post a cpl weeks ago as a tester, but should be posting more soon) and Zach Inglis (who has yet to post).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonno</strong> &middot; <time datetime="2008-08-21T22:50:00+00:00">August 21, 2008 at 10:50 pm</time></p>
      <p>Mike, JS and HTML are not rendered in the browser with ruby. Sproutcore generates static html and javascript. They can be served from any vanilla web server. </p><p>As I said before the ruby acts as a compiler, preprocessor is probably a more correct term, to generate static files.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonno</strong> &middot; <time datetime="2008-08-21T22:56:00+00:00">August 21, 2008 at 10:56 pm</time></p>
      <p>Mike, I see on your blog you are using SC by proxying to sc-server. When deploying you should be generating static files and deploying those, not using sc-server.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hugh Bien</strong> &middot; <time datetime="2008-08-21T23:50:00+00:00">August 21, 2008 at 11:50 pm</time></p>
      <p>I hope Apple buys 280north, the company that makes <a href="http://280slides.com" rel="nofollow">http://280slides.com</a>.  Their web app is just incredible, even compared to MobileMe.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
