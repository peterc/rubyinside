---
title: 'home_run: Ruby’s Date and DateTime Classes, But 20-200x Faster'
date: '2010-08-23'
author: Peter Cooper
author_slug: admin
post_id: 3707
slug: home_run-rubys-date-and-datetime-classes-but-20-200x-faster-3707
url: "/home_run-rubys-date-and-datetime-classes-but-20-200x-faster-3707.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<blockquote class="stylized"><p><a href="http://github.com/jeremyevans/home_run">home_run</a> is an implementation of ruby’s Date/DateTime classes in C, with much better performance (20-200x) than the version in the standard library, while being almost completely compatible.</p></blockquote>
<p><cite>Jeremy Evans</cite></p>
<p>Jeremy Evans (of <a href="http://sequel.rubyforge.org/">Sequel</a> fame) has created <a href="http://github.com/jeremyevans/home_run">home_run</a>, a performance-focused C reimplementation of Ruby's Date and DateTime classes. They work out to be significantly faster than the native Ruby classes while retaining compatibility (mostly).</p>
<p>Jeremy makes the surprising claim that <em>"the standard library Date class is slow enough to be the bottleneck in much (if not most) of code that uses it"</em>, but goes on to prove the point with a Rails related benchmark where retrieving all objects for two different models gets a 2x and 3x speedup with <em>home_run</em> loaded.</p>
<p>I hope that Jeremy ultimately aims to get his work included into MRI (as happened with FasterCSV replacing CSV in the stdlib) as standard.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2010-09-03T15:52:00+00:00">September 3, 2010 at 3:52 pm</time></p>
      <p>practically impossible to leave a comment on this one since clicking on the title takes you straight to the github page.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2010-09-03T15:54:00+00:00">September 3, 2010 at 3:54 pm</time></p>
      <p>So is this faster/equal to <a href="http://third-base.rubyforge.org" rel="nofollow">http://third-base.rubyforge.org</a> and <a href="http://github.com/rtomayko/date-performance" rel="nofollow">http://github.com/rtomayko/date-performance</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
