---
title: Heroku, The Git-Powered Ruby Hosting Platform, Goes Commercial
date: '2009-04-25'
author: Peter Cooper
author_slug: admin
post_id: 1704
slug: heroku-the-git-powered-ruby-hosting-platform-goes-commercial-1704
url: "/heroku-the-git-powered-ruby-hosting-platform-goes-commercial-1704.html"
categories:
- news
---

{{< rawhtml >}}
<p><img src="/assets/2009/04/heroku.png" width="137" height="46" alt="heroku.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"> It was way back in November 2007 that <a href="heroku-an-online-rails-development-and-app-hosting-environment-647.html">we first mentioned</a> <a href="http://heroku.com/">Heroku</a>, the then online Rails development and app hosting environment. It's a little more than that now - it bills itself as the "instant Ruby platform" - and you can host Rails, Sinatra, Ramaze, and other Rack apps and deploy them entirely using Git.</p>
<p>Today, Heroku has taken its next big step with <a href="http://blog.heroku.com/archives/2009/4/24/commercial_launch/">its commercial launch</a>. In its first two years, Heroku has been used to run 25,000+ apps and now users can pay for extended services. The free level remains which gives you one "dyno" (essentially a complete Ruby stack with a certain amount of processing power), two dynos then cost $0.05 per hour, all the way up to 40 dynos that'll put you back $1.95 an hour. You can also get extra database storage: 5 megabytes for free, then starting from $15 a month for 50 megabytes, all the way up to $1600 per month for 2 terabytes on a dedicated database box. You can <a href="http://heroku.com/pricing">play with the pricing calculator here</a>. Features like Memcached, Workling, and AMQP (message queuing) are on the cards and will likely result in extra monthly charges.</p>
<p>A few days ago, Elijah Miller wrote an article about <a href="http://jqr.github.com/2009/04/24/deploy-your-rails-application-in-2-minutes-with-heroku.html">how to deploy your Rails application in 2 minutes on Heroku</a> that you'll find useful if you haven't tried the service before. It's just a case of some work with the <code>heroku</code> command line client, a Rake task, and git. You might also be interested in Heroku's own <a href="http://blog.heroku.com/archives/2009/3/5/32_deploy_merb_sinatra_or_any_rack_app_to_heroku/">Deploy Merb, Sinatra, or any Rack App to Heroku article</a>.</p>
<p>Importantly, Heroku in its basic form is still free and you can go try it right now with no commitments. Congratulations to Adam Wiggins, James Lindenbaum, and Orion Henry for <a href="http://heroku.com/about">their</a> efforts so far.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>remi</strong> &middot; <time datetime="2009-04-25T17:18:00+00:00">April 25, 2009 at 5:18 pm</time></p>
      <p>You might also want to checkout a recent screencast for deploying to Heroku @ <a href="http://remi.org/2009/04/23/deploying-rails-and-rack-applications-to-heroku.html" rel="nofollow">http://remi.org/2009/04/23/deploying-rails-and-rack-applications-to-heroku.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>grosser</strong> &middot; <time datetime="2009-04-25T18:14:00+00:00">April 25, 2009 at 6:14 pm</time></p>
      <p>just recently deployed an app to heroku, really easy...<br>
id really like to deploy a big project there...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hampton Catlin</strong> &middot; <time datetime="2009-04-25T20:00:00+00:00">April 25, 2009 at 8:00 pm</time></p>
      <p>Been using Heroku for about a year now. One app deployed in production with them. Really, really awesome shit.</p><p>*It just works* and its got your back when you start making monies.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
