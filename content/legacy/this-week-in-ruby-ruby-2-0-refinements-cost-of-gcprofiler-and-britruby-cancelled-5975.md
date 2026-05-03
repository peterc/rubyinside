---
title: 'This Week in Ruby: Ruby 2.0 Refinements, Cost of GC::Profiler, and BritRuby
  Cancelled'
date: '2012-11-23'
author: Peter Cooper
author_slug: admin
post_id: 5975
slug: this-week-in-ruby-ruby-2-0-refinements-cost-of-gcprofiler-and-britruby-cancelled-5975
url: "/this-week-in-ruby-ruby-2-0-refinements-cost-of-gcprofiler-and-britruby-cancelled-5975.html"
categories:
- compilations
- miscellaneous
- ruby-on-rails
---

{{< rawhtml >}}
<p>Welcome to this week’s roundup of Ruby news, articles, videos, and more, cobbled together from my e-mail newsletter, <a href="http://rubyweekly.com/">Ruby Weekly.</a> If you've been celebrating Thanksgiving this week, I hope you're having a good break.</p>
<p>Highlights include: Charles Nutter on Ruby 2.0 refinements, the cancellation of the British Ruby Conference, and DHH's latest object instantiation (thanks Doug Renn).</p>
<h3>Featured</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.headius.com/2012/11/refining-ruby.html" style="font-weight: bold;">Refining Ruby (or The Best Study of Ruby 2.0 Refinements Yet)</a><br>
I've editorialized the title somewhat but this article by Charles Nutter is a great look into the world of 'refinements' in Ruby 2.0, what they're intended for, and all of the challenges they throw up, both for developers and language implementers.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://2013.britruby.com/" style="font-weight: bold;">The British Ruby Conference.. Cancelled</a><br>
It's a pretty long story but the British Ruby Conference, which I was getting rather excited about.. is no more. There's a statement as to why but if you want to join the melee of conversation, try <a href="http://news.ycombinator.com/item?id=4803437">here</a> or <a href="http://news.ycombinator.com/item?id=4801226">here.</a> Luckily other attempts are now afoot - news coming soon.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://twitter.com/dhh/status/271209790674464768" style="font-weight: bold;">DHH's Latest Project: Colt Heinemeier Hansson</a><br>
It's DHH's latest release :-) Congratulations to him and his growing family. And before anyone complains about having a human interest story here, cheer up a bit - it's Thanksgiving ;-)
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/rails/rails/pull/8249" style="font-weight: bold;">Edge Rails Now Tested on Ruby 2.0 with Travis CI</a><br>
Little to read but Ruby 2.0 is now most clearly on the edge Rails developers' radar.
</p>
</div>
<h3>Reading</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://ruby.awsblog.com/post/Tx2AK2MFX0QHRIO/Deploying-Ruby-Applications-to-AWS-Elastic-Beanstalk-with-Git" style="font-weight: bold;">Deploying Ruby Applications to AWS Elastic Beanstalk with Git</a><br>
Just last week, Amazon announced Ruby support for its AWS Elastic Beanstalk semi-automated deployment and scaling system. This tutorial by Loren Segal fills in all the blanks by walking us through using it from start to finish with a Rails app.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.new-bamboo.co.uk/2012/11/30/drubyconf-2012" style="font-weight: bold;">Zen and The Art of Speaking at RubyConf 2012 - The dRuby Way</a><br>
An excellent story and walkthrough about both preparing a talk for RubyConf 2012 and what happened while the speaker was there. More articles like this please.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jamesgolick.com/2012/11/19/the-cost-of-ruby-1.9.3-s-gc-profiler.html" style="font-weight: bold;">The Cost of Ruby 1.9.3's GC::Profiler</a><br>
James Golick presents an examination of the flaws in Ruby 1.9.3's included garbage collector instrumentation in his typically punchy style. Luckily he presents a potential solution too: GC::BasicProfiler.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://spin.atomicobject.com/2012/11/06/is-your-application-running-with-ruby-slow/" style="font-weight: bold;">Is Your Application Running with Ruby - Slow?</a><br>
Two developers moved a large Ruby webapp between two machines and experienced a 50% drop in performance. Why? Clue: It was something to do with RVM.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.remarkablelabs.com/2012/11/2012-mac-setup-for-ruby-development" style="font-weight: bold;">A 2012 Mac Setup for Ruby development</a><br>
We see articles like this quite often but there are a lot of handy links here despite not being particularly Ruby focused.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://spin.atomicobject.com/2012/11/16/a-lightweight-cms-using-ruby-and-google-drive/" style="font-weight: bold;">A Lightweight 'CMS' Using Ruby and Google Drive</a><br>
An interesting approach to content management. Let users enter text in a Google Drive spreadsheet, grab it with Ruby, and use the data to create your content or templates locally.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://railsware.com/blog/2012/11/20/yield-gotcha-in-ruby-blocks/" style="font-weight: bold;">A 'yield' Gotcha Every Ruby Developer Should Be Aware of</a><br>
It's not a true yield gotcha but is something you might trip over nonetheless regarding earlier than expected returns. Luckily, 'ensure' blocks help save the day.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.tddium.com/2012/11/20/profiling-ruby/" style="font-weight: bold;">Profiling Ruby (or How I Made Rails Start Up Faster)</a><br>
Four steps: measure, find the problem, fix, and repeat.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://weblog.rubyonrails.org/2012/11/21/the-people-behind-rails-4/" style="">Riding Rails: The People Behind Rails 4</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://tx.pignata.com/2012/11/concurrency-patterns-in-ruby-futures.html" style="">Concurrency Patterns in Ruby: Futures</a></p>
</div>
<h3>Watching and Listening</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://railscasts.com/episodes/393-guest-user-record" style="font-weight: bold;">Guest User Records - RailsCasts</a><br>
Ryan Bates is back with another Rails Cast, this time demonstrating how to create a 'temporary guest record' in a Rails app so users can try out apps without filling in their information up front.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://www.youtube.com/watch?feature=player_embedded&amp;v=2lBBjkcfKuE" style="font-weight: bold;">Matz Speaking at LinkedIn about Ruby</a><br>
Back in October, Matz spoke at LinkedIn about his background, Ruby's history, and his current work. I enjoyed this.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://launchware.com/articles/writing-command-line-applications-with-ruby-a-presentation-to-the-route-9-ruby-group/" style="">Writing Command Line Applications With Ruby: A Presentation</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://rubyrogues.com/080-rr-practical-metaprogramming-with-steven-harms/" style="">The Ruby Rogues on 'Practical Metaprogramming' with Steven Harms</a></p>
</div>
<h3>Libraries and Code</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://darwinweb.net/articles/convert-syck-to-psych-yaml-format" style="font-weight: bold;">Convert Syck to Psych YAML Format</a><br>
Change has been afoot with Ruby's attitude to YAML parsing for a while now but the shift from Syck to Psych can still cause issues. If you still have legacy Syck-produced YAML files around that are causing problems, this code might help.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://propublica.github.com/daybreak/" style="font-weight: bold;">Daybreak: A Simple Key/Value Store for Ruby</a><br>
Very lightweight and very Ruby (in the best possible way).
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/postmodern/chruby" style="font-weight: bold;">chruby: Changes The Current Ruby</a><br>
An 'ultra-minimal' (around 80 lines) alternative to RVM and rbenv. chruby allows one to install rubies into /usr/local/$ruby, /opt/$ruby or ~/.rubies/$ruby but install gems into ~/.gem/$ruby/$version. chruby only modifies $PATH, $GEM_HOME and $GEM_PATH, and does not hook cd or rely on shims.
</p>
</div>
<h3>Jobs</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/756017" style="">Ruby on Rails Developer at Top Agent Network [San Francisco, California]</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/756033" style="">RoR Developer, Platform at New Relic [Seattle, Washington]</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/756113" style="">Ruby on Rails Developer at Liaison International [Watertown, Massachusetts]</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/757807" style="">Software Engineer - Experienced/Senior at Intent Media [New York, New York]</a></p>
</div>
<h3>Last but not least..</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://gilesbowkett.blogspot.co.uk/2012/11/i-wrote-ebook-in-week.html" style="font-weight: bold;">Giles Bowkett: 'I Wrote An eBook In A Week'</a><br>
Being silly enough to not send me a copy for review or give me a title, all I can do is say Giles has written an interesting sounding book about how 'DHH gets OOP wrong' but why that's OK. It costs money but hopefully we'll see some reviews soon. He does have a no-quibble refund policy, however, and his writing is always an eye opener.
</p>
</div>
{{< /rawhtml >}}
