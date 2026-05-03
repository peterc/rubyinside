---
title: Generate Ruby Profiling Charts With Perftools
date: '2009-06-17'
author: Peter Cooper
author_slug: admin
post_id: 1841
slug: ruby-profiling-charts-with-perftools-1841
url: "/ruby-profiling-charts-with-perftools-1841.html"
categories:
- miscellaneous
- tools
---

{{< rawhtml >}}
<p>  <img src="/assets/2009/06/perftools.png" width="400" height="100" alt="perftools.png" style="margin-top:0px; margin-right:0px; margin-left:0px; border:1px #000000 solid;"></p>
<p>Ilya Grigorik has written an interesting article called <a href="http://www.igvita.com/2009/06/13/profiling-ruby-with-googles-perftools/">Profiling Ruby with Google's Perftools</a> about using a port of <a href="http://code.google.com/p/google-perftools/">Google's Perftools</a> (<a href="http://github.com/tmm1/perftools.rb/tree/master">perftools.rb</a>) to build graphs showing the results of profiling sessions on your Ruby code. As with all of Ilya's great posts, it's punchy and to the point.</p>
<p>Ilya starts by explaining what Perftools is and shows how to use its regular profiling features from Ruby, which are impressive enough, but then moves on to showing how to generate graphic profiling charts that graphically demonstrate where your application is spending most of its time. Aman Gupta, the developer of Perftools.rb, has produced such graphs for <a href="http://perftools-rb.rubyforge.org/examples/rubygems.gif">RubyGems</a>, <a href="http://perftools-rb.rubyforge.org/examples/merb.gif">Merb</a>, <a href="http://perftools-rb.rubyforge.org/examples/rails.gif">Rails</a>, and <a href="http://perftools-rb.rubyforge.org/examples/eventmachine-epoll+nothreads.gif">EventMachine</a>, which you might find interesting. Unsurprisingly, Rails and Merb apps seem to spend most of their time at the IO stage.</p>
<div style="background-color: #ffd; padding: 8px; font-family: verdana; font-size: 12px">
  <a href="http://www.interkonect.com/job.html"><img src="/assets/2009/06/ruby-job.jpg" width="100" height="40" alt="ruby-job.jpg" style="float:left; margin-right:12px; margin-bottom:12px;"></a><strong>Job!</strong> <a href="http://www.interkonect.com/">Interkonect</a>, a web app consultancy in Nottingham, UK, is <a href="http://www.interkonect.com/job.html">looking for a part-time junior Rails developer</a> - working from home/freelancing is fine but you should be in the UK in order to attend occasional meetings. <a href="http://www.interkonect.com/job.html">Click here to learn more.</a>
</div>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2009-06-22T18:48:00+00:00">June 22, 2009 at 6:48 pm</time></p>
      <p>Just for ease of reference, here's a link to a ruby 1.9 output using gprof [since Aman's perftools doesn't work with 1.9 yet, it could be interesting].</p>
    </li>
      <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2009-06-22T18:49:00+00:00">June 22, 2009 at 6:49 pm</time></p>
      <p><a href="http://github.com/hogelog/ruby-1.9.1-p0/tree/ee0f53e2559af9b564176f000ec4cd35e01ec06a/sample/_gprof_out" rel="nofollow">http://github.com/hogelog/ruby-1.9.1-p0/tree/ee0f53e2559af9b564176f000ec4cd35e01ec06a/sample/_gprof_out</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
