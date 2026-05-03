---
title: 'Chronic 0.3.0 Released: Improved Natural Language Date/Time Parsing'
date: '2010-10-26'
author: Peter Cooper
author_slug: admin
post_id: 3938
slug: chronic-0-3-0-released-improved-natural-language-datetime-parsing-3938
url: "/chronic-0-3-0-released-improved-natural-language-datetime-parsing-3938.html"
categories:
- news
---

{{< rawhtml >}}
<p><img src="/assets/2010/10/chronic.png" width="86" height="92" alt="chronic.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;">Tom Preston-Werner has pushed out version 0.3.0 of <a href="http://github.com/mojombo/chronic/">Chronic</a>, the popular natural language date and time parsing library for Ruby. It's a significant release because the last was 0.2.3 back in July 2007! Grab it now with <span style="font-family: monospace;">gem install chronic</span></p>
<p>Despite the long time between releases, Chronic hasn't gone without attention. It's been <a href="http://github.com/mojombo/chronic/">sitting on GitHub</a> and attracting patches for years, but Tom (who's already pretty busy, y'know, <i>running GitHub</i>) has now decided to bundle it up and push it live.</p>
<p>What does 0.3.0 get you?</p>
<ul>
<li>Improved time-zone support</li>
<li>Handles "on" in phrases like "10am on Saturday"</li>
<li>Now ignores commas (which could throw it off before)</li>
<li>Supports "weekend" and "weekday"</li>
<li>Allows numeric timezone offsets (e.g. -0500)</li>
<li>Support for seasons</li>
<li>"a", "p", "am", and "pm" parsing</li>
<li>The typical bugfixes and low level improvements</li>
</ul>
<p>Chronic is basically a Ruby institution by now (I <a href="chronic-natural-date-parsing-for-ruby-229.html">first posted about it</a> in September 2006!) so check it out. But if you're still itching for other ways to work with dates and times, check out <a href="3-new-date-and-time-libraries-for-rubyists-3238.html">3 New Date and Time Libraries for Rubyists</a> from May 2010. <i>Tickle</i> is particular interesting as it allows you to parse natural language requests for <i>recurring</i> events rather than single times.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jan Friedrich</strong> &middot; <time datetime="2010-10-26T09:19:00+00:00">October 26, 2010 at 9:19 am</time></p>
      <p>And non of the libraries support a way to parse other other languages than English. Not even a general approach to support more than one language, all rules are hard coded.  :-(</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Just Do It</strong> &middot; <time datetime="2010-10-27T06:02:00+00:00">October 27, 2010 at 6:02 am</time></p>
      <p>Sounds like an excellent time to submit a patch.</p><p>JUST DO IT!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Drew Dara-Abrams</strong> &middot; <time datetime="2010-10-28T19:05:00+00:00">October 28, 2010 at 7:05 pm</time></p>
      <p>Great to see a new version. I hope this fixes the daylight savings time bug.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan Friedrich</strong> &middot; <time datetime="2010-11-03T07:41:00+00:00">November 3, 2010 at 7:41 am</time></p>
      <p>@JustDoIt: Sounds for me more like a complete rewrite (= a new lib) than a patch.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>nofxx</strong> &middot; <time datetime="2010-11-04T18:05:00+00:00">November 4, 2010 at 6:05 pm</time></p>
      <p>I did an experience with i18n of this (sweet) lib:</p><p><a href="http://github.com/nofxx/chronic18n" rel="nofollow">http://github.com/nofxx/chronic18n</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan Friedrich</strong> &middot; <time datetime="2010-11-05T11:17:00+00:00">November 5, 2010 at 11:17 am</time></p>
      <p>@nofxx: Cool idea. But I think word wise translation doesn't work for all cases because different languages uses a different sentence construction. For example "3 years ago" is in German "vor 3 Jahren" (years = Jahren, ago = vor).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>nofxx</strong> &middot; <time datetime="2010-11-06T19:27:00+00:00">November 6, 2010 at 7:27 pm</time></p>
      <p>@Jan: Yup, there's such problem in portuguese too, that's why it's a two step translate, first "high level" grammar with regex, then word replacement.<br>
Would you help me implement/try/test german?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan Friedrich</strong> &middot; <time datetime="2010-11-09T10:10:00+00:00">November 9, 2010 at 10:10 am</time></p>
      <p>@nofxx: Sounds practicable: "translating the complete phrase to correct English and then call chronic".</p><p>Unfortunately my free time is *very* spare at the moment and the near future, so I can't help so much. But if you explain the approach in detail (for example with test cases for Portuguese or another language) I would look at it, to see if it works with German.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Trey</strong> &middot; <time datetime="2010-11-12T15:45:00+00:00">November 12, 2010 at 3:45 pm</time></p>
      <p>Tom was joking about this Gem @ RubyConf yesterday.  He asked for a show of hands from anybody who knew about our used Chronic (got a good laugh). He also commented on the fact his talk started @ 4:20.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
