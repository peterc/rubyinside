---
title: 'This Week in Ruby: MRI 1.9.3-p327, Rails 3.2.9, Capybara 2.0, and the Fukuoka
  Ruby Award'
date: '2012-11-15'
author: Peter Cooper
author_slug: admin
post_id: 5970
slug: this-week-in-ruby-mri-1-9-3-p327-rails-3-2-9-capybara-2-0-and-the-fukuoka-ruby-award-5970
url: "/this-week-in-ruby-mri-1-9-3-p327-rails-3-2-9-capybara-2-0-and-the-fukuoka-ruby-award-5970.html"
categories:
- compilations
- miscellaneous
- ruby-on-rails
---

{{< rawhtml >}}
<p>Welcome to this week’s roundup of Ruby news, articles, videos, and more, cobbled together from my e-mail newsletter, <a href="http://rubyweekly.com/">Ruby Weekly.</a></p>
<p>Highlights include: MRI 1.9.3-p327, Rails 3.2.9, Capybara 2.0, and the Fukuoka Ruby Award.</p>
<h3>Featured</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://www.ruby-lang.org/en/news/2012/11/09/ruby-1-9-3-p327-is-released/" style="font-weight: bold;">Ruby 1.9.3-p327 Released: Fixes a Hash-Flooding DoS Vulnerability</a><br>
Carefully crafted strings can be used in a denial of service attack on apps that parse strings to create Hash objects by using the strings as keys. This new patch level release of 1.9.3 counters the issue.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://www.ruby-lang.org/en/news/2012/11/10/2013-fukuoka-ruby-award-competitionentries-to-be-judged-by-matz/" style="font-weight: bold;">2013 Fukuoka Ruby Award Competition</a><br>
Each year Matz and the Government of Fukuoka in Japan run an award for Ruby programs. Submit by November 30th to enter - it doesn't have to be an all new app either. The grand prize is 1 million yen (about $12,000).
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://groups.google.com/forum/?fromgroups=#!topic/ruby-capybara/C0O7nP2YG1A" style="font-weight: bold;">Capybara 2.0.0 Released: The Acceptance Test Framework for Webapps</a><br>
Not backwards compatible with Capybara 1.x so be careful and read the notes. It also drops support for Ruby 1.8.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://larubyconf.com/" style="">LA Ruby Conf 2013: Call For Proposals Open Until Dec 10</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://weblog.rubyonrails.org/2012/11/12/ann-rails-3-2-9-has-been-released/" style="">Rails 3.2.9 Released</a></p>
</div>
<h3>Reading</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://danielsz.posterous.com/167870244" style="font-weight: bold;">Printing 'Hello, World' in Style (Concurrently)</a><br>
Daniel Szmulewicz looks at what's involved in using Celluloid and two actors to print out 'Hello, World'.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jstorimer.com/2012/11/08/matz-is-not-a-threading-guy.html" style="font-weight: bold;">Matz Is Not A Threading Guy</a><br>
Jesse Storimer talks about the status of concurrency in Ruby and Matz's opinions in a Q+A session at RubyConf. Reinforcing the status quo, Matz said: 'Using multiple processes is the best way to do concurrency in MRI for the near future.'
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://alindeman.github.com/2012/11/11/rspec-rails-and-capybara-2.0-what-you-need-to-know.html" style="font-weight: bold;">rspec-rails and Capybara 2.0: What You Need to Know</a><br>
Andy Lindeman of the RSpec core team talks about the new Capybara 2.0 release and what you need to be aware of when using it with RSpec and Rails.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.codeclimate.com/blog/2012/11/14/why-ruby-class-methods-resist-refactoring/" style="font-weight: bold;">Why Ruby Class Methods Resist Refactoring</a><br>
Bryan Helmkamp demonstrates why he thinks class methods are much trickier to refactor than instance methods.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.newrelic.com/2012/11/08/reference-graphs-as-tools-for-refactoring/" style="font-weight: bold;">Reference Graphs as Tools for Refactoring</a><br>
A quick look at using graphs of references in order to refactor Ruby code.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://spin.atomicobject.com/2012/11/13/convenient-trick-for-tolerance-based-test-assertions-using-ish/" style="">Trick for Tolerance-based Test Assertions Using #ish</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.josephwilk.net/ruby/recurrent-neural-networks-in-ruby.html" style="">Recurrent Neural Networks in Ruby</a></p>
</div>
<h3>Watching and Listening</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://confreaks.com/videos/1301-rubyconf2012-there-and-back-again-or-how-i-set-out-to-benchmark-an-algorithm-and-ended-up-fixing-ruby" style="font-weight: bold;">How I Set out to Benchmark an Algorithm and Ended Up Fixing Ruby</a><br>
Joshua Ballanco wanted to build a delegation library but got lured into the worlds of benchmarks and garbage collectors.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://www.youtube.com/watch?v=aBgnlBoIkVM" style="font-weight: bold;">Ten Things You Didn't Know You Could Do in Ruby</a><br>
A month ago, we linked to the slidedeck of James Edward Gray II's Aloha on Rails talk with 101 various Ruby tricks and code snippets. Now the video is available too! Enjoy.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://rubyrogues.com/079-rr-documenting-code/" style="font-weight: bold;">The Ruby Rogues on Documenting Code</a><br>
The Ruby Rogues tackle a sore subject: documentation.
</p>
</div>
<h3>Libraries and Code</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/YorickPeterse/ruby-lint" style="font-weight: bold;">ruby-lint: Static Code Analysis and Linter for Ruby</a><br>
Currently a prototype and work in progress so your mileage may vary. It makes it possible for developers to detect errors such as undefined or unused variables and the use of non existing methods.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/cadwallion/spinel" style="font-weight: bold;">Spinel: A New, 'Ruby-Infused' Open Source Game Engine</a><br>
Spinel is a new open source game engine still under development that uses 'mruby' (the embeddable Ruby interpreter Matz is currently working on) as its scripting layer while leaning on speedy C/C++ under the hood.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/bwillis/versioncake" style="font-weight: bold;">Version Cake: An Unobtrusive Way to Version APIs in Your Rails App</a><br>
Easily version views with their API version in the filename (e.g. index.v3.xml.builder). The cool part is if a request comes in for a different version, the closest version will be used.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/cassiomarques/enumerate_it" style="">enumerate_it: Enumerations for Ruby (and ActiveRecord) Classes</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/cavneb/rmagick-metadata" style="">rmagick-metadata: Parses An Image Using RMagick and Return The Metadata</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/arkes/lazy_mail" style="">lazy_mail: A Lazy and Quick Way to Use The Function 'mail'</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/ebobby/has-many-with-set" style="">has-many-with-set: A Smarter Way to Have Many-to-Many Relationships in Rails</a></p>
</div>
<h3>Jobs</h3>
<div style="margin: 16px 0px;" class="item">
  <a href="http://www.carbonfive.com/jobs"><img src="http://s3.cooperpress.com/carbonfive.png" width="133" height="100" style="float: right; margin-left: 14px; margin-bottom: 16px; border: 1px solid #1173c7"></a>
<p><a href="http://www.carbonfive.com/jobs" style="font-weight: bold;">Test Driven JavaScript and Ruby Developer [San Francisco and Santa Monica, CA]</a><br>Carbon Five builds web and mobile products for startups, institutional companies and non-profit organizations using a finely tuned agile process with cutting edge tools and technology. Join a team of seasoned pros in a highly-collaborative environment and work on a new project every couple of months.</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/754596" style="">Backend Web Developer (Ruby) for NY Times featured Startup at Cater2.me [New York, New York]</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/755916" style="">Ruby engineer at profitable established company at Concierge Live [New York, New York]</a></p>
</div>
<h3>Last but not least..</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://www.fastrailstests.com/" style="font-weight: bold;">Write Faster Rails Tests: Insights via E-mail</a><br>
Get an infrequent e-mail from Thoughbot's Ben Orenstein packed with battle tested advice for speeding up your Rails apps' tests.
</p>
</div>
{{< /rawhtml >}}
