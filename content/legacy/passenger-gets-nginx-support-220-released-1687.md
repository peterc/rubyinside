---
title: Passenger Gets Nginx Support With New Version 2.2.0
date: '2009-04-16'
author: Peter Cooper
author_slug: admin
post_id: 1687
slug: passenger-gets-nginx-support-220-released-1687
url: "/passenger-gets-nginx-support-220-released-1687.html"
categories:
- cool
- news
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2009/04/nginxpassenger.png" width="400" height="99" alt="nginxpassenger.png" style="margin-right:12px;"></p>
<p><a href="http://www.phusion.nl/">Phusion</a> has just <a href="http://blog.phusion.nl/2009/04/16/phusions-one-year-anniversary-gift-phusion-passenger-220/">announced the release of Passenger 2.2.0</a>, a significant update to the dream-come-true Apache module for deploying Rack-based Ruby applications (including Rails, Sinatra, and Ramaze apps). Or... is it? With 2.2.0 Passenger is now an Nginx module too! So if Apache isn't quite your cup of tea and you were thinking of fleeing back to Nginx (or perhaps you already did), there's now an option to make deploying Ruby webapps on Nginx as easy as on Apache.</p>
<p>Peepcode's Geoffrey Grosenbach has even produced <a href="http://www.modrails.com/videos/passenger_nginx.mov">a screencast</a> demonstrating how to get going with Passenger on Nginx. Check it out! If you aren't yet using Nginx, Passenger's installation routine will install the whole thing for you and by just adding a single server block into the Nginx configuration file, your app will be rolling.</p>
<p>This release is timed to the first year anniversary of Phusion as a company, and for a single year Hongli Lai and Ninh Bui have done a great job, with Passenger / mod_rails now the most <a href="http://rails-hosting.com/Results/SurveySummary.html">popular</a> deployment method in production. Congratulations guys! They'll also both be at RailsConf, so if you want to buy them a drink, that'll be your opportunity. They also want to thank <a href="http://www.engineyard.com/">Engine Yard</a> for sponsoring the Nginx support, as well as everyone who has donated to their cause in the last year (with which a lot of Ruby Inside readers <a href="how-you-can-help-the-state-of-deploying-ruby-webapps-in-the-next-5-minutes-1516.html">helped just two months ago</a>).</p>
<p>Also.. consider following Phusion on Twitter <a href="http://twitter.com/phusion_nl">@phusion_nl!</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>AkitaOnRails</strong> &middot; <time datetime="2009-04-16T18:51:00+00:00">April 16, 2009 at 6:51 pm</time></p>
      <p>Congrats for the Phusion guys once again for shaking the web deployment world :-) And don't miss my initial review of it here: <a href="http://www.akitaonrails.com/2009/04/16/just-released-phusion-passenger-support-for-nginx" rel="nofollow">http://www.akitaonrails.com/2009/04/16/just-released-phusion-passenger-support-for-nginx</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ben Johnson</strong> &middot; <time datetime="2009-04-16T19:29:00+00:00">April 16, 2009 at 7:29 pm</time></p>
      <p>This is awesome, but am I the only one that thinks the beginning of the video is trying to seduce me?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-04-16T19:43:00+00:00">April 16, 2009 at 7:43 pm</time></p>
      <p>You don't like being seduced? :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Geoffrey Grosenbach</strong> &middot; <time datetime="2009-04-16T20:27:00+00:00">April 16, 2009 at 8:27 pm</time></p>
      <p>@Ben Actually, I was trying for the scary/mysterious voice.</p><p>I'll have to file that one away as "seductive" instead.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-04-16T20:29:00+00:00">April 16, 2009 at 8:29 pm</time></p>
      <p>See, it's not only me who thinks you have a sexy voice.</p><p>Yes, I recognize the creepiness of that remark :P</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ben Johnson</strong> &middot; <time datetime="2009-04-17T05:10:00+00:00">April 17, 2009 at 5:10 am</time></p>
      <p>@Peter: I do, I've watched the video at least 20 times today</p><p>@Geoffrey: Maybe scary/mysterious and seductive are one in the same. Eh? Eh? Peter knows what I'm talking about.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hubert Łępicki</strong> &middot; <time datetime="2009-04-17T06:07:00+00:00">April 17, 2009 at 6:07 am</time></p>
      <p>Yeah, great news. I switched from Apache yesterday, and I do see some less memory usage, however, it's still more than it would be when setting up ngnix/apache proxy + mongrel. Guess it's a price of ease of usage...</p><p>Anyone got a phone number to that guy with sexy sexy voice?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2009-04-17T08:54:00+00:00">April 17, 2009 at 8:54 am</time></p>
      <p>@Hubert: Throw Ruby Enterprise Edition into the mix. That should dramatically lower memory usage to well below Nginx+Mongrel's.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hubert Łępicki</strong> &middot; <time datetime="2009-04-18T10:02:00+00:00">April 18, 2009 at 10:02 am</time></p>
      <p>@Hongli: That is exactly what I did!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>mikhailov</strong> &middot; <time datetime="2009-04-25T17:32:00+00:00">April 25, 2009 at 5:32 pm</time></p>
      <p>I'm already on mod_rails, feeling myself like get in the new car :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
