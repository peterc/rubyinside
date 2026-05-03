---
title: 'Twitter Gem: Twitterize Your Ruby Application'
date: '2007-05-18'
author: Hendy Irawan
author_slug: hendy-irawan
post_id: 498
slug: twitter-gem-twitterize-your-ruby-application-498
url: "/twitter-gem-twitterize-your-ruby-application-498.html"
categories:
- cool
- elsewhere
- news
- nonsense
- ruby-tricks
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2007/05/twitter-1.jpg" height="56" width="184" border="1" hspace="4" vspace="4" alt="Twitter-1"></p>
<p>You've heard of <a href="http://www.twitter.com/">Twitter</a>, an online service that allows you and your friends to communicate up-to-the-second by sending short messages. Twitter has built-in features to deliver the updates to your instant messaging account (such as <a href="http://talk.google.com/">Google Talk</a>) or to your cell phone. Yesterday we covered <a href="railsconf-updates-to-the-second-with-twitter-497.html">real-time Flash visualization of RailsConf twitters</a>.</p>
<p>Want to incorporate Twitter functionality into your own projects? Enter the <a href="http://twitter.rubyforge.org/">Twitter gem</a> by <a href="http://addictedtonew.com/about/">John Nunemaker</a>. Observe:</p>
<pre># to post an update to twitter
$ twitter post "posting from the twitter gem"

# to see you and your friends timeline
$ twitter timeline
</pre>
<p>The command line interface is very simple, and configuring it is easy using a YAML file. Of course, it also sports a Ruby API:</p>
<pre>twit.update('me got dizzy this time')
# Show your friends' status
twit.timeline(:friends).each do |s|
  puts s.text, s.user.name
end
</pre>
<p>Use RubyGems as usual to install it:</p>
<pre>gem install twitter --include-dependencies
</pre>
<p>Head on to <a href="http://twitter.rubyforge.org/">Twitter gem site</a> for more information.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>John Nunemaker</strong> &middot; <time datetime="2007-05-19T16:41:00+00:00">May 19, 2007 at 4:41 pm</time></p>
      <p>Thanks for the link. One note, the gem uses hpricot to parse the xml and there is an annoying bug that reared it's head in the 0.5+ versions (it doesn't like xml elements named text). That said, be sure to sudo gem install hpricot --source <a href="http://code.whytheluckystiff.net" rel="nofollow">http://code.whytheluckystiff.net</a> -v 0.4.86 and uninstall any hpricot versions 0.5+.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hendy Irawan</strong> &middot; <time datetime="2007-05-21T02:25:00+00:00">May 21, 2007 at 2:25 am</time></p>
      <p>Thank you John for your tip! :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Nunemaker</strong> &middot; <time datetime="2007-05-21T02:56:00+00:00">May 21, 2007 at 2:56 am</time></p>
      <p>I just pushed a new version of the gem today which negates the previous comment. You can now just sudo gem install twitter -y. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hendy Irawan</strong> &middot; <time datetime="2007-05-21T04:54:00+00:00">May 21, 2007 at 4:54 am</time></p>
      <p>Super thanks John :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Koen Van der Auwera</strong> &middot; <time datetime="2007-05-21T14:57:00+00:00">May 21, 2007 at 2:57 pm</time></p>
      <p><a href="http://shareomatic.com" rel="nofollow">Shareomatic!</a> uses the twitter gem for it's <a href="http://twitter.com/shareomatic" rel="nofollow">twittering</a> and it's works just perfect!</p><p>Good work!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hendy Irawan</strong> &middot; <time datetime="2007-05-22T01:41:00+00:00">May 22, 2007 at 1:41 am</time></p>
      <p>Thank you Mr. Koen Van der Auwera for sharing your experience. Yep, I fully agree John Nunemaker's work is awesome! :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
