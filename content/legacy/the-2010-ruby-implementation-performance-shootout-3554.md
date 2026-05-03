---
title: The 2010 Ruby Implementation Performance Shootout
date: '2010-07-20'
author: Peter Cooper
author_slug: admin
post_id: 3554
slug: the-2010-ruby-implementation-performance-shootout-3554
url: "/the-2010-ruby-implementation-performance-shootout-3554.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><a href="http://programmingzen.com/2010/07/19/the-great-ruby-shootout-july-2010/"><img src="/assets/2010/07/00012.png" alt="" title="0001" width="460" height="460" class="alignnone size-full wp-image-3555"></a></p>
<p>Hot on the heels of his <a href="the-great-ruby-benchmark-shootout-on-windows-3480.html">Windows Ruby implementation shootout</a> comes <a href="http://programmingzen.com/2010/07/19/the-great-ruby-shootout-july-2010/">Antonio Cangiano's Great Ruby Shootout of July 2010</a> where Antonio pits 8 different Ruby implementations against each other in a performance shootout!</p>
<p>Antonio's findings and observations are interesting and <a href="http://programmingzen.com/2010/07/19/the-great-ruby-shootout-july-2010/">well worth a read</a> (particularly the parts about memory consumption) but if you're in a hurry, the conclusion is that Ruby 1.9.2 RC2 and JRuby 1.5.1 are almost joint first place for fastest Ruby implementation (but 1.9.2 takes it by a hair.) Ruby 1.9.1 and Maglev are then very close behind.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jonas Elfström</strong> &middot; <time datetime="2010-08-02T12:46:00+00:00">August 2, 2010 at 12:46 pm</time></p>
      <p>It would be interesting to find out why JRuby needs 199MB to run bm_sudoko.rb while Ruby 1.9.2 only needs 4.3MB. Initial overhead does not seem to explain the huge difference in memory consumption between the two.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
