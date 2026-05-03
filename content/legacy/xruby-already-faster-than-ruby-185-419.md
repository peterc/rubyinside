---
title: XRuby Already Faster Than Ruby 1.8.5?
date: '2007-03-09'
author: Peter Cooper
author_slug: admin
post_id: 419
slug: xruby-already-faster-than-ruby-185-419
url: "/xruby-already-faster-than-ruby-185-419.html"
categories:
- elsewhere
- miscellaneous
---

{{< rawhtml >}}
<p>Following on from the <a href="http://www.antoniocangiano.com/articles/2007/02/19/ruby-implementations-shootout-ruby-vs-yarv-vs-jruby-vs-gardens-point-ruby-net-vs-rubinius-vs-cardinal">bumper Ruby interpreter performance tests</a> by Antonio Cangiano two weeks ago, Xue Yong Zhi decided to run the same performance suite on XRuby Ruby to JVM compiler and <a href="http://xruby.blogspot.com/2007/03/xruby-runs-most-benchmark-faster-than.html">found that XRuby is faster than the Ruby interpreter in 26 out of 38 tests</a>. It's interesting to note that the failing tests are the same as those for the official Ruby interpreter on Windows (stack exhaustion?) so in the scope of these performance tests XRuby <em>appears</em> to be more feature complete than interpreters such as Cardinal and Rubinius that fail many of the tests.</p>
<p>While XRuby's performance is certainly amazing for a project that's less than 2 years old, and the idea of compiling Ruby directly to Java bytecode is initially appealing, the results for YARV/Rite are still streets ahead in terms of raw performance, and where I'm placing my bets for the next <em>de facto</em> Ruby interpreter.</p>
{{< /rawhtml >}}
