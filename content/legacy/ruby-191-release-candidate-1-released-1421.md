---
title: Ruby 1.9.1 Release Candidate 1 Released
date: '2008-12-30'
author: Peter Cooper
author_slug: admin
post_id: 1421
slug: ruby-191-release-candidate-1-released-1421
url: "/ruby-191-release-candidate-1-released-1421.html"
categories:
- news
---

{{< rawhtml >}}
<p>Yuki Sonoda has <a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/323668">just announced the release</a> of Ruby 1.9.1 Release Candidate 1 on the ruby-talk mailing list:</p>
<blockquote>
<p>This is a release candidate of Ruby 1.9.1, which will be the first stable version of Ruby 1.9 series. Try it early and have a experience of modern, faster, with clearer syntax, multilingualized and much improved Ruby world.</p>
<p>We have <a href="http://redmine.ruby-lang.org/projects/ruby-19/issues?query_id=9">fixed 72 bugs and implemented some features.</a> If you encounter a bug or a problem, please let us know it via <a href="http://redmine.ruby-lang.org">the official issue tracking system.</a></p>
</blockquote>
<p>If you're a Ruby developer, particularly if you have any libraries out in the field, getting up to speed with Ruby 1.9 is becoming a necessity. There are still bugs to be squashed (recently, for example, I found one in edge Rails on Ruby 1.9.1 beta - now fixed). Some libraries do not compile with Ruby 1.9 at all yet. Yet Ruby 1.9.1's performance and general stability are so encouraging that popular migration to Ruby 1.9 is certainly on the horizon.</p>
<p>When Ruby 1.9.1 finally drops and the Ruby 1.9 branch is considered production ready, we'll be doing a big round up of Ruby 1.9 news, links, and resources, but till then you might find Dr Nic's guide "<a href="http://drnicwilliams.com/2008/12/11/future-proofing-your-ruby-code/">Future proofing your Ruby code - Ruby 1.9.1 is coming</a>" to be very useful. Sam Ruby's <a href="http://slideshow.rubyforge.org/ruby19.html">OSCON presentation on Ruby 1.9</a> should also prove illuminating if your expose to 1.9 has been minimal so far.</p>
<p><em>(Update: Ryan Grove has written</em> <a href="http://wonko.com/post/how-to-compile-ruby-191"><em>How to compile and install Ruby 1.9.1 on Mac OS X Leopard</em></a> <em>- a handy guide to downloading and compiling Ruby 1.9.1 for yourself on OS X.)</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Sebastian</strong> &middot; <time datetime="2008-12-30T21:56:00+00:00">December 30, 2008 at 9:56 pm</time></p>
      <p>A link to upgrading your version of Ruby to 1.9.x on OS X would be great -- I imagine a lot of folks out there don't want to mess up their current 1.8.x installation. </p><p>But great news! :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John</strong> &middot; <time datetime="2008-12-30T23:59:00+00:00">December 30, 2008 at 11:59 pm</time></p>
      <p>Great job the Ruby programmers have done!</p><p>Now we need to get the Gems compatible... hpricot surprisingly still isn't compatible with Ruby 1.9.  C'mon _why :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John</strong> &middot; <time datetime="2008-12-31T04:29:00+00:00">December 31, 2008 at 4:29 am</time></p>
      <p>@Sebastian: I don't know if this helps with Mac, but here is how I install Ruby 1.9 alongside Ruby 1.8 on Linux.</p><p>./configure --prefix=/usr --program-suffix=19<br>
make &amp;&amp; sudo make install</p><p>Then ruby19 and gem19 are your executables for Ruby 1.9, while "ruby" and "gem" still work as expected for Ruby 1.8.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>rebotnik</strong> &middot; <time datetime="2008-12-31T13:30:00+00:00">December 31, 2008 at 1:30 pm</time></p>
      <p>Need the masses to move to 1.9 as soon as possible, the lack of gems that are compatible is very frustrating.</p><p>1.9 is the future...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Geoffrey Grosenbach</strong> &middot; <time datetime="2009-01-01T22:00:00+00:00">January 1, 2009 at 10:00 pm</time></p>
      <p>@John #3: In my experience, gem executables installed by the gem19 command won't have the 19 suffix by default (for example if you upgrade rake). So installing with --prefix=/usr/local or a specific ruby19 subdirectory of that will work better.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>naquad</strong> &middot; <time datetime="2009-01-05T02:14:00+00:00">January 5, 2009 at 2:14 am</time></p>
      <p>are there any articles on differences between 1.8 and 1.9 to move to 1.9 fast?</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
