---
title: 'XRuby 0.2.0: More Ways of Bringing Ruby to Java'
date: '2007-06-06'
author: Hendy Irawan
author_slug: hendy-irawan
post_id: 499
slug: xruby-020-more-ways-of-bringing-ruby-to-java-499
url: "/xruby-020-more-ways-of-bringing-ruby-to-java-499.html"
categories:
- cool
- jruby
- ruby-tricks
- tools
---

{{< rawhtml >}}
<p>Just a couple of weeks ago, the <a href="http://code.google.com/p/xruby/">XRuby</a> team <a href="http://xruby.blogspot.com/2007/05/xruby-020-released.html">released XRuby 0.2.0</a>. XRuby is Ruby-to-Java bytecode compiler, so you can compile Ruby source code directly to Java classes. The latest version fixes several issues and adds debugging support.</p>
<p>The goal of this project is similar to <a href="http://jruby.codehaus.org/">JRuby</a>, to run Ruby applications on the Java Virtual Machine. Each <a href="http://www.infoq.com/news/2007/04/xruby-another-ruby-on-jvm">takes a different approach</a> however. JRuby uses an interpreter written in Java to execute Ruby code at runtime. XRuby, on the other hand, compiles the Ruby code to Java bytecode (although JRuby is introducing a feature which also does this - the JIT perform of JRuby is beginning to become impressive) which means there is less overhead and potentially increased performance. According to the developers, it even <a href="http://xruby.blogspot.com/2007/03/xruby-runs-most-benchmark-faster-than.html">runs most benchmarks faster than native Ruby</a> which makes it one to watch in future.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>dreamhead</strong> &middot; <time datetime="2007-06-07T07:41:00+00:00">June 7, 2007 at 7:41 am</time></p>
      <p>Thank you for your focus! XRuby can compile most Ruby scripts. JRuby has begun to move to compilation. JIT of JRuby depends on compilation, but just part of scripts can be compiled. XRuby and JRuby could help each other to enjoy Ruby on JVM.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hendy Irawan</strong> &middot; <time datetime="2007-06-08T08:42:00+00:00">June 8, 2007 at 8:42 am</time></p>
      <p>Dear dreamhead:</p><p>Thank you for your kind comment. I really hope these projects do very well as it'll be very beneficial for many people.</p><p>The following is a controversial opinion, perhaps, but one day you might even can say that "the world 'runs' on Ruby (or XRuby... or JRuby.. or...)" just because Google uses them. ;-)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
