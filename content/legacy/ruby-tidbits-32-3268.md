---
title: 'Interesting Ruby Tidbits #32: DataMapper, Screencasts, IP Addresses, Euruko
  2010 and more'
date: '2010-06-01'
author: Peter Cooper
author_slug: admin
post_id: 3268
slug: ruby-tidbits-32-3268
url: "/ruby-tidbits-32-3268.html"
categories:
- compilations
- elsewhere
---

{{< rawhtml >}}
<p><img src="/assets/2010/06/rubies2.png" class="alignleft size-thumbnail bordered">The latest installment of my series of roundup posts, covering some of my latest findings in the world of all things Ruby. Why two "tidbits" posts in a row? Well, I'm radically redesigning/reworking Ruby Inside to be more interesting, both to you and me. This coupled with work on my new startup <a href="http://coder.io/">coder.io</a> have reduced my available time a lot but, rest assured, everything will be crazy on Ruby Inside again within a week or so :-)</p>
<p>For now, enjoy!</p>
<h3>DataMapper 1.0.0 RC3 Released</h3>
<p>The third release candidate of popular Ruby <span class="caps">ORM</span> DataMapper <a href="http://groups.google.com/group/datamapper/browse_thread/thread/bbb7b0dd08d82edf">has been released.</a> I've become a bit of a MongoMapper and Redis guy myself lately, but ORMs like DataMapper and Sequel provide great alternatives to the ever-popular ActiveRecord <span class="caps">ORM</span>. 1.0 is considered a major release for most projects nowadays in terms of stability and support, so seeing DataMapper edging closer to that landmark is encouraging.</p>
<h3>ThinkCode.TV Screencasts from Antonio Cangiano</h3>
<p><a href="http://thinkcode.tv/">ThinkCode.TV</a> is a new screencast company from Antonio Cangiano (of Ruby benchmarking fame). Antonio got in touch with me so I could review a couple of his screencasts. I haven't had time, but I've seen good words about them and the productions seem tight. Of most relevance to Rubyists will be <a href="http://thinkcode.tv/catalog/introduction-macruby/">Introduction to MacRuby</a> (recommended by Matt Aimonetti and Laurent Sansonetti of the MacRuby team!) and <a href="http://thinkcode.tv/catalog/guide-to-tdd/">Guide to <span class="caps">TDD</span></a>. There's also an <a href="http://thinkcode.tv/catalog/upgrading-rails-3/">upgrading to Rails 3</a> video if that's your cup of tea.</p>
<h3>Euruko 2010 Summaries</h3>
<p>Markus Prinz has been summarizing the goings on at Europe's premier Ruby conference, Euruko - this year being held in Poland. He has a round up of <a href="http://nuclearsquid.com/writings/euruko-day1.html">day one</a> and <a href="http://nuclearsquid.com/writings/euruko-day2.html">day two</a> including notes on the presentations. I plan to do a big roundup post of Euruko on Ruby Inside in the next couple of weeks, but this is great for now.</p>
<h3>RubyRow - Ruby Blog Advertising Network - Relaunch</h3>
<p>James Avery, the mastermind behind .Net's popular The Lounge ad network, has announced the relaunch of his <a href="http://rubyrow.net/">RubyRow</a> advertising network. RubyRow is the biggest advertising network in the Ruby space, covering blogs from RailsTips, Thoughtbot, Giles Bowkett, Dr Nic, Jamis Buck, Obie Fernandez, Geoffrey Grosenbach and… yes, Ruby Inside, Rails Inside, and RubyFlow.</p>
<p>If you have something to advertise to the Ruby world, head on over to <a href="http://rubyrow.net/">RubyRow.net</a> and get in touch with James. I'd love to see your logo on the sidebar here or on RubyFlow ;-) <em>(tip: RubyFlow is cheaper and the audience typically more technical, if that suits you better)</em></p>
<h3>Real World Ruby and Cassandra</h3>
<p>If you've been following the "NoSQL" debates lately, you might have heard of <a href="http://cassandra.apache.org/">Apache Cassandra</a>, a "highly scalable" distributed database system built around a column storage model. Despite Cassandra starting to become a household name with developers, it's often seen as being harder to get into than things like MongoDB and CouchDB, so Mike Subelsky has put together a blog post titled <a href="http://www.subelsky.com/2010/05/real-world-ruby-and-cassandra.html">Real World Ruby and Cassandra</a> to demonstrate how he uses Cassandra from Ruby, and what other pages you should read.</p>
<h3>IPAddress - Handle IPv4 and IPv6 Addresses from Ruby</h3>
<p><a href="http://github.com/bluemonk/ipaddress">IPAddress</a> is a new Ruby library by Marco Ceresa that goes beyond Ruby's "IPAddr" library and offers both powerful and easy handling of IP (v4 and v6) addresses from Ruby. It's fully object oriented and has some pretty extensive document with lots of examples. You can store IP addresses including a prefix (e.g. /24) or submask, determine the class of IP addresses, work with broadcast addresses, special formats (bits, IPv4→IPv6, long IP) and more. This is the sort of hard working cornerstone library that we could do with more of.</p>
<h3>The Difference Between Ruby Procs and Lambdas</h3>
<p>Alan Skorkin has written <a href="http://www.skorks.com/2010/05/ruby-procs-and-lambdas-and-the-difference-between-them/" title="And The Difference Between Them">Ruby Procs and Lambdas</a> which is a code heavy blog post that demonstrates what it says in its title. Alan's blog has been a common sight on the front page of Hacker News lately, and for good reason - he writes well and this post is no exception. You'll learn something from this.</p>
<h3>RubyRags.com (Ruby Clothing Site) For Sale</h3>
<p>Ryan Norbauer is selling his <a href="http://rubyrags.com/">RubyRags.com</a>, Ruby-related clothing site. In the last 2 years, it's taken in about $16K and fulfilment, etc, is handled by a third party. There's <a href="http://norbauer.com/notebooks/ideas/notes/rubyrags-shop-for-sale">more information relating to the sale.</a></p>
<h3>Phashion: A "Perceptual Hash" Library Wrapper</h3>
<p><a href="http://github.com/mperham/phashion">Phashion</a> is a Ruby wrapper around the open source <a href="http://phash.org/">pHash</a> library that provides "perceptual hashing" functionality. What's a perceptual hash? Well:</p>
<blockquote><p>A perceptual hash is a fingerprint of a multimedia file derived from various features from its content. Unlike cryptographic hash functions which rely on the avalanche effect of small changes in input leading to drastic changes in the output, perceptual hashes are "close" to one another if the features are similar.</p></blockquote>
<p>Interesting.</p>
<p>By the way, if you have a minute, drop over to <a href="http://coder.io">coder.io</a> and if it looks interesting, drop your e-mail in the box. It's very close to a beta launch and if you're into reading programming news like the above, you should get a lot out of it.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Dan Kubb</strong> &middot; <time datetime="2010-06-01T01:39:00+00:00">June 1, 2010 at 1:39 am</time></p>
      <p>@Peter: DataMapper is more than just an ORM. It maps ruby classes onto almost any datastore. Currently there's support for ~40 datastores, with new ones being added by the community. There are even Redis (<a href="http://github.com/whoahbot/dm-redis-adapter" rel="nofollow">http://github.com/whoahbot/dm-redis-adapter</a>) and Mongo (<a href="http://github.com/solnic/dm-mongo-adapter" rel="nofollow">http://github.com/solnic/dm-mongo-adapter</a>) adapters too.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-06-08T23:22:00+00:00">June 8, 2010 at 11:22 pm</time></p>
      <p>Just testing..</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
