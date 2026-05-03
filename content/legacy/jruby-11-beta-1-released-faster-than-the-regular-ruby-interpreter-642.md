---
title: JRuby 1.1 Beta 1 Released; Faster Than The Regular Ruby Interpreter
date: '2007-11-04'
author: Peter Cooper
author_slug: admin
post_id: 642
slug: jruby-11-beta-1-released-faster-than-the-regular-ruby-interpreter-642
url: "/jruby-11-beta-1-released-faster-than-the-regular-ruby-interpreter-642.html"
categories:
- cool
- jruby
- news
---

{{< rawhtml >}}
<p>Thomas Enebo of the JRuby team has <a href="http://docs.codehaus.org/display/JRUBY/2007/11/02/JRuby+1.1b1+Released">announced the release of the first beta of JRuby 1.1</a>. This is a significant release, focusing heavily on performance increases. The performance increases yielded so far are so significant that in most like-for-like tests, JRuby beats the regular Ruby interpreter (a.k.a. MRI) JRuby 1.1. On Rails-focused tests, JRuby also wins.. making JRuby the fastest way to run Rails applications at present. Charles Nutter talks about the improvements, along with a number of other interesting JRuby-related topics, in <a href="http://headius.blogspot.com/">his latest blog post</a> - a must read for Ruby implementation nuts.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>SMERF</strong> &middot; <time datetime="2007-11-04T19:19:00+00:00">November 4, 2007 at 7:19 pm</time></p>
      <p>I don't understand. I just did a quick and dirty test and MRI is twice as fast as JRuby 1.1b1 (MBP 2GB 2.16GHz osx 10.4.10 ) </p><p>MATZ - MRI<br>
=======</p><p><code><br>
irb(main):006:0&gt; puts Benchmark.measure { pythag(5000) }<br>
 20.980000   0.120000  21.100000 ( 22.582690)<br>
=&gt; nil<br>
irb(main):007:0&gt; puts Benchmark.measure { pythag(5000) }<br>
 20.620000   0.140000  20.760000 ( 24.144776)<br>
=&gt; nil<br>
</code></p><p>JRUBY 1.2.1b1<br>
========</p><p><code><br>
irb(main):003:0&gt; puts Benchmark.measure { pythag(5000) }<br>
 40.231000   0.000000  40.231000 ( 40.230000)<br>
=&gt; nil<br>
irb(main):004:0&gt; puts Benchmark.measure { pythag(5000) }<br>
 41.851000   0.000000  41.851000 ( 41.851000)<br>
=&gt; nil<br>
irb(main):005:0&gt; </code></p><p></p>
    </li>
      <li>
      <p class="comment-meta"><strong>SMERF</strong> &middot; <time datetime="2007-11-04T19:22:00+00:00">November 4, 2007 at 7:22 pm</time></p>
      <p><code></code></p><p>def pythag(n)<br>
  result = []<br>
  (2..n).each do |c|<br>
    (1...c).each do |b|<br>
      a = Math.sqrt(c*c - b*b)<br>
      result </p>
    </li>
      <li>
      <p class="comment-meta"><strong>SMERF</strong> &middot; <time datetime="2007-11-04T19:23:00+00:00">November 4, 2007 at 7:23 pm</time></p>
      <p>Sorry, the html sanitizer ate half of my comment.</p><p><code></code></p><p>def pythag(n)<br>
  result = []<br>
  (2..n).each do |c|<br>
    (1...c).each do |b|<br>
      a = Math.sqrt(c*c - b*b)<br>
      result &lt;&lt; [a.to_i, b, c] if a.to_i == a<br>
    end<br>
  end<br>
  result<br>
end</p><p></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charles Oliver Nutter</strong> &middot; <time datetime="2007-11-05T05:06:00+00:00">November 5, 2007 at 5:06 am</time></p>
      <p>SMERF: Run JRuby with -J-server, which will use the faster "server" JVM....to do so in JIRB, run it like this:</p><p>jruby -J-server -S irb</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charles Oliver Nutter</strong> &middot; <time datetime="2007-11-05T05:19:00+00:00">November 5, 2007 at 5:19 am</time></p>
      <p>Also, I notice now that your pythag function is iterative, which means that it won't get JIT compiled until it's been called 20 times. Try running it at a command line. I did so with -J-server, with a script that benchmarks pythag(5000) twice and got the following results:</p><p>~/NetBeansProjects/jruby $ jruby -J-server test/bench/bench_pythag.rb<br>
 18.050000   0.000000  18.050000 ( 18.049000)<br>
 17.857000   0.000000  17.857000 ( 17.857000)<br>
~/NetBeansProjects/jruby $ ruby test/bench/bench_pythag.rb<br>
 21.180000   0.050000  21.230000 ( 21.258206)<br>
 21.190000   0.050000  21.240000 ( 21.248542)</p><p>This would be faster without blocks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bummer Han</strong> &middot; <time datetime="2007-11-05T17:39:00+00:00">November 5, 2007 at 5:39 pm</time></p>
      <p>my only question is if Ruby runs deterministically the same under jruby as with the dominant ruby interpreter, considering Ruby lang itself is not so well documented.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
