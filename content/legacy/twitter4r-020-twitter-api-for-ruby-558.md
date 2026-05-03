---
title: 'Twitter4R 0.2.0: Twitter API for Ruby'
date: '2007-07-17'
author: Hendy Irawan
author_slug: hendy-irawan
post_id: 558
slug: twitter4r-020-twitter-api-for-ruby-558
url: "/twitter4r-020-twitter-api-for-ruby-558.html"
categories:
- cool
- miscellaneous
- news
- nonsense
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2007/07/twitter4r.png"></p>
<p><a href="http://twitter4r.rubyforge.org/">Twitter4R</a> is a Ruby library to access Twitter API functionality developed by <a href="http://susanpotter.net/">Susan Potter</a>. <a href="http://twitter.com/">Twitter</a> itself is sort of social network with a differentiation: it allows you to send to and receive updates from your friends instantly.</p>
<p>The recently released major upgrade <a href="http://snakesgemscoffee.blogspot.com/2007/07/twitter4r-020-release.html">Twitter4R 0.2.0</a> offers significant improvements:</p>
<ul>
<li>100% coverage of official Twitter REST API</li>
<li>RSpec specifications with 100% code coverage</li>
<li>Cleaning and removal of previously inconsistent API</li>
</ul>
<p>Here's a simplified <a href="http://snakesgemscoffee.blogspot.com/2007/07/twitter4r-v020-messaging-api.html">example Twitter4R usage</a>:</p>
<pre>gem('twitter4r', '&gt;=0.2.0')
require('twitter')

client = Twitter::Client.new(:login =&gt; 'mylogin',
  :password =&gt; 'mypassword')
new_message = client.message(:post,
  'I am addicted to Twitter', 'myfriendslogin')</pre>
<p>To install it:</p>
<pre>gem install twitter4r</pre>
<p><em>Note: As an alternative, Twitter gem, <a href="twitter-gem-twitterize-your-ruby-application-498.html">as covered previously at Ruby Inside</a>, is also available.</em></p>
{{< /rawhtml >}}
