---
title: 'Interesting Ruby Tidbits That Don’t Need Separate Posts #23'
date: '2009-04-27'
author: Peter Cooper
author_slug: admin
post_id: 1716
slug: interesting-ruby-tidbits-that-don’t-need-separate-posts-23-1716
url: "/interesting-ruby-tidbits-that-don’t-need-separate-posts-23-1716.html"
categories:
- compilations
- elsewhere
- linux-specific
- news
- ruby-on-rails
- microsoft-windows
---

{{< rawhtml >}}
<h3>
<img src="/assets/2009/04/rubygems2.png" width="49" height="46" alt="rubygems.png" style="float:right; margin-bottom:12px; margin-left:12px;"> Open Gem: A RubyGems Plugin to Quickly Get Inside Gems</h3>
<p>Adam Sanderson has written an extremely useful RubyGems plugin called <a href="http://github.com/adamsanderson/open_gem/tree/master">open_gem</a>. It makes it really quick to inspect what's inside your gems, e.g.: <code>gem open rails</code>. You'll need to be running <a href="rubygems-132-now-with-plugins-1693.html">RubyGems 1.3.2</a> first.</p>
<h3>Testy - A New BDD Testing Framework</h3>
<p>Sure, we already have RSpec, but <a href="http://github.com/ahoward/testy/tree/master">Testy</a> is an intriguing new BDD testing framework by Ara T Howard. It's very minimalist. You don't need to learn(any.clever.dsls) and there are just two new method calls to learn. It produces machine readable results for continuous integration purposes and is generally very flexible and light. This has the potential to become popular.</p>
<h3>Phusion Passenger 2.2.2 Released - Important!</h3>
<p>Over the weekend, <a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/334996">Rack 1.0.0 was released</a> and.. all hell broke loose on certain deployments (RubyFlow, for one). Passenger 2.2.1 had its own 1.0.0-esque vendorized version of Rack that conflicted with the all new Rack 1.0.0 and Rails 2.3.2 applications suffered severely. Quick as ever, the Phusion team got together and <a href="http://blog.phusion.nl/2009/04/26/phusion-passenger-222-released/">released Passenger 2.2.2</a>. Not only the Rack-related bug fix but many Nginx related bugfixes too. Go grab it.</p>
<p><img src="/assets/2009/04/proxies.png" width="54" height="64" alt="proxies.png" style="float:right; margin-bottom:12px; margin-left:12px;"></p>
<h3>Ruby Proxies for Scale and Monitoring</h3>
<p>Over on Igvita, Ilya Grigorik (of AideRSS/PostRank fame) has put together <a href="http://www.igvita.com/2009/04/20/ruby-proxies-for-scale-and-monitoring/">a dual presentation and blog article on using Ruby proxies for scale, performance, and monitoring</a>. Solid, well presented stuff as all Igvita's posts tend to be. Many different types of proxying are covered with the prime demonstration being of an EventMachine based technique.</p>
<h3>
<span style="font-size: 12px; font-weight: normal;"><img src="/assets/2009/04/ubuntu.png" width="42" height="39" alt="ubuntu.png" style="float:right; margin-bottom:12px; margin-left:12px;"></span>Ruby and Rails Development on Ubuntu 9.04 using Ruby 1.8.6 (and VirtualBox)</h3>
<p>Nazar Aziz has written <a href="http://panthersoftware.com/articles/view/6">a guide to setting up a Ruby and Rails development environment</a> under Windows using VirtualBox, Ubuntu 9.04 (Jaunty), and Ruby 1.8.6.</p>
<h3>How to Clone TinyURL in 40 lines of Ruby Code</h3>
<p>A <a href="http://blog.saush.com/2009/04/clone-tinyurl-in-40-lines-of-ruby-code/">walkthrough of how to implement a TinyURL service</a> in 40 lines of Ruby code, thanks to <a href="http://sinatrarb.com/">Sinatra</a>.</p>
{{< /rawhtml >}}
