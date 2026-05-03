---
title: Ruby 1.9.1 Released – First Production Release of the Fastest Ruby Ever!
date: '2009-01-31'
author: Peter Cooper
author_slug: admin
post_id: 1480
slug: ruby-191-released-first-production-release-of-the-fastest-ruby-ever-1480
url: "/ruby-191-released-first-production-release-of-the-fastest-ruby-ever-1480.html"
categories:
- news
---

{{< rawhtml >}}
<p><img src="/assets/2009/01/ruby-1-9-1.gif" width="102" height="102" alt="ruby-1-9-1.gif" style="float:left; margin-right:12px; margin-bottom:12px;"><strong style="background-color: #ff6">2012 update: Still not up to speed with Ruby 1.9? Check out <a href="http://rubyinside.com/19walkthrough/">the Ruby 1.9 Walkthrough</a> for a 3 hour guide to the details :-)</strong></p>
<p>Years of hard work reached a crescendo today as Yuki Sonoda <a href="http://groups.google.com/group/ruby-talk-google/browse_thread/thread/35e963933f9d0b1a">announced the release of Ruby 1.9.1</a>, the first stable release of the Ruby 1.9 series of MRI. In effect, 1.9.1 replaces 1.8.7 as the latest stable release of "Matz's" Ruby interpreter although (as we'll cover below) it's not <em>entirely</em> that simple.</p>
<p>We'll be doing a roundup of Ruby 1.9 related links and resources soon here on Ruby Inside, but if you want to get up to speed with what Ruby 1.9 is all about right now, I'd recommend checking out the <a href="http://www.scribd.com/doc/2589469/Migrating-to-Ruby-19">Migrating to Ruby 1.9 presentation</a> by Bruce Williams, <a href="ruby-1-9-what-to-expect-presentation-1008.html">Ruby 1.9: What to Expect</a> by Sam Ruby, and James Edward Gray's <a href="http://blog.grayproductions.net/articles/getting_code_ready_for_ruby_19">Getting Code Ready for Ruby 1.9</a>. Mauricio Fernandez's <a href="http://eigenclass.org/hiki.rb?Changes+in+Ruby+1.9">Changes in Ruby 1.9</a> is a more exhaustive list and is still pretty good although it was last updated over a year ago.</p>
<h3>Download</h3>
<p>The official download information is as follows (ruby-lang.org MAY still be down, so scroll down further for a link to our mirror!):</p>
<blockquote>
<p><a href="ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.1-p0.tar.bz2"><strong>ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.1-p0.tar.bz2</strong></a></p>
<p><em>SIZE: 7190271 bytes<br>
  MD5: 0278610ec3f895ece688de703d99143e<br>
  SHA256: de7d33aeabdba123404c21230142299ac1de88c944c9f3215b816e824dd33321</em></p>
<p><a href="ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.1-p0.tar.gz"><strong>ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.1-p0.tar.gz</strong></a></p>
<p><em>SIZE: 9025004 bytes<br>
  MD5: 50e4f381ce68c6de72bace6d75f0135b<br>
  SHA256: a5485951823c8c22ddf6100fc9e10c7bfc85fb5a4483844033cee0fad9e292cc</em></p>
<p><a href="ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.1-p0.tar.gz"><strong>ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.1-p0.zip</strong></a></p>
<p><em>SIZE: 10273609 bytes<br>
  MD5: 3377d43b041877cda108e243c6b7f436<br>
  SHA256: 00562fce4108e5c6024c4152f943eaa7dcc8cf97d5c449ac102673a0d5c1943b</em></p>
</blockquote>
<h3>It's fast, but you shouldn't be..</h3>
<p>Just a month ago, Antonio Cangiano <a href="http://antoniocangiano.com/2008/12/09/the-great-ruby-shootout-december-2008/">ran some benchmarks against a Ruby 1.9.1 preview</a> versus several other Ruby interpreters. Ruby 1.9.1 clocked in at at least twice as fast as Ruby 1.8.7. This is great progress and will tone down <em>some</em> of the "but Ruby is slow" type arguments that have gone around, even though in the grand scheme of things it barely makes a dent.</p>
<p>While Ruby 1.9.1's speed is alluring to existing 1.8 users, however, unless you're <strong>dead sure</strong> of what you're doing, <em>definitely do</em> <strong><em>not</em></strong> <em>expect to be using Ruby 1.9.1 as your production version of Ruby right away!</em> A lot of libraries and gems <strong>will not work</strong> with it and code that runs may not necessarily be operating <em>properly</em> (this is where tests come in very handy!) In short, go get Ruby 1.9.1 (unless on Windows - in which case you should wait for a new One Click Installer), check it out, test your code against it (Dr Nic has written <a href="http://drnicwilliams.com/2008/12/11/future-proofing-your-ruby-code/">a great guide about this</a>), see which gems don't work, and generally use it as a "stick in the sand" to measure a future migration against.</p>
<p>You'll see a lot of blog posts coming along in the next few weeks and months regarding efforts to bring existing libraries up to 1.9.1 standards. Help out where you can, file bug reports, and keep an eye out on the general consensus. We'll be looking at this closely too and keeping you up to date with progress here on Ruby Inside.</p>
<h3>JRuby To Adopt 1.9.1 Standards in JRuby 1.2</h3>
<p>Ever proactive, Charles Nutter of the JRuby team was <a href="http://groups.google.com/group/ruby-talk-google/msg/debcedb81c90c552?">quick to tentatively promise</a> Ruby 1.9.1 support in JRuby 1.2, to come in late February:</p>
<blockquote>
<p>Now that the stable release is out, we will pull 1.9.1 stdlib into JRuby. We'll ship our 1.9.1-compatible (mostly? hopefully?) release of JRuby 1.2 in late February.</p>
</blockquote>
<p>Thankfully, 1.8 support will not be evaporating any time soon, however:</p>
<blockquote>
<p>JRuby will remain at 1.8.6 compatibility (in 1.8 mode) until such time that users let us know that they want support for 1.8.7+ features.</p>
</blockquote>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Radar</strong> &middot; <time datetime="2009-01-31T04:35:00+00:00">January 31, 2009 at 4:35 am</time></p>
      <p>I wrote a guide on getting Ruby 1.9.1 working with Rails edge (2.3) and Rubygems 1.3.1: <a href="http://frozenplague.net/2009/01/ruby-191-rubygems-rails/" rel="nofollow">http://frozenplague.net/2009/01/ruby-191-rubygems-rails/</a>. The mysql and postgres gems do not install (extconf runs fine, make fails horribly) but other than that everything seems peachy.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-01-31T04:42:00+00:00">January 31, 2009 at 4:42 am</time></p>
      <p>Awesome, Radar! :)</p><p>For me, quite a few gems do not install. hpricot, thin, mongrel are the three biggies for me so far. I am sure there are ways to get them to install, but until it's as easy as gem install/gem1.9 install or similar, people need to keep complaing :)</p><p>Some things install just great though - just installed aws-s3 with builder, and xml-simple; it was a breeze.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Zhao Difei</strong> &middot; <time datetime="2009-01-31T06:47:00+00:00">January 31, 2009 at 6:47 am</time></p>
      <p>Let us rock!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>lolcatz</strong> &middot; <time datetime="2009-01-31T09:22:00+00:00">January 31, 2009 at 9:22 am</time></p>
      <p>Does anyone know how to install libxml-ruby gem on 1.9.1 / Ubuntu?</p><p>Getting weird errors while building native extensions. libxml2-dev installed.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan Wedekind</strong> &middot; <time datetime="2009-01-31T13:46:00+00:00">January 31, 2009 at 1:46 pm</time></p>
      <p># Here's how to install Ruby1.9 alongside 1.8. The build scripts of Ruby1.9 will use the suffix to change the name of the program and the name of the directory for Ruby libraries.</p><p>./configure —prefix=/usr/local —program-suffix=1.9<br>
