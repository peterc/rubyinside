---
title: 'TweetStream: Use the Twitter Streaming API from Ruby'
date: '2009-09-25'
author: Peter Cooper
author_slug: admin
post_id: 2541
slug: tweetstream-use-the-twitter-streaming-api-from-ruby-2541
url: "/tweetstream-use-the-twitter-streaming-api-from-ruby-2541.html"
categories:
- cool
---

{{< rawhtml >}}
<p><img src="/assets/2009/09/twitter-stream.png" width="108" height="97" alt="twitter-stream.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"> A couple of weeks ago, popular micro-blogging service <a href="http://en.wikipedia.org/wiki/Twitter">Twitter</a> unveiled a beta "<a href="http://apiwiki.twitter.com/Streaming-API-Documentation">streaming API.</a>" Twitter's nature means they get hammered with polling requests so they've begun to experiment with the concept of <i>streaming</i> relevant data within a single HTTP request (in a <a href="http://en.wikipedia.org/wiki/Comet_%28programming%29">Comet</a> style). <a href="http://www.intridea.com/2009/9/22/tweetstream-ruby-access-to-the-twitter-streaming-api?blog=development">TweetStream</a> (or <a href="http://github.com/intridea/tweetstream">GitHub repo</a>) is a new Ruby library by Michael Bleigh to handle interacting with Twitter streams from Ruby.</p>
<p>TweetStream is available as a gem from both <a href="http://github.com/intridea/tweetstream">GitHub</a> and <a href="http://gemcutter.org/">Gemcutter</a> (which, incidentally, got a fresh design today) and installation instructions are given in Michael's <a href="http://www.intridea.com/2009/9/22/tweetstream-ruby-access-to-the-twitter-streaming-api?blog=development">blog post</a> about TweetStream. Once you're all installed, though, reading the live stream becomes as simple as:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">tweetstream</span><span class="punct">'</span>  

<span class="constant">TweetStream</span><span class="punct">::</span><span class="constant">Client</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="constant">TWITTER_USERNAME</span><span class="punct">,</span> <span class="constant">TWITTER_PASSWORD</span><span class="punct">).</span><span class="ident">sample</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">status</span><span class="punct">|</span>
  <span class="ident">puts</span> <span class="punct">"</span><span class="string"><span class="expr">[#{status.user.screen_name}</span>] <span class="expr">#{status.text}</span></span><span class="punct">"</span>
<span class="keyword">end</span>  </pre>
<p>Beyond basic functions, though, TweetStream also include <i>daemonization</i> features that allow you to create scripts that run in the background "out of the box." You could add these features yourself with the <a href="http://daemons.rubyforge.org/">daemons</a> library, sure, but having this at hand to quickly throw together Twitter scripts is pretty cool.</p>
<p><b><i>Other related stuff:</i></b> If you're more interested in using Twitter from Ruby generally, check out <a href="http://twitter.rubyforge.org/">John Nunemaker's Twitter library</a>. If you want to build a Twitter bot in Ruby, check out <a href="twibot-a-ruby-microframework-for-building-twitter-bots-1643.html">Twibot</a>. And, lastly, if you just want to follow some Rubyists on Twitter, check out <a href="http://rubylearning.com/blog/2008/10/29/50-rubyists-to-follow-on-twitter/">Satish Talim's list of 50+ Rubyists to Follow on Twitter</a>.</p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><em>[ad]</em> <img src="http://www.railsinside.com/wp-content/uploads/2009/09/lapsusss.png" width="79" height="42" alt="lapsusss.png" style="float:right; margin-left:12px;"> <b>Time Tracking without Timers:</b> <a href="http://www.lapsusapp.co.uk/" rel="nofollow"><b>Lapsus</b></a> <b>runs in the background and knows what project you're working on.</b> Find out how long that last project took without the hassle of updating a timer. <a href="http://www.lapsusapp.co.uk" rel="nofollow">Watch the screencast</a> or <a href="http://www.lapsusapp.co.uk" rel="nofollow">sign up for the Beta</a>.</p>
{{< /rawhtml >}}
