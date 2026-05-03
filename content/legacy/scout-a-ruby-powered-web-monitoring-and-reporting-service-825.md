---
title: 'Scout: A Ruby Powered Web Monitoring and Reporting Service'
date: '2008-03-27'
author: Peter Cooper
author_slug: admin
post_id: 825
slug: scout-a-ruby-powered-web-monitoring-and-reporting-service-825
url: "/scout-a-ruby-powered-web-monitoring-and-reporting-service-825.html"
categories:
- cool
- elsewhere
- interviews
- miscellaneous
- news
---

{{< rawhtml >}}
<p><img src="/assets/2008/03/scout.jpg" width="415" height="274" alt="scout.png" style="border:1px #000000 solid;"></p>
<p><em>Disclaimer: Scout is a commercial service. I have received no compensation for mentioning this service and am posting about it merely due to my own interest in it.</em></p>
<p><a href="http://scoutapp.com/">Scout</a> is a new "a la carte" monitoring and reporting service, primarily for tracking servers and Web applications, developed by HighGroove Studios. Scout lets you use plugins (provided both by HighGroove and other Scout users) written in Ruby to customize and manipulate your monitoring arrangements. You can also write your own plugins. Subscription levels will vary from a free account (one server, up to 3 plugins, 30 minute reporting intervals) up to over $100 per month for the highest level (supporting many more servers, shorter intervals, unlimited plugin usage, etc.)</p>
<p>The installation process and plugin system are what make Scout particularly unique and interesting. A Scout "client" is run on each machine you wish to monitor, and is installed with RubyGems (<span style="font-style: italic;">gem install scout</span>). The client routinely runs its plugins and sends information to the central Scout service (rather than Scout "querying" the server, as with most monitoring services). Any plugins you install through the Scout Web interface are pulled down by the Scout client to all of the relevant servers automatically!</p>
<p>Scout is still in its pre-release stage (though not for long) <strike>but HighGroove have offered to give the first 20 Ruby Inside readers who mail <em>rubyinside@<!--*-->highgroove.com</em> an account! So.. be quick if you want a go :)</strike> <em>(They've now all gone, sorry!)</em></p>
<p>I also decided to ask the Scout team a few questions about the service to get a better feel for how it works:</p>
<p><strong>Is Ruby the only language used on Scout? If not, why not, and what else are you using?</strong></p>
<blockquote>
<p>
  <br>
  <b>James Edward Gray II:</b> The Scout client and server are written in Ruby, yes. They make use of data formats like YAML and Ruby's marshaled object binary format as well as communicate using protocols like HTTP, but the beating heart is Ruby at both ends.</p>
<p>  However, most plugins will shell out to external utilities. Some of these utilities might be considered languages in their own right. For example, AppleScript can be used to communicate with or control Mac OS X applications. Even the shells themselves are languages and plugin writers may want to make use of that fact.</p>
<p>  The reason to rely on these external sources of data is simple: plugins can get the data they need from the expert sources with very little effort. Duplicating the functionality of all popular system utilities in Ruby would be a massive undertaking and extremely error prone. Instead, we want users cranking out handy plugins by investing small slices of time. In short, we want to focus on the interesting problems that haven't already been solved.
</p>
</blockquote>
<p><strong>Which technologies does Scout use?</strong></p>
<blockquote><p>
  <br>
  <b>Derek Haynes:</b> The web interface is a Rails app, but the bulk of the requests are processed by a separate Merb app that handles all of the alerts, reports, and errors that are sent to Scout. We went with this setup for 2 primary reasons - we need to continue to process data even when we're updating the web interface, so we needed to decouple the web service from the app and Merb handles these requests more efficiently.
</p></blockquote>
<p><strong>Why did you choose Ruby for Scout's plugin language, and how has it worked out so far?</strong></p>
<blockquote><p>
  <br>
  <b>James Edward Gray II:</b> Like her sister language Perl, Ruby is a powerful tool when used to glue system utilities together. The ease of talking to external processes and the powerful string manipulation features make it an ideal choice for collecting important data and transforming it into the needed formats for the server. This is a big strength of Ruby's design that gets overlooked too often. We hope to change that, of course.
</p></blockquote>
<p><strong>How does Scout plan to deal with availability?</strong></p>
<blockquote><p>
  <br>
  <b>Charles Brian Quinn:</b> The Scout server is running on virtualized hardware, with two physical locations at InterNAP and the AtlantaNAP data centers. We are fully load-balanced with failover support. In the event of failure at one of the datacenters, we are fully redundant. We plan on scaling out horizontally as the need arises.
</p></blockquote>
<p><strong>Do you have any plans or see any further innovations for Scout using Ruby further down the road?</strong></p>
<blockquote><p>
  <br>
  <b>Derek Haynes:</b> I hate to sound like a Real Estate Scammer, but it's practically unlimited. You can include any Ruby library when running a plugin (here's an example that "<a href="http://plugins.scoutapp.com/rails_app_data_example/trunk/rails_app_data_example.rb">loads the Rails environment</a>" and "<a href="https://scoutapp.com/plugin_urls/9-google-analytics">another that uses hpricot</a>"), so anyone can extend the client. An obvious answer is a Ruby DSL for working with system commands. A couple of new libraries address this in different ways, but as James said earlier, a one-size-fits-all solution is a massive undertaking.
</p></blockquote>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Pedro</strong> &middot; <time datetime="2008-03-27T14:27:00+00:00">March 27, 2008 at 2:27 pm</time></p>
      <p>Hi, I'm new to Rails web development. I'm using the Google chart API. It's ok, but isn't great. </p><p>What chart library are you using?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Derek Haynes</strong> &middot; <time datetime="2008-03-27T18:05:00+00:00">March 27, 2008 at 6:05 pm</time></p>
      <p>Pedro,</p><p>We're using amcharts (<a href="http://amcharts.com" rel="nofollow">http://amcharts.com</a>). It's flash-based, not images like Google. </p><p>I found it easy to setup and they look great - we tried several graphing libs and we are very happy with it. </p><p>Cheers,</p><p>Derek</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2008-03-27T18:09:00+00:00">March 27, 2008 at 6:09 pm</time></p>
      <p>I've been using scout for a little more than a week and I gotta say that I love it.  I really like the power and functionality afforded through the plugin system.  I've run into a couple issues but it's a young system.  Actually, for each issue, all I did was log onto their chatroom and I got to talk to an engineer that quickly fixes my issue.  That's a very, very nice added bonus.</p><p>I'm looking forward to an iPhone version of the site, as it uses Flash exclusively for the graphs but they've assured me that it's on the way.</p><p>All in all, a really cool service.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jon Gretar</strong> &middot; <time datetime="2008-03-27T18:58:00+00:00">March 27, 2008 at 6:58 pm</time></p>
      <p>Damn... This looks exactly like something I would need. Unfortunatly my company does not allow the use of hosted services. </p><p>That is kinda the only true Ruby weakness. You can develop an application in Java and compile it so you can easily sell it to users that host it themselves but that gets rather hard when you are using uncompiled language such as Ruby.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pedro</strong> &middot; <time datetime="2008-03-27T20:25:00+00:00">March 27, 2008 at 8:25 pm</time></p>
      <p>Dereck, </p><p>Thanks for your answer. It looks exactly what I have been looking for.  Specially the zoom in the stats, I have been using Ajax and google API  for something like that, and was really painfull.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