make<br>
sudo make install</p><p># <a href="http://www.codefluency.com/articles/2007/12/02/it-s-time-to-play-with-1-9/" rel="nofollow">http://www.codefluency.com/articles/2007/12/02/it-s-time-to-play-with-1-9/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>James Herdman</strong> &middot; <time datetime="2009-01-31T17:14:00+00:00">January 31, 2009 at 5:14 pm</time></p>
      <p>A note to OS X users out there: MacPorts has made Ruby 1.9.1 available. Simply...</p><p>&gt; sudo port sync<br>
&gt; sudo port install ruby19</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-01-31T18:57:00+00:00">January 31, 2009 at 6:57 pm</time></p>
      <p>Awesome update, thanks James!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jon Brenner</strong> &middot; <time datetime="2009-01-31T22:09:00+00:00">January 31, 2009 at 10:09 pm</time></p>
      <p>I updated the MySQL/Ruby 2.8 source to fix the build under 1.9 and released it as a gem. You can use it until the main rubyforge gem gets fixed.</p><p>To install:<br>
sudo gem install jonbrenner-mysql</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jon Brenner</strong> &middot; <time datetime="2009-01-31T22:40:00+00:00">January 31, 2009 at 10:40 pm</time></p>
      <p>Oh, and make sure you have gems.github.com in your sources:</p><p>gem sources -a <a href="http://gems.github.com" rel="nofollow">http://gems.github.com</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Radar</strong> &middot; <time datetime="2009-02-01T00:26:00+00:00">February 1, 2009 at 12:26 am</time></p>
      <p>For the hpricot gem install, it appears it's using RARRAY(arguments)-&gt;ptr and -&gt;len where it should be using RARRAYPTR and RARRAYLEN (at least, according to a comment that was posted to my blog). My C-Foo isn't strong enough to edit the fast_xs.c, so I think I'll be leaving that to the experts.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Radar</strong> &middot; <time datetime="2009-02-01T10:35:00+00:00">February 1, 2009 at 10:35 am</time></p>
      <p>C-fu improved over the course of the afternoon (with some help from the guys in #ruby-lang), and I got the hpricot gem installed as well as the mysql and pg gem. Working now on the thin gem.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Radar</strong> &middot; <time datetime="2009-02-01T11:01:00+00:00">February 1, 2009 at 11:01 am</time></p>
      <p>thin works too now. Guide is on my blog.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://www.buzzup.com/us/story/22170" rel="external nofollow" class="url">buzzup.com</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jon Brenner</strong> &middot; <time datetime="2009-02-01T19:36:00+00:00">February 1, 2009 at 7:36 pm</time></p>
      <p>MacPorts users: I submitted a patch to the Portfile to add a variant to Ruby19 that removes the "1.9" suffix. It's pending approval, but you can use this patch now if you have a local ports repository: <a href="http://trac.macports.org/ticket/18314" rel="nofollow">http://trac.macports.org/ticket/18314</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2009-02-02T15:01:00+00:00">February 2, 2009 at 3:01 pm</time></p>
      <p>Still chock full of warnings. No attention to detail. Same old sloppy shit, different day.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonathon Brenner</strong> &middot; <time datetime="2009-02-02T15:31:00+00:00">February 2, 2009 at 3:31 pm</time></p>
      <p>The nosuffix patch was approved. If you want to use 1.9.1 exclusively (without 1.8 on the system also), you can install it like so:</p><p>sudo port install ruby19 +nosuffix</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonathon Brenner</strong> &middot; <time datetime="2009-02-02T16:29:00+00:00">February 2, 2009 at 4:29 pm</time></p>
      <p>"Still chock full of warnings. No attention to detail. Same old sloppy shit, different day"</p><p>I'm not sure what your build environment looks like, but I've compiled under cygwin and leopard with surprisingly FEW warnings for any revision, let alone a p0 release.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sam Granieri</strong> &middot; <time datetime="2009-02-02T19:17:00+00:00">February 2, 2009 at 7:17 pm</time></p>
      <p>I cant get mongrel to work, but thin, postgres, and mysql work. </p><p>The Rails framework tests act really weird, and also Ruby1.9 pulled out test/unit, so you may need to install it as a gem</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Radar</strong> &middot; <time datetime="2009-02-03T08:57:00+00:00">February 3, 2009 at 8:57 am</time></p>
      <p>@Sam:</p><p>What problems did you have with mongrel? It worked fine for me with a few small modifications to fastthread</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sam Granieri</strong> &middot; <time datetime="2009-02-11T19:02:00+00:00">February 11, 2009 at 7:02 pm</time></p>
      <p>@radar</p><p>I followed the example at<br>
<a href="http://blog.phusion.nl/2009/02/02/getting-ready-for-ruby-191/" rel="nofollow">http://blog.phusion.nl/2009/02/02/getting-ready-for-ruby-191/</a><br>
and applied the patches there and I manged to get fastthread to work.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sam Granieri</strong> &middot; <time datetime="2009-02-11T19:18:00+00:00">February 11, 2009 at 7:18 pm</time></p>
      <p>managed... darn typos</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
