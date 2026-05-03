---
title: Building OAuth Compliant Twitter Related Apps in Ruby (with Rails or Sinatra)
date: '2009-03-24'
author: Peter Cooper
author_slug: admin
post_id: 1665
slug: twitter-oauth-ruby-rails-sinatra-1665
url: "/twitter-oauth-ruby-rails-sinatra-1665.html"
categories:
- elsewhere
- miscellaneous
- ruby-on-rails
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2009/03/twitterauth.jpg" width="88" height="90" alt="twitterauth.jpg" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"><a href="http://twitter.com/">Twitter</a> - the lifestreaming-meets-microblogging social site - has exploded in the last year and lots of applications have been developed that can take advantage of Twitter accounts. The downside is that many have required users to put their own Twitter username and password credentials into the third party apps.. a security minefield!</p>
<p>Luckily, Twitter has recently implemented <a href="http://oauth.net/">OAuth</a>, an open protocol that allows third parties to gain authorized access to APIs without giving up all of your credentials (you basically "approve" them to gain access on an ad-hoc basis). And.. there are already two options for rapidly putting together Ruby applications that can take advantage of the new OAuth feature to roll out secure, third party Twitter apps: <strong>TwitterAuth</strong> and <strong>Sinitter</strong>.</p>
<h3>TwitterAuth: The Rails Approach</h3>
<p><a href="http://github.com/mbleigh/twitter-auth/tree/master">TwitterAuth</a> is a Rails plugin by Michael Bleigh (of Intridea) that provides an authentication stack for Rails that relies upon Twitter. It can deal with both OAuth and regular HTTP POST, although the former is preferable for the reasons hopefully made clear above ;-) Note that the <em>primary</em> focus of TwitterAuth is to just provide an authentication stack that's built off of Twitter (Michael refers to it as a "Twitter Connect" for Rails).</p>
<p>Michael has put together <a href="http://intridea.com/2009/3/23/twitter-auth-for-near-instant-twitter-apps">a great run through of how to install and use the plugin</a> to build a simple third party Twitter app in several minutes. It's a must read.</p>
<p>TwitterAuth seems to rely on the <a href="http://oauth.rubyforge.org/">Ruby OAuth library</a> (which you might choose to use separately, if you want to really get deep and dirty).</p>
<h3>Sinitter: The Sinatra Approach</h3>
<p><a href="http://github.com/moomerman/sinitter/tree/master">Sinitter</a> provides a quick, lightweight solution to rolling out an OAuth powered Twitter app by using the <a href="http://www.sinatrarb.com/">Sinatra</a> DSL / micro-framework / library (or whatever one decides to call it). The majority of the app bakes down <a href="http://github.com/moomerman/sinitter/blob/f9380db1c40e85be39161a7ca8742bd7b4904787/sinitter.rb">to just one file</a>.</p>
<p>Sinitter relies on the <a href="http://github.com/moomerman/twitter_oauth/tree/master">Twitter OAuth library</a> - a REST API client library for Ruby. If you want to try rolling out an OAuth powered Twitter app in, say, Ramaze, this is probably where you'd want to start instead.</p>
<p><em>If you're interested in a Ruby framework for building Twitter bots,</em> <a href="twibot-a-ruby-microframework-for-building-twitter-bots-1643.html"><em>check out Twibot</em></a> <em>- which we wrote about just a week ago.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>awesome</strong> &middot; <time datetime="2009-03-26T05:04:00+00:00">March 26, 2009 at 5:04 am</time></p>
      <p>fekja! awesome! I was looking in to OAuth a while back for fun... now I really need something like this for a project. Good to see it's still alive and kickin'</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonathan Nelson</strong> &middot; <time datetime="2009-04-03T13:58:00+00:00">April 3, 2009 at 1:58 pm</time></p>
      <p>I just completed full integration of Twitter OAuth on my site. Very well done Michael! Thank you for your contributions.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
