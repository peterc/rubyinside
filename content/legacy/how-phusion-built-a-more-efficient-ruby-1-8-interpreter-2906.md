---
title: How Phusion Built A More Efficient Ruby 1.8 Interpreter
date: '2009-12-16'
author: Peter Cooper
author_slug: admin
post_id: 2906
slug: how-phusion-built-a-more-efficient-ruby-1-8-interpreter-2906
url: "/how-phusion-built-a-more-efficient-ruby-1-8-interpreter-2906.html"
categories:
- cool
---

{{< rawhtml >}}
<p><img src="/assets/2009/12/ninh-bui.png" width="96" height="113" alt="ninh-bui.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"><a href="http://www.modrails.com/">Phusion Passenger</a> and <a href="http://www.rubyenterpriseedition.com/">Ruby Enterprise Edition</a> developers Ninh "Hernandez" Bui and Hongli Lai travelled to San Francisco last week and gave a 35 minute Google Tech Talk called <a href="http://www.youtube.com/watch?v=ghLCtCwAKqQ">Building A More Efficient Ruby Interpreter</a>.</p>
<p>The talk focused on how the guys (with some help from other sources, including Joe Damato and Aman Gupta) have dug into MRI Ruby 1.8's internals to get some significant memory usage and thread performance improvements for their Ruby Enterprise Edition <i>branch</i> (they're not calling it a fork) of Ruby 1.8.</p>
<p>The video is presented in HD so the slides are easy to see and the audio is solid. If taking a small trip through Ruby's garbage collection, memory allocation, and threading system sounds good to you (or you just want to know what Ruby Enterprise Edition is all about), it's a must watch. If you want some practical Ruby stuff and don't care about what the interpreter's doing, give it a miss.</p>
<p><object width="640" height="385"><param name="movie" value="http://www.youtube.com/v/ghLCtCwAKqQ&amp;hl=en_US&amp;fs=1&amp;hd=1">
<param name="allowFullScreen" value="true">
<param name="allowscriptaccess" value="always">
<embed src="http://www.youtube.com/v/ghLCtCwAKqQ&amp;hl=en_US&amp;fs=1&amp;hd=1" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="640" height="385"></embed></object></p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><img src="/assets/2009/07/jslab.png" width="32" height="35" alt="jslab.png" style="float:left;margin-left:12px; margin-right:8px; border:1px #000000 solid;"><em>[ad]</em> <a href="http://jumpstartlab.com" rel="nofollow">Jumpstart Lab</a> is offering <a href="http://jumpstartlab.com/courses/custom-training/" rel="nofollow">private and corporate training in <strong>Ruby</strong> and <strong>Rails</strong></a>.  Not just great programmers, they're experienced educators available worldwide. CC-Licensed tutorials including <a href="http://jumpstartlab.com/resources/ruby-jumpstart/ruby/" rel="nofollow">"Ruby in 100 Minutes"</a> available at <a href="http://jumpstartlab.com/resources/" rel="nofollow">JumpstartLab.com</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>aliekens</strong> &middot; <time datetime="2009-12-16T12:13:00+00:00">December 16, 2009 at 12:13 pm</time></p>
      <p>Why is there a picture of Patrick Hernandez with Ninh's name on top of this article?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-12-16T12:50:00+00:00">December 16, 2009 at 12:50 pm</time></p>
      <p>It's a long running in-joke with the Phusion guys and Laurent. Sansonetti (and now me, in a way).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>andhapp</strong> &middot; <time datetime="2009-12-16T15:22:00+00:00">December 16, 2009 at 3:22 pm</time></p>
      <p>Thanks. I have been going through thir copy-on-write series on their site. This should be amazing.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Bates</strong> &middot; <time datetime="2009-12-17T16:12:00+00:00">December 17, 2009 at 4:12 pm</time></p>
      <p>Awesome talk! You guys did a great job at explaining complex low-level topics in a simple way.</p><p>One question, how does the Ruby 1.9 garbage collection compare to Ruby Enterprise Edition? Have the problems you mentioned here been fixed in 1.9?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Moore</strong> &middot; <time datetime="2009-12-18T05:14:00+00:00">December 18, 2009 at 5:14 am</time></p>
      <p>This is a really great presentation. My team watched it today for our lunch training and really enjoyed it. I think its a great introduction to how the Ruby interpreter works.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2009-12-18T16:26:00+00:00">December 18, 2009 at 4:26 pm</time></p>
      <p>Great presentation!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan Wedekind</strong> &middot; <time datetime="2009-12-19T00:05:00+00:00">December 19, 2009 at 12:05 am</time></p>
      <p>Impressive. Especially the part about changing stack pointers and having to maintain an extra stack for the interrupt vectors.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>none00</strong> &middot; <time datetime="2009-12-21T12:55:00+00:00">December 21, 2009 at 12:55 pm</time></p>
      <p>@ninhbui fuck yeah patrick hernandez !!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Damien</strong> &middot; <time datetime="2009-12-21T20:47:00+00:00">December 21, 2009 at 8:47 pm</time></p>
      <p>A bit late to comment, but that is a great talk! Very well explained. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris Kleeschulte</strong> &middot; <time datetime="2010-01-03T22:26:00+00:00">January 3, 2010 at 10:26 pm</time></p>
      <p>The talk felt like a pretty good peer review on the Ruby 1.8 code base. This is good. Mr. Bui and Mr. Lai made the complex inner workings of the C code very understandable. There should be many more tech talks about threads, garbage collection strategies, and memory management! These topics are quite, shall we say, mature and there is a lot of new things happening in this area that can help even the 1.9 code base.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Zach Dennis</strong> &middot; <time datetime="2010-01-06T22:17:00+00:00">January 6, 2010 at 10:17 pm</time></p>
      <p>Excellent presentation!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
