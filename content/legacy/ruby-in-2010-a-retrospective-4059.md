---
title: 'Ruby in 2010: A Retrospective of a Great Year for Ruby'
date: '2010-12-14'
author: Peter Cooper
author_slug: admin
post_id: 4059
slug: ruby-in-2010-a-retrospective-4059
url: "/ruby-in-2010-a-retrospective-4059.html"
categories:
- compilations
- miscellaneous
- news
- nonsense
---

{{< rawhtml >}}
<p><img src="/assets/2010/12/rwind.png" width="43" height="42" alt="rwind.png" style="float:left; margin-right:12px; margin-bottom:12px;">As 2010 comes to a close, I've dug through Ruby Inside archives to remind myself how far the Ruby scene has progressed over the year. Over the past couple of years, it's been hinted that the pace of developments in the Ruby world is slowing down, but nothing could have been further from the truth in 2010 (well, except in September..)</p>
<p>Let's take a spin through the year's biggest Ruby news!</p>
<h3>January</h3>
<p><a href="coffeescript-a-new-language-with-a-pure-ruby-compiler-2921.html"><b>CoffeeScript Released: A New Language With a Pure Ruby Compiler</b></a> <b>-</b> If you're into JavaScript development at all, you must have heard of <a href="http://jashkenas.github.com/coffee-script/">CoffeeScript</a>. It's an alternative syntax for JavaScript that compiles down into regular JavaScript that can run anywhere. Back in January, though, it was seen more as a Ruby-based compiler project, inspired by Marc Andre Cournoyer's awesome <a href="http://8dc2fg6673tfx6f6ea1yt90uf1.hop.clickbank.net/">Create Your Own Programming Language e-book</a>.</p>
<p><img src="/assets/2010/12/the-ruby-show.gif" width="68" height="70" alt="the-ruby-show.gif" style="float:right; margin-bottom:12px; margin-left:12px;"><a href="the-rails-envy-podcast-becomes-the-ruby-show-2946.html"><b>The Rails Envy Podcast Becomes.. The Ruby Show</b></a> <b>-</b> Gregg Pollack and Jason Seifer's entertaining Rails Envy podcast was taken out to the pasture and shot in 2009, but 2010 opened with podcasting legend Dan Benjamin getting on board with Jason and turning it into <a href="http://5by5.tv/rubyshow"><i>The Ruby Show.</i></a> Little did I know I'd replace Dan as Jason's co-host in October! <a href="http://5by5.tv/rubyshow">It's true.</a></p>
<h3>February</h3>
<p><a href="macruby-0-5-released-2951.html"><b>MacRuby 0.5 Released: A Significant, Stable Release</b></a> <b>-</b> Some maturity and stability finally came to OS X's most native Ruby implementation in 2010.</p>
<p><a href="how-to-install-rails-3-0-prerelease-beta-2955.html"><b>Rails 3.0 Beta/Prerelease Released</b></a> <b>-</b> The first cohesive release of Rails 3.0 came out in beta form. We quickly released our <a href="rails-3-0-beta-links-2966.html">36 Rails 3.0 Links and Resources To Get You Going post</a> which has done very well since.</p>
<p><a href="new-relic-rpm-officially-supports-rack-and-sinatra-finally-3014.html"><b>New Relic RPM Officially Supports Rack and Sinatra - Finally!</b></a> <b>-</b> New Relic had spent all of 2008 and 2009 becoming the de facto performance monitoring and app management system for Rails but in 2010 they finally baked in full support for Rack-based Ruby webapps of all sorts. <i>(Disclaimer: New Relic is a Ruby Inside sponsor.)</i></p>
<p><a href="http://rubyquicktips.tumblr.com/"><b>Ruby Quicktips Launches</b></a> <b>-</b> The concise "random Ruby and Rails tips" tumblelog launched in February 2010. It's still going.</p>
<h3>March</h3>
<p><a href="in-depth-jruby-qa-what-makes-jruby-tick-in-2010-2971.html"><b>In-depth JRuby Q&amp;A Interview with Charles Nutter</b></a> <b>-</b> On behalf of Ruby Inside, Grant Michaels went deep with JRuby's Charles Nutter on JRuby's internals, its future, and what's involved in maintaining a Ruby implementation.</p>
<p><a href="vagrant-ruby-powered-virtualbox-vm-building-and-provisioning-3059.html"><b>Vagrant: EC2-Like VM Building and Provisioning from Ruby</b></a> <b>-</b> Mitchell Hashimoto and John Bender released Vagrant, a Ruby-based tool for building and deploying virtualized development environments easily. It was impressive enough at the time but has become a popular project and is used by folks like Engine Yard.</p>
<p><a href="sinatra-1-0-released-3162.html"><b>Sinatra 1.0 Released</b></a> <b>-</b> 2010 was Sinatra's year. It had been under development since 2007 but only finally caught the imagination of a larger audience this year. The 1.0 release brought it the attention of many and smoothed off the edges of what I'd now call Ruby's best webapp library/framework other than Rails.</p>
<h3>April</h3>
<p><a href="ironruby-1-0-released-microsoft-s-3-years-with-ruby-pay-off-3212.html"><b>IronRuby 1.0 Released</b></a> <b>-</b> Little did we know that Microsoft would be putting IronRuby on the backburner several months later.. but IronRuby's 1.0 release was a cause for celebration in the Windows, .Net, and Mono communities alike. Its development continues, <a href="microsoft-jettisons-ironruby-into-the-open-source-community-3933.html">though under a different model</a>. Also in April, IronRuby's project leader, Jimmy Schementi, put together one of Ruby Inside's best posts and demonstrations all in one: <a href="ironruby-silverlight-ruby-in-browser-3192.html">A Walkthrough of Ruby in the Web Browser using IronRuby and Silverlight</a></p>
<p><a href="padrino-sinatra-webapp-framework-3198.html"><b>Padrino Released: A Webapp Framework around Sinatra</b></a> <b>-</b> <a href="http://www.padrinorb.com/">Padrino</a> is a webapp framework that adds an extra layer of functionality on top of Sinatra (<i>ibid</i>) - think form helpers, extra routing options, generators, admin, localization. It's still undergoing development and I've heard a lot of good things on the grapevine (IRC and Twitter mostly) about it this year.</p>
<p><a href="awesome_print-a-new-pretty-printer-for-your-ruby-objects-3208.html"><b>awesome_print: A New Pretty Printer for your Ruby Objects</b></a> <b>-</b> <code>awesome_print</code> is easily in my top 5 list for new Ruby projects in 2010. It's a "pretty printer" along the lines of <code>pp</code> (or even <code>p</code>) but includes color, improved indentation, metadata, and more. It's still under development with <a href="http://www.rubyflow.com/items/4801">version 0.3.1 released</a> in November.</p>
<h3>May</h3>
<p><img src="/assets/2010/12/jruby.png" width="59" height="59" alt="jruby.png" style="float:right; margin-bottom:12px; margin-left:12px;"></p>
<p><b><a href="jruby-1-5-0-released-the-best-alternative-ruby-implementation-gets-even-better-3252.html">JRuby 1.5.0 Released</a></b> <b>-</b> Ruby's first stable non-Matz implementation took a healthy step forward with its 1.5 release. It was already Rails 3 compatible and giving Ruby 1.9.1 a run for its money in the performance stakes, but 1.5 increased the performance a little more and added several more "bells and whistles" we've come to know and love.</p>
<p><a href="the-why-what-and-how-of-rubinius-1-0-s-release-3261.html"><b>Rubinius 1.0 Released</b></a> <b>-</b> Not only did we announce Rubinius's 1.0 release, we realized that many Rubyists wouldn't be familiar with just what Rubinius was all about, so we did <a href="the-why-what-and-how-of-rubinius-1-0-s-release-3261.html">a full roundup of the whys, whats, and hows</a>! Despite Engine Yard scaling back the team a bit, the Rubinius project didn't suffer greatly and is still under active development.</p>
<p><a href="http://nex-3.com/posts/101-haml-sass-3-released"><b>Haml/Sass 3 Released</b></a> <b>-</b> After 9 months of work, the popular Haml markup language reached a significant milestone. Sass also got a significant upgrade along with support for <a href="http://nex-3.com/posts/96-scss-sass-is-a-css-extension">SCSS</a>. I don't know where I'd be without the latter. <em>(Thanks to Guoliang Cao for reminding me of this one.)</em></p>
<h3>June</h3>
<p><a href="http://groups.google.com/group/datamapper/browse_thread/thread/6e3d51520cb63d9c"><b>DataMapper 1.0 Released</b></a> <b>-</b> The popular alternative to ActiveRecord, <a href="http://datamapper.org/">DataMapper</a>, hits its 1.0 release in June.</p>
<p><a href="the-state-of-building-pdf-documents-in-ruby-3408.html"><b>The State of Building PDF Documents in Ruby</b></a> <b>-</b> A row between Jared Pace and Gregory Brown became a surprisingly informative and insightful view into the world of building PDF documents in Ruby.</p>
<p><a href="the-ruby-communitys-information-marketing-mania-3318.html"><b>The Ruby Community's Information Marketing Mania</b></a> <b>-</b> Famed Rubyist Giles Bowkett noted that many Rubyists had gone infoproduct mad in 2009 and 2010 and looked at some of the most interesting releases. He turned out to be on the money - you might have seen a lot more "infoproducts" around Ruby Inside as of late.</p>
<p><a href="mongoid-vs-mongomapper-two-great-mongodb-libraries-for-ruby-3432.html"><b><a title="Mongoid vs MongoMapper: Two Great MongoDB Libraries for Ruby" href="mongoid-vs-mongomapper-two-great-mongodb-libraries-for-ruby-3432.html">Mongoid vs MongoMapper: Two Great MongoDB Libraries for Ruby</a></b></a> <b>-</b> 2010 wasn't just a good year for Ruby; it was great for <a href="http://www.mongodb.org/">MongoDB</a> (a NoSQL document-based database system) too. MongoDB fever swept the community and even became a running joke on <i>The Ruby Show</i>. We compared the (still) two most popular MongoDB Ruby libraries (though <a href="mongomatic-a-new-ruby-mongodb-library-hits-the-scene-3685.html">Mongomatic</a> has come along since).</p>
<p><a href="http://www.rubyinside.com/could-ruby-be-apple%E2%80%99s-language-and-api-future-3483.html"><b>Could Ruby be Apple's Language and API Future?</b></a> <b>-</b> Picking up on some rumors and gossip, I pondered if Ruby could become a 'first class' language at Apple. I put myself on the line and said yes. It hasn't happened yet, but I stick by it.</p>
<h3>July</h3>
<p><a href="http://redmineblog.com/articles/redmine-1.0.0-released/"><b>Redmine 1.0 Released</b></a> <b>-</b> Ruby's top project management webapp hit maturity with its 1.0 release.</p>
<p><a href="the-2010-ruby-implementation-performance-shootout-3554.html"><b>The 2010 Ruby Implementation Performance Shootout</b></a> <b>-</b> Antonio Cangiano ran one of his famous (or infamous, some may say!) Ruby implementation benchmark shootouts in July 2010. Ruby 1.9.2 took the crown with JRuby not far behind. Rubinius also put in a good showing being <i>just</i> faster, on average, than Ruby 1.8.7.</p>
<h3>August</h3>
<p><a href="microsoft-tires-of-ironruby-jimmy-schementi-jumps-ship-3639.html"><b>Microsoft Tires of IronRuby; Jimmy Schementi Jumps Ship</b></a> <b>-</b> Despite hitting 1.0 earlier in the year, IronRuby's allure wore off to Microsoft in August 2010 and its project leader, Jimmy Schementi (a last name I still can't type with any speed), jumped ship. The prognosis wasn't good but Microsoft released IronRuby "to the community" not long after.</p>
<p><a href="ruby-1-9-2-released-3700.html"><b>Ruby 1.9.2 Released</b></a> <b>-</b> The Matz-approved de facto official version of Ruby 1.9.2 was released to much fanfare in August 2010. It drew a line under the crash happy 1.9.1 and finally offered a full, stable and officially supported version of Ruby 1.9 to the masses. 2010 became the year Ruby 1.9 got <i>serious</i>.</p>
<p><a href="ruby-weekly-a-ruby-e-mail-newsletter-from-ruby-inside-3716.html"><b>Ruby Weekly was launched</b></a> <b>-</b> I launched a side project: <a href="http://rubyweekly.com/">Ruby Weekly</a>. It's a weekly Ruby and Rails e-mail newsletter and continues to grow quickly with 3410 subscribers as of late December. Want to see some recent issues? Check out <a href="http://rubyweekly.com/archive/">the archive</a>.</p>
<p><a href="rails-3-0-released-and-22-free-videos-to-bring-you-up-to-speed-3733.html"><b>Rails 3.0 Released (And 22 Free Videos To Bring You Up To Speed)</b></a> <b>-</b> Capping off an already hectic month, the final production version of Rails 3.0 went gold on August 30th. We announced the news but also brought together links to a ton of free videos showing you how to use all of Rails 3's new features.</p>
<h3>September</h3>
<p><a href="rubinius-1-1-released-its-just-better-3824.html"><b>Rubinius 1.1 Released: It's Just Better</b></a> <b>-</b> September was, perhaps, Ruby Inside's quietest month ever with just one item of note. Short of news, Rubinius's 1.1 release didn't set the world on fire but delivered lots of bug fixes, performance improvements, and increased stability.</p>
<h3>October</h3>
<p><a href="http://www.macruby.org/blog/2010/10/01/macruby07.html"><b>MacRuby 0.7 Released: More Stability and Easier Sandboxing</b></a> <b>-</b> MacRuby's big year continued with another solid release. Like Rubinius 1.1, there wasn't much to write home about but it brought the typical bug fixes and stability improvements we all like to see in our implementations of choice.</p>
<p><a href="rspec-2-0-released-rubys-leading-bdd-framework-grows-up-3880.html"><b>RSpec 2.0 Released: Ruby's Leading BDD Framework Grows Up</b></a> <b>-</b> 9 months in the making, RSpec 2.0 demonstrated just how <i>obvious</i> some improvements look in retrospect. Adding tons of modularity, as well as Rails 3 integration, RSpec 2 was, and is, a big deal and we look forward to writing more about it over the next few months. There's a lot of great stuff in there that needs to be written about.</p>
<p><a href="michael-hartls-15-hours-of-rails-3-screencasts-3886.html"><b>Michael Hartl's 15 Hours of Rails 3 Screencasts</b></a> <b>-</b> Michael Hartl surprised even me by announcing the release of <i>more</i> than 15 hours' worth of screencasts mirroring his Rails Tutorial book and giving people a true 'over the shoulder' view on how a professional develops Rails 3 apps. Great stuff.</p>
<p><a href="phusion-passenger-3-released-the-next-gen-of-ruby-webapp-deployment-3894.html"><b><a title="Phusion Passenger 3 Released: The Next Gen of Ruby Webapp Deployment" href="phusion-passenger-3-released-the-next-gen-of-ruby-webapp-deployment-3894.html">Phusion Passenger 3 Released: The Next Gen of Ruby Webapp Deployment</a></b></a> <b>-</b> Between 2008 and 2010, Passenger became the easier and de facto way of serving up Ruby and Rails apps on the Web. Passenger 3 took everything Phusion had learned and kicked things up a notch with significant performance increases and a bunch of great new features (including Passenger's standalone mode).</p>
<p><a href="macruby-and-the-mac-app-store-3922.html"><b>MacRuby + Mac App Store == Low Hanging Fruit for Rubyists</b></a> <b>-</b> After Apple announced the Mac App Store, I joined the dots with MacRuby and speculated MacRuby and the Mac App Store would offer some great opportunities to Rubyists willing to get in early. The Mac App Store still hasn't been released but I've heard quite a few MacRuby apps are being prepared for it..</p>
<h3>November</h3>
<p><a href="practicing-ruby-a-newsletter-by-gregory-brown-3952.html"><b>Gregory Brown launches the "Practicing Ruby" newsletter</b></a> <b>-</b> Gregory Brown, author of Ruby Best Practices and dean of the Ruby Mendicant University, launched Practicing Ruby, a $5/month newsletter dedicated to challenging you and turning you into a Ruby mastermind. From all accounts, the newsletter has turned out well and he's up to about 300 subscribers.</p>
<p><img src="/assets/2010/12/railszombies.png" width="66" height="64" alt="railszombies.png" style="float:right; margin-bottom:12px; margin-left:12px;"></p>
<p><a href="rails-for-zombies-an-online-rails-learning-environment-3962.html"><b>Rails For Zombies</b></a> <b>-</b> The team at Envy Labs made a big splash in the wider media and Twittersphere with their innovative Rails tutorial site, Rails For Zombies. Want to learn some Rails without leaving your browser? Check it out.</p>
<p><a href="is-the-ruby-standard-library-a-ghetto-3966.html"><b>Is the Ruby Standard Library a Ghetto?</b></a> - Mike Perham kicked off a long running argument about the state of Ruby's standard library by calling it a "ghetto." There was some back and forth with other members of the community and he wrote <a href="http://www.mikeperham.com/2010/11/25/ruby-stdlib-is-a-ghetto-pt-2/">Ruby Stdlib is a Ghetto, Pt 2</a> before deciding to call it a day and setting to work <a href="http://www.mikeperham.com/2010/12/08/contributing-to-ruby/">fixing parts of it himself</a>.</p>
<p><a href="rubymine-3-0-released-an-improved-ruby-and-rails-3-0-ide-3970.html"><b>RubyMine 3.0 Released: An Improved Ruby and Rails 3.0 IDE</b></a> <b>-</b> JetBrains swooped in near the end of 2010 with the only significant Ruby IDE update of the year.</p>
<h3>December</h3>
<p><a href="ruby-refinements-an-overview-of-a-new-proposed-ruby-feature-3978.html"><b><a title="Ruby Refinements: An Overview of a New Proposed Ruby Feature" href="ruby-refinements-an-overview-of-a-new-proposed-ruby-feature-3978.html">Ruby Refinements: An Overview of a New Proposed Ruby Feature</a></b></a> <b>-</b> Serious new Ruby features are as rare as hens' teeth so it was important for us to cover a promising new feature proposed for Ruby 2.0 called <i>refinements</i>.</p>
<p><b><a href="heroku-hits-the-jackpot-sells-to-salesforce-for-212m-the-community-reacts-4008.html">Salesforce buys Heroku for $210m</a></b> <b>-</b> The Goliath, Salesforce.com, bought our David, the popular Ruby webapp hosting service Heroku, for $210m. Champagne corks were heard popping from as far away as Jakarta, Indonesia.</p>
<h3>Special Mentions</h3>
<p><a href="http://rvm.beginrescueend.com/">RVM</a> has become significantly more popular in 2010 and become indispensable to thousands of Rubyists.</p>
<p><a href="how-santiago-pastorino-went-from-ruby-newbie-to-rails-core-in-2-years-3865.html">Santiago Pastorino went from his first Rails patch to Rails core</a> between February and September this year.</p>
<p><a href="http://gembundler.com/">Bundler</a> became popular in 2010 and is now a key part of the Rails 3 development process (and elsewhere, for many).</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Max</strong> &middot; <time datetime="2010-12-14T18:22:00+00:00">December 14, 2010 at 6:22 pm</time></p>
      <p>CoffeeScript is written in Node/Javascript...admittedly, certain aspects of the syntax and behavior are similar to Ruby, but is that why it's on here?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>kotrin</strong> &middot; <time datetime="2010-12-14T19:04:00+00:00">December 14, 2010 at 7:04 pm</time></p>
      <p>@Mac The CoffeeScript compiler was originally written in Ruby before it moved to node.js and became self hosted. IIRC</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-14T19:09:00+00:00">December 14, 2010 at 7:09 pm</time></p>
      <p>It is now, but the way it was pitched and the way it was written in its first incarnation were quite different to what it became. I think we can claim it as having Ruby roots.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-14T19:10:00+00:00">December 14, 2010 at 7:10 pm</time></p>
      <p>Just to clarify, CoffeeScript was written in Ruby but became self compiling as of 0.5: <a href="http://en.wikipedia.org/wiki/CoffeeScript" rel="nofollow">http://en.wikipedia.org/wiki/CoffeeScript</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jerry</strong> &middot; <time datetime="2010-12-14T19:19:00+00:00">December 14, 2010 at 7:19 pm</time></p>
      <p>Max,</p><p>I believe CoffeeScript is on the list because the compiler is written in pure Ruby.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jerry</strong> &middot; <time datetime="2010-12-14T19:20:00+00:00">December 14, 2010 at 7:20 pm</time></p>
      <p>Correction: *was* written in pure Ruby.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Guoliang Cao</strong> &middot; <time datetime="2010-12-14T19:44:00+00:00">December 14, 2010 at 7:44 pm</time></p>
      <p>IMHO, there are 2 more projects worth mentioning: RVM and Bundler 1.0 They both have a great impact on Ruby development.</p><p>I've created a short list. It says a lot on its own. It's just amazing.</p><p>Coffeescript<br>
MacRuby 0.5 -&gt; 0.8<br>
Sinatra 1.0<br>
IronRuby 1.0<br>
JRuby 1.5.0<br>
Rubinius 1.0 -&gt; 1.1<br>
DataMapper 1.0<br>
Redmine 1.0<br>
Ruby 1.9.2 - the first stable Ruby 1.9 release<br>
Rails 3.0<br>
RSpec 2.0<br>
Phusion Passenger 3 - support Rails 3<br>
RubyMine 3.0 - support Rails 3<br>
RVM<br>
Bundler 1.0</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Guoliang Cao</strong> &middot; <time datetime="2010-12-14T19:46:00+00:00">December 14, 2010 at 7:46 pm</time></p>
      <p>HAML/SASS/SCSS 3.0 is a big release too.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-14T20:08:00+00:00">December 14, 2010 at 8:08 pm</time></p>
      <p>Guoliang: I knew there'd be things I missed, thanks for bringing some of them up! I'll see what I can add in and give you credit. I'm sure I covered Haml 3 somewhere but don't recall seeing it on my way through.. Might have been only in Ruby Weekly.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-14T20:37:00+00:00">December 14, 2010 at 8:37 pm</time></p>
      <p>RVM was really a 2009 invention and it's had progressive, continuous improvements rather than any significant new versions (IMHO) but I should add a note for it as it's definitely been one of the most useful Ruby tools through 2010.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>andy</strong> &middot; <time datetime="2010-12-14T22:19:00+00:00">December 14, 2010 at 10:19 pm</time></p>
      <p>What are your predictions for 2011 ??</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gregory Brown</strong> &middot; <time datetime="2010-12-15T00:35:00+00:00">December 15, 2010 at 12:35 am</time></p>
      <p>Hey Peter, thanks for linking Practicing Ruby again.  It's really taking off, and people seem to love it.  Initial uptake was in no small part thanks to your post here on Ruby Inside.</p><p>It's really at the point now where it's making a big difference for me now that I'm working full time on RMU.  Thanks again for helping to spread the word.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-15T02:02:00+00:00">December 15, 2010 at 2:02 am</time></p>
      <p>@Gregory: And thanks for proving Rubyists are willing to subscribe to frequent, good content for money! No, seriously, I need to get my thinking cap on now ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-15T02:02:00+00:00">December 15, 2010 at 2:02 am</time></p>
      <p>@andy: I'd need to think about that - I might do it as a post on New Year's Day to kick off 2011!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gregory Brown</strong> &middot; <time datetime="2010-12-15T02:13:00+00:00">December 15, 2010 at 2:13 am</time></p>
      <p>@peterc:</p><p>While I have no doubt it'd be successful as a commercial venture on its own, the only reason I'm charging for Practicing Ruby is to support the free activities at RMU.  I think many of my subscribers like that aspect of things, because it's a way for them to get something well worth the price *and* help give back to a community project.</p><p>We've been proactive about releasing our materials at RMU, so it is pretty easy for prospective Practicing Ruby subscribers to see what they're supporting.</p><p><a href="http://university.rubymendicant.com/library.html" rel="nofollow">http://university.rubymendicant.com/library.html</a><br>
<a href="http://university.rubymendicant.com/projects.html" rel="nofollow">http://university.rubymendicant.com/projects.html</a></p><p>I am actually quite curious how well this newsletter would have done as a pure commercial venture.  But people have been buying things like ebooks and screencasts for a while now, so I suppose that market is still healthy, whether or not it has a direct tie-in to some community project.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Carlo Bertini</strong> &middot; <time datetime="2010-12-15T06:47:00+00:00">December 15, 2010 at 6:47 am</time></p>
      <p>Missing:<br>
The Elegant Ruby Web Framework<br>
<a href="http://www.padrinorb.com" rel="nofollow">http://www.padrinorb.com</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Philippe Monnet</strong> &middot; <time datetime="2010-12-15T13:36:00+00:00">December 15, 2010 at 1:36 pm</time></p>
      <p>Peter,thanks for an interesting retrospective for 2010.<br>
I would also add two other key events:<br>
  - The Camping micro-framework release 2.1 was a major new release - see:<br>
      * <a href="https://github.com/camping" rel="nofollow">https://github.com/camping</a><br>
      * <a href="http://whywentcamping.com/" rel="nofollow">http://whywentcamping.com/</a><br>
  - We all celebrated _Why day in August - <a href="http://whyday.org/" rel="nofollow">http://whyday.org/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-15T20:12:00+00:00">December 15, 2010 at 8:12 pm</time></p>
      <p>@Carlo: It's already in there - under April :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Carlo Bertini</strong> &middot; <time datetime="2010-12-16T07:50:00+00:00">December 16, 2010 at 7:50 am</time></p>
      <p>@peter: OMG :D sorry :P:P:P</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Santiago Pastorino</strong> &middot; <time datetime="2010-12-24T18:48:00+00:00">December 24, 2010 at 6:48 pm</time></p>
      <p>Thanks again for the mention Peter :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://www.lamolabs.org/blog/4813/delicious-bookmarks-for-january-16th-from-1103-to-2054/" rel="external nofollow" class="url">Delicious Bookmarks for January 16th from 11:03 to 20:54 « Lâmôlabs</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
