---
title: 'This Week in Ruby: Matz on Ruby 2.0, Numerous Conference CFPs, Tenderlove
  on define_method'
date: '2013-03-07'
author: Peter Cooper
author_slug: admin
post_id: 6043
slug: this-week-in-ruby-matz-on-ruby-2-0-numerous-conference-cfps-tenderlove-on-define_method-6043
url: "/this-week-in-ruby-matz-on-ruby-2-0-numerous-conference-cfps-tenderlove-on-define_method-6043.html"
categories:
- compilations
- miscellaneous
---

{{< rawhtml >}}
<p>Welcome to this week’s roundup of Ruby news, articles, videos, and more, cobbled together from my e-mail newsletter, <a href="http://rubyweekly.com/">Ruby Weekly.</a> Sorry these roundups have been missing for a couple of months, I've been focusing very heavily on the e-mail newsletters which are continuing to grow like crazy! :-) I hope to get back into blogging more soon.</p>
<div style="margin: 16px 0px;" class="item">
  <a href="https://blog.heroku.com/archives/2013/3/6/matz_highlights_ruby_2_0_at_waza"><img src="http://s3.amazonaws.com/nlga/uploads/item/image/9315/thumb_matz.png" width="133" height="100" style="float: right; margin-left: 14px; margin-bottom: 16px; border: 1px solid #1173c7"></a>
