---
title: A Fresh Overview of Rubinius
date: '2008-04-04'
author: Peter Cooper
author_slug: admin
post_id: 835
slug: a-fresh-overview-of-rubinius-835
url: "/a-fresh-overview-of-rubinius-835.html"
categories:
- elsewhere
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2008/04/rubiniusbenchmark2.jpg" width="355" height="327" alt="rubiniusbenchmark2.png"></p>
<p>Mathieu Martin has written <a href="http://programblings.com/2008/04/01/rubinius-for-the-layman-part-1-rubies-all-the-way-down/">a great, up to date overview</a> of <a href="http://rubini.us/">Rubinius</a>, a rapidly growing alternative Ruby implementation created by Evan Phoenix and now being developed by a large team (with significant financial help and manpower from Engine Yard).</p>
<p>Mathieu's overview explains what Rubinius is (a new Ruby implementation with a heavy focus on implementing Ruby in a subset of itself), examines the ideas behind the implementation, and presents some up to date(ish) benchmarks that show how Rubinius compares to MRI (Matz's Ruby Interpreter) so far. The benchmark results are very encouraging, and show Rubinius has taken some great leaps forward in the last several months.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Mathieu Martin</strong> &middot; <time datetime="2008-04-04T20:40:00+00:00">April 4, 2008 at 8:40 pm</time></p>
      <p>Hi! Just to clarify, my performance numbers in the article are from a build of around March 31st. What is not up to date is the LOC numbers in another part of the article.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>rue</strong> &middot; <time datetime="2008-04-05T04:03:00+00:00">April 5, 2008 at 4:03 am</time></p>
      <p>Aloha--the article is excellent! I wanted to point out, though, that while Engine Yard has been an absolutely superb sponsor, even going so far as hiring now six of us to work on Rubinius full-time, it is still very much a community project! "Developed by EY" may have the wrong connotations of being proprietary or closed-source :)  By last count, there is original code from around 150 individuals.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Simon</strong> &middot; <time datetime="2008-04-05T08:46:00+00:00">April 5, 2008 at 8:46 am</time></p>
      <p>Quite impressive that it sometimes performs better than MRI. Very interesting.</p><p>- Simon</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-04-05T10:42:00+00:00">April 5, 2008 at 10:42 am</time></p>
      <p>I've changed the way it's described a little to resolve the issue, rue :) Thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Lance Carlson</strong> &middot; <time datetime="2008-04-07T15:45:00+00:00">April 7, 2008 at 3:45 pm</time></p>
      <p>This is very encouraging. Keep up the good work guys!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
