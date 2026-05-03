---
title: 'Interesting Rails Tidbits #4'
date: '2008-02-25'
author: Peter Cooper
author_slug: admin
post_id: 770
slug: rails-tidbits-4-770
url: "/rails-tidbits-4-770.html"
categories:
- compilations
- ruby-on-rails
---

{{< rawhtml >}}
<p><big><strong>How To Avoid Hanging Yourself With Rails</strong></big></p>
<p><img src="/assets/2008/02/deathbyrails.jpg" width="276" height="188" alt="deathbyrails.png"></p>
<p>Rowan Hick put together a great presentation called <a href="http://work.rowanhick.com/2008/02/12/how-to-avoid-hanging-yourself-with-rails/">How To Avoid Hanging Yourself With Rails</a> for a recent meeting in Toronto, Canada. A <a href="http://work.rowanhick.com/wp-content/uploads/2008/02/activerecordpresentationfeb12.pdf">PDF</a> is available. In the presentation Rowan focuses on ActiveRecord performance and the best way to frame queries. He tests different techniques by loading a database up with thousands of rows of fake data and then compares different approaches.</p>
<p><big><strong>Create a FaceBook App Using Rails in 7 Easy Steps</strong></big></p>
<p>In "<a href="http://rfacebook.wordpress.com/2008/02/04/quickstartfacebooker/">10 Minute Quick Start Guide for Facebooker,</a>" Gerald Bauer walks through seven steps involved in creating a Facebook app using Ruby on Rails. It only covers the basics but provides a great starting point for anyone who hasn't yet got on the Facebook app bandwagon.</p>
<p><span style="font-size: 14px; font-weight: bold;">FastSessions Plugin</span></p>
<p><a href="http://blog.kovyrin.net/2008/02/06/fastsessions-rails-plugin-released/">FastSessions</a> (<a href="http://code.google.com/p/rails-fast-sessions/">official project page</a>) is a Rails plugin that performs some interesting tricks on the way that Rails handles session storage. It appears only to work on MySQL and no hard performance numbers are given yet (though a "10-15% performance gain" is suggested), but I've seen quite a few people linking to it, so it might be worth a look. Scribd.com (YouTube-for-PDFs) supposedly uses this in production.</p>
<p><big><strong>Insights Into a 300 Million Pageview Per Month Rails App</strong></big></p>
<p>In "<a href="http://www.highscalability.com/friends-sale-architecture-300-million-page-view-month-facebook-ror-app">Friends for Sale Architecture,</a>" Todd Hoff looks at the architecture behind Friends for Sale, a popular Rails-based FaceBook application that serves up 300 million pageviews per month. It's a pretty candid view and makes for interesting reading.</p>
<p><big><strong>Substruct: An Open Source E-Commerce System on Rails</strong></big></p>
<p><img src="/assets/2008/02/substruct-order-list-small.jpg" width="316" height="182" alt="substruct-order-list-small.png"></p>
<p>I haven't had time to dig into this properly but <a href="http://code.google.com/p/substruct/">Substruct</a> came onto my radar a few months ago and now seems to have a public release available. It bills itself as the "first and most robust Ruby on Rails open source e-commerce project" and as well as e-commerce / store functionality, it also provides regular CMS functionality along with blogging capabilities.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Cameron Booth</strong> &middot; <time datetime="2008-02-25T02:51:00+00:00">February 25, 2008 at 2:51 am</time></p>
      <p>all great links, thanks for this!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Steve</strong> &middot; <time datetime="2008-02-25T18:35:00+00:00">February 25, 2008 at 6:35 pm</time></p>
      <p>"first and most robust Ruby on Rails open source e-commerce project"???</p><p>If it's the first then it's gotta be the most robust LOL</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-02-25T18:41:00+00:00">February 25, 2008 at 6:41 pm</time></p>
      <p>So it's the least robust as well. It's also the most Australian, and the least Zimbabwean.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mr. Potter</strong> &middot; <time datetime="2008-02-26T14:53:00+00:00">February 26, 2008 at 2:53 pm</time></p>
      <p>@steve</p><p>There is more than one open source Rails e-commerce app. Substruct was the first, and it is still the most robust.</p><p>Perhaps programming is not your best option.<br>
(insert LOLs as appropriate.)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-02-26T15:32:00+00:00">February 26, 2008 at 3:32 pm</time></p>
      <p>Ha, good point :) That said, I got the impression it was pretty new. I saw a page about it several months ago but it was unreleased at that time.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Seth</strong> &middot; <time datetime="2008-02-27T21:28:00+00:00">February 27, 2008 at 9:28 pm</time></p>
      <p>Hey ruby gang...thanks for the spotlight on Substruct - but it's been publicly available for about.....2 years now.</p><p>The version number is very misleading.</p><p>We just moved to Google Code and released a few new versions which might have sparked the latest interest.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
