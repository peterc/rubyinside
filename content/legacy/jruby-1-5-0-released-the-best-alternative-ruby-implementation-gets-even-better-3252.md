---
title: 'JRuby 1.5.0 Released: The Best Alternative Ruby Implementation Gets Even Better'
date: '2010-05-12'
author: Peter Cooper
author_slug: admin
post_id: 3252
slug: jruby-1-5-0-released-the-best-alternative-ruby-implementation-gets-even-better-3252
url: "/jruby-1-5-0-released-the-best-alternative-ruby-implementation-gets-even-better-3252.html"
categories:
- jruby
- news
---

{{< rawhtml >}}
<p><img src="/assets/2010/05/jruby.png" class="alignleft size-thumbnail bordered">Following on five months after the release of the popular JRuby 1.4, the <a href="http://jruby.org/">JRuby</a> team <a href="http://jruby.org/2010/05/12/jruby-1-5-0.html">have delivered JRuby 1.5!</a></p>
<p>Forgetting the de facto "official" Ruby implementations of 1.8.x and 1.9.1/2, JRuby is the fastest and most stable Ruby implementation available and already has 9 years of progress under its belt. JRuby takes a lot of its performance and versatility from running on the Java Virtual Machine (<span class="caps">JVM</span>), which has provided JRuby's developers with a solid base from which to optimize how Ruby is implemented.</p>
<p><a href="http://jruby.org/2010/05/12/jruby-1-5-0.html">JRuby 1.5.0's release notes</a> provide the full detail, but essentially the biggest new features are:</p>
<ul>
<li>Native launcher for <span class="caps">UNIX</span>-based platforms</li>
<li>Ant support (effectively a Java based built tool, a la <code>make</code>)</li>
<li>Rails 3 related fixes</li>
<li>Updates to the standard library, RubyGems, and RSpec</li>
<li>ruby-debug is now included</li>
<li>Significantly improved Windows support (a breath of fresh air for Windows-based Ruby developers used to getting second best in the Ruby world)</li>
<li>Overall performance improvements</li>
</ul>
<p>I don't use JRuby in production myself, but everyone I know who does attests to its stability and performance. I've tried a handful of benchmarks on it informally, and it typically gives Ruby 1.9.1 a run for its money (though not always - and it's worth noting that JRuby's 1.9.x support is still new and optionally applied). It's well worth a try as you might need to pull it out of your arsenal one day to meet the requirements on a "Java-only" enterprise project ;-)</p>
<h3>Installing JRuby</h3>
<p>Picking up JRuby from its <a href="http://www.jruby.org/download">downloads page</a> and getting it running isn't difficult at all, as long as you have a <span class="caps">JVM</span>/<span class="caps">JRE</span> installed. It comes in both binary and source forms separately for <span class="caps">UNIX</span>-esque and Windows environments. Windows users get the bonus of a special "executable + <span class="caps">JRE</span>" download for simplified installation.</p>
<p>A far <em>cooler</em> way of installing JRuby, however, is to use <a href="http://rvm.beginrescueend.com/"><span class="caps">RVM</span> (Ruby Version Manager)!</a> With <span class="caps">RVM</span> you can install multiple Ruby implementations on your machine without damaging the ones you already have. Creator Wayne E Seguin has <a href="http://rubygems.org/gems/rvm">already released a new version</a> that supports and installs JRuby 1.5.0. With <span class="caps">RVM</span> 0.1.30, installing JRuby 1.5.0 is as easy as:</p>
<pre><code># rvm install jruby
.. wait a minute or two ..
# rvm use jruby
# ruby -v
=&gt; jruby 1.5.0 (ruby 1.8.7 patchlevel 249) (2010-05-12 6769999) (Java HotSpot(TM) 64-Bit Server VM 1.6.0_17) [x86_64-java]
</code></pre>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Wayne E. Seguin</strong> &middot; <time datetime="2010-05-13T00:39:00+00:00">May 13, 2010 at 12:39 am</time></p>
      <p>@haruki_zaemon discovered a little gem left in the distributed 'rake' file so I just released RVM 0.1.31 to address it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Wojciech Kruszewski</strong> &middot; <time datetime="2010-05-13T05:22:00+00:00">May 13, 2010 at 5:22 am</time></p>
      <p>Cool! I never actually used JRuby, but thought having a route towards Java ecosystem opened makes me feel more comfortable with Ruby in general. I love the idea of multiple languages running in the same VM.</p><p>Now only thing I'd need is Heroku for JRuby.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charles Oliver Nutter</strong> &middot; <time datetime="2010-05-13T09:00:00+00:00">May 13, 2010 at 9:00 am</time></p>
      <p>FWIW, with Ruby 1.9.2 looking to go RC or final soon, we're hoping to make a big push in JRuby 1.6 to get the remaining 1.9 behaviors implemented. We don't recommend people use --1.9 more right now, but there are some brave souls doing so and feeding us issues, plus the RubySpec suite has a pretty good complement of tests for 1.9 features. We may not add everything for JRuby 1.6, but we'll add a lot.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Marc Stone</strong> &middot; <time datetime="2010-05-13T11:16:00+00:00">May 13, 2010 at 11:16 am</time></p>
      <p>being a jruby-user for about 6 months now I have to say it´s really stable everything works the way you would expect! great work charles!!!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-05-13T23:08:00+00:00">May 13, 2010 at 11:08 pm</time></p>
      <p>Wojciech: One of the cool things, and something I think isn't explained well enough by users or developers alike, is that you don't even need to care about Java or the Java ecosystem one bit in order to benefit from JRuby. I'm reasonably "Java-phobic" and JRuby is crazy easy to get running and is very usable without worrying about Java issues <em>mostly.</em> (Once you get to needing to use JDBC, it adds a little overhead to your thought processes, but it's not particularly difficult.)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Grimm</strong> &middot; <time datetime="2010-05-14T00:06:00+00:00">May 14, 2010 at 12:06 am</time></p>
      <p>Do you mean by "Forgetting the de facto "official" Ruby implementations of 1.8.x and 1.9.1/2" that it's the best apart from MRI/YARV, or that it's faster and more stable than MRI/YARV, analagous to Charlie Chaplin coming second in a look-alike competition?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-05-14T00:32:00+00:00">May 14, 2010 at 12:32 am</time></p>
      <p>The former. Though.. it gives them a run for their money.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jason Rogers</strong> &middot; <time datetime="2010-05-14T01:43:00+00:00">May 14, 2010 at 1:43 am</time></p>
      <p>We've been using JRuby at RiskMetrics Group since 1.3.x -- it's a great platform. My only complaint is not being able to use native extensions (like libxml, Hpricot, etc.).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charles Oliver Nutter</strong> &middot; <time datetime="2010-05-14T08:35:00+00:00">May 14, 2010 at 8:35 am</time></p>
      <p>Jason: There's a Summer of Code project to get basic C ext support added to JRuby, but in most cases the best options are to provide a Java-native port of the library in question. For libxml there's this:</p><p><a href="http://github.com/dylanvaughn/libxml-jruby" rel="nofollow">http://github.com/dylanvaughn/libxml-jruby</a></p><p>(and some forks)</p><p>Hpricot should work out of the box; we have a Java port of that that we maintain.</p><p>Others are catch-as-catch-can...Nokogiri has an FFI version that's 100% working, and a Java-native version that's *almost* ready. RMagick has a partial port in rmagick4j. We welcome and will gladly support anybody who wants to port other extensions to JRuby.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2010-05-14T16:13:00+00:00">May 14, 2010 at 4:13 pm</time></p>
      <p>"A far cooler way of installing JRuby, however, is to use RVM (Ruby Version Manager)!"<br>
