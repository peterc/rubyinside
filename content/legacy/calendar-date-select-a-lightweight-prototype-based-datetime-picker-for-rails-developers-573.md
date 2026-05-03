---
title: 'Calendar Date Select: A Lightweight, Prototype-based Date/Time Picker for
  Rails Developers'
date: '2007-08-07'
author: Peter Cooper
author_slug: admin
post_id: 573
slug: calendar-date-select-a-lightweight-prototype-based-datetime-picker-for-rails-developers-573
url: "/calendar-date-select-a-lightweight-prototype-based-datetime-picker-for-rails-developers-573.html"
categories:
- miscellaneous
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2007/08/calendardateselect.jpg" height="249" width="177" border="1" hspace="4" vspace="4" alt="Calendardateselect"></p>
<p><a href="http://code.google.com/p/calendardateselect/">Calendar Date Select</a> is a new(ish) "date and time picker", developed by Tim Harper, designed primarily for developers to use in Rails applications. It uses the standard Prototype JavaScript library, and is easily installed as a Rails plugin:</p>
<blockquote><p>script/plugin install http://calendardateselect.googlecode.com/svn/tags/calendar_date_select</p></blockquote>
<p>Take a look at the <a href="http://www.restatesman.com/static/calendar">collection of demos</a> of the picker to see its full range.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Matthijs Langenberg</strong> &middot; <time datetime="2007-08-07T19:26:00+00:00">August 7, 2007 at 7:26 pm</time></p>
      <p>Looks useful to me, why is it actually ment to be used with Rails? It's just javascrip, right?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark Thomas</strong> &middot; <time datetime="2007-08-07T20:43:00+00:00">August 7, 2007 at 8:43 pm</time></p>
      <p>Kudos! It's about freakin' time someone created a Rails plugin, seeing as how there are so many standalone ones available. There's one that requires rails engines, but I've been trying to avoid that....</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brian Lee</strong> &middot; <time datetime="2007-08-08T04:57:00+00:00">August 8, 2007 at 4:57 am</time></p>
      <p>I'm currently using it for my site - works pretty well so far</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tim Harper</strong> &middot; <time datetime="2007-08-08T23:56:00+00:00">August 8, 2007 at 11:56 pm</time></p>
      <p>Matthijs,</p><p>There's a lot of people who use CalendarDateSelect just for the JavaScript component alone, and are having success with it.</p><p>You can checkout the latest version of the JavaScript / css here:</p><p><a href="http://calendardateselect.googlecode.com/svn/tags/calendar_date_select/public/" rel="nofollow">http://calendardateselect.googlecode.com/svn/tags/calendar_date_select/public/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hendy Irawan</strong> &middot; <time datetime="2007-08-10T06:47:00+00:00">August 10, 2007 at 6:47 am</time></p>
      <p>Very cool :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andy Martin</strong> &middot; <time datetime="2007-08-10T07:21:00+00:00">August 10, 2007 at 7:21 am</time></p>
      <p>Chris Petersen at the Assay Depot posted ActiveCalendar a while back that does a very similar thing.  I haven't had a chance to dig under the hood with your plugin but it is great to have some more options!  Thanks!</p><p>fyi - Active Calendar is at <a href="http://developer.assaydepot.com/?p=5" rel="nofollow">http://developer.assaydepot.com/?p=5</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tim Harper</strong> &middot; <time datetime="2007-08-10T20:32:00+00:00">August 10, 2007 at 8:32 pm</time></p>
      <p>ActiveCalendar is a great rails plugin.  It's the underlying JavaScript code which is the fundamental difference between CalendarDateSelect and ActiveCalendar.  The Dynarch Calendar JavaScript (ActiveCalendar) code has quite a few more features than CalendarDateSelect's prototype-based date picker.  However, Dynarch also comes with it's own proprietary framework and is almost 5 times the size of CalendarDateSelect's CSS+JS code!</p><p>If you are already using prototype, and you really only need a flexible Calendar Date Picker with the options of picking times, and running lightweight is important to you, Calendar Date Select is likely a perfect fit.  </p><p>However, if you value features like semantics, being able to drag the calendar, etc. and size/"page loading" speed is not important to you, Dynarch's calendar (ActiveCalendar) is a fantastic solution.</p><p>The project's home page has a link to ActiveCalendar (along with many other date pickers), with a comparison chart of features/size.</p><p>Tim</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
