---
title: 'Twibot: A Ruby Microframework for Building Twitter Bots'
date: '2009-03-16'
author: Peter Cooper
author_slug: admin
post_id: 1643
slug: twibot-a-ruby-microframework-for-building-twitter-bots-1643
url: "/twibot-a-ruby-microframework-for-building-twitter-bots-1643.html"
categories:
- cool
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2009/03/twitter.png" width="128" height="128" alt="twitter.png" style="float:left; margin-right:12px; margin-bottom:12px;"><a href="http://www.cjohansen.no/en/ruby/twibot_a_microframework_for_twitter_bots_in_ruby">Twibot</a> is a <a href="http://www.sinatrarb.com/">Sinatra</a>-esque "micro framework" for building <a href="http://twitter.com">Twitter</a> bots (somewhat like <a href="http://railstips.org/2008/11/14/sinatra-for-irc">Isaac is for IRC</a>).</p>
<p>If you're not familiar with Twitter, it's a lifestreaming-meets-microblogging type service with a few million users who constantly post about what they're doing or experiencing <em>(I find it's very much an acquired taste and makes little positive sense to anyone until they've used it a while, alas - a bit like beer or driving stick shift)</em>. If you want to learn more, Wikipedia has <a href="http://en.wikipedia.org/wiki/Twitter">a good summary</a>.</p>
<p>As well as individuals, there are a lot of automated services on Twitter, pumping out content from feeds, responding to people automatically, monitoring what people are saying, and so forth, and Twibot provides a great mechanism for you to more easily develop such services yourself.</p>
<p>Even though Twibot is installable as a gem, it relies on an edge version of Susan Potter's <a href="http://github.com/mbbx6spp/twitter4r/tree/master">twitter4r</a>, which you will need to grab from <a href="http://github.com/mbbx6spp/twitter4r/tree/master">its Github repository</a>. Once installed, however, Twibot will let you write stuff like this:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">twibot</span><span class="punct">'</span>

<span class="comment"># Receive messages, and tweet them publicly</span>
<span class="ident">message</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">message</span><span class="punct">,</span> <span class="ident">params</span><span class="punct">|</span>
  <span class="ident">post_tweet</span> <span class="ident">message</span>
<span class="keyword">end</span>

<span class="comment"># Respond to @replies if they come from the right crowd</span>
<span class="ident">reply</span> <span class="symbol">:from</span> <span class="punct">=&gt;</span> <span class="punct">[</span><span class="symbol">:cjno</span><span class="punct">,</span> <span class="symbol">:irbno</span><span class="punct">]</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">message</span><span class="punct">,</span> <span class="ident">params</span><span class="punct">|</span>
  <span class="ident">post_tweet</span> <span class="punct">"</span><span class="string">@<span class="expr">#{message.sender.screen_name}</span> I agree</span><span class="punct">"</span>
<span class="keyword">end</span>

<span class="comment"># Listen in and log public tweets</span>
<span class="ident">tweet</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">message</span><span class="punct">,</span> <span class="ident">params</span><span class="punct">|</span>
  <span class="constant">MyApp</span><span class="punct">.</span><span class="ident">log_tweet</span><span class="punct">(</span><span class="ident">message</span><span class="punct">)</span>
<span class="keyword">end</span></pre>
<p><strong><em>Do you use Twitter? If so, you can</em></strong> <a href="http://twitter.com/RubyInside"><strong><em>follow Ruby Inside at @RubyInside</em></strong></a><strong><em>.</em></strong></p>
{{< /rawhtml >}}
