---
title: 'Rails 3.0 Beta: 36 Links and Resources To Get You Going'
date: '2010-02-05'
author: Peter Cooper
author_slug: admin
post_id: 2966
slug: rails-3-0-beta-links-2966
url: "/rails-3-0-beta-links-2966.html"
categories:
- compilations
- reference
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2010/02/rails3logo.gif" width="130" height="163" alt="rails3logo.gif" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"> Whenever something's a <i>really</i> "big deal" in the Ruby world, we cover it - even if it makes more sense on <a href="http://www.railsinside.com/">Rails Inside</a> (which is now switching to a user contributions model). Given that, we've gone through all the latest and greatest Rails 3.0 related links and put together a ton of them to help you on your way with the recently released Rails 3.0 beta. Enjoy!</p>
<h3>Getting Started / Must Reads</h3>
<p><a href="http://guides.rails.info/3_0_release_notes.html">Rails 3.0 Release Notes</a> - An epic amount of documentation from the Rails Guides project. If you're already pretty familiar with Rails 2.x and just want to know what's new and updated, this is the place to look first. If you read this whole page, you'll get a good feel for what you need to pick up next.</p>
<p><a href="http://omgbloglol.com/post/371893012/the-path-to-rails-3-greenfielding-new-apps-with-the">The Path to Rails 3: Greenfielding New Apps With The Rails 3 Beta</a> - Jeremy McAnally has written an awesome practical guide to setting up Rails 3 beta and creating a new app from scratch. Of note is his coverage of the new app generator and configuration system. He gets you as far as finishing off some scaffolding and even <i>adding some tests</i>.</p>
<p><a href="http://omgbloglol.com/post/344792822/the-path-to-rails-3-introduction">Rails 3 Introduction</a> - A two week old post by Jeremy McAnally that provides a high level introduction to Rails 3. What is it, why is it? And so forth. He demonstrates how Rails has moved from a monolithic, packaged "deal" to an ecosystem of more loosely coupled libraries that work together.</p>
<p><a href="how-to-install-rails-3-0-prerelease-beta-2955.html">How To Install Rails 3.0 Beta</a> - Our own guide to getting Rails 3.0 up and running. Sure, it's only two lines, but we beat the official Rails blog by 4 minutes on this *g*</p>
<p><a href="http://railsplugins.org/">RailsPlugins.org</a> - A new Rails plugins directory.</p>
<h3>Upgrading &amp; Preparing Your Existing Apps</h3>
<p><a href="http://blog.peepcode.com/tutorials/2010/live-coding-rails-3-upgrade">Geoffrey Grosenbach's Rails 3 Upgrade Screencast</a> - Geoffrey Grosenbach (of PeepCode fame) has put together a free screencast demonstrating how to migrate a Rails 2.x app to Rails 3.0. A very high quality production.</p>
<p><a href="http://github.com/rails/rails_upgrade">rails_upgrade Plugin</a> - An official plugin that runs checks on your Rails 2.x application and notifies you of obvious things that need to be changed for Rails 3.0 usage. It's unlikely to give you full coverage of every issue, but as a general overview it's pretty cool.</p>
<p><a href="http://www.enlightsolutions.com/articles/five-ways-to-prepare-your-application-for-ruby-on-rails-3-today/">5 Things You Can Do Today to Make Your App Ready for Rails 3</a> - A short post that recommends you start to use Bundler, use inherited_resources, use rails_xss, use more named scopes, and change your references to certain constants.. all in your existing app so it's easier to upgrade to 3.0 later.</p>
<p><a href="http://wiki.rubyonrails.org/rails/version3/plugins_and_gems">Rails 3 Ready Plugins</a> - If you're heavily dependant on a certain plugin, see if it's already on the confirmed Yes/No list of plugins that do/don't work with Rails 3.0. It's still a short list so if you're a plugin maintainer, be sure to add your plugin if you know either way!</p>
<p><a href="http://boldr.net/upgrade-plugins-gems-rails-3/">How to upgrade plugins to Rails 3.0</a> - A fresh and code heavy look at how to make some basic changes to upgrade a Rails 2.x plugin to Rails 3.x standards!</p>
<h3>Rails 3.0 Libraries and Components</h3>
<p><a href="http://m.onkey.org/2010/1/22/active-record-query-interface">Active Record Query Interface 3.0</a> - Pratik Naik demonstrates ActiveRecord's finder methods and shows how a number of techniques are being deprecated in Rails 3.1. In essence, queries move away from a single <code>find*</code> method packed with arguments to a chain of methods performed upon a simpler <code>find</code>. There are lots of good code examples in here! <a href="http://magicscalingsprinkles.wordpress.com/2010/01/28/why-i-wrote-arel/">Why Arel?</a> is also a great introduction to this topic and shows the motivation and theory behind the "relational algebra" in ActiveRecord 3.</p>
<p><a href="http://yehudakatz.com/2010/01/10/activemodel-make-any-ruby-object-feel-like-activerecord/">ActiveModel: Make Any Ruby Object Feel Like ActiveRecord</a> - Yehuda Katz introduces us to the new ActiveModel system in Rails 3.0 by showing us how we can use it to make any Ruby class feel like an old-school ActiveRecord model. All of this is a result of splitting out the model and database behavior from ActiveRecord into separate libraries, thus removing the necessity for a database backend (or nasty hacks).</p>
<p><a href="http://www.engineyard.com/blog/2010/render-options-in-rails-3/">Render Options in Rails 3</a> - Yehuda Katz looks at how Rails 3's rendering pipeline works and demonstrates how to add a custom PDF renderer to it.</p>
<p><a href="http://yehudakatz.com/2009/12/20/generic-actions-in-rails-3/">Generic Actions in Rails 3</a> - Yehuda Katz (again!) shows us how to create clever "generic actions" to do things like redirections direct from the routes file and generic template rendering. It's also worth a look for the discussion on route matcher changes.</p>
<p><a href="http://caffeinedd.com/guides/331-making-generators-for-rails-3-with-thor">Making Generators for Rails 3 With Thor</a> - David Trasbo demonstrates how to use Thor (essentially a better Rake - sorta) to produce new generators for Rails 3 projects. This is a code heavy walkthrough. There's more on generators <a href="http://blog.plataformatec.com.br/2010/01/discovering-rails-3-generators/">here</a>.</p>
<p><a href="http://lindsaar.net/2010/1/26/new-actionmailer-api-in-rails-3">New ActionMailer API in Rails 3.0</a> - Mikel Lindsaar got stuck in and built <a href="ruby-email-library-2782.html">a much improved mail library for Ruby</a>. This new "mail" library is now the new foundation of ActionMailer in Rails 3.0. In this article, Mikel gives a tour of how it works and how you can put together mails quickly and easily from within Rails 3.0 apps.</p>
<p><a href="http://lindsaar.net/2010/1/31/validates_rails_3_awesome_is_true">Validations in Rails 3.0</a> - Mikel Lindsaar shows how validations have changed in Rails 3.0. Instead of being a part of ActiveRecord, they're now in ActiveModel and can be used on non-DB related objects too! The old school validation methods are still around but now there are some other, cleaner ways to accomplish the same things.. Mikel shows you how.</p>
<p><a href="http://github.com/dkubb/rails3_datamapper">Rails3_DataMapper</a> - A library that gets DataMapper working on Rails 3. It was updated just yesterday and people have been recommending it on Twitter. If you're a DataMapper user, check it out! <strong>Update: There's now a <a href="http://github.com/snusnu/datamapper_on_rails3">tutorial on getting DataMapper running on Rails 3 beta!</a></strong></p>
<p><a href="http://litanyagainstfear.com/blog/2010/02/03/the-rails-module/">The Rails Module</a> - Nick Quaranto looks at how constants like <code>RAILS_ROOT</code>, <code>RAILS_ENV</code> and <code>RAILS_DEFAULT_LOGGER</code> have been deprecated in favor of accessing methods stored in the global Rails module (e.g.: <code>Rails.root, Rails.env, Rails.logger</code>).</p>
<p><a href="http://blog.plataformatec.com.br/2010/02/rails-3-i18n-changes/">Rails 3 I18N Changes</a> - José Valim looks at some internationalization (i18n) changes in Rails 3.0 over 2.x - along with basic examples.</p>
<h3>Insights</h3>
<p><a href="http://www.engineyard.com/blog/2010/rails-3-beta-is-out-a-retrospective/">A Retrospective</a> - Rails 3 core team member Yehuda Katz looks back at the past year and analyzes the key changes. This is worth reading if you want a softer, more thoughtful, higher level view than the release notes provide.</p>
<p><a href="http://www.engineyard.com/blog/2009/my-five-favorite-things-about-rails-3/">My 5 Favorite Things About Rails 3</a> - It's a few months old, but Yehuda Katz takes a look at some of the sticking points of Rails 2.x and shows how Rails 3 provides significant improvements.</p>
<h3>Misc</h3>
<p><a href="http://blog.webbynode.com/2010/02/05/beta-update-rapid-app-depoyment-rc1-rails-3-0b-support/">Webbynode Gets Rails 3 Support for Rapid Deployment</a> - Hosting company Webbynode shows how you can deploy a Rails 3.0 app to their VPS system with just a single command line entry. It's a bit like Heroku but more powerful and customizable. Of course, you have to pay for the VPS, but hey :-) It's also demonstrated how you can run a Rails and PHP app side by side on the same system.</p>
<p><a href="http://grigio.org/how_install_rails_3_0_beta_ubuntu_linux_step_step">How to Install Rails 3.0 Beta on Ubuntu Linux</a> - An Ubuntu-specific guide to setting up a basic Ruby 1.9 and Rails 3.0 beta stack.</p>
<p><a href="http://hasmanyquestions.wordpress.com/2010/01/17/let-your-sql-growl-in-rails-3/">Let Your SQL Growl in Rails 3.0</a> - Gavin Stark demonstrates how he tweaked Rails 3.0 to put out Growl notifications for all SQL queries performed by ActiveRecord. Cute trick.</p>
<p><a href="http://en.oreilly.com/railswinter10">Exploring Rails 3 Free Online Conference</a> - O'Reilly and RailsConf are putting on a free two hour online conference that features Yehuda Katz, Gregg Pollack, Jeremy Kemper and Ryan Tomayko talking about different parts of the Rails 3.0 ecosystem. It takes place on February 18, 2010.</p>
<p><a href="http://m.onkey.org/2010/2/5/signed-and-permanent-cookies-in-rails-3">Signed and Permanent Cookies in Rails 3</a> - Pratik Naik demonstrates how to set "permanent" cookies in Rails 3.0, more easily than in previous versions, all thanks to a new <code>cookies.permanent</code> object.</p>
<p><a href="http://assets.pivotallabs.com/talks/09-02-2009_Extending-Rails3_Yehuda-Katz.mp4">Extending Rails 3 Video</a> - Yehuda Katz in an hour long talk demonstrating how to extend Rails 3.0.</p>
<p><a href="http://www.railsinside.com/news/379-new-rails-logo.html">New Rails Logos</a> - Wanna use a Rails logo somewhere without obvious licensing or trademark issues? Check out our little contest/brewing pot of public domain logos over at Rails Inside!</p>
<p><a href="http://yehudakatz.com/2009/08/26/how-to-build-sinatra-on-rails-3/">How to Build Sinatra on Rails 3</a> - Yehuda Katz gives a code heavy demonstration of how to get a basic Sinatra application working <i>within</i> a Rails 3 app.</p>
<p><a href="http://zaa.ch/past/2009/5/23/unobtrusive_javascript_in_rails_3/">Unobtrusive JavaScript in Rails 3</a> - A <i>very</i> old post looking at some of the changes being made to JavaScript helpers in Rails 3.0.</p>
<p><a href="http://www.pragprog.com/wikis/wiki/ChangesInRails30">Changes in Rails 3.0 for Agile Web Development with Rails Edition 3</a> - The Pragmatic Programmers are keeping a page with changes necessary for the popular AWDWR book to keep it working with Rails 3. Good to look at it if you're learning from this book!</p>
<p><a href="http://gist.github.com/293298">Rails 3 App Generator Script</a> - Want to get a complete, scaffolded Rails 3 app up in seconds? This script will get you on your way.</p>
<p><a href="http://kevinvaldek.com/mootools-driver-for-rails-3-helpers">MooTools Driver for Rails 3 Helpers</a> - Rails 3 is now JavaScript framework agnostic, and if you want to use MooTools, here's some info on how to go about it.</p>
<p><a href="https://www.youtube.com/watch?v=WTCSUDovxRw">North Korean Rails 3.0 Launch Party</a> - Everyone's in on the festivities!</p>
<p><b>NEW!</b> <a href="http://www.lindsaar.net/2010/2/6/bundle_me_some_rails">Bundle Me Some Rails</a> - A walk through using the new Gem bundler with Rails 3.0 by Mikel Lindsaar.</p>
<p><a href="http://railslove.com/weblog/2010/02/02/on-the-way-to-rails-3-a-link-list/">Another Rails 3 Link List</a> - Michael Bumann started to keep a list of Rails 3.0 links a few days ago, so there might be others not covered here. Just found <a href="http://railsnotes.com/rails-3/">another one by Melvin Ram</a> too.</p>
<p><i>Logo at top of post courtesy of Dylan Clendenin. See <a href="http://www.railsinside.com/news/379-new-rails-logo.html">more new, unofficial Rails logos</a> and/or submit your own!</i></p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><em>[news]</em> @peterc here! My next "big thing" is a new site called <a href="http://coder.io/">coder.io</a>. If you're into technologies like Ruby, Git, Python, the iPhone, MySQL, JavaScript, Clojure, etc, you might want to get on the coming soon list for some eventual freebies/bonuses along with exclusive early access. Thanks!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Amr</strong> &middot; <time datetime="2010-02-05T23:34:00+00:00">February 5, 2010 at 11:34 pm</time></p>
      <p>Great collection. more time needed to get inside rails3.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-02-08T00:18:00+00:00">February 8, 2010 at 12:18 am</time></p>
      <p>Just testing after a server move..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Achmad Gozali</strong> &middot; <time datetime="2010-02-08T09:17:00+00:00">February 8, 2010 at 9:17 am</time></p>
      <p>thank you Peter!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sanz</strong> &middot; <time datetime="2010-02-16T14:32:00+00:00">February 16, 2010 at 2:32 pm</time></p>
      <p>Cute but that's a Chinese ceremony, not North Korean.  That big open space is Tienanmen Square <a href="http://en.wikipedia.org/wiki/Tiananmen_Square" rel="nofollow">http://en.wikipedia.org/wiki/Tiananmen_Square</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-02-16T15:52:00+00:00">February 16, 2010 at 3:52 pm</time></p>
      <p>You're right. I found that out a few days after making this post. And, man, that scares me. That's a North Korean level of hubris right there. I didn't know China was quite this bolshy.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Karmen Blake</strong> &middot; <time datetime="2010-03-04T06:29:00+00:00">March 4, 2010 at 6:29 am</time></p>
      <p>Here is a presentation I just gave to our local ruby group. It includes how to get started with RVM too. </p><p><a href="http://blog.dudeblake.com/2010/03/get-started-with-rails-3-and-rvm.html" rel="nofollow">http://blog.dudeblake.com/2010/03/get-started-with-rails-3-and-rvm.html</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
