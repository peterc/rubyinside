---
title: 'MacRuby 0.5 Beta 2: AOT Compilation, Rack & Sinatra Support, And More'
date: '2009-11-18'
author: Peter Cooper
author_slug: admin
post_id: 2794
slug: macruby-0-5-beta-2-2794
url: "/macruby-0-5-beta-2-2794.html"
categories:
- cool
- news
- os-x-specific
---

{{< rawhtml >}}
<p><img src="/assets/2009/11/macruby05.png" width="62" height="56" alt="macruby05.png" style="float:left; margin-right:12px; margin-bottom:12px;"> <a href="http://www.macruby.org/">MacRuby</a>, a port of Ruby 1.9 to the Mac OS X Objective C common runtime, is today one step closer to a production-ready Ruby implementation with <a href="http://www.macruby.org/blog/2009/11/17/macruby05b2.html">the release of beta 2 of MacRuby 0.5</a>. MacRuby 0.5 has been highly anticipated since it was first mentioned back in March because it promises significant performance improvements, a new LLVM based virtual machine (replacing YARV), and significant compatibility improvements and bug fixes. Even still at this beta stage, 0.5 delivers on these promises.</p>
<p>New in MacRuby 0.5 so far:</p>
<ul>
<li>rdoc and ri now work - thanks to compatibility bug fixes</li>
<li>Rack and Sinatra support</li>
<li>Experimental support for BigDecimal, OpenSSL, and JSON extensions</li>
<li>Compiler with support for building fat binaries (i.e. universal binaries)</li>
<li>An all new <a href="http://llvm.org/">LLVM</a> based VM</li>
<li>A gazillion bug fixes and performance improvements - as always!</li>
</ul>
<p>At this stage, the MacRuby team want people to download MacRuby, give it a test, and report any bugs or issues encountered. If you're on OS X, don't be worried about installing it. It comes in a simple installer package and presents itself through the <code>macruby</code> and <code>macirb</code> binaries, so it doesn't clash with any existing Ruby implementations installed on your machine.</p>
<p>For me, perhaps the most exciting developments are the <code>macrubyc</code> compiler and <code>macruby_deploy</code> utility. In a basic benchmark I performed, compiling a Ruby script that does a <a href="http://www.haskell.org/haskellwiki/Shootout/Fannkuch">Fannkuch</a> benchmark yielded a 20% speed increase with MacRuby 0.5b2. Impressive, as the baseline interpreted version was on par with MRI 1.9.1 already! The <code>macruby_deploy</code> utility is a new addition to help you deploy your MacRuby applications as regular OS X apps. It puts the MacRuby framework along with your script's executable into an application bundle ready to be deployed to any other Mac - even those without MacRuby.</p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><a href="http://devver.net/caliper" rel="nofollow"><img src="/assets/2009/10/caliper-logo.png" width="98" height="42" alt="caliper-logo.png" style="float:right; margin-bottom:8px; margin-left:12px;"></a><em>[ad]</em> Find duplication, code smells, complex code and more in your Ruby code with <a href="http://devver.net/caliper" rel="nofollow">Caliper!</a> The metrics are free and setup takes just one click. <a href="http://devver.net/caliper" rel="nofollow">Get started!</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Senthil</strong> &middot; <time datetime="2009-11-18T19:28:00+00:00">November 18, 2009 at 7:28 pm</time></p>
      <p>macruby is bringing a lot of cool ideas to life. I would prefer similar feature on other platforms as well.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ric Roberts</strong> &middot; <time datetime="2009-11-18T21:33:00+00:00">November 18, 2009 at 9:33 pm</time></p>
      <p>I'm excited about the day when we will be able to build iPhone apps with MacRuby.  Hopefully that's not too far away.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
