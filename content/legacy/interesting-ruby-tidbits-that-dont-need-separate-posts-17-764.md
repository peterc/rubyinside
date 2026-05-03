---
title: 'Interesting Ruby Tidbits That Don’t Need Separate Posts #17'
date: '2008-02-18'
author: Peter Cooper
author_slug: admin
post_id: 764
slug: interesting-ruby-tidbits-that-dont-need-separate-posts-17-764
url: "/interesting-ruby-tidbits-that-dont-need-separate-posts-17-764.html"
categories:
- compilations
- jruby
- miscellaneous
- ruby-on-rails
- ruby-tricks
---

{{< rawhtml >}}
<p><big><strong>JRuby 1.1 Release Candidate 2 Released</strong></big></p>
<p>The <a href="http://www.bloglines.com/blog/ThomasEEnebo?id=42">latest release candidate of JRuby 1.1 has been released</a>. 260 issues have been fixed since RC1 and a number of memory and IO improvements have been made. JRuby developer <a href="http://headius.blogspot.com/2008/02/jruby-rc2-released-whats-next.html">Charles Nutter gives some interesting background to JRuby's current state</a>. Nutter explains that JRuby's performance now regularly exceeds that of Ruby 1.8.6 and even Ruby 1.9 in places. Meanwhile, other developers have been <a href="http://blog.erichsen.net/2008/02/17/benchmarking-fun-with-jruby-11-rc2-glassfish-and-rails-202/">doing</a> <a href="http://oracleappslab.com/2008/02/17/mix-presidents-day-release-jruby-11rc2-and-a-bunch-of-other-stuff/">benchmarks</a>.</p>
<p><big><strong>A Single File Rails Application</strong></big></p>
<p>Pratik Naik has done the unthinkable and made... <a href="http://m.onkey.org/2008/2/16/single-file-rails-application">a single file Rails application</a>. Clever stuff. He then created a tiny wrapper for this nugget of joy called <a href="http://github.com/lifo/fabs/tree/master/rails-mini/tinyrails.rb">tinyrails</a> which makes things even easier.</p>
<p><big><strong>Sending Ruby to the Jail: An Attempt at a Haml "Safe Mode"</strong></big></p>
<p>Sven Fuchs has been working on <a href="http://www.artweb-design.de/2008/2/17/sending-ruby-to-the-jail-an-attemp-on-a-haml-safemode">a "safe mode" plugin for the Haml templating engine</a>. This would allow regular users to supply Haml code for use on public Web sites, but without the risk of malicious code causing issues on the server. I picked some holes in <a href="http://www.artweb-design.de/2008/2/5/sexy-theme-templating-with-haml-safemode-finally">Sven's initial approach</a>, and he went back to the drawing board. Essentially he's trying to use Ryan Davis' <a href="http://parsetree.rubyforge.org/ruby_parser/">Ruby parsing libraries</a> to make any Ruby code "safe" without relying on running code in an actual <a href="http://redhanded.hobix.com/inspect/theThrillingFreakyFreakySandboxHack.html">sandbox</a>. I'm still not entirely convinced his latest approach is 100% safe but it managed to succeed with all of the initial "hacks" I could think of, so I'm happy to mention it.</p>
<p>Sven is hoping that by releasing his work so far to the public, someone will come up with a clever method for getting it to break. If Sven's efforts succeed, of course, then his technique may be useful for non-Haml applications and allow us to "sandbox" Ruby code in yet another way.</p>
<p><big><strong>Radiator: Your build statuses on a giant LED display</strong></big></p>
<p><img src="/assets/2008/02/radiator-success.jpg" width="346" height="77" alt="radiator_success.jpg"></p>
<p>A bit of fun this one. "The Hammer" wrote in with news of <a href="http://www.somethingnimble.com/bliki/radiator">Radiator</a>, a handy Ruby-based service for blasting your build messages to a USB <a href="http://www.betabrite.com/">BetaBrite</a> LED display.</p>
<p><big><strong>Ruby MySpace Platform and YouTube APIs</strong></big></p>
<p>Shane Vitarana has released two libraries. The first is a new one called <a href="http://shanesbrain.net/2008/2/11/spacer-myspace-ruby-api-released">Spacer</a> and implements a Ruby API for the "MySpace Platform"'s REST API. The second is an <a href="http://shanesbrain.net/2008/2/11/introducing-youtube-g">update to an existing library, YouTube-G</a>, an API for YouTube's GData API.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>shane</strong> &middot; <time datetime="2008-02-18T16:21:00+00:00">February 18, 2008 at 4:21 pm</time></p>
      <p>Thanks for the mention! Just to clarify, YouTube-G is a totally new library which implements YouTube's new API based on Google's GData format.  The previous library, youtube, has been deprecated, and I believe YouTube no longer supports that API.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aaron Patterson</strong> &middot; <time datetime="2008-02-19T02:06:00+00:00">February 19, 2008 at 2:06 am</time></p>
      <p>Thanks to the Hammer, I was able to hack USB support in to my betabrite gem.  I even added an autotest plugin to show your autotest results on the betabrite!</p><p><a href="http://tenderlovemaking.com/2008/02/11/autotest-and-betabrite/" rel="nofollow">http://tenderlovemaking.com/2008/02/11/autotest-and-betabrite/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pratik</strong> &middot; <time datetime="2008-02-22T14:43:00+00:00">February 22, 2008 at 2:43 pm</time></p>
      <p>Hey, thanks for posting about tinyrails :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
