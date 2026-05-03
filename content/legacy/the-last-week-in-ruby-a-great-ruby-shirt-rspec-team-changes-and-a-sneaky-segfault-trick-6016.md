---
title: 'The Last Week in Ruby: A Great Ruby Shirt, RSpec Team Changes and a Sneaky
  Segfault Trick'
date: '2012-12-02'
author: Peter Cooper
author_slug: admin
post_id: 6016
slug: the-last-week-in-ruby-a-great-ruby-shirt-rspec-team-changes-and-a-sneaky-segfault-trick-6016
url: "/the-last-week-in-ruby-a-great-ruby-shirt-rspec-team-changes-and-a-sneaky-segfault-trick-6016.html"
categories:
- compilations
- miscellaneous
---

{{< rawhtml >}}
<p>Welcome to this week's roundup of Ruby news cobbled together from my e-mail newsletter, <a href="http://rubyweekly.com/">Ruby Weekly.</a> </p>
<p>Highlights include: A time-limited Ruby shirt you can order, a major change in the RSpec project, how to make Ruby 1.9.3 a lot faster with a patch and compiler flags, a sneaky segmentation fault trick, several videos, and a few great jobs.</p>
<h3>Featured</h3>
<div style="margin: 16px 0px;" class="item">
  <a href="http://rubythreads.com/products/rubyguy"><img src="http://s3.amazonaws.com/nlga/uploads/item/image/7479/thumb_rubyguy.jpg" width="133" height="100" style="float: right; margin-left: 14px; margin-bottom: 16px; border: 1px solid #1173c7"></a>
