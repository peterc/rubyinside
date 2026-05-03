---
title: 'Last Week’s Top Ruby News: Rails 3.1.3, autoload deprecated, and conferences'
date: '2011-11-29'
author: Peter Cooper
author_slug: admin
post_id: 5650
slug: last-weeks-top-ruby-news-rails-3-1-3-autoload-deprecated-and-conferences-5650
url: "/last-weeks-top-ruby-news-rails-3-1-3-autoload-deprecated-and-conferences-5650.html"
categories:
- compilations
- news
---

{{< rawhtml >}}
<p>It's a couple of days late but here are the main headlines from the last week of Ruby news. We have a couple of Rails releases, some event news, and the usual gaggle of great articles and jobs.</p>
<h3>Headlines</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://weblog.rubyonrails.org/2011/11/20/rails-3-1-3-has-been-released" style="font-weight: bold;">Rails 3.1.3 Released (Very Quickly After 3.1.2)</a><br>
This release mainly contains fixes for regressions that popped up in 3.1.2, including a downgrade to Sprockets. 3.1.2 itself was primarily a bug and security fix release and cleared up a XSS vulnerability in the translate helper.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://weblog.rubyonrails.org/2011/11/18/rails-3-0-11-has-been-released" style="">Rails 3.0.11 Released (clears up aforementioned security vuln too)</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-core/41149" style="font-weight: bold;">Matz says 'Autoload will be dead' (in Ruby 3.0)</a><br>
Matz says he should have removed 'autoload' from Ruby when he added threads to the language but he has now deprecated them. Due to Ruby 2.0's backwards compatibility demands, though, they won't be fully gone until Ruby 3.0 but Matz now discourages using autoload.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://mtnwestrubyconf.org/" style="font-weight: bold;">MountainWest RubyConf 2012 Call For Proposals Open</a><br>
Want to talk at a popular Ruby conference in 2012? MWRC's call for proposals is now open until January 7, 2012. The conference itself takes place in Salt Lake City, Utah on March 15-16, 2012.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://scottishrubyconference.com/" style="font-weight: bold;">Scottish Ruby Conference 2012 Registration Open</a><br>
You can now buy tickets for June 2012's Scottish Ruby Conference. It's been very popular in the last couple of years so if you fancy going, check it out soon.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://railsclub.ru/" style="">Railsclub: A Russian Rails Conference, Moscow, December 17</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://postgres.heroku.com/" style="">Heroku Launches Postgres as a SQL Database-as-a-Service</a></p>
</div>
<h3>Articles and Tutorials</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.carbonfive.com/2011/11/23/configuration-for-rails-the-right-way/" style="font-weight: bold;">Configuration for Rails, the Right Way</a><br>
Mike Perham notes that he still sees people promoting various gems and plugins to handle configuration elements in Rails apps, but that one little known secret is that Rails 3 allows you to define your own configuration elements trivially.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/RailsApps/rails3-subdomains" style="font-weight: bold;">Rails 3.1 Subdomains and Devise Example App and Tutorial</a><br>
Daniel Kehoe has been working on some interesting Rails demo apps recently and now he presents a detailed Rails subdomains tutorial showing how to create an example Rails 3.1 application with subdomains and authentication using Devise.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://dev-logger.blogspot.com/2011/11/ruby-19-walkthrough-by-peter-cooper.html" style="font-weight: bold;">Ruby 1.9 Walkthrough: A Bumper Set of Ruby 1.9 Notes</a><br>
Martin Carel recently bought and watched my Ruby 1.9 video and has put together a bumper set of notes with the main Ruby 1.9 changes outlined.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://ryantownsend.co.uk/post/13058102942/unobtrusive-object-deletion-in-rails" style="font-weight: bold;">Unobtrusive Object Deletion in Rails, The Easy Way</a><br>
Using RESTful routes, the HTTP DELETE verb is necessary to delete resources. But what if your users aren't running JavaScript and want to delete items? Ryan Townsend shows a way to get everything running smoothly.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://ryantownsend.co.uk/post/13126016608/cloudfront-cdn-on-rails" style="">Using Amazon's CloudFront CDN with Rails</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://2beards.net/2011/11/the-rails-3-asset-pipeline-in-about-5-minutes/" style="font-weight: bold;">The Rails 3 Asset Pipeline in (about) 5 Minutes</a><br>
Michael Erasmus was feeling unsure about how the asset pipeline in Rails 3.1 worked but after digging around for a while, he's put together a simple high level overview.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://randomtype.ca/blog/how-to-make-gem-patches-with-gem-edit/" style="">How to Make Gem Patches with Gem Edit</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://thinkvitamin.com/code/ruby-on-rails/installing-ruby-rails-and-mysql-on-os-x-lion/" style="font-weight: bold;">Installing Ruby, Rails, and MySQL on OS X Lion</a><br>
My Ruby Show co-host Jason Seifer has written a guide to setting up a basic Ruby development environment on Mac OS X Lion over at Think Vitamin.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://batsov.com/articles/2011/11/20/admin-interfaces-for-rails-apps-railsadmin-vs-activeadmin/" style="">Admin Interfaces for Rails Apps: RailsAdmin vs ActiveAdmin</a></p>
</div>
<h3>Screencasts</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://railscasts.com/episodes/300-contributing-to-open-source" style="font-weight: bold;">Contributing to Open Source (RailsCasts)</a><br>
In the 300th Railscasts episode, Ryan Bates shows how to submit a pull request to an open source Ruby project on GitHub.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://thinkinginrails.com/2011/11/aaron-pattersons-emoji-test-output-gem/" style="">Aaron 'Tenderlove' Patterson's Emoji Test Output Gem</a></p>
</div>
<h3>Libraries and code</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.jcoglan.com/2011/11/23/faye-0-7-new-event-apis-and-an-open-websocket-stack/" style="font-weight: bold;">Faye 0.7: New Event APIs and an Open WebSocket Stack</a><br>
The latest release of Faye adds a few new event hooks and ships with a stand-alone WebSocket client/server implementation that makes adding WebSockets to any Rack app dead simple.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://benoithamelin.tumblr.com/ruby1line" style="font-weight: bold;">Ruby Command-Line One-Liners</a><br>
A large collection of Ruby 'one liners', all set up to run from the command line, to perform various functions, mostly involving processing text files.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/mikepack/snowday" style="">Snowday: A Snow Themed RSpec Formatter</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/eric1234/rack_mailer" style="font-weight: bold;">rack_mailer: Rack End Point for a Contact Form</a><br>
rack_mailer is a simple piece of Rack middleware that takes passed parameters and sends an e-mail to a preconfigured address.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/Gazler/Oauth2-Tutorial" style="">An OAuth2 Tutorial Project</a></p>
</div>
<h3>Ruby Jobs of the Week</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/597020" style="">Junior Rails Developer at Harvest [New York, New York]</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/598479" style="">Ruby/Rails developer - Remote at 12 Spokes [Salt Lake City, Utah]</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/598667" style="">Ruby and Front-End Web Developers at BenchPrep.com [Chicago, Illinois]</a></p>
</div>
<h3>Last but not least..</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://rubyreloaded.com/" style="font-weight: bold;">Ruby Reloaded: Boost Your Ruby-Fu in December with Peter Cooper</a><br>
My live, online Ruby Reloaded course has its 4th outing on December 5/6 (next week) and only <strike>7</strike> 6 seats remain. Learn more about what it's about by following the link and use the code 'INSIDE' to get $50 off.
</p>
</div>
{{< /rawhtml >}}