<p><a href="https://blog.heroku.com/archives/2013/3/6/matz_highlights_ruby_2_0_at_waza" style="font-weight: bold;">Matz on Ruby 2.0</a><br>
Matz spoke about Ruby 2.0 ('the happiest release ever') for 30 minutes at the Heroku Waza event a week ago and the video is already available to watch. He stresses that "Ruby 1.8 will die soon" and encourages everyone to upgrade.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://tenderlovemaking.com/2013/03/03/dynamic_method_definitions.html" style="font-weight: bold;">Dynamic Method Definitions</a><br>
Aaron 'tenderlove' Patterson says that "depending on your app, using define_method is faster on boot, consumes less memory, and probably doesn’t signigicantly impact performance" compared to eval-based techniques. (And he has the numbers to prove it.)
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://steelcityruby.org/cfp.html" style="font-weight: bold;">Steel City Ruby Conference 2013 CFP Now Open</a><br>
Steel City Ruby takes places in Pittsburgh, PA on August 16-17 and the CFP is now open if you want to submit a talk. The Burlington Ruby Conference has <a href="http://burlingtonruby.com/speak.html">a CFP open too</a>, as <a href="https://docs.google.com/spreadsheet/viewform?fromEmail=true&amp;formkey=dDFuUVdkY2pkd0I4TTZhRmdSaEdVcFE6MQ">does RubyConf India.</a>
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.rubygems.org/2013/03/05/2.0.1-released.html" style="">RubyGems 2.0.1 Released: A Bug-Fix Release</a></p>
</div>
<h3>Reading</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://matt.aimonetti.net/posts/2013/03/05/inspecting-rails-4-request-dispatch-using-ruby-2-dot-0/" style="font-weight: bold;">Inspecting Rails 4 using Ruby 2.0 and TracePoint</a><br>
Matt Aimonetti shows off a practical use for Ruby 2.0's TracePoint execution tracing functionality.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://cirw.in/blog/find-references" style="font-weight: bold;">Visualizing Memory Leaks in Ruby 1.9</a><br>
Conrad Irwin on some clever work to extend ObjectSpace with a new find_references method to perform better analysis on object and memory usage on Ruby 1.9.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://zerowidth.com/2013/02/24/parsing-toml-in-ruby-with-parslet.html" style="font-weight: bold;">Parsing TOML in Ruby with Parslet</a><br>
Recently, GitHub founder Tom Preston-Werner created an interesting INI-influenced 'TOML' format. In this series of posts, Nathan Witmer looks at what's involved in building a parser for TOML using the Parslet PEG parser construction library.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/matthewrobertson/ress" style="font-weight: bold;">Introducing Ress: A System for Building Mobile Optimized Rails Apps</a><br>
Matthew Robertson introduces his new system for building mobile-optimized Rails applications using semantic, media query-based device detection and server side component optimization.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://speakerdeck.com/peterc/ruby-2-dot-0-walkthrough-the-best-bits" style="font-weight: bold;">Ruby 2.0 Walkthrough: The Best Bits</a><br>
Some slides from my yet-to-be-released 'Ruby 2.0 Walkthrough' that quickly skim through what I consider to be the 'best bits' (and not just the headline features).
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.meldium.com/home/2013/3/3/signed-rubygems-part" style="">A Practical Guide to Using Signed Ruby Gems - Part 1: Bundler</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://www.devmynd.com/blog/2013-3-rails-ember-js" style="font-weight: bold;">Rails + Ember.js</a><br>
An introduction to the open source Ember.js JavaScript app framework for Rails developers.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://www.devmynd.com/blog/2013-3-effective-rails-part-2-hiding-activerecord" style="">Effective Rails, Part 2: Hiding ActiveRecord</a></p>
</div>
<h3>Watching and Listening</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://vimeo.com/61087285" style="font-weight: bold;">Sinatra in SIX Lines: How to Do Crazy Stuff with Ruby</a><br>
A talk by Konstantin Haase at Ruby Australia.
</p>
</div>
<h3>Libraries and Code</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.phusion.nl/2013/03/05/phusion-passenger-4-0-release-candidate-4/" style="font-weight: bold;">Phusion Passenger 4.0 Release Candidate 4</a><br>
Leading Rack-based app deployment tool Passenger gets yet another step closer to the 4.0 release.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://krainboltgreene.github.com/time-lord/" style="font-weight: bold;">time-lord: A Human DSL for Time Expressions</a><br>
A gem that gives you more human like expressions for time and space math. Get fun like <code>1.hour.ago.to_range</code> and <code>200.minutes.ago.to_words</code>
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/Shopify/identity_cache" style="font-weight: bold;">identity_cache: Opt-in Read-through ActiveRecord Caching, From Shopify</a><br>
IdentityCache lets you specify how you want to cache your model objects, at the model level, and adds a number of convenience methods for accessing those objects through the cache. Uses Memcached as the backend cache store.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jmettraux.github.com/2013-02-28-neg.html" style="font-weight: bold;">neg 1.1.0: A Small PEG Parser Library</a><br>
"One could say it’s a small brother of Parslet."
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/injekt/gridhook" style="">Gridhook: A Rails Engine to Provide An Endpoint for SendGrid Webhooks</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://a.ttack.tk/" style="">Gem Attack: Show Post-Initialization Notifications on Your Released Gems</a></p>
</div>
<h3>Jobs</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://bignerdranch.theresumator.com/apply/PPxl0c/Web-Application-Developer.html?source=RubyWeekly" style="font-weight: bold;">Web Application Developer for Big Nerd Ranch</a><br>Seeking smart, kind folks who want to make the world a little better through developing, training and writing about cutting-edge code.</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://replaypoker.theresumator.com/apply/Supv29/JS-Rails-Developer-Remote.html" style="font-weight: bold;">JS / Ruby Developer at ReplayPoker (Full-Time, Remote) </a><br>Looking for a challenge? Our company is looking for a top-notch junior to mid level developer to join our small team and make a big difference!</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/790480" style="">Senior Ruby/Rails Developer at HotelTonight [San Francisco, California]</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/794026" style="">Software Engineer at Goodreads [San Francisco, California]</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/794101" style="">Talented Foodie Rails Developer Wanted at America's Test Kitchen [Brookline, Massachusetts]</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/797271" style="">Applications Developer at Central Intelligence Agency [District of Columbia]</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/802287" style="">Senior Ruby on Rails Developer at SponsorPay [Berlin, Germany]</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/803306" style="">Software Engineering /Academic Applications Developer at Dartmouth College [Hanover, New Hampshire]</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/805424" style="">Software Engineer at Nextpoint [Madison, Wisconsin]</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/806334" style="">Senior Back End Software Engineer at The Washington Post - Service Alley [District of Columbia]</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/807997" style="">Ruby Developer at HouseTrip [London, United Kingdom]</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/808342" style="">Applications Developer at Merchants Bonding Company [Des Moines, Iowa]</a></p>
</div>
<h3>Last but not least..</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/awilliams/RTanque" style="font-weight: bold;">RTanque: A Robot Programming Game for Rubyists</a><br>
Players program the 'brain' of a tank and then send their tank into battle with other bots. Based upon the Java project 'Robocode.'
</p>
</div>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2013-04-25T14:37:00+00:00">April 25, 2013 at 2:37 pm</time></p>
      
    </li>
  </ol>
</section>
{{< /rawhtml >}}