<p><a href="http://rubythreads.com/products/rubyguy" style="font-weight: bold;">The 'Ruby Guy' T-Shirt</a><br>
Grab a t-shirt with a cute 'Ruby Guy' mascot on the front in time for Christmas. Comes in both male and female styles in varying sizes. Only available till Thursday December 6 though as it's part of a temporary Teespring campaign (Note: I have no connection to this, it just looks cool.)
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.davidchelimsky.net/2012/11/28/myron-marston-and-andy-lindeman-are-rspecs-new-project-leads/" style="font-weight: bold;">David Chelimsky Hands Over RSpec to New Project Leads</a><br>
After several years at the helm, David Chelimsky is handing over the reins to Myron Marston and Andy Lindeman for RSpec and rspec-rails respectively. Thanks for all your hard work, David.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://www.upgradingtorails4.com/" style="font-weight: bold;">Upgrading to Rails 4: A Forthcoming Book (in Beta)</a><br>
Andy Lindeman of the RSpec core team is working on a new book designed to bring you up to speed with Rails 4. It's in beta so you can support him now, if you like.
</p>
</div>
<h3>Reading</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://alisnic.net/blog/making-your-ruby-fly/" style="font-weight: bold;">Making Your Ruby Fly</a><br>
Andrei Lisnic demonstrates a few compile time 'tricks' you can use to make your MRI Ruby 1.9.3 faster. The benchmark results are compelling.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.localeapp.com/2012/11/21/avoiding-the-tar-pits-of-localization-with-jeff-casimir/" style="font-weight: bold;">Avoiding the Tar Pits of Localization</a><br>
Jeff Casimir gave a talk on the 'Ruby Hangout' about the trickiness of handling internationalization and localization and some tools and libraries you can use to help. Lots of notes here or you can watch the video.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://charlie.bz/blog/recovering-from-segfaults-in-ruby" style="font-weight: bold;">Recovering From Segfaults in Ruby, The Sneaky Way</a><br>
We've probably all seen the dreaded 'segmentation fault' from Ruby before. Charlie Somerville demonstrates a rather clever but sneaky way you can 'recover' from them in plain Ruby. As he says, you probably don't want to use this trick seriously.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://evan.tiggerpalace.com/articles/2012/11/21/use-rails-until-it-hurts" style="font-weight: bold;">Use Rails Until It Hurts</a><br>
Evan Light pushes back a little against the recent wave of OO purity and, as DHH calls it, 'pattern vision.'
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://www.mutuallyhuman.com/blog/2012/11/26/speeding-things-up-with-jruby/" style="font-weight: bold;">Speeding Things Up With jRuby</a><br>
MRI's global interpreter lock prevents running code in parallel without forking the Ruby process. That's where JRuby can help.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://coderwall.com/p/html5w" style="font-weight: bold;">Try RubyGems 2.0</a><br>
Michal Papis demonstrates how you can give the forthcoming RubyGems 2.0 a spin using RVM.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.codeclimate.com/blog/2012/11/28/your-objects-the-unix-way/" style="">Your Objects, the Unix Way: Applying the Unix Philosophy to Object-Oriented Design</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://cirw.in/blog/constant-lookup.html" style="">Everything You Ever Wanted to Know About Constant Lookup in Ruby</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://www.elabs.se/blog/52-an-elegant-authorization-system-for-a-more-civilized-age" style="">Simple Authorization in Ruby On Rails Apps</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://velvetpulse.com/2012/11/19/improve-your-ruby-workflow-by-integrating-vim-tmux-pry/" style="">Improve Your Ruby Workflow by Integrating vim, tmux and pry</a></p>
</div>
<h3>Watching and Listening</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://confreaks.com/videos/1319-rubyconf2012-rapid-programming-language-prototypes-with-ruby-racc" style="font-weight: bold;">Rapid Programming Language Prototypes with Ruby and Racc</a><br>
At RubyConf 2012, Tom Lee demonstrated how you can use Racc, a LALR(1) parser generator that emits Ruby code from a grammar file, in the process of creating a simple programming language of your own.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://www.youtube.com/watch?v=9IX1NfwQP1s" style="font-weight: bold;">A Tour Into An Oddity With Ruby's Struct Class</a><br>
In which I look into why Struct.new(:foo?).new(true).foo? doesn't work, even though the Struct-produced class and its instances are valid. I dive into the MRI source code a bit to get to the bottom of things. 12 minutes in all.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://devblog.avdi.org/2012/11/27/rubytapas-027-macros-and-modules/" style="font-weight: bold;">RubyTapas 027: Macros and Modules</a><br>
Avdi Grimm's latest Ruby screencast for non-subscribers to his Ruby video site.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://xterm.it/rails-4-roundup/" style="font-weight: bold;">A Rails 4.0 Roundup in 3 Videos</a><br>
A summary and links to three Rails 4 related videos (all linked in RW before) by Marco Campana. A handy catch up if you didn't already.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://rubyrogues.com/081-rr-rails-4-with-aaron-patterson/" style="">The Ruby Rogues Discuss Rails 4 with Aaron 'tenderlove' Patterson</a></p>
</div>
<h3>Libraries and Code</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.steveklabnik.com/posts/2012-11-22-introducing-the-rails-api-project" style="font-weight: bold;">Introducing the Rails API Project: Rails for API-only Applications</a><br>
A set of tools to use Rails for building APIs for both heavy Javascript applications as well as non-Web API clients. This isn't entirely new but the project has now become more formally established.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://github.com/moviepilot/zuck" style="font-weight: bold;">Zuck: A Little Helper to Access Facebook's Advertising API</a><br>
An early, prototype-stage gem but you may still find it useful.
</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="https://gist.github.com/4136373" style="">Falcon's Performance Patch for MRI ruby-1.9.3-p327</a></p>
</div>
<h3>Jobs</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://blog.blazingcloud.net/2012/11/13/artisanal-software-developers-needed/" style="font-weight: bold;">Blazing Cloud is looking for software artisans</a><br>to join us in handcrafting beautiful mobile experiences. We are looking for people who believe in a whole product-approach and agile development practices, and have a strong sense of quality.</p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/758752" style="">Software Developer at Dominion Enterprises [Pittsfield, Massachusetts]</a></p>
</div>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://jobs.rubyinside.com/a/jbb/job-details/760254" style="">Ruby on Rails Engineer at O.C. Tanner [Salt Lake City, Utah]</a></p>
</div>
<h3>Last but not least..</h3>
<div style="margin: 16px 0px;" class="item">
<p><a href="http://fluentconf.com/fluent2013" style="font-weight: bold;">Come Speak at O'Reilly Fluent 2013</a><br>OK, it's slightly offtopic but I'm the co-chair for O'Reilly's JavaScript, HTML5 and browser technology event and I know many Rubyists are also involved in these areas. Our CFP is open until December 10 and we have lots of awesome stuff lined up.
</p>
</div>
{{< /rawhtml >}}
