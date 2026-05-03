---
title: How Ruby Manages Memory and Garbage Collection
date: '2010-02-24'
author: Peter Cooper
author_slug: admin
post_id: 3006
slug: how-ruby-manages-memory-and-garbage-collection-3006
url: "/how-ruby-manages-memory-and-garbage-collection-3006.html"
categories:
- elsewhere
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2010/02/garbage.jpg" width="106" height="103" alt="garbage.jpg" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"><a href="http://timetobleed.com/garbage-collection-slides-from-la-ruby-conference/">Garbage Collection and the Ruby Heap</a> is a presentation given by Joe Damato and Aman Gupta at the recent LA Ruby Conference. You only get the slides for now (all 70 of them!), but they're very detailed and can almost work as a standalone concise e-book on Ruby's garbage collection system.</p>
<p>Joe and Aman take a look at C memory management vs Ruby and show the difference between the stack and the heap. As a garbage collected language, Ruby takes the easy route by putting everything on the heap and the presentation demonstrates how the MRI (Matz's Ruby 1.8) does this, as well as how objects are tracked within memory (right down to the underlying C structs).</p>
<p><img src="/assets/2010/02/cvsruby.png" width="386" height="288" alt="cvsruby.png" style="border:1px #000000 solid;"></p>
<p>MRI's garbage collection scheme isn't particularly well optimized (though Phusion's Ruby Enterprise Edition has made some tweaks) and the presentation demonstrates the viability of some other garbage collection schemes (as always, the issue is compatibility with native extensions).</p>
<p>The presentation finishes off with a interesting walkthrough of using <a href="http://github.com/ice799/memprof">memprof</a> (a Ruby memory profiler) to debug a memory leak in <a href="rails-3-0-beta-links-2966.html">Rails 3.</a></p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><em>[e-book]</em> <a href="http://bit.ly/rails-3-upgrade-book">The Rails 3 Upgrade Handbook</a> by <em>Jeremy McAnally</em> is a 120 page guide on migrating your apps from Rails 2.x to Rails 3.0. There's <a href="http://www.railsinside.com/books/409-rails-3-upgrade-handbook.html">a review of it on Rails Inside</a> if you want to learn more.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>andhapp</strong> &middot; <time datetime="2010-02-24T20:25:00+00:00">February 24, 2010 at 8:25 pm</time></p>
      <p>This is a great presentation.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Marcelo Silveira</strong> &middot; <time datetime="2010-02-25T01:50:00+00:00">February 25, 2010 at 1:50 am</time></p>
      <p>Nice. Something I'd never learn by myself.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
