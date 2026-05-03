---
title: Rails 2.2 Released – 27 Links and Resources To Get You Going
date: '2008-11-22'
author: Peter Cooper
author_slug: admin
post_id: 1354
slug: rails-22-released-27-links-and-resources-to-get-you-going-1354
url: "/rails-22-released-27-links-and-resources-to-get-you-going-1354.html"
categories:
- compilations
- ruby-on-rails
---

{{< rawhtml >}}
<p><a href="http://railslogo.com/"><img src="/assets/2008/11/rails22.png" width="140" height="80" alt="rails22.png" style="float:left; margin-right:12px; margin-bottom:12px;"></a>Ruby's most popular Web application framework, <a href="http://www.rubyonrails.org/">Ruby on Rails</a>, takes another giant step today with <a href="http://weblog.rubyonrails.org/2008/11/21/rails-2-2-i18n-http-validators-thread-safety-jruby-1-9-compatibility-docs">the release of Rails 2.2!</a> It follows on just five months after Rails 2.1, but offers even more significant improvements, particularly in the areas of compatibility, internationalization, and documentation. Read David Heinemeier Hansson's <a href="http://weblog.rubyonrails.org/2008/11/21/rails-2-2-i18n-http-validators-thread-safety-jruby-1-9-compatibility-docs">release post</a> for a quick overview.</p>
<p>Ruby Inside's sister site, <a href="http://www.railsinside.com/">Rails Inside</a>, was launched alongside Rails 2.1 in June, and would, you'd think, be the ideal place for a post like this, but no. Rails is very significant to the Ruby world as a whole, so you'll still get the biggest of the biggest Rails announcements here on Ruby Inside! If you want more regular Rails-only news, however, go and subscribe to <a href="http://www.railsinside.com/">Rails Inside</a> (<a href="http://feeds.feedburner.com/RailsInside">RSS feed</a> or <a href="http://www.feedburner.com/fb/a/emailverifySubmit?feedId=2118199&amp;loc=en_US">e-mail subscription</a>).</p>
<p>As is typical for a big release, we've pooled together a ton of excellent resources, links, and what not, to help you get fully into the Rails 2.2 mindset. So if you've got Rails 2.2 running already or if you're just investigating what it could do for you, read on and investigate some of these resources.</p>
<h3>General Documentation and Guides</h3>
<p><strong>Rails 2.2 Release Notes -</strong> A very solid <a href="http://guides.rubyonrails.org/2_2_release_notes.html">set of release notes for 2.2</a> with basic coverage of the new features (with short code examples and links) as well as a list of deprecated features. They were compiled by Ruby / Rails Inside's very own Mike Gunderloy!</p>
<p><strong>Upgrading RubyGems to 1.3.x -</strong> Depending on your setup, Rails 2.2 may demand that you upgrade to RubyGems 1.3.x. This is not as easy as it might usually be, however. Mike Gunderloy <a href="http://afreshcup.com/2008/10/25/rails-212-and-22rc1-update-your-rubygems/">gives some tips</a> in case you get stuck.</p>
<p><strong>Rails Security Guide -</strong> Steer clear of security issues in your Rails 2.2 applications by reading the <a href="http://guides.rubyonrails.org/security.html">Ruby on Rails Security Guide</a>. Who said Rails has poor documentation? This is incredible!</p>
<p><img src="/assets/2008/11/envycastrails22.png" width="109" height="68" alt="envycastrails22.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"><strong>Rails 2.2 Screencast -</strong> Gregg Pollack and Jason Seifer of Rails Envy put together <a href="http://envycasts.com/products/ruby-on-rails-22-screencast">a very solid Rails 2.2 screencast.</a> It costs $9, but it covers a lot of ground over 44 minutes - learn about etags, connection pooling, new enumerable methods, new test helpers, and more.</p>
<p><strong>Rails 2.2 - What's New -</strong> In association with EnvyCasts, Carlos Brando and Carl Youngblood present <a href="http://envycasts.com/products/ruby-on-rails-22-pdf">Rails 2.2 - What's New</a>, a 118 page PDF covering all of the changes and additions to Rails 2.2. It's available in a <a href="http://envycasts.com/products/ruby-on-rails-22-package-deal">package deal</a> with the screencast (above) too.</p>
<p><strong>InfoQ's Glance -</strong> InfoQ's Mirko Stocker <a href="http://www.infoq.com/news/2008/11/rails-22">takes a quick glance</a> at some of Rails 2.2's new features.</p>
<h3>New Features</h3>
<p><strong>Thread Safety -</strong> Rails 2.2 is now "thread safe." In October, Pratik Naik <a href="http://m.onkey.org/2008/10/23/thread-safety-for-your-rails">wrote a summary of why this is a big deal</a> as well as some gotchas (basically, don't use class variables, use mutexes, etc.) Charles Nutter has also written <a href="http://blog.headius.com/2008/08/qa-what-thread-safe-rails-means.html">What Thread-safe Rails Means</a> which answers several pertinent questions.</p>
<p><strong>Internationalization -</strong> The Rails Internationalization effort has its own homepage at <a href="http://rails-i18n.org/">http://rails-i18n.org/</a> which features lots of links to how-tos, tips, documentation, and demos. They also have <a href="http://groups.google.com/group/rails-i18n">a Google group / mailing list</a> where you can get help, make suggestions, etc.</p>
<p><strong>Basic Language Internationalization -</strong> It's a little old, but <a href="http://almosteffortless.com/2008/07/21/simple-localization-in-rails-22/">Simple Localization in Rails 2.2</a> gives a very quick, code-driven example of how basic internationalization works in Rails 2.2 (some of the set up is easier now, but it mostly applies).</p>
<p><strong>Localization / Internationalization Demo App -</strong> Clemens Kofler has put together <a href="http://i18n-demo.phusion.nl/">a demo app that shows off some of Rails 2.2's internationalization and localization features.</a> If being knee deep in code is the best way for you to learn, jump in!</p>
<p><strong>Layouts for ActionMailer -</strong> As of Rails 2.2, you can now <a href="http://ryandaigle.com/articles/2008/9/7/what-s-new-in-edge-rails-mailer-layouts">use layouts in your ActionMailer views</a>.</p>
<p><strong>Connection Pooling -</strong> The <a href="http://ryandaigle.com/articles/2008/9/7/what-s-new-in-edge-rails-connection-pools">connection pooling</a> in Rails 2.2 allows Rails to distribute database requests across a pool of database connections. This can cause less lockups. In collaboration with a non-blocking MySQL driver, serious performance increases could result in certain situations.</p>
<p><strong>Specify Join Table Conditions with Hashes -</strong> Do you need to run a find (or similar) query across a join? Now you can <a href="http://ryandaigle.com/articles/2008/7/7/what-s-new-in-edge-rails-easy-join-table-conditions">just specify the conditions for the joined tables in a hash</a>, much like local tables conditions!</p>
<p><strong>Limited Resource Routes -</strong> You can now <a href="http://afreshcup.com/2008/11/12/rails-22-change-limited-resource-routes/">limit <em>map.resources</em> to creating certain methods</a>. For example, you might not want <em>destroy</em> or <em>index</em> methods - you can now specify these with <em>:only</em> and <em>:except</em>.</p>
<p><strong>Memoization -</strong> Stop rolling your own memoization in Rails apps. Clemens Kofler <a href="http://www.railway.at/articles/2008/09/20/a-guide-to-memoization">demonstrates Rails 2.2's newly rolled-in memoization features</a>. It's just a single method! If you have a view that calls on a calculated attribute often, this will give you some serious performance gains.</p>
<p><strong>Custom Length Tokenizer for Validations -</strong> You can now specify <a href="http://ryandaigle.com/articles/2008/7/7/what-s-new-in-edge-rails-custom-length-validation-tokenizer">a tokenizer of your own construction for <em>validates_length_of</em> validations.</a></p>
<p><strong>Array#second through Array#tenth -</strong> If you're a bad programmer, you can now demonstrate it to the world by using <a href="http://github.com/rails/rails/commit/22af62cf486721ee2e45bb720c42ac2f4121faf4">the new Array#second, Array#third, Array#fourth, and so forth, methods.</a> I've put it in my calendar to look for open source Rails apps using <em>Array#seventh</em> in six months time and to call them out on Rails Inside ;-)</p>
<p><em>Note: This list only takes into account some of the new features in Rails 2.2. There are a lot more! Read the release notes and the Rails 2.2 - What's New PDF to get the full picture.</em></p>
<h3>Miscellaneous</h3>
<p><strong>restful-authentication-i18n -</strong> Want an authentication plugin for Rails 2.2 that supports internationalization? Take a look at <a href="http://github.com/dcrec1/restful-authentication-i18n/tree/master">result-authentication-i18n</a>!</p>
<p><strong>Barebones Apps -</strong> Check out Rails Inside's <a href="http://www.railsinside.com/elsewhere/100-7-barebones-rails-apps-to-kick-start-your-development-process.html">7 Barebones Rails Apps to Kick Start Your Development Process</a>.</p>
<p><strong>Deploying on JBoss -</strong> You can now <a href="http://www.railsinside.com/deployment/156-jboss-on-rails-deploying-rails-apps-to-a-jboss-app-server.html">easily deploy a Rails app to a JBoss server</a>. With Rails 2.2's significantly improved JRuby support, this makes rolling out Rails apps in the enterprise a breeze!</p>
<p><strong>Installing Rails on Ubuntu Hardy Heron -</strong> Simon St Laurent has put together two Rails useful installation videos. One for <a href="http://broadcast.oreilly.com/2008/11/installing-rails-on-ubuntu-har.html">servers</a>, and one for the <a href="http://broadcast.oreilly.com/2008/11/installing-rails-on-hardy-hero.html">desktop</a>.</p>
<p><strong>REST for Rails 2 -</strong> Are you still in Rails 1.x land or not using REST at all? Would you like to? Geoffrey Grosenbach has put together <a href="http://peepcode.com/products/rest-for-rails-2">a screencast showing you how it should be done.</a> <em>(Disclaimer: Peepcode is a sponsor of Ruby Inside.)</em></p>
<p><strong>A Better Rails Logo -</strong> <em><span style="font-style: normal;">The</span></em> <a href="http://railslogo.com/"><em><span style="font-style: normal;">Rails Logo</span></em></a> <em><span style="font-style: normal;">(as used at the head of this post) was created by Kevin Milden and is distrubuted under the</span></em> <a href="http://creativecommons.org/licenses/by-nd/3.0/"><em><span style="font-style: normal;">BY-ND Creative Commons Licence</span></em></a><em><span style="font-style: normal;">. This makes it <a href="david-heinemeier-hansson-says-no-to-use-of-rails-logo-567.html">a lot cooler than the "official" Rails logo which is trademarked</a> and, well, you can't use without getting approval from the top.</span></em></p>
<p><em>Got more? Leave a comment below. On posts like this, the comments get a lot of clicking love from readers eager to learn more - so feel free to promote your own Rails 2.2 related stuff :-)</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Dante Regis</strong> &middot; <time datetime="2008-11-22T06:33:00+00:00">November 22, 2008 at 6:33 am</time></p>
      <p>Great resource! Really useful links! Thank you very much.</p><p>But weren't gem dependencies a feature of Rails 2.1?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-11-22T06:35:00+00:00">November 22, 2008 at 6:35 am</time></p>
      <p>D'oh! You're right - thanks. I've been using edge too long :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Heiko Webers</strong> &middot; <time datetime="2008-11-22T10:50:00+00:00">November 22, 2008 at 10:50 am</time></p>
      <p>Thanks for mentioning the security guide. I've also done a compact PDF: <a href="http://www.rorsecurity.info/the-book/" rel="nofollow">http://www.rorsecurity.info/the-book/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Geoffrey Grosenbach</strong> &middot; <time datetime="2008-11-22T16:30:00+00:00">November 22, 2008 at 4:30 pm</time></p>
      <p>A last-minute commit removed sixth through tenth and added forty_two.</p><p>So you may have a difficult time with your contest, Peter!</p><p><a href="http://github.com/rails/rails/commit/e50530ca3ab5db53ebc74314c54b62b91b932389" rel="nofollow">http://github.com/rails/rails/commit/e50530ca3ab5db53ebc74314c54b62b91b932389</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-11-22T16:38:00+00:00">November 22, 2008 at 4:38 pm</time></p>
      <p>Oh, man! :) Fine, fourth it is. Admittedly, that'd be slightly less of a code smell, but I think it'll count.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Radar</strong> &middot; <time datetime="2008-11-22T23:44:00+00:00">November 22, 2008 at 11:44 pm</time></p>
      <p>restful-authentication-i18n is mis-spelt as result-authentication-i18n.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alex</strong> &middot; <time datetime="2008-11-23T07:02:00+00:00">November 23, 2008 at 7:02 am</time></p>
      <p>Array#second through Array#tenth </p><p>it isn't the feature of the Rails2.2</p><p>&gt;&gt; arr = [1,2,3,4,5,6,7,8,9,10]<br>
=&gt; [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]<br>
&gt;&gt; arr.first<br>
=&gt; 1<br>
&gt;&gt; arr.second<br>
=&gt; 2<br>
&gt;&gt; arr.third<br>
=&gt; 3<br>
&gt;&gt; arr.fourth<br>
=&gt; 4<br>
&gt;&gt; arr.fifth<br>
=&gt; 5<br>
&gt;&gt; arr.sixth<br>
NoMethodError: undefined method `sixth' for [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]:Array<br>
	from (irb):7</p><p>it's Rails edge feature</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-11-23T12:07:00+00:00">November 23, 2008 at 12:07 pm</time></p>
      <p>Alex: It was, but it was changed at the last minute. See Geoffrey's comment above.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
