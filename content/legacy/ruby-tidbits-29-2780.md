---
title: 'Interesting Ruby Tidbits That Don’t Need Separate Posts #29'
date: '2009-11-10'
author: Peter Cooper
author_slug: admin
post_id: 2780
slug: ruby-tidbits-29-2780
url: "/ruby-tidbits-29-2780.html"
categories:
- compilations
- elsewhere
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2009/11/rubies2-150x150.png" alt="rubies2" title="rubies2" width="120" height="120" class="alignleft size-thumbnail wp-image-2773" style="float: left; margin-right: 12px; margin-bottom: 12px;">Welcome to the latest installment in the series of compilation posts summarizing some of my latest findings in the world of all things Ruby. Let's tackle those links..</p>
<h3>Alchemist: Easy Unit Conversion in Ruby</h3>
<p><a href="http://github.com/toastyapps/alchemist">Alchemist</a> is a new Ruby library that aims to take the pain out of performing translation with day to day units, such as miles, kilograms, kelvin, meters, and <a href="http://en.wikipedia.org/wiki/Becquerel">becquerels.</a> There are a few ways you can perform conversions such as explicitly with a method: <code>8.meters.to.miles</code> or inline: <code>10.kilometers + 1.mile</code>. The <a href="http://github.com/toastyapps/alchemist/blob/master/lib/alchemist.rb">library's source code</a> is quite something to look at - there are units I've never even heard of before.</p>
<h3>The Compleat Rubyist - An All-Star Ruby Training Event</h3>
<p>David A Black, of <a href="http://www.amazon.com/Well-Grounded-Rubyist-David-Black/dp/1933988657/?tag=rubyins-20">The Well Grounded Rubyist</a> fame, got in touch recently to promote his forthcoming <a href="http://thecompleatrubyist.com/">The Compleat Rubyist</a> training event. The instructors are David, Gregory Brown (of <a href="http://www.amazon.com/Ruby-Best-Practices-Gregory-Brown/dp/0596523009/?tag=rubyins-20">Ruby Best Practices</a> fame), and Jeremy McAnally (of, well, <a href="rubys-top-hitter-in-2008-jeremy-mcanally-1404.html">lots of fame</a>) and the event takes place on January 22-23, 2010 in Tampa, Florida. I initially wanted to do a series of interviews with the guys to help them spread the word but they'll come later (one word: <em>newborn</em>). Anyway, this is a great chance to learn a thing or two from three Ruby superstars.</p>
<h3>You're An Idiot For Not Using Heroku?</h3>
<p>In the dramatically titled <a href="http://railstips.org/2009/11/8/you-re-an-idiot-for-not-using-heroku">You're An Idiot For Not Using Heroku</a>, John Nunemaker relays how much fun he's been having with Ruby cloud hosting service <a href="http://heroku.com/">Heroku</a> which, you may recall, we <a href="heroku-gets-add-ons-serious-ruby-webapp-hosting-made-easy-2664.html">covered very recently</a> here on Ruby Inside.</p>
<h3>A First Look at Rails 3.0</h3>
<p>Dr Nic Williams has <a href="http://drnicwilliams.com/2009/11/03/first-look-at-rails-3-0-pre">put together a walkthrough of Rails 3.0.pre</a>, the embryonic version of the forthcoming Rails 3.0.</p>
<h3>JRuby 1.4 Released</h3>
<p>The latest significant release of JRuby, 1.4.0, <a href="http://groups.google.com/group/comp.lang.ruby/browse_thread/thread/1b630246f7f5c434">is now available!</a> <em>(linked to a newsgroup announcement as jruby.org is down at the time of writing)</em> The 1.4.0 release brings compatibility with Ruby 1.8.7p174, improved Java integration support, a Windows installer and native launcher, a new embedding framework, RubyGems 1.3.5, and a whole batch of bug fixes.</p>
<h3>Hacking Gems With GitHub and GemCutter</h3>
<p>Dr Nic Williams (who's proving rather popular in this post) asks: <em>"Ever used a rubygem, found a bug, and just wanted to quickly bust out the big guns and fix it quickly?</em> Surely, we all have.. so he's written <a href="http://drnicwilliams.com/2009/11/04/hacking-someones-gem-with-github-and-gemcutter/">Hacking someone's gem with github and gemcutter</a> to show us how to easily fork an existing gem, make our changes, and get it deployed on <a href="gemcutter-is-the-new-official-default-rubygem-host-2659.html">Gemcutter</a> <em>tout de suite.</em></p>
<h3>Building a Twitter Filter with Sinatra, Redis, and TweetStream</h3>
<p>Mirko Froehlich (a.k.a. DigitalHobbit) has written an awesomely in-depth <a href="http://www.digitalhobbit.com/2009/11/08/building-a-twitter-filter-with-sinatra-redis-and-tweetstream/">tutorial on how to build a "Twitter filter"</a> using Sinatra, Haml, jQuery, and some other funky tools. If you want to see the result, check out <a href="http://twatcher.com/">http://twatcher.com/</a></p>
<h3>The Official GitHub Command Line Tool</h3>
<p>I hadn't heard of it before, but Dr Nic Williams announced the release of <a href="http://github.com/defunkt/github-gem">version 0.4.0 of "github-gem",</a> an official GitHub <em>"command line helper for simplifying your GitHub experience."</em> If you're a GitHub user, this looks extremely useful. You can quickly deal with patches made on any forks of your project, fetch downstream changes, and so forth.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Trans</strong> &middot; <time datetime="2009-12-07T20:00:00+00:00">December 7, 2009 at 8:00 pm</time></p>
      <p>Hmm... Stick has been around for years. What does Alchemist bring to the table? A few more conversions perhaps. Would be nice to see more collaboration and less wheel reinvention.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
