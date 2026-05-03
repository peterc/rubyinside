---
title: 'Interesting Ruby Tidbits That Don’t Need Separate Posts #11'
date: '2007-11-30'
author: Peter Cooper
author_slug: admin
post_id: 663
slug: interesting-ruby-tidbits-that-dont-need-separate-posts-11-663
url: "/interesting-ruby-tidbits-that-dont-need-separate-posts-11-663.html"
categories:
- compilations
- cool
- miscellaneous
- ruby-on-rails
- ruby-tricks
- tools
- tutorials
---

{{< rawhtml >}}
<p><strong>Amazon EC2 (Elastic Compute Cloud) Control Library</strong></p>
<p><a href="http://amazon-ec2.rubyforge.org/">amazon-ec2</a> is a super slick library that makes it super-easy to control <a href="http://www.amazon.com/b?ie=UTF8&amp;node=201590011">Amazon EC2</a> instances in Ruby code. It also comes with a special shell "ec2sh" that gives you a much nicer (in my opinion) interface to control and manipulate EC2 instances than the usual command line tools provided by Amazon. The <a href="http://amazon-ec2.rubyforge.org/">documentation</a> for this is superb with examples of using all of the various methods it provides, ec2sh, and examples of EC2 control from Ruby and Rails apps.</p>
<p><strong>RubyWorks Production Stack on Amazon EC2</strong></p>
<p>Continuing with the Amazon EC2 theme, Nutrun <a href="http://nutrun.com/weblog/rubyworks-production-stack-on-amazon-ec2/">posts about rubyworks-ec2</a>, a set of Capistrano recipes and utilities to deploy the <a href="http://rubyworks.rubyforge.org/">Rubyworks Production Stack</a> (a complete Ruby and Rails stack) on Amazon EC2 instances. The stack includes Apache 2, HAProxy load balancer, Mongrel, monit, and a bunch of other useful tools. If you want a way to get a Rails / Ruby stack running on an EC2 instance in minutes, this is essential reading.</p>
<p><strong>Simple Geocoding in Ruby</strong></p>
<p>The <a href="http://cartographer.rubyforge.org/">Cartographer library</a> is an old-time favorite for doing geocoding from Rails applications. A developer with Assay Depot, however, decided that a more direct approach of querying Google for the results was necessary. The result is <a href="http://developer.assaydepot.com/?p=25">a 49 line module that can return latitude, longitude, address, street, and other geographical information</a> when provided with, say, a ZIP or a street address.</p>
<p><strong>Tutorial for Installing and Configuring Nginx and Rails on Ubuntu</strong></p>
<p>James O'Kelly has put together a comprehensive tutorial going through all of the stages necessary to i<a href="http://railsjitsu.com/installing-and-configuring-nginx-and-mongrel-for-rails">nstall and configure Nginx and Rails together</a> to run applications on an Ubuntu server. James' blog <a href="http://railsjitsu.com/">RailsJitsu.com</a> is definitely worth a look (and perhaps to subscribe to!) as he seems to have a knack for regularly putting together good Rails (and especially <a href="http://mephistoblog.com/">Mephisto</a>) focused posts.</p>
<p><strong>Presentation: Haml and Sass in 15 Minutes</strong></p>
<p><a href="http://haml.hamptoncatlin.com/docs/haml">Haml</a> is a markup language commonly used by Rails developers that makes it easy to produce well-formatted, valid XHTML in as few lines as possible. <a href="http://haml.hamptoncatlin.com/docs/sass">Sass</a> is similar, but for CSS (supporting nested rules, referencing parent rules, and lots of other time saving goodness). In "<a href="http://podcast.sdruby.com/2007/11/20/episode-038-haml-and-sass-in-15-minutes">Haml and Sass in 15 Minutes</a>", Patrick Crowley guides us through using these two technologies.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Dan</strong> &middot; <time datetime="2007-11-30T10:37:00+00:00">November 30, 2007 at 10:37 am</time></p>
      <p>Is it just me, or does anyone else think the amazon-ec2 library is a bit of a leaky abstraction?  The XML from Amazon is parsed using XmlSimple, and exposed through the programming interface; meaning all the code you write with the library is tightly coupled to Amazon's XML.  A change in the XML, and the dependent code could break.</p><p>I applaud the developers of the library, but perhaps another layer needs to be created that abstracts the XML away, so you deal with Ruby objects and Ruby-ish code.  (IMHO the straight translation from Amazon's XML to Ruby code currently results in some non-Ruby-ish looking code)  Changes in the XML structure should not break dependent code, except in cases where something is removed from the XML API.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>wear</strong> &middot; <time datetime="2007-12-03T07:47:00+00:00">December 3, 2007 at 7:47 am</time></p>
      <p>There is another good presentation on haml and sass, which is<br>
<a href="http://www.slideshare.net/wear/haml-and-sass" rel="nofollow">http://www.slideshare.net/wear/haml-and-sass</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
