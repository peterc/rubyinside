---
title: 'This Week in Ruby: Rubinius 2.0-rc1, Rake 10, Refactoring video, Passenger
  4.0 supports JRuby, and more'
date: '2012-11-09'
author: Peter Cooper
author_slug: admin
post_id: 5965
slug: this-week-in-ruby-rubinius-2-0-rc1-rake-10-refactoring-video-passenger-4-0-supports-jruby-and-more-5965
url: "/this-week-in-ruby-rubinius-2-0-rc1-rake-10-refactoring-video-passenger-4-0-supports-jruby-and-more-5965.html"
categories:
- compilations
- miscellaneous
- ruby-on-rails
---

{{< rawhtml >}}
<p>Welcome to this week's roundup of Ruby news, articles, videos, and more, cobbled together from my e-mail newsletter, <a href="http://rubyweekly.com/">Ruby Weekly.</a></p>
<p>Highlights include: Passenger 4.0 gets support for JRuby and Rubinius, Ben Orenstein's awesome refactoring video, Pat Shaughnessy's new 'Ruby Under a Microscope' book, AWS adds Ruby support to Elastic Beanstalk, and more.</p>
<h3>Featured</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/rubinius/rubinius/commit/d19e086d013e7a3c99ec935ca84825db6f437dd8" style="font-weight: bold;">Rubinius 2.0.0 Release Candidate 1</a><br>
Sadly the Rubinius blog seems to be on hiatus but plenty of people noticed Rubinius 2.0.0rc1 has been tagged. Rubinius is an alternative Ruby implementation largely written in a subset of Ruby itself and the 2.0 release brings 1.9 syntax to the fore.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
  <a href="http://patshaughnessy.net/ruby-under-a-microscope"><img src="http://s3.amazonaws.com/nlga/uploads/item/image/6786/thumb_mscope.png" width="133" height="100" style="float: right; margin-left: 14px; margin-bottom: 16px; border: 1px solid #1173c7"></a>
