---
title: How to Schedule Tasks with Ruby
date: '2007-03-30'
author: Peter Cooper
author_slug: admin
post_id: 442
slug: how-to-schedule-tasks-with-ruby-442
url: "/how-to-schedule-tasks-with-ruby-442.html"
categories:
- elsewhere
- ruby-on-rails
- ruby-tricks
- tutorials
---

{{< rawhtml >}}
<p>Ilya Grigorik has written a article <a href="http://www.igvita.com/blog/2007/03/29/scheduling-tasks-in-ruby-rails/">demonstrating three different ways you can schedule tasks to run using Ruby</a>, including a simple thread based scheduler, a OpwnWFEru based scheduler, and a BackgrounDRB based scheduler. A notable omission is <a href="http://rails.co.za/articles/2006/06/03/using-railscron">RailsCron</a>, which provides another alternative for Rails users.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Eldon Alameda</strong> &middot; <time datetime="2007-03-30T09:11:00+00:00">March 30, 2007 at 9:11 am</time></p>
      <p>I believe that the author of RailsCron removed the project. If i recall correctly I believe he wrote that there were issues with the fact that RailsCron was threaded while Rails wasn't, and that not being able to control it well via capistrano were some of his main reasons. At the time he had written a new plugin that generated daemons (which could be controlled via Capistrano) and was recommending using BackgroundDRB for people that needed something more similar to RailsCron.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-03-30T14:07:00+00:00">March 30, 2007 at 2:07 pm</time></p>
      <p>Oh okay, that's useful to know!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>RSL</strong> &middot; <time datetime="2007-03-30T17:03:00+00:00">March 30, 2007 at 5:03 pm</time></p>
      <p>The daemons plugin is perfectly serviceable though. It's a bit, shall we say... "light" on the documentation but once you get the gist it makes a lot of sense.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://blog.fetmab.net/?p=54" rel="external nofollow" class="url">FEtMab - Die Browserspiele-Manufaktur</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
