---
title: New Relic Releases Real User Monitoring and Ditches RPM Name
date: '2011-05-17'
author: Peter Cooper
author_slug: admin
post_id: 4828
slug: new-relic-releases-real-user-monitoring-and-ditches-rpm-4828
url: "/new-relic-releases-real-user-monitoring-and-ditches-rpm-4828.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2011/05/newrelic.png" alt="" title="newrelic" width="100" class="alignnone size-full wp-image-4829" style="float: left; border: 1px solid #333; margin-right: 18px; margin-bottom: 12px">Just over 3 years ago in May 2008, I <a href="new-relic-a-new-35-million-funded-player-in-the-rails-application-monitoring-space-880.html">wrote about</a> <a href="http://newrelic.com/">New Relic</a> for the first time. Since then they've grown rapidly and dominate the Ruby and Rails application monitoring scene with their <em>RPM</em> service. Today, they've made some major tweaks..</p>
<h3>Yo Ho Ho and a Bottle of RUM (Real User Monitoring)</h3>
<p>New Relic's CEO Lew Cirne <em>(whose name is an anagram of New Relic - geddit?)</em> invited me onto a call to tell me about a new feature that <a href="http://blog.newrelic.com/2011/05/17/real-user-monitoring-has-arrived/">they call "Real User Monitoring" (a.k.a. RUM).</a> Essentially it's a significant expansion to the things that the New Relic system tracks.</p>
<p>With RPM, you might already be tracking your web app's database queries, slow query times, your slowest controller actions, how long it takes to build pages, and things like that. Real User Monitoring adds <em>real user</em> tracking to that, in the sense that some extra JavaScript magic is deployed by the New Relic agent which sends back stats on page rendering, DOM speed, browser info and the like. If a user is experiencing a performance issue, you'll know about it.</p>
<p><img src="/assets/2011/05/World-map-of-countries-by-average-page-load-time.png" alt="" title="World map of countries by average page load time" width="593" height="457" class="alignnone size-full wp-image-4830"></p>
<p>At first I wasn't majorly impressed but as Lew showed me around the system, the impact of this addition (which comes free for all New Relic users - no extra costs, I'm told) became apparent. For example, there was a world map (like above) which showed the average page load times for the New Relic app across the world. Norway was in bright red and I asked why. Lew was only too ready to dig into the issue.</p>
<p>We clicked on Norway and saw a graph of the database, rendering, network, DOM processing, and other factors over time. It turned out that nothing was wrong with New Relic's app but the "network" time had soared in the past few hours. Lew remembered that one of their CDN partners was having problems in Scandinavia that day which explained the issue. That's the sort of feedback that's worth its weight in gold.</p>
<p><img src="/assets/2011/05/rum-blog-browsers.png" alt="" title="rum-blog-browsers" width="640" class="alignnone size-full wp-image-4831"></p>
<p>Lew also showed off a section that showed page rendering times <em>by browser.</em> Unsurprisingly, Internet Explorer on Windows was showing the highest times with Chrome coming in as the speed king. While this wasn't much of a shock, it was interesting to see how you could drill down and use it to diagnose inefficiencies in your own code. For example, let's say your JavaScript was using a technique that worked fast on Chrome and Safari but was incredibly slow on Firefox. The new RUM feature on New Relic would highlight this sort of issue to you.</p>
<p>I'm not going to keep going on about RUM or all the cool stuff that's in it because if you're not using New Relic or not interested in signing up for it, nothing more than the above is going to convince you. But if you <em>are</em> a New Relic user or considering it, <a href="http://newrelic.com/">head over there</a> and check it all out.</p>
<h3>No more RPM</h3>
<p>If you've kept an eye on New Relic or are already a user, you'll know that their main service is called "RPM". Well, no longer. It's hardly the falling of the Berlin Wall on the news stakes, but they've ditched the RPM moniker and the service is now simply known as "New Relic." <strong>Don't worry - they haven't killed the service! Just the name :-)</strong></p>
<h3>Package Tweaks</h3>
<p>New Relic have made plenty of changes across their site and to their service (including a cleaner, new UI) but they've also worked on <a href="http://newrelic.com/pricing">the packages they offer.</a> Previously their "Bronze" service was $50 per month per server but this has changed to the "Standard" package which is.. $24 per month per server (with a year's commitment). Half the price and with Real User Monitoring added in for free.</p>
<p>The other packages are the "Pro" package at $149 per month and the "Business" package for companies with 5 or more servers which is $119 per month per server. The offering is definitely clearer than it used to be and the price drop at the low end is probably going to encourage a lot more companies onto the service.</p>
<p><em>Disclaimer: New Relic is a sponsor of Ruby Inside but this is not a paid post.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="thanking-april-2011-sponsors-4850.html" rel="external nofollow" class="url">Thanking Ruby Inside’s April and May 2011 Sponsors (Training, Haml Conversion and More)</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
