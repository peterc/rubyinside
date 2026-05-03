---
title: 'relative_time_helpers Plugin: time_ago_in_words on Steroids'
date: '2007-06-11'
author: Hendy Irawan
author_slug: hendy-irawan
post_id: 523
slug: relative_time_helpers-plugin-time_ago_in_words-on-steroids-523
url: "/relative_time_helpers-plugin-time_ago_in_words-on-steroids-523.html"
categories:
- cool
- ruby-on-rails
- ruby-tricks
---

{{< rawhtml >}}
<p><img border="1" alt="From Basecamp's screenshot" src="/assets/2007/06/from_basecamp.gif"></p>
<p><a href="http://activereload.net/2007/5/17/displaying-nice-relative-dates">relative_time_helpers</a> is a straightforward, but very useful Rails plugin by <a href="http://techno-weenie.net/">Rick Olson</a> that formats timestamps to human-friendly relative dates. You're probably already using Rails' built-in <tt><a href="http://www.railsapi.org/actionview-helpers-datehelper-time_ago_in_words">time_ago_in_words</a></tt> helper in your applications, but Rick's <tt>relative_time</tt> gives even better results:</p>
<pre>&lt;%= relative_time(Time.now) %&gt;
# today
&lt;%= relative_time(1.day.ago) %&gt;
# yesterday
&lt;%= relative_time(1.day.from_now) %&gt;
# tomorrow
&lt;%= relative_time_span([Time.now, 5.days.from_now]) %&gt;
# May 17th - 22nd</pre>
<p>To install it:</p>
<pre>script/plugin install http://ar-code.svn.engineyard.com/plugins/relative_time_helpers</pre>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Dr J</strong> &middot; <time datetime="2007-06-11T16:59:00+00:00">June 11, 2007 at 4:59 pm</time></p>
      <p>I was just about to write this same type of plugin.  Thanks so much for saving me the trouble!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hendy Irawan</strong> &middot; <time datetime="2007-06-13T07:37:00+00:00">June 13, 2007 at 7:37 am</time></p>
      <p>Dear Dr J:</p><p>Yaay! I'm so happy for you... I do agree with you. It's probably one of the most directly-useful plugins that looks very simple on the surface  :-)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
