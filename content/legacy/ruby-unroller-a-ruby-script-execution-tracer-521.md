---
title: 'Ruby Unroller: A Ruby script execution tracer'
date: '2007-06-09'
author: Peter Cooper
author_slug: admin
post_id: 521
slug: ruby-unroller-a-ruby-script-execution-tracer-521
url: "/ruby-unroller-a-ruby-script-execution-tracer-521.html"
categories:
- cool
- ruby-tricks
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2007/06/unrollernew.jpg" height="244" width="427" border="1" hspace="4" vspace="4" alt="Unrollernew"></p>
<p><a href="http://unroller.rubyforge.org/">Ruby Unroller</a> is an exciting tool developed by Tyler Rick that generates human readable execution traces of running Ruby scripts. It can display the code currently being executed by a script in real-time, as it's actually executed. This makes it a great tool for getting familiar with, say, the darkest depths of Rails, or for debugging troublesome scripts that rely on external Ruby libraries.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Mike Berrow</strong> &middot; <time datetime="2007-06-11T04:50:00+00:00">June 11, 2007 at 4:50 am</time></p>
      <p>Despite it saying "OS Independent" on <a href="http://unroller.rubyforge.org/" rel="nofollow">http://unroller.rubyforge.org/</a><br>
this does not work on Windows. It seems that the "termios" gem it needs is linux-specific. So don't bother to try install this (at this time) if you are on windows. Perhaps this dependency can be removed. The "colored" gem works on windows.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