<p><a href="http://patshaughnessy.net/ruby-under-a-microscope" style="font-weight: bold;">Pat Shaughnessy's 'Ruby Under a Microscope' Now Available</a><br>
It's a great time for indie books in the Ruby world lately and this is no exception. Pat's book is a truly deep dive into Ruby's internals with lots of diagrams and lucid explanations to help you along the way.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.phusion.nl/2012/10/30/phusion-passenger-4-0-supports-jruby-rubinius/#.UJBUoUMnB4V" style="font-weight: bold;">Phusion Passenger 4.0 Now Supports JRuby and Rubinius</a><br>
Phusion's popular Ruby app deployment module for Nginx and Apache takes another leap forward by extending support from just MRI to JRuby and Rubinius. This could be big.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://confreaks.com/videos/1233-aloharuby2012-refactoring-from-good-to-great" style="font-weight: bold;">Refactoring from Good to Great</a><br>
Thoughtbot's Ben Orenstein takes a brave approach of ditching slides and going with live coding to boldly refactor where no presenter has refactored before.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://aws.typepad.com/aws/2012/11/aws-elastic-beanstalk-ruby-support-and-vpc-integration.html" style="font-weight: bold;">Amazon Adds Ruby Support to AWS Elastic Beanstalk</a><br>
Amazon's Elastic Beanstalk service provides a way to quickly deploy and manage apps within AWS's cloud of services (EC2, S3, etc.) It now supports Ruby apps by using Phusion's Passenger (I hope Amazon are paying Phusion handsomely for this :-))
</p>
</div>
<h3>Reading</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://igor-alexandrov.github.com/blog/2012/11/05/yet-another-ruby-shootout/" style="font-weight: bold;">Yet Another Ruby Shootout: MRI 1.9.3 vs MRI 2.0 vs Rubinius 2.0</a><br>
Igor Alexandrov picks up where Antonio Cangiano left off by benchmarking MRI 1.9.3-p286, MRI 2.0.0-preview1 and Rubinius 2.0.0-rc1. As always with benchmarks, don't read too deeply but it seems Ruby 2.0.0 holds its own so far.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://bugs.ruby-lang.org/issues/7158" style="font-weight: bold;">'require is slow in its bookkeeping; can make Rails startup 2.2x faster'</a><br>
An issue on the official MRI issue tracker that shares a patch which can improve the performance of 'require'. Follows on to the work seen optimizing code loading in Ruby 1.9.3 in June 2011.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.heroku.com/archives/2012/11/5/ruby-2-preview-on-heroku/" style="font-weight: bold;">Ruby 2.0 Preview Available on Heroku</a><br>
It's still only a preview so don't pull out your production apps yet, but Heroku's polyglot stack supports Ruby 2.0 preview 1 without much work at all.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://speakerdeck.com/yukihiro_matz/reinventhing-wheels-of-future" style="font-weight: bold;">Reinventing Wheels of Future: Matz's RubyConf Keynote Slides</a><br>
No technical content as such but Matz celebrates the reinventing of wheels and confesses his love for PHP. Worth a quick swipe through for the sentiments.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://speakerdeck.com/cadwallion/game-development-and-ruby" style="font-weight: bold;">Game Development and Ruby</a><br>
Another slide-deck from RubyConf, this time sharing some options and opinions on game development in Ruby.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://leone.panopticdev.com/2012/11/rubyconf-roundup-day-one.html" style="font-weight: bold;">RubyConf Roundup: Day One</a><br>
If you missed RubyConf, here are some handy notes for the talks that Mike Leone attended.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://leone.panopticdev.com/2012/11/rubyconf-roundup-day-two.html" style="">RubyConf Roundup: Day Two</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.ragingstudios.com/blog/2012/10/24/absolutely-dead-simple-login-system-for-rails-with-omniauth-and-facebook/" style="font-weight: bold;">Dead Simple Login System for Rails Apps with OmniAuth and Facebook</a><br>
In just six special steps with Gal Steinitz.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://robots.thoughtbot.com/post/34709581001/lets-not" style="font-weight: bold;">Let's Not: Refactoring RSpec Specs with Plain Ruby Methods</a><br>
A look at using plain Ruby methods rather than DSL constructs with RSpec.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://speakerdeck.com/joshsusser/thinking-in-objects-rubyconf-2012" style="font-weight: bold;">Thinking in Objects</a><br>
Josh Susser drops some object orientation principles on us in his RubyConf 2012 slides.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://tx.pignata.com/2012/11/multicast-in-ruby-building-a-peer-to-peer-chat-system.html" style="font-weight: bold;">Building a Peer-to-Peer Chat System using Multicasting in Ruby</a><br>
IP multicasting allows you to send a datagram to multiple recipients on a network. In this post John Pignata looks at multicasting and creates a simple chat system using Ruby's socket library.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://www.bigfastblog.com/rubys-eventmachine-part-3-thin" style="font-weight: bold;">Ruby's EventMachine Part 3: Thin</a><br>
Phil Whelan continues his blog series looking at EventMachine, this time with a quick explanation of how the Thin Web server library uses it.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://spin.atomicobject.com/2012/10/30/activerecord-black-magic/" style="font-weight: bold;">Making Queries More Composable with ActiveRecord and Arel</a><br>
Mike Swieton says it isn't always clear how to get ActiveRecord and Arel to tackle certain difficult database queries so he shares some pointers he figured out here.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://alindeman.github.com/acceptance_testing/" style="font-weight: bold;">A High Level Overview of Acceptance Testing</a><br>
A straightforward slidedeck from Andy Lindeman of the RSpec core team.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://brandonparsons.me/2012/vagrant-and-chef-for-ubuntu-deployment-server/" style="">Using Vagrant and Chef to Build a Local Ubuntu 'Deployment' Server</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://iconoclastlabs.com/cms/blog/posts/upgrading-to-rails-4-parameters-security-tour" style="font-weight: bold;">Upgrading to Rails 4 - A Parameters Security Tour</a><br>
A look at what's going to change for parameters in controllers from Rails 3 to Rails 4.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://polycrystal.org/2012/10/26/profiling_jruby_with_netbeans.html" style="font-weight: bold;">Profiling JRuby with NetBeans</a><br>
The NetBeans IDE includes a profiler for Java which you can twist to profiling JRuby apps instead. Patrick Polycrystal shows us how.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://spin.atomicobject.com/2012/10/30/collecting-metrics-from-ruby-processes-using-zabbix-trappers/" style="font-weight: bold;">Collecting Metrics from Ruby Processes with Zabbix Trappers</a><br>
'Zabbix Trappers' will be my new name if I ever get abducted by aliens and taken to their home planet. (Back in the real world, Zabbix is an 'enterprise-class open source distributed monitoring solution.')
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://gist.github.com/4014963" style="">Instructions to Install Ruby 2.0.0-preview1 on OS X with Homebrew and rbenv</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://brainspec.com/blog/2012/11/07/delegation-with-forwardable/" style="">Delegation on a Method by Method Basis with Forwardable</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.txus.io/2012/11/traitor-an-implementation-of-traits-for-ruby-2-dot-0/" style="">Traitor: An Implementation of Traits for Ruby 2.0</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://yetimedia.tumblr.com/post/35233051627/activeresource-is-dead-long-live-activeresource" style="">ActiveResource Is Dead, Long Live ActiveResource</a></p>
</div>
<h3>Watching and Listening</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://railscasts.com/episodes/390-turbolinks" style="font-weight: bold;">RailsCasts Digs Into Rails 4.0's Turbolinks</a><br>
A 7 minute tour of 'turbolinks' (as will feature prominently in Rails 4.0) with Ryan Bates.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://confreaks.com/videos/1263-rockymtnruby2012-wrangling-large-rails-codebases" style="font-weight: bold;">Wrangling Large Rails Codebases</a><br>
Stephan Hagemann looks at ways to wrestle with large Rails apps to get faster test suites, cleaner structures, and generally more flexible apps.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://confreaks.com/videos/1256-rockymtnruby2012-modular-reusable-front-end-code-with-html5-sass-and-coffeescript" style="font-weight: bold;">Modular &amp; Reusable Front-End Code With HTML5, Sass and CoffeeScript</a><br>
Keeping your Rails app's front-end code clean can be tricky. Find out how to keep things tidy and reusable using the HTML5 document outline and modular Sass and CoffeeScript.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://confreaks.com/videos/1255-rockymtnruby2012-to-mock-or-not-to-mock" style="font-weight: bold;">To Mock or Not to Mock</a><br>
Mock objects for testing purposes have their supporters and detractors. At Rocky Mountain Ruby 2012, Justin Searls gave a 'broad-stroke survey' of the different ways developers use mocks/test doubles and guidelines to bring everyone to a happy medium.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://www.youtube.com/watch?v=t430e6M5YAo" style="font-weight: bold;">Yay! Mocks!</a><br>
45 minutes with Corey Haines.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://confreaks.com/videos/1229-aloharuby2012-git-and-github-secrets" style="font-weight: bold;">Git and GitHub Secrets</a><br>
Zach Holman, GitHub's chief of spreading the love, gives us a peek behind the Git and GitHub curtains and shares some tricks and tips applicable to both.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://confreaks.com/videos/1328-baruco2012-life-beyond-http" style="font-weight: bold;">Life Beyond HTTP</a><br>
There's a whole world of interesting network protocols beyond HTTP says Anthony Eden. In this 30 minute talk, he provides examples of interacting with them using Ruby.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://www.youtube.com/watch?v=ojU4O2CMeSc" style="font-weight: bold;">Let's Talk Concurrency</a><br>
José Valim of the Rails core team shares a digest of what he's recently learned about concurrent programming and techniques.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://vimeo.com/52241288" style="">Rails Testing Anti-Patterns</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jstorimer.com/2012/10/24/ruby-socket-api-outside-in.html" style="">Ruby's Socket API From the Outside In</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://farmhouse.la/podcast" style="font-weight: bold;">The Farmhouse Podcast: Rubyist Talk from Los Angeles</a><br>
Hard to describe but I've been enjoying this podcast from The Farmhouse. The latest episode features Shane Becker and Evan Phoenix discussing the Puma Ruby Web server. Steve Klabnik features on two earlier episodes.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://www.justin.tv/confreaks/b/337863983" style="">RubyConf 2012 Lightning Talks: An 80 Minute Grab Bag</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://www.thoughtbot.com/podcast/20" style="">The Thoughtbot Podcast Chats to RubyConf 2012 Attendees</a></p>
</div>
<h3>Libraries and Code</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/jimweirich/rake/blob/next-major-release/doc/release_notes/rake-10.0.0.rdoc" style="font-weight: bold;">Rake 10.0 Released: Yes, Version 10</a><br>
Ruby's make-like build utility takes a small step for Jim Weirich but a giant leap for version-kind by going from 0.9 to 10.0. Why? Jim explains.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://railsapps.github.com/rails-stripe-membership-saas/" style="font-weight: bold;">A Rails Membership Subscription or SaaS Site with Stripe</a><br>
A Rails 3.2 application with recurring billing using Stripe. Open source and ready to roll.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://weblog.rubyonrails.org/2012/10/29/ann-rails-3-2-9-rc1-has-been-released/" style="font-weight: bold;">Rails 3.2.9 Release Candidate 1 Released</a><br>
Don't get overexcited. Bug fixes and tweaks.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://gistflow.com/posts/483-choosing-text-similarity-algorithm" style="">amatch: Approximate String Matching for Ruby</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/robgleeson/iprocess" style="font-weight: bold;">IProcess 3.1.0: Ruby Tools for Subprocesses and IPC</a><br>
Provides a number of abstractions on top of spawning subprocesses and interprocess communication. It has an easy-to-use API that supports synchronous and asynchronous method calls and custom serialization.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/seattlerb/minitest/commit/bdbf38df3475dcc8ddd6d11ebede48cdd5f55008" style="">minitest Adds Support for Running Tests in Parallel</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/barelyknown/blekko-search" style="">blekko-search: Search and manage slashtags for blekko.com</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/slivu/espresso" style="font-weight: bold;">Espresso: A New Scalable Web Framework Aimed at Speed and Simplicity</a><br>
I don't think we've had a new Ruby framework for a while so.. enter Espresso :-) Has a few interesting ideas but without being too alien to existing Rails, Ramaze, or Sinatra fans.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/ruboto/ruboto/wiki/Ruboto-0.9.0-release-doc" style="font-weight: bold;">Ruboto 0.9: The JRuby on Android Platform</a><br>
Now supports Ruby classes directly subclassing Java classes.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://gist.github.com/4009812" style="font-weight: bold;">A Simplified Version of Ruby's Object System, Implemented in Ruby</a><br>
A clever experiment by James Coglan. It's intended to model inheritance and method lookup in as little code as possible, for ease of understanding by Rubyists.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://balvig.github.com/chili/" style="">Chili: A Spicy 'Feature Toggle' Framework for Rails</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/ClearFit/redtape" style="">Redtape: A Cleaner Alternative to accepts_nested_attributes_for in Rails</a></p>
</div>
<h3>Jobs</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://bit.ly/RmXHA7" style="font-weight: bold;">Sr. Rails Engineer at VMware Socialcast (San Francisco)</a><br>Socialcast is looking for a passionate, experienced Ruby and Rails Engineer to join our growing Engineering team! Continue your career in a start-up atmosphere focusing on fast experimentation with the latest technologies and frameworks (Rails 3 and Ruby 1.9).</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://litmus.com/careers" style="font-weight: bold;">Ruby on Rails Developer at Litmus (Remote, anywhere!)</a><br>Litmus, the e-mail testing and analytics company, offering a great salary, full health care benefits and 28 days paid vacation. We're looking for great developers wherever you live in the world. Come and see what our team have to say about working here.</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/754287" style="">Sr. Ruby on Rails Developer at ARPC [District of Columbia]</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/753607" style="">Ruby Developer at Viewbook.com at Viewbook.com [Rotterdam, Netherlands]</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://sleepygiant.theresumator.com/apply/IkJ1p8/Software-Engineer.html?source=RubyWeekly" style="font-weight: bold;">Rails Software Engineer at Sleepy Giant (Newport Beach, LA, Chicago)</a><br>Sleepy Giant is a game company based in Newport Beach. We are looking for Rails developers to join our talented team.  You will work on high-profile, high-scale game services and franchise development projects, including green-field systems engineering.</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/754279" style="">Senior Ruby on Rails Developer - Energy Management at Raritan, Inc. [Raleigh, North Carolina]</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://devblog.meinauto.de/2012/10/18/gesucht-agile-softwareentwickler/" style="font-weight: bold;">Für alle, die nicht nur ein Rädchen im Getriebe sein möchten - wir suchen agile Softwareentwickler.</a></p>
</div>
<h3>Last but not least..</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://2013.britruby.com/" style="font-weight: bold;">The British Ruby Conference: Giving 15% of Sales for Movember</a><br>
The British Ruby Conference is in Manchester, England in March 2013 with lots of lovely speakers (and I'll be there!) and for this month only will be giving 15% of ticket sales to the Movember cause. Come join in the fun.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://www.rubymotion.com/support/training/" style="font-weight: bold;">Official (Private) RubyMotion Training Available</a><br>
The folks behind RubyMotion, the Ruby development toolkit for iOS devices, are now offering official RubyMotion training to groups of 15 or more.
</p>
</div>
{{< /rawhtml >}}