There's that "feeling like a step-child when using windows in the ruby world" thing again. I know there's pic, but it doesn't play well with cygwin at all. And to the birds with the windows command prompt. Developing ruby on a windows machine for the last 6 months has really opened my eyes as to just how much the ruby world is -not- windows friendly. Sigh.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>mark</strong> &middot; <time datetime="2010-05-14T18:39:00+00:00">May 14, 2010 at 6:39 pm</time></p>
      <p>I don't really see the advantage of JRuby unless you need to interface with Java. I tried different containers (Jetty, Tomcat, Glassfish) and the JVM requires much more memory. To make matters worse, the speed of JRuby is only realized if you let the JVM warm up after thousands of calls. That's just ridiculous. Let's not forget the incompatibility issues with gems.</p><p>I admire the effort being put into JRuby but, if I need to interface with Java then putting a REST layer around the Java services is more feasible.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Josh Cheek</strong> &middot; <time datetime="2010-05-14T22:11:00+00:00">May 14, 2010 at 10:11 pm</time></p>
      <p>FYI, if you installed rvm a while ago, might need to first do:<br>
$ rvm update<br>
$ rvm reload</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-05-15T05:36:00+00:00">May 15, 2010 at 5:36 am</time></p>
      <p>@Chris: Yep. Check this out too: <a href="is-windows-a-first-class-platform-for-ruby-823.html" rel="nofollow">http://www.rubyinside.com/is-windows-a-first-class-platform-for-ruby-823.html</a></p><p>Chairing a panel in front of 300 Rubyists and bringing up the Windows concerns while getting a deafening silence back convinced me that there just isn't the will (outside of a few hard working folks). Luckily, I don't use Windows so it doesn't bother me too much though.. :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Beatriz A. Arnaez</strong> &middot; <time datetime="2010-06-08T08:12:00+00:00">June 8, 2010 at 8:12 am</time></p>
      <p>There's that "feeling like a step-child when using windows in the ruby world" thing again. I know there's pic, but it doesn't play well with cygwin at all. And to the birds with the windows command prompt.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gordon Thiesfeld</strong> &middot; <time datetime="2010-06-09T14:20:00+00:00">June 9, 2010 at 2:20 pm</time></p>
      <p>As far as Windows goes:</p><p>C:\&gt;pik install jruby</p><p>.. wait a minute or two ..</p><p>C:\&gt;pik jruby</p><p>C:\&gt;jruby -v<br>
jruby 1.5.1 (ruby 1.8.7 patchlevel 249) (2010-06-06 f3a3480) (Java HotSpot(TM) Client VM 1.6.0_18) [x86-java]</p><p><a href="http://github.com/vertiginous/pik" rel="nofollow">http://github.com/vertiginous/pik</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
