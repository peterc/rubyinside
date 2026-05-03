---
title: 'The Last 2 Weeks in Ruby: Rails 3.2.6, Savon 1.0, RailsInstaller for OS X,
  Pow 0.4.0, Rails 2 Asset Pipeline'
date: '2012-06-22'
author: Peter Cooper
author_slug: admin
post_id: 5884
slug: the-last-2-weeks-in-ruby-june-2012-5884
url: "/the-last-2-weeks-in-ruby-june-2012-5884.html"
categories:
- compilations
- miscellaneous
- news
---

{{< rawhtml >}}
<p>Welcome to this week's Web-based syndication of <a href="http://rubyweekly.com/">Ruby Weekly</a>, the Ruby e-mail newsletter. While I have you, be sure to <a href="http://twitter.com/rubyinside">follow @RubyInside</a> on Twitter as I'm going to be posting news more frequently there than on the Web site in future.</p>
<p><a href="https://twitter.com/RubyInside" class="twitter-follow-button" data-show-count="false" data-size="large">Follow @RubyInside</a><br>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script></p>
<p>The latest highlights include: Rails 3.2.6, RailsInstaller for OS X, Pow 0.4.0, Rails 2 Asset Pipeline, Sidekiq 2.0, and Savon 1.0.</p>
<h3>Headlines</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://weblog.rubyonrails.org/2012/6/12/ann-rails-3-2-6-has-been-released/" style="font-weight: bold;">Rails 3.2.6 Released: Fixes More Vulnerabilities</a><br>
Rails 3.2.4 was released a few weeks ago fixing two serious security vulnerabilities (explained in another post below). Rails 3.2.5 then followed a day later as 3.2.4 introduced a nasty scoping bug.. and.. now Rails 3.2.6 to continue to fix those bugs. They're tricky blighters.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://www.engineyard.com/blog/2012/railsinstaller-for-os-x/" style="font-weight: bold;">RailsInstaller for OS X: Ruby, Rails, Git, and More in One Download</a><br>
Engine Yard's RailsInstaller has long been a popular way to install Rails, Ruby, Git, Sqlite and other tools in one hit on Windows. Now it's here for OS X too.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://37signals.com/svn/posts/3191-announcing-pow-040-with-xipio-support" style="font-weight: bold;">Announcing Pow 0.4.0 With xip.io Support</a><br>
37signals' Sam Stephenson has unveiled the latest version of the popular Mac OS X zero-configuration web server for Ruby webapp development. Port proxying is one of the new features.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://petercooper.wufoo.com/forms/ruby-webcast-survey/" style="font-weight: bold;">Take My 30 Second Ruby Webcast Survey</a><br>
I'm planning to run some Ruby oriented 'webcasts' (live, 30-60 minute presentations + live coding) and have a handful of ideas. I want to see which are the most popular and would appreciate your help (or even your own ideas).
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://devblog.avdi.org/2012/06/05/confident-ruby-beta/" style="font-weight: bold;">Early Access to Avdi Grimm's 'Confident Ruby' Available</a><br>
Avdi Grimm, author of the popular Exceptional Ruby and Objects on Rails, is working on his new book, Confident Ruby. It's still under development but you can get access now in return for some money or, intriguingly, a postcard.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jewelrybox.unfiniti.com/" style="font-weight: bold;">JewelryBox 1.3 Released: The Official OS X RVM GUI</a><br>
JewelryBox is a GUI app that brings OS X and RVM together in a loving embrace. 1.3 brings improved usability, gemset management, and Mountain Lion compatibility (it's a signed app, so no GateKeeper complaints either).
</p>
</div>
<h3>From our sponsor</h3>
<div style="margin: 16px 0px;" class="item">
  <a href="http://zfer.us/EKm97"><img src="http://s3.amazonaws.com/nlga/uploads/item/image/3993/thumb_rtute.png" width="133" height="100" style="float: right; margin-left: 14px; margin-bottom: 16px; border: 1px solid #1173c7"></a>
<p><a href="http://zfer.us/EKm97" style="font-weight: bold;">Michael Hartl's Rails Tutorial 2nd Edition, Out Now</a><br>
Michael Hartl has just announced the official release of the 2nd edition of his popular Rails Tutorial screencast series. It's 15 hours of 'over the shoulder' training in Rails 3.2 using Twitter Bootstrap, Ruby 1.9, and full on test driven BDD.
</p>
</div>
<h3>Reading</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://myronmars.to/n/dev-blog/2012/06/rspecs-new-expectation-syntax" style="font-weight: bold;">RSpec's New Expectation Syntax (Coming in 2.11)</a><br>
Myron Marston shows off a new syntax for expectations in RSpec. It looks like  "expect(foo).to eq(bar)" versus the more typical "foo.should eq(bar)". What's the motivation? Learn more here.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://tenderlovemaking.com/2012/06/18/removing-config-threadsafe.html" style="font-weight: bold;">Removing config.threadsafe! from Rails</a><br>
Core Rails developer Aaron 'tenderlove' Patterson looks at why the 'config.threadsafe!' directive can be removed from Rails and demonstrates the issues involved.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/rails/rails/pull/6685" style="font-weight: bold;">Rails Pull Request: Enable threadsafe! By Default</a><br>
A 2 character pull request that triggered a big discussion about the role of 'threadsafe!' in future Rails apps, best summarized by the Aaron Patterson article linked above.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.plataformatec.com.br/2012/06/why-your-web-framework-should-not-adopt-rack-api/" style="">Why Your Web Framework Should Not Adopt The Rack API</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://www.rubypluspl.us/2012/06/ubuntu-1204-ruby-on-rails-development.html" style="font-weight: bold;">Setting Up an Ubuntu 12.04 Rails Development Environment</a><br>
Includes Postgres, RVM, and some handy bash aliases.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://robotmay.com/post/24054884390/forgotten-rails-features-http-streaming" style="font-weight: bold;">Forgotten Rails Features: HTTP Streaming</a><br>
One of a series of posts looking at interesting Rails features that are no longer in the spotlight. Here, Robert May looks at the HTTP streaming features introduced in Rails 3.1.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://www.alanmacdougall.com/blog/2012/03/27/using-vim-slime-with-pry-for-repl-perfection/" style="font-weight: bold;">Using vim-slime with Pry for REPL Perfection</a><br>
Alan MacDougall demonstrates how you can set up vim so that you can send Ruby code straight from the editor into an interactive Pry session.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.pentesterlab.com/2012/06/cve-2012-2661-exploitation-write-up.html" style="font-weight: bold;">A Write Up of the SQL Injection Vulnerability in Rails</a><br>
Louis Nyffenegger gives a scrappy yet practical explanation of the latest vulnerability in Rails (which has been fixed by Rails 3.2.4/5).
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://akash.im/2012/06/04/using-activesupport-configurable-to-store-config-options.html" style="">Using ActiveSupport::Configurable to Store Config Options</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://iconoclastlabs.com/cms/blog/posts/phonegap-vs-rubymotion" style="font-weight: bold;">PhoneGap vs RubyMotion</a><br>
A somewhat chalk and cheese comparison framework wise but a reasonable discussion of the pros and cons of deploying a similar app using both technologies. An interesting sidenote is it compelled one of the creators of PhoneGap to write a post in response.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://johnmurray.io/log/2012/05/31/Per--Project-Console.md" style="">Building a Per Project Ruby Console (for non Rails apps) with Pry</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/37signals/pow/commit/3e62babd559430baa21aac8a36072c2c0a7d5aa0" style="font-weight: bold;">Future Versions of Pow Won't Automatically Support RVM</a><br>
It seems automatic support for .rvmrc files to set the Ruby environment is going away in Pow. There's a simple workaround (using the .powrc file for each project) but it's worth noting for the future.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://rdegges.com/heroku-isnt-for-idiots" style="">Heroku Isn't for Idiots</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://www.unlimitednovelty.com/2012/06/ruby-is-faster-than-python-php-and-perl.html" style="font-weight: bold;">Ruby Is Faster Than Python, PHP and Perl(?)</a><br>
Uh-oh, controversy alert! Tony Arcieri attacks the myth that Ruby is the slowest language out there with a look at the Alioth Programming Languages Shootout.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/rails/rails/pull/6610#issuecomment-6128253" style="">Yehuda Katz Explains Rails' Versioning System</a></p>
</div>
<h3>Watching and Listening</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://railscasts.com/episodes/358-brakeman" style="font-weight: bold;">RailsCasts on Brakeman: The Rails Vulnerability Scanner</a><br>
Ryan Bates looks at the Brakeman gem, which will scan the Ruby code of a Rails application and alert you to common security vulnerabilities.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://rubyrogues.com/059-rr-security-with-rein-henrichs/" style="font-weight: bold;">Ruby Rogues 59: Security with Rein Henrichs</a><br>
The Rogues sit down with Rein Henrichs to talk about Ruby and Rails app security from password storage and network sniffing through to the GitHub hack and Rails vulnerabilities.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://vimeo.com/43965446" style="font-weight: bold;">An Intro to Sinatra</a><br>
At the Pittsburgh Ruby Brigade Language User Group, Carol Nichols gave a 45 minute introduction to Sinatra, the lightweight DSL for building webapps in Ruby.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://www.k3integrations.com/news-blog/developers-blog/creating-a-blog-application-in-rails-3-2" style="font-weight: bold;">Creating A Blog Application in Rails 3.2</a><br>
An hour long screencast by John Ash walking through the development of a blogging webapp in Rails 3.2.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://www.youtube.com/watch?v=4iFBC-xbE9I" style="font-weight: bold;">Evented Ruby vs Node.js</a><br>
A 40 minute talk by Jerry Cheung from RailsConf 2012.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://rubyrogues.com/056-rr-david-heinemeier-hansson/" style="">The Ruby Rogues Interview DHH (David Heinemeier Hansson)</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://railscasts.com/episodes/356-dangers-of-session-hijacking" style="font-weight: bold;">Dangers of Session Hijacking (RailsCasts)</a><br>
Ryan Bates of RailsCasts takes a look at the dangers of 'session hijacking' and shows off a way to improve the situation on a Rails app.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://robots.thoughtbot.com/post/24882797476/introducing-the-giant-robots-smashing-into-other-giant" style="font-weight: bold;">Introducing the 'Giant Robots Smashing into other Giant Robots' Podcast</a><br>
Courtesy of Ben Orenstein and Thoughtbot comes a new development oriented podcast based around Thoughtbot's popular Ruby and Rails blog.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://vimeo.com/43590847" style="font-weight: bold;">Matz's Keynote at Euruko 2012</a><br>
This year, the annual European Ruby Conference landed in Amsterdam and here's Matz's keynote to enjoy on Vimeo.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://vimeo.com/43590848" style="font-weight: bold;">Geoffrey Grosenbach's Euruko Keynote</a><br>
Let the always mellifluous murmurs of PeepCode's Geoffrey Grosenbach wash over you in this 40 minute keynote.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://confreaks.com/videos/922-rubyconfindia2012-using-ruby-to-craft-and-test-beautiful-command-line-applications" style="font-weight: bold;">Using Ruby to Craft and Test Beautiful Command Line Applications</a><br>
From RubyConf India comes a talk by Shishir Das and Nikhil Mungel about building elegant command line apps with Ruby (on Unix-like systems, naturally). Video good, audio not so good.
</p>
</div>
<h3>Libraries and Code</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/fredwu/api_taster" style="font-weight: bold;">API Taster: Visually Test Your Rails Application's API</a><br>
A handy tool that works out endpoints from your routes file and then lets you perform requests direct from the Web browser. A clever idea.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://gist.github.com/2963229" style="">Gary Bernhardt's Simple Queue That You Can Pass to IO.select</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/grosser/rails2_asset_pipeline" style="font-weight: bold;">Rails 2 Asset Pipeline: Familiar Asset Handling for Those On Rails 2</a><br>
An interesting backport of some of Rails 3.1+'s most interesting functionality by Michael Grosser.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://kschiess.github.com/cod/" style="font-weight: bold;">cod: IPC Made Simple</a><br>
A small library striving to 'change the way people do IPC in Ruby.' It abstracts away the toll of using IO.pipe, Sockets and other primitives and allows message oriented communication via a simple interface.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/seamusabshere/upsert" style="">Upsert: SQL MERGE Tricks Codified For 'Upserting' on MySQL, PostgreSQL and SQLite</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://agileleague.com/2012/06/portalign-ruby-gem-easier-management-ec2-security-groups/" style="">Portalign: Ruby Gem for Management Of Your EC2 Security Groups</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/vassilvk/slacker/wiki" style="font-weight: bold;">Slacker: Test Framework for SQL Server 2005 and 2008 Programmable Objects</a><br>
An RSpec-based transacted BDD framework/engine for the automated testing of SQL Server programmable objects (think stored procedures, table/scalar functions, etc.) Runs on both Windows and Linux.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.togo.io/introducing/redis-store/" style="font-weight: bold;">Redis Store: Redis Stores for Ruby Frameworks</a><br>
Redis Store provides a full set of stores (Cache, I18n, Session, HTTP Cache) for all the modern Ruby frameworks like: Ruby on Rails, Sinatra, Rack, Rack::Cache and I18n. It natively supports object marshalling, timeouts, single or multiple nodes and namespaces.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/ruby-talks/talks" style="font-weight: bold;">Talks: Let Your Ruby Programs Talk To You</a><br>
A gem that hooks into the text to speech tools available on both Mac OS X and Linux.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://savonrb.com/" style="font-weight: bold;">Savon 1.0 Released: 'Heavy Metal' SOAP Client</a><br>
Okay, SOAP might not be the big deal it once was, but many APIs and enterprise technologies still use it, and Savon, even pre-1.0, has been a popular choice for using SOAP from Ruby.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://bubblewrap.io/" style="font-weight: bold;">BubbleWrap: Cocoa Wrappers and Helpers for RubyMotion</a><br>
BubbleWrap is a collection of (tested) helpers and wrappers used to wrap CocoaTouch code and provide more Ruby-like APIs.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/gurgeous/sinew" style="font-weight: bold;">Sinew: Collect Structured Data From Web Sites (by Scraping)</a><br>
Sinew collects structured data from the Web (using scraping techniques) via a Ruby DSL built for crawling, a robust caching system, and integration with Nokogiri.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://solnic.eu/2012/06/10/part-of-datamapper-2-is-done-announcing-virtus-0-5-0.html" style="font-weight: bold;">Announcing Virtus 0.5.0 (Part of DataMapper 2 Is Done)</a><br>
Virtus is a key part of the forthcoming DataMapper 2 which provides attributes for plain Ruby objects. You can now use Virtus in modules, dynamically extend objects on the fly, and Structs can be used as an embedded value in other objects.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://doodle.rubyforge.org/" style="font-weight: bold;">Doodle: Extended Attribute Accessors for Objects</a><br>
A Ruby gem for creating extended attribute accessors with defaults, conversions and validations (along similar lines to last week's 'SmartProperties' item).
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/objects-on-rails/display-case" style="">display_case: Avdi Grimm's Implementation Of The Exhibit Pattern</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://nanoc.stoneship.org/blog/34/" style="font-weight: bold;">nanoc 3.4 Released</a><br>
The popular Web site generation / publishing tool (think a more flexible Jekyll) gets an update.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/fredwu/bustle" style="">Bustle: Simple ORM Agnostic Activity Recording/Retrieval with Pub/Sub</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/archan937/ruby-mass" style="">RubyMass: Introspect the Ruby Heap on MRI 1.8.7, 1.9.2 and 1.9.3</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/mattfordham/csv_validator" style="">csv_validator: CSV Data Validation for Rails 3</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://geraldb.github.com/markdown/" style="font-weight: bold;">Markdown Engine Wrapper</a><br>
An abstraction and wrapper library that gives access to several different Ruby Markdown libraries both in Ruby and via a command line app called 'markdown'.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/highgroove/grocer" style="">Grocer: Send Push Notifications to iOS Devices Through Apple</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/tribune/sort_by_field" style="">Sort By Field: Sorting by Fields for Arrays and Enumerable Objects</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://nadarei.co/mina/" style="font-weight: bold;">Mina: Fast Deployment and Server Automation Tool</a><br>
Mina lets you build and run scripts to manage your app deployments on servers via SSH. Ruby based and framework/project agnostic.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/mperham/sidekiq/blob/master/Changes.md" style="font-weight: bold;">Sidekiq 2.0 Released, Gets Scheduled Jobs</a><br>
Sidekiq is a simple but efficient background job processor for Ruby (and Rails.) It's designed to be Resque-compatible but is faster as many jobs can execute in parallel. Version 2 adds scheduled jobs so you can say 'send this email 3 days from now.'
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.rubymotion.com/post/24197887535/community-open-source-updates" style="font-weight: bold;">Parts of RubyMotion Open Sourced</a><br>
RubyMotion is a Ruby compiler/framework for iOS that has recently taken the Ruby world by storm. Its creator, Laurent Sansonetti, has now open sourced parts (but not all) of the framework so that the community can contribute to and extend the platform.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/robgleeson/IProcess" style="font-weight: bold;">IProcess: Transport Ruby Objects Between Processes</a><br>
IProcess, short for Inter Process Communication(IPC) Process, is a collection of classes you can use to transport Ruby objects between processes running on UNIX-like operating systems.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/t6d/smart_properties" style="font-weight: bold;">SmartProperties: Ruby Accessors 'on Steroids'</a><br>
Bored of plain old attr_accessors? Include the SmartProperties module and use the property method along with a name and optional configuration parameters to define new properties along with input conversion, validation, and default values.
</p>
</div>
<h3>Jobs</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://mulu.me/about/jobs" style="font-weight: bold;">Rails Software Engineer at Mulu.me (Los Angeles)</a><br>Join a killer engineering team to build out a social shopping application where users earn for a cause. You'll be working with Ruby, Rails, JavaScript, PostgreSQL, and building a product you're proud of with an awesome team.</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/697191" style="font-weight: bold;">Rails Developer at IBM [Emeryville, California]</a><br>
As interested in technical verve as years of experience, IBM has positions for junior and senior engineers with a focus on those experienced with Rails, JavaScript, CSS and jQuery.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/698233" style="">Rails Programmer at Digital Monitoring Products, Inc. [Springfield, Missouri]</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://skillfer.com/apply.html" style="font-weight: bold;">Head of Tech or Lead Developer - Purpose (New York, NY)</a><br>Manage a new technology initiative for an established agency. The project aims to build tools for the “ethical consumer” and the hands-on role includes all aspects of development, management and deployment. Competitive comp + stock options.</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/698524" style="">Senior Ruby Engineer/Founding Team Member at Groupiter @500 Startups [San Francisco]</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://thesourcery.com/jobs/339/" style="font-weight: bold;">RoR Developers at Quri (San Francisco, CA)</a><br>Quri, a San Francisco-based mobile and web startup that's transforming the $350 billion trade marketing industry, is seeking an experienced Ruby on Rails engineer to join our growing team.</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://www.threespot.com/about/jobs/webdeveloper/" style="font-weight: bold;">Web Developer - Threespot (Washington DC)</a><br>Responsible for more than development, testing, &amp; documentation of web-based software &amp; technical solutions, our Developers are involved in all stages of client engagements, from application design through specifications documentation &amp; production programming. (Ruby welcome!)</p>
</div>
<p>Want to post a job? <a href="post-a-job">Click here for more info.</a></p>
<h3>Last but not least..</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://opensoul.org/blog/archives/2012/05/23/why-our-code-smells/" style="font-weight: bold;">Why Our Code Smells</a><br>
A well put together slide deck by Brandon Keepers of GitHub with some interesting points on code smells, primarily focusing on testing.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://rubyfiddle.com/" style="font-weight: bold;">Ruby Fiddle: Ruby Snippets in the Browser</a><br>
If you've done any JavaScript work, you might be familiar with 'JSFiddle' a popular site that previews HTML, JS, and CSS you supply in the browser. Ruby Fiddle aims to do similarly for Ruby, though the code runs remotely.
</p>
</div>
{{< /rawhtml >}}
