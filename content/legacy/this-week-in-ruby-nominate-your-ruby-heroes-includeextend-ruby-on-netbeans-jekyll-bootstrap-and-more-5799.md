---
title: 'This Week in Ruby: Nominate Your Ruby Heroes, Include/Extend, Ruby on Netbeans,
  Jekyll-Bootstrap, and more'
date: '2012-01-20'
author: Peter Cooper
author_slug: admin
post_id: 5799
slug: this-week-in-ruby-nominate-your-ruby-heroes-includeextend-ruby-on-netbeans-jekyll-bootstrap-and-more-5799
url: "/this-week-in-ruby-nominate-your-ruby-heroes-includeextend-ruby-on-netbeans-jekyll-bootstrap-and-more-5799.html"
categories:
- compilations
- news
---

{{< rawhtml >}}
<p>Welcome to this week's Web-based syndication of <a href="http://rubyweekly.com/">Ruby Weekly</a>, my Ruby e-mail newsletter.</p>
<h3>Headlines</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://rubyheroes.com/" style="font-weight: bold;">Vote for your 'Ruby Hero' in the Ruby Hero Awards</a><br>
The Ruby Heroes awards run each year and present 6 community nominated 'heroes' with an award at RailsConf. Nominations are now open so go and drop your nomination for the Rubyist whose code has brightened up your life the most in the past year.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://www.marketwatch.com/story/heroku-receives-infoworlds-technology-of-the-year-award-2012-01-18" style="font-weight: bold;">Heroku Receives InfoWorld's Technology of the Year Award</a><br>
Sorry it's just a press release but it's great to see a company that came up from the Ruby world continue to do well. Congrats to the Heroku team.
</p>
</div>
<h3>Articles and Tutorials</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jonathanleighton.com/articles/2012/encapsulating-hashes/" style="font-weight: bold;">Hashes and Encapsulation</a><br>
Jon Leighton demonstrates why accessing hash elements in a "obj.hashthings['foo']" style isn't the way to go and how to act in a way that respects encapsulation, a tenet of object orientation.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://ficate.com/explaining-include-and-extend" style="font-weight: bold;">Explaining Ruby's Include and Extend</a><br>
Aaron Lasseigne gives a simple introduction to the ideas behind the 'include' and 'extend' methods.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://myronmars.to/n/dev-blog/2012/01/why-sinatras-halt-is-awesome" style="font-weight: bold;">Why Sinatra's Halt is Awesome</a><br>
Myron Marston draws attention to Sinatra's 'halt' method which you can use to immediate stop a request within a filter or route, and explains why he likes it for handling exceptions in Sinatra apps.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.segment7.net/2012/01/10/replace-your-test-helpers-with-reusable-api" style="font-weight: bold;">Replace Your Test Helpers with a Reusable API</a><br>
Eric Hodel makes an interesting argument that instead of leaning on test helper files all of the time, perhaps there are common bits of functionality you can bake into your library or app's own APIs.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.zenspider.com/2012/01/assert-nothing-tested.html" style="font-weight: bold;">assert_nothing_tested..</a><br>
Ryan Davis demonstrates why his popular minitest testing library doesn't have an assert_nothing_raised assertion by picking on a relatively useless test in Rails.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.enebo.com/2012/01/workaround-for-ruby-support-on-netbeans.html" style="font-weight: bold;">A Workaround for Ruby Support on Netbeans 7.1</a><br>
Back in February 2011, Netbeans (a popular IDE) dropped its official support for Ruby but the JRuby team offered to pick up the slack. Thomas Enebo has been working on it and has some code to make Ruby support work on Netbeans 7.1 here.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://joshuadavey.com/post/15619414829/faster-tdd-feedback-with-tmux-tslime-vim-and" style="">Faster TDD Feedback With tmux, tslime.vim, and turbux.vim</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://rubysource.com/rails-or-sinatra-the-best-of-both-worlds/" style="font-weight: bold;">Rails or Sinatra: The Best of Both Worlds?</a><br>
Over at RubySource, Darren Jones rounds up the opinions and assessments of several well known Rubyists when it comes to choosing Sinatra or Rails for a project. An interesting high level collection of ideas.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://numbers.brighterplanet.com/2012/01/18/fuzzy-match-in-ruby/" style="">How to do Fuzzy Matching in Ruby with fuzzy_match</a></p>
</div>
<h3>Media</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://rubyrogues.com/037-rr-versioning-and-releases/" style="font-weight: bold;">The Ruby Rogues on Versioning and Releases</a><br>
The world's favorite Ruby podcast, Ruby Rogues, is back with an episode all about the versioning of code, Ruby libraries, gems, and more. This time out, James Edward Gray II takes the helm.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://railscasts.com/episodes/316-private-pub" style="font-weight: bold;">Private Pub (RailsCasts)</a><br>
Private Pub is a gem for use with Rails to publish and subscribe to real-time messages through Faye. You get real-time updates through an open socket without tying up a Rails process. Ryan Bates shows you how to use it in a mere 7 minutes.
</p>
</div>
<h3>Libraries and code</h3>
<div style="margin: 16px 0px;" class="item">
  <a href="https://github.com/pda/roflbalt"><img src="http://s3.amazonaws.com/nlga/uploads/item/image/1659/thumb_roflbalt2.png" width="133" height="100" style="float: right; margin-left: 14px; margin-bottom: 16px; border: 1px solid #1173c7"></a>
