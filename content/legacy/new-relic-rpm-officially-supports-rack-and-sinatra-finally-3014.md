---
title: New Relic RPM Officially Supports Rack and Sinatra – Finally!
date: '2010-02-25'
author: Peter Cooper
author_slug: admin
post_id: 3014
slug: new-relic-rpm-officially-supports-rack-and-sinatra-finally-3014
url: "/new-relic-rpm-officially-supports-rack-and-sinatra-finally-3014.html"
categories:
- news
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2010/02/NewRelic_inline.png" width="103" height="103" alt="NewRelic_inline.png" style="float:left; margin-right:12px; margin-bottom:12px;"><a href="http://www.newrelic.com/">New Relic's RPM</a>, an application performance monitoring and reporting system, has today announced it has added full support for Sinatra and Rack-based Ruby applications to its traditionally Rails-centric service. It's been possible to hack in support for non-Rails apps into New Relic before, but this move brings them officially into the fold with all of the features only Rails apps used to be able to take advantage of.</p>
<p>New Relic's press release on the news includes a typically "press release sounding" quote from Ryan Tomayko, but as a key contributor to Sinatra and Rails, and as a GitHub employee, it seems worth quoting:</p>
<blockquote>
<p>
  Rack has given Ruby web developers a tremendous amount of freedom to innovate and experiment with new ways of building web applications.</p>
<p>  Developers are increasingly turning to Rack and lightweight frameworks like Sinatra for small utility apps or for latching performance critical features onto an existing site. The ability to monitor and profile these applications using New Relic RPM fills a huge visibility gap for us.
</p>
</blockquote>
<p>So there you go. New Relic have also updated the "agent" that's used to communicate between your apps and their servers and added some Ruby specific features including enhanced visibility in garbage collection, developer mode profiling, "enhanced" JRuby support, and Phusion Passenger queue time capturing (this sounds particularly useful for tweaking your stack).</p>
<p>As always, New Relic RPM is free to use at a "Lite" level and if you're a new user, they'll give you a week of "Gold" level features for free to sweeten the deal. You can keep running at Lite after that though if you don't want to pay. The "Bronze" plan starts at $50 per month (on an annual basis) per host but they also have an "on demand" Amazon EC2 style pricing structure starting from 10 cents per hour.</p>
<p>We've been <a href="new-relic-a-new-35-million-funded-player-in-the-rails-application-monitoring-space-880.html">keeping an eye</a> on New Relic since early 2008 and they seem to have gone from strength to strength over the years. Early on, <a href="http://www.fiveruns.com/">FiveRuns</a>' RM-Manage was still a better option than RPM (in my opinion) but with FiveRuns <a href="http://en.wiktionary.org/wiki/go_the_way_of_the_dodo">going the way of the dodo</a> recently, New Relic have become the main game in town when it comes to Ruby webapp performance monitoring (though <a href="http://scoutapp.com/">Scout</a> are giving them a run for their money in certain areas).</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Michael Hartl</strong> &middot; <time datetime="2010-02-25T02:18:00+00:00">February 25, 2010 at 2:18 am</time></p>
      <p>Actually, Ryan Tomayko is at GitHub nowadays.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-02-25T02:24:00+00:00">February 25, 2010 at 2:24 am</time></p>
      <p>You're right - that guy has itchy feet :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Malloy</strong> &middot; <time datetime="2010-02-25T19:08:00+00:00">February 25, 2010 at 7:08 pm</time></p>
      <p>Thanks for the shout out Peter. We continue to improve our ability to monitor and troubleshoot Ruby apps and we have seen a 300% growth in our Ruby customer base in the past year. We have also seen a surge of interest and new customers for our Java agent as well. We have lots of customers who use us for both Ruby and Java at the same time including a bunch who use Solr (a java open source search engine gaining in popularity) tied to their RoR front end app tier. Looking forward to seeing you at RailsConf because the party doesnt start until you get there!<br>
- Mike at New Relic</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Geoffrey Grosenbach</strong> &middot; <time datetime="2010-02-27T16:21:00+00:00">February 27, 2010 at 4:21 pm</time></p>
      <p>Correction: The creator of Sinatra is Blake Mizerany. Ryan Tomayko is a committer. </p><p>I've been using the new gem on my Sinatra blog and it works as advertised. It's nice to see a breakdown of performance for each URL handler in the app, as well as errors.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-02-27T20:54:00+00:00">February 27, 2010 at 8:54 pm</time></p>
      <p>You're right, and I knew that really but it seems my brain went on thought strike for this post.. argh! Thanks! :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-02-28T02:37:00+00:00">February 28, 2010 at 2:37 am</time></p>
      <p>xyz test..</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
