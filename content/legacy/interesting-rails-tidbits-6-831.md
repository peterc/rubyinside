---
title: 'Interesting Rails Tidbits #6'
date: '2008-03-30'
author: Peter Cooper
author_slug: admin
post_id: 831
slug: interesting-rails-tidbits-6-831
url: "/interesting-rails-tidbits-6-831.html"
categories:
- compilations
- ruby-on-rails
---

{{< rawhtml >}}
<p><big><strong>Getting Started With Rails 2.0</strong></big></p>
<p>Craig Webster has put together a tutorial called <a href="http://barkingiguana.com/2008/03/24/getting-started-with-rails-20">Getting Started With Rails 2.0</a> that does pretty much what it says in the title. Craig demonstrates how to start a project, get it up and running, use version control, put your project into a Git repository, and create models, views and controllers. Craig is also involved with the <a href="http://scotlandonrails.com/tutorial">charity tutorial day</a> at Scotland on Rails on April 3rd.</p>
<p><big><strong>Custom Resource Name Plugin</strong></big></p>
<p>Carlos Brando has developed <a href="http://www.nomedojogo.com/custom-resource-name-plugin/">a Rails plugin that enables you to add "aliases for your routes."</a> This is useful, he says, if you're developing a Rails application targeting a non English-speaking market and want to have the URLs appear in the native language.</p>
<p><big><strong>mod_rails Coming Soon?</strong></big></p>
<p><img src="/assets/2008/03/mod-rails.jpg" width="394" height="301" alt="mod_rails.png"></p>
<p>A Dutch company called <a href="http://www.phusion.nl/">Phusion</a> has been working on a product called Passenger, which they are dubbing as being an attempt at a "<a href="http://www.modrails.com/">mod_rails</a>." It seems to be early days, and you can't get hold of the technology yet, but in their screencast they demonstrate how you can install their Apache module and then have Rails applications up and running within minutes. Hopefully it'll be open source (to some level or another) and customizable to support non Rails applications (Merb apps, for example), in which case it might be able to replace <a href="http://switchpipe.org/">SwitchPipe</a>, which is hosting all of my Ruby-powered apps now :)</p>
<p><big><strong>Big Name Companies Using Rails(TM)</strong></big></p>
<p>Obie Fernandez has a go at putting together <a href="http://blog.obiefernandez.com/content/2008/03/big-name-compan.html">a list of "big name companies" who are using Ruby on Rails</a>. There are also quite a few comments with other suggestions. This list could come in handy if you need to convince a client of Rails' popularity in the "enterprise."</p>
<p><big><strong>Gartner Claims 4 Million Rails Developers By 2013</strong></big></p>
<p>Rather incredibly, Gartner, one of the world's biggest information and technology research firms, <a href="http://blogs.zdnet.com/enterprisealley/?p=122">speculates that by 2013 there will be approximately 4 million Rails developers</a>. Wow!</p>
<p><big><strong>Send Text Messages From Rails with SMS Fu</strong></big></p>
<p>Brendan Lim has put together a Rails plugin called <a href="http://brendanlim.com/2008/2/28/send-text-messages-from-rails-with-sms-fu">SMS Fu</a> that makes it ridiculously easy to send text messages to US-based cellphones from your Rails applications.</p>
<p><big><strong>A Quick Look at UltraSphinx</strong></big></p>
<p>James Golick has put together <a href="http://jamesgolick.com/2008/3/3/plugins-i-ve-known-and-loved-3-ultrasphinx">a quick guide to the Ultrasphinx search plugin</a> for Rails.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Gen Du</strong> &middot; <time datetime="2008-03-30T20:14:00+00:00">March 30, 2008 at 8:14 pm</time></p>
      <p>That Gartner estimate is a stupid shill for FiveRuns. It already claims there were 500,000 hobbyist Ruby programmers in 2006. Were there even 500,000 people who had heard of Ruby?</p><p>FiveRuns is the poster child for selling useless "enterprise" Ruby products. Monit and Runit were fine long before FiveRuns came around with their paid "advisory boards" and open bars and enterprise sales teams.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2008-03-30T20:17:00+00:00">March 30, 2008 at 8:17 pm</time></p>
      <p>Hi Peter. I'm from Phusion. :)</p><p>Passenger is actually not in its early days. It has already been extensively beta tested, and stress tested under simulated environments. Our beta testers include some Rails core team members.</p><p>We're very, very close a 1.0.1 release now. Right now, we're mostly just awaiting test results from one of the worlds largest Rails hosting companies, and from one of the world's largest Rails websites (we can't name them without their permission, sorry).</p><p>So you can expect the first release to be a quality release. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>greywalker</strong> &middot; <time datetime="2008-03-31T13:35:00+00:00">March 31, 2008 at 1:35 pm</time></p>
      <p>I had to laugh at that Gartner 'speculation'. We definitely need more organizations which can make outrageous claims in exchange for money. They are an endless source of amusement.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>j4s0n</strong> &middot; <time datetime="2008-03-31T14:12:00+00:00">March 31, 2008 at 2:12 pm</time></p>
      <p>Man, that Custom Resource Name Plugin was so late for 2 weeks. I've been scratching my head to have something like that on an app i'm working on.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
