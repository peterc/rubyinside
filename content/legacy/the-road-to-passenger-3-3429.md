---
title: The Road to Passenger 3
date: '2010-06-18'
author: Peter Cooper
author_slug: admin
post_id: 3429
slug: the-road-to-passenger-3-3429
url: "/the-road-to-passenger-3-3429.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p>In January 2008, I lamented that <a href="no-true-mod_ruby-is-damaging-rubys-viability-on-the-web-693.html">the lack of a true mod_ruby was damaging Ruby's viability on the Web</a> (which led to 100+ posts in the comments section!) but within a couple of months Phusion released <a href="http://www.modrails.com/">Passenger</a> (then known as <em>mod_rails</em>) and Ruby webapp deployment hasn't been the same since.</p>
<p>Now, Phusion have built up a successful little consulting business (with some seriously big name clients) and are hard at work on Passenger 3. "Ease of use, stability, and robustness" are the keywords, and while performance is still being improved, Phusion seem keen to make Passenger the highest quality solution rather than merely the faster.</p>
<p>Last week Phusion started <a href="http://blog.phusion.nl/2010/06/10/the-road-to-passenger-3-technology-preview-1-performance-2/">a series</a> of  blog posts giving a sneak peek at the ongoing work and <a href="http://blog.phusion.nl/2010/06/18/the-road-to-passenger-3-technology-preview-2-stability-robustness-availability-self-healing/">today's article on Passenger 3's increased stability, robustness and self healing features</a> should be of particular interest to sysadmins and Ruby developers alike.</p>
<p>A significant announcement in today's post is that Passenger will support zero-downtime, lossless restarts for both the Web server <em>and</em> your applications. While this feature isn't groundbreaking in the overall field, if Phusion can deliver such a feature, they'll be raising the bar for the majority of Ruby webapp developers and sysadmins overnight.</p>
<p><em>Disclaimer: I am a beta tester of Passenger 3 (though admittedly not as useful a tester as I should probably be ;-))</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Lawrence Curtis</strong> &middot; <time datetime="2010-06-19T00:03:00+00:00">June 19, 2010 at 12:03 am</time></p>
      <p>Unicorn already does all this... By the time pp3 is out... The bar from rainbows / unicorn / sunburst will be even higher. </p><p>I know it's a personal preference but passenger will always feelto me like it's for the dirty apache redhat bunch</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jared Fine</strong> &middot; <time datetime="2010-06-19T00:21:00+00:00">June 19, 2010 at 12:21 am</time></p>
      <p>PP3 looks fantastic. Anything that speeds up my rails apps and / or reduces memory while allowing me to stay relatively hands off is A-OK in my book.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2010-06-19T08:06:00+00:00">June 19, 2010 at 8:06 am</time></p>
      <p>@Lawrence Curtis: Phusion Passenger's main difference compared to other Ruby application servers has always been the tight integration with the web server and the ability to dynamically adjust the number of processes based on traffic. A lot of people find this convenient, though some people do not prefer this approach. Which is fine. However let's just say that for Phusion Passenger 3 we have a surprise for you even in that area. ;) Stay tuned.</p><p>I'm surprised how quickly the community comes up with acronyms. Phusion Passenger 3 is already dubbed PP3? :) I originally envisioned Ruby Enterprise Edition to be called R8EE but everybody started calling it REE.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dick Davies</strong> &middot; <time datetime="2010-06-19T10:41:00+00:00">June 19, 2010 at 10:41 am</time></p>
      <p>Speaking of behalf of Team Dirty Apache Redhat , OS packages for this would be a real boon.<br>
Manually building apache modules is so 2008.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>MySchizoBuddy</strong> &middot; <time datetime="2010-06-19T12:16:00+00:00">June 19, 2010 at 12:16 pm</time></p>
      <p>when will it support ruby 1.9.x.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2010-06-20T08:22:00+00:00">June 20, 2010 at 8:22 am</time></p>
      <p>@MySchizoBuddy: Phusion Passenger already supports 1.9, and has done that for more than half a year now. Not sure why you think it doesn't.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
