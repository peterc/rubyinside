---
title: Ruby 1.9.2 Released
date: '2010-08-18'
author: Peter Cooper
author_slug: admin
post_id: 3700
slug: ruby-1-9-2-released-3700
url: "/ruby-1-9-2-released-3700.html"
categories:
- news
---

{{< rawhtml >}}
<p>Yuki (Yugui) Sonoda has <a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/367983">just announced the release</a> of the stable version of Ruby 1.9.2!</p>
<blockquote class="stylized">
<p>Ruby 1.9.2 has been released. This is the newest release of Ruby 1.9 series. Ruby 1.9.2 is mostly compatible with 1.9.1, except the following changes:</p>
<ul>
<li>Many new methods</li>
<li>New socket API (IPv6 support)</li>
<li>New encodings</li>
<li>Random class that supports various random number generators</li>
<li>Time is reimplemented. There is no longer the year 2038 problem.</li>
<li>some regexp enhancements</li>
<li>$: no longer includes the current directory.</li>
<li>dl is reimplemented on top of libffi.</li>
<li>new psych library that wraps libyaml. You can use the library instead of syck.</li>
</ul>
</blockquote>
<p><cite>Yuki Sonoda</cite></p>
<p>Ruby 1.9.2 passes 99% of <a href="http://www.rubyspec.org/">RubySpec</a> and, if you haven't already given it a go, offers worthwhile performance increases over Ruby 1.9.1 and <em>significant</em> performance improvements over the 1.8.x series.</p>
<p>Intriguingly, Ruby 1.9.2 is only considered to have full, verified support on Debian Linux on 32 bit Intel architectures, with support for OS X 10.5 and 10.6, FreeBSD, Windows, and Solaris considered "best effort." Linux distributions other than Debian are listed in the lower "perhaps" category for support, so running your own tests is more essential than ever before moving to 1.9.2 in production.</p>
<h3>Installing</h3>
<p>As always, the source can be picked up from the official sources at ruby-lang.org:</p>
<p><a href="http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.2-p0.tar.gz">http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.2-p0.tar.gz</a><br>
<a href="http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.2-p0.tar.bz2">http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.2-p0.tar.bz2</a><br>
<a href="http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.2-p0.zip">http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.2-p0.zip</a></p>
<p>Or, you can use <a href="http://rvm.beginrescueend.com/">RVM</a>, which has <em>already</em> been updated to support the release:</p>
<p><code>rvm update --head &amp;&amp; rvm reload &amp;&amp; rvm install 1.9.2 &amp;&amp; rvm 1.9.2 --default</code></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>mikhailov</strong> &middot; <time datetime="2010-08-18T17:30:00+00:00">August 18, 2010 at 5:30 pm</time></p>
      <p>it's great! Rails3 will be out there!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>BrianM</strong> &middot; <time datetime="2010-08-18T17:40:00+00:00">August 18, 2010 at 5:40 pm</time></p>
      <p>Great news! Thanks go to everyone that worked on it!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Raphael Costa</strong> &middot; <time datetime="2010-08-18T18:05:00+00:00">August 18, 2010 at 6:05 pm</time></p>
      <p>Only this command works for me:</p><p>rvm update --head &amp;&amp; rvm reload &amp;&amp;  rvm install ruby-1.9.2-p02</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mother Nature</strong> &middot; <time datetime="2010-08-19T02:02:00+00:00">August 19, 2010 at 2:02 am</time></p>
      <p>Linux only and no 64 bit. Lame.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>superflux</strong> &middot; <time datetime="2010-08-19T10:23:00+00:00">August 19, 2010 at 10:23 am</time></p>
      <p>Great, thanks !!!!!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan Wedekind</strong> &middot; <time datetime="2010-08-19T14:01:00+00:00">August 19, 2010 at 2:01 pm</time></p>
      <p>I've tried to configure using "./configure --prefix=/usr/local --enable-shared --program-suffix=1.9" but somehow I can't get it to work this time. I always get this error:</p><p>/usr/local/lib/ruby/site_ruby/1.9.1/rubygems/source_index.rb:68:in `installed_spec_directories': undefined method `path' for Gem:Module (NoMethodError)</p><p>Maybe it has something to do with different Ruby versions? Also see <a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/367983" rel="nofollow">http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/367983</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Grimm</strong> &middot; <time datetime="2010-08-19T23:36:00+00:00">August 19, 2010 at 11:36 pm</time></p>
      <p>Thanks for mentioning performance. I was curious about that. Horribly biased performance shootouts in 5, 4, 3, ... ?</p><p>I wonder how people will handle the migration to 1.9.2? Use isitruby19 again?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Preston Lee</strong> &middot; <time datetime="2010-09-24T22:16:00+00:00">September 24, 2010 at 10:16 pm</time></p>
      <p>I've done a brief writeup on some of the common upgrade issues on Linux and OS X, here: <a href="http://www.prestonlee.com/2010/09/24/upgrading-from-ruby-1-9-1-to-ruby-1-9-2/" rel="nofollow">http://www.prestonlee.com/2010/09/24/upgrading-from-ruby-1-9-1-to-ruby-1-9-2/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Billy</strong> &middot; <time datetime="2010-10-19T14:09:00+00:00">October 19, 2010 at 2:09 pm</time></p>
      <p>Thanks Preston for the link, it was useful in my attempt at upgrading from 1.9.1. I agree, Andrew, the isitruby19 site will probably become active once again. I do not understand why it was not made more obvious that there would be some major issues with upgrading from 1.9.1 to 1.9.2 (a seemingly innocuous point release). First, rubygems simply broke since 1.9.2 comes packaged with it now, and diagnosing the issue was initially difficult since 1.9.2 installs into the 1.9.1 directory (WTF!). I am not 100% sure, but I believe the directory location situation was a part of the reason I was unable to downgrade back to 1.9.1 once I had 1.9.2 configured and installed (I am on a Solaris box, which could also be the culprit). Also, much of my Rails project code as well as many of my installed rubygems failed to work with 1.9.2, since the LOAD_PATH no longer includes the current directory. The ruby-lang FAQ for the 1.9.2 release is rather nonchalant about the changes, and makes no reference to incompatibilities it may create.</p><p>I know this seems like a whining rant, but the rationale for some decisions and lack of formal acknowledgment of complications which could be caused by "security releases" has gotten me a little frustrated. I am part of a team of 2 full time and 1 part time employee who have created a RoR site for a medium-scale university (with ~35k views/day), and I feel like sometimes more of our time is spent debugging issues with upgrades than coding. I know, we could (and maybe should) have gone with a different framework given the small size of our team, but we love the rapid development abilities rails has, courtesy of the ruby language, and were sick of our spaghetti code PHP webapp. However, falling even slightly behind the curve in this community can be dangerous, especially since many of the gems remove support for ruby/rails releases which may only be one or two releases old. Don't get me wrong, I have no hard feelings toward those in this wonderful community who take the time and effort to produce quality, efficient, invaluable gems and who have worked to get ruby and Rails where it is today. It would just be nice if the effects and potential for complications/incompatibilities of core code changes were considered and made more obvious with new releases so that those of us with small teams, small budgets, and large scale apps can be adequately prepared and still able to enjoy the wonderful code produced by this community.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Billy</strong> &middot; <time datetime="2010-10-19T14:14:00+00:00">October 19, 2010 at 2:14 pm</time></p>
      <p>minor correction from the previous post: page views is actually about 95k/day. I was looking at visits in google analytics. 35k views/day would be substantially smaller :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