<p><a href="https://github.com/pda/roflbalt" style="font-weight: bold;">ROFLBALT: A Terminal-based ASCII Side Scroller Game</a><br>
At RailsCamp X, Paul Annesley and Dennis Hotson built this nifty little side scrolling game which works straight from your terminal (256 color support needed though). Surprisingly good for a quick effort.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/charliesome/twostroke" style="font-weight: bold;">TwoStroke: A JavaScript Implementation Written in Ruby</a><br>
Charlie Somerville presents an interesting working (but incomplete) JavaScript implementation, written entirely in Ruby. One of those projects that may seem useful somewhere down the line but for now is just a neat idea.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/netzpirat/guard-rspectacle" style="font-weight: bold;">Guard::RSpectacle: An RSpec Plugin for Guard</a><br>
Guard::RSpectacle automatically tests your application with RSpec when files are modified. This sounds like guard-rspec on the surface, but RSpectacle acts as an 'embedded' runner within a running Rails app and reloads changed files on the fly.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/phusion/juvia" style="font-weight: bold;">Juvia: An Open Source Commenting System from Phusion</a><br>
For a while now, Hongli Lai of Phusion (the geniuses behind Passenger and REE) has been working on a Rails-based open source commenting system that you can include into your site using JavaScript.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jekyllbootstrap.com/" style="font-weight: bold;">Jekyll-Bootstrap: A Quick Way to Start Off Your Own Jekyll-Powered Site</a><br>
Jekyll is a blog-focused static site generator, and Jekyll users often recommend cloning an existing Jekyll blog to use as a starting point. Jekyll-Bootstrap takes this idea to the next level by attempting to be the definitive Jekyll framework to clone.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/cmer/socialization" style="">Socialization: Liking and Following for your Rails 3 Apps</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/agoragames/oembedr" style="font-weight: bold;">OEmbedr: Lightweight, Flexible OEmbed Consumer Library</a><br>
oEmbed is a format for allowing an embedded representation of a URL on third party sites OEmbedr makes consuming oEmbed from any source simple.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/deadlyicon/hobson" style="font-weight: bold;">Hobson: A Resque-based Distributed Test Runner</a><br>
Hobson distributes your test suite across N machines and aggregates the results live on a locally run webapp. I haven't tried it yet but on a trawl through the source code it seems to be for Cucumber and RSpec only.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://knoopx.net/2011/12/14/cracking-wpa-networks-with-macruby" style="">Cracking WPA networks with MacRuby</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://vesperapps.com/" style="font-weight: bold;">Vesper: A New Sinatra-based Webapp Framework</a><br>
Yes, it's 'yet another' webapp framework but Vesper is based on top of Sinatra, already has several plugins, and features a handy 6 minute screencast on its homepage.
</p>
</div>
<h3>Ruby Jobs of the Week</h3>
<div style="margin: 16px 0px;" class="item">
  <a href="http://jobs.rubyinside.com/a/jbb/job-details/629274"><img src="http://s3.amazonaws.com/nlga/uploads/item/image/1675/thumb_zendesk.png" width="133" height="100" style="float: right; margin-left: 14px; margin-bottom: 16px; border: 1px solid #1173c7"></a>
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/629274" style="font-weight: bold;">Ruby Framework Engineer Job at Zendesk [San Francisco]</a><br>
The fantastic folks over at Zendesk, the help desk and support ticket app, are looking for a creative and seasoned Ruby engineer to focus on improving their code base. They want full stack engineers who can improve and refactor their frameworks and lead an open source effort by publishing some of the resulting gems.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/626674" style="">Ruby on Rails Developer at Unpakt [New York City]</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="post-a-job" style="font-weight: bold;">Want your job featured in Ruby Weekly? Learn more here.</a></p>
</div>
<h3>Last but not least..</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://owningrails.com/?ref=5905208113" style="font-weight: bold;">Owning Rails: Marc Andre Cournoyer's Online Rails Masterclass</a><br>
 Marc Andre Cournoyer (of Create Your Own Programming Language fame) is running another of his highly praised 2 day, online Rails masterclasses. Marc's given me a discount code you can use to get 80 dollars off - it's 'rubyweekly'. I disclose that I make a commission on this but I won't promote trash and the testimonials speak for themselves :-)</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://proglangmasterclass.com/?ref=5905208113" style="font-weight: bold;">The Programming Language Masterclass: Another Marc-Andre Class</a><br>
Along similar lines, Marc Andre Cournoyer also runs a more general class aimed at giving you an understanding of the inner workings of programming languages and programming language implementation. 'SAVEME50' gets you a discount and it's in mid February.
</p>
</div>
{{< /rawhtml >}}
