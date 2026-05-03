---
title: 'The Past 2 Weeks in the World of Ruby: 40 Links to Bring You Up to Speed (January
  2012)'
date: '2012-01-06'
author: Peter Cooper
author_slug: admin
post_id: 5766
slug: the-past-2-weeks-in-the-world-of-ruby-40-links-to-bring-you-up-to-speed-january-2012-5766
url: "/the-past-2-weeks-in-the-world-of-ruby-40-links-to-bring-you-up-to-speed-january-2012-5766.html"
categories:
- compilations
- miscellaneous
- news
---

{{< rawhtml >}}
<p><a href="http://rubyweekly.com/">Ruby Weekly</a> has just tipped over 10,000 subscribers but I know not everyone is into getting their news via e-mail, so here's the latest frequent roundup of the latest Ruby and Rails news for you, all on the Web :-)</p>
<h3>Key News, Releases, and Headlines</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://hungryacademy.com/" style="font-weight: bold;">Hungry Academy Application Process Closes This Weekend</a><br>
LivingSocial's 'Hungry Academy' will provide a paid, on-site 5 month Ruby and Rails learning experience and mentorship program to a small group of lucky applicants. Interested? You've only got a few days left to apply.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/391607" style="font-weight: bold;">DOS Attack Vulnerability Found in Ruby 1.8's Hash Algorithm</a><br>
Ruby 1.8.7-p352 and earlier are affected by a wide reaching (as in Python and Java are also affected!) hash related vulnerability. Ruby 1.9 is entirely unaffected.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jruby.org/2011/12/27/jruby-1-6-5-1" style="font-weight: bold;">JRuby 1.6.5.1 Released: Fixes the Hashing Vulnerability</a><br>
JRuby 1.6.5.1 is a minor patchlevel release of JRuby that's mostly interesting because of the potential hash-based DOS vulnerability it papers over. Plenty of info in this post.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://kidsruby.com/" style="font-weight: bold;">KidsRuby 1.0 Released</a><br>
KidsRuby is a kid-focused (but just as useful for adults!) Ruby editor aimed at being an environment for teaching the Ruby language. It includes tutorials and a Logo-esque turtle graphics system for more visual types of learning.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://groups.google.com/group/rack-devel/browse_thread/thread/7dec9712a1a8acf5" style="font-weight: bold;">Rack 1.4.0 Released</a><br>
Rack is the modular Ruby Web server interface that sits between servers like Apache and nginx and systems like Rails or Sinatra. Rack 1.4 drops support for Ruby 1.8.6 and includes a bevy of tweaks, bug fixes and minor new features (including support for the 'teapot' HTTP status code ;-)).
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://weblog.rubyonrails.org/2012/1/4/rails-3-2-0-rc2-has-been-released" style="">Rails 3.2.0 RC2 Released: Rails 3.2 Gets A Step Closer</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/sstephenson/rbenv" style="">rbenv 0.3.0 Released: Minor Updates and Fixes</a></p>
</div>
<h3>Articles and Tutorials</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://patshaughnessy.net/2012/1/4/never-create-ruby-strings-longer-than-23-characters" style="font-weight: bold;">Never Create Ruby Strings Longer Than 23 Characters</a><br>
A linkbaity title but an interesting article nonetheless by Pat Shaughnessy about a curiosity of how MRI Ruby 1.9 handles strings. Why are 24 byte strings far slower to process than 23 byte ones? Find out here.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://pivotallabs.com/users/dwfrank/blog/articles/1972-giving-rails-2-the-asset-pipeline" style="font-weight: bold;">Giving Rails 2 the Rails 3.1 Asset Pipeline</a><br>
Not quite ready for Rails 3.1 yet but still want an asset pipeline on your Rails 2 app? Davis W Frank was in that situation and in this post explains how he sorted it out.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://ablogaboutcode.com/2012/01/04/the-ampersand-operator-in-ruby/" style="font-weight: bold;">The &amp; Operator in Ruby</a><br>
Pan Thomakos looks at the uses for the &amp; operator and its associated methods in Ruby, including bitwise ANDing, set intersection, and the unary &amp;.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://collectiveidea.com/blog/archives/2012/01/04/the-big-three-oh/" style="">DelayedJob 3.0 Release Rundown</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://aws.typepad.com/aws/2012/01/how-collections-work-in-the-aws-sdk-for-ruby.html" style="">How Collections Work in the AWS SDK for Ruby</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://apigee.com/console/rubygems" style="font-weight: bold;">Ruby Gems API Console: Play with RubyGems.org's API on the Web</a><br>
An interesting API console that's set up to play with the RubyGems.org JSON API. Click the drop down to the left to see all of the prebuilt requests.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://www.mattsears.com/articles/2011/12/10/minitest-quick-reference?" style="font-weight: bold;">MiniTest Quick Reference</a><br>
MiniTest is the unit testing library that comes in the Ruby 1.9 standard library and which also acts as a compatibility layer for test/unit on 1.9. Matt Sears has put together a handy round up of the assertions and matchers offered by MiniTest::Unit and MiniTest::Spec.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.rubybestpractices.com/posts/gregory/060-issue-26-structural-design-patterns.html" style="font-weight: bold;">Structural Design Patterns in Ruby</a><br>
Gregory Brown looks at seven structural design patterns laid out by the Gang of Four, the Adapter, Bridge, Composite, Proxy, Decorator, Facade and Flyweight.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.wyeworks.com/2011/12/27/bundle-exec-rails-executes-bundler-setup-3-times" style="font-weight: bold;">'bundle exec rails' Executes Bundler.setup 3 Times</a><br>
Rails core team member Santiago Pastorino notes that running 'bundle exec rails' is an inefficient mistake and explains why. (TLDR: Just use 'rails', it'll work out the particulars.)
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://afreshcup.com/home/2011/12/28/one-and-two-letter-gems.html" style="font-weight: bold;">1 and 2 Letter Ruby Gems</a><br>
Mike Gunderloy looks at Ruby gems that only have a single letter as their name. It's a mixture of junk and curiosities.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://leanpub.com/combinators" style="font-weight: bold;">'Kestrels, Quirky Birds, and Hopeless Egocentricity' by Reg Braithwaite</a><br>
Ruby's own 'Raganwald' has compiled his essays about combinatory logic, method combinators and Ruby meta-programming into a handy and inexpensive e-book. Cerebral stuff.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://robots.thoughtbot.com/post/14825364877/evaluating-alternative-decorator-implementations-in" style="">Evaluating Alternative Decorator Implementations in Ruby</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://myronmars.to/n/dev-blog/2011/12/deprecating-a-legacy-subsystem-in-rails" style="">Deprecating a Legacy Subsystem in Rails</a></p>
</div>
<h3>Libraries and code</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/jonasschneider/momentum" style="font-weight: bold;">Momentum: A Rack Handler for SPDY Clients</a><br>
SPDY is a experimental networking protocol developed by Google (and already used in Chrome) for delivering Web content more quickly. Momentum is a Rack handler that can receive connections from SPDY clients and run Rack apps. Lots of info in the README.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/seancribbs/webmachine-ruby" style="font-weight: bold;">Webmachine: Expose Your App's Resources Via HTTP Declaratively</a><br>
webmachine-ruby is a port of Erlang's Webmachine. Both projects aim to expose parts of the HTTP protocol to your application in a declarative way, so you're less concerned with handling requests directly and more with describing the behavior of the resources in your app.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/jamesotron/emberjs-rails" style="font-weight: bold;">EmberJS-Rails: Ember.js for Rails 3.1 Developers</a><br>
Ember.js is the new name for the Sproutcore 2.0 framework, a powerful system for building rich JavaScript-driven Web applications.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://celluloid.github.com/" style="font-weight: bold;">Celluloid 0.7: Actors for Concurrent Programming in Ruby</a><br>
Celluloid provides a simple and natural way to build fault-tolerant concurrent programs in Ruby. With Celluloid, you can build systems out of concurrent objects just as easily as you build sequential programs out of regular objects. 0.7 has just been released.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/leshill/hogan_assets" style="">hogan_assets: Compiles Mustache Templates with Hogan.js on Sprockets</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://gitview.logicalcognition.com/" style="font-weight: bold;">Gitview: A JS Widget to List GitHub Repositories</a><br>
Gitview is a JavaScript widget you can include on any page to show off your GitHub repositories. Github-badge has done this for years, but Gitview has an interesting GitHub style presentation format including the weekly commit bars.
</p>
</div>
<h3>Screencasts, Presentations, and Podcasts</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://vimeo.com/34522837" style="font-weight: bold;">Some Thoughts on Ruby Classes After 18 Months of Clojure</a><br>
An enjoyable 25 minute romp through Brian Marick's thoughts on structuring objects in Ruby based on his experiences with the Clojure Lisp dialect.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://railscasts.com/episodes/312-sending-html-email" style="font-weight: bold;">Sending HTML Email (RailsCasts)</a><br>
Ryan Bates is back for his weekly RailsCasts episode, this time looking at how to not only send HTML e-mail, but how to put it together (along with the obligatory inline CSS) too.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://rubini.us/2012/01/04/debugging-rubinius/" style="font-weight: bold;">Debugging Scary Crashes of Rubinius</a><br>
Dirkjan Bussink has been debugging memory corruption in Rubinius and has put together a 55 minute video explaining how he debugged it. Surely a must watch for any wannabe Rubinius hackers. A 453MB download though..
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://confreaks.net/videos/759-rubymidwest2011-keynote-architecture-the-lost-years" style="font-weight: bold;">'Architecture the Lost Years' by Robert Martin at Ruby Midwest 2011</a><br>
I really enjoyed this keynote by 'Uncle Bob' at the recent Ruby Midwest 2011 conference. He talks about application architecture and how the typical 'Rails way' of approaching it has key disadvantages compared to a decoupled approach.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://confreaks.net/videos/752-rubymidwest2011-activerecord-anti-patterns-for-fun-and-profit" style="font-weight: bold;">ActiveRecord Anti-Patterns for Fun and Profit</a><br>
At November's Ruby Midwest 2011, Ethan Gunderson gave a talk on common mistakes made when working with ActiveRecord and how to make everything all better.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://confreaks.net/videos/645-gogaruco2011-smalltalk-on-rubinius-or-how-to-implement-your-own-programming-language" style="font-weight: bold;">Smalltalk On Rubinius (or How to Implement Your Own Programming Language)</a><br>
At September's Golden Gate Ruby Conference, Konstantin Haase gave a talk about implementing a programming language using Ruby and the Rubinius compiler tool chain.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://railscasts.com/episodes/310-getting-started-with-rails" style="font-weight: bold;">Getting Started with Rails: RailsCasts</a><br>
Ryan Bates takes it back to basics this week with a quick 7 minute sweep through some of the sites, tools, and books you'll find useful when starting out with Rails as of late 2011.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://workshops.thoughtbot.com/vim" style="font-weight: bold;">Vim for Rails Developers Screencast</a><br>
An inexpensive 34 minute screencast by Ben Orenstein that teaches you how to use the popular Vim text editor when working with Rails projects. Ben has a lot of experience in this area.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://rubyrogues.com/034-rr-benchmarking-and-profiling/" style="font-weight: bold;">The Ruby Rogues on Benchmarking and Profiling</a><br>
Aaron 'tenderlove' Patterson rejoins the Rogues for an hour long chat about benchmarking and profiling Ruby code. There's a lot of depth here and it makes for a typically good and roguish listen.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://bostonrb.org/presentations/macruby-for-fun-and-profit" style="">MacRuby for Fun and Profit by Joshua Ballanco (55 minutes)</a></p>
</div>
<h3>Ruby Jobs</h3>
<div style="margin: 16px 0px;" class="item">
  <a href="http://jobs.rubyinside.com/a/jbb/job-details/624627"><img src="http://s3.amazonaws.com/nlga/uploads/item/image/1468/thumb_newrelic-logo-square-rgbhex4.jpeg" width="133" height="100" style="float: right; margin-left: 14px; margin-bottom: 16px; border: 1px solid #1173c7"></a>
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/624627" style="font-weight: bold;">C/Unix Agent Engineer [Portland, Oregon]</a><br>New Relic, the Web app performance monitoring and management folks, are looking for someone who loves Ruby but is an experienced C or C++ developer who understands multithreading, database contention, and object-oriented design.</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/621519" style="">Senior Java/Ruby Software Engineer at Outbid.com [Oakland, California]</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/616741" style="">Software Developer at Geoforce, Inc. [Lewisville, Texas]</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/618778" style="">Network Software Engineer at Carnegie Mellon University [Pittsburgh, Pennsylvania]</a></p>
</div>
{{< /rawhtml >}}
