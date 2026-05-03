---
title: 'The MOle: Spying inside your Rails applications'
date: '2007-04-12'
author: Peter Cooper
author_slug: admin
post_id: 457
slug: the-mole-spying-inside-your-rails-applications-457
url: "/the-mole-spying-inside-your-rails-applications-457.html"
categories:
- cool
- ruby-on-rails
- tools
---

{{< rawhtml >}}
<p><img width="324" vspace="4" hspace="4" height="239" border="1" title="mole.png" alt="Mole" src="/assets/2007/04/mole.jpg"></p>
<p><a href="http://liquidrail.com/2007/4/15/mole-plugin-inspect-the-rails">The MOle</a> is a Rails plugin developed by Fernand Galiana, Delynn Berry, and Ara Howard that allows you to monitor events occurring within your application in real time (without resorting to tailing logs). They've put together <a href="https://www.youtube.com/watch?v=L7JGB7QsAt8">a YouTube! video that demonstrates how MOle works</a> in real time.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Sandro</strong> &middot; <time datetime="2007-04-16T13:35:00+00:00">April 16, 2007 at 1:35 pm</time></p>
      <p>Donwloading.... :-)</p><p>Ehm... just a question: how about additional workload on the Ruby Interpreter ?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Fernand</strong> &middot; <time datetime="2007-04-17T16:28:00+00:00">April 17, 2007 at 4:28 pm</time></p>
      <p>Hi Sandro - Sure we are indeed intercepting requests to the server. The idea here is that you MOle your application for a few days/weeks after your release and then you turn it off.<br>
You can then turn off the MOle by setting MOLEABLE_APP = false.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jamie Flournoy</strong> &middot; <time datetime="2007-04-17T19:00:00+00:00">April 17, 2007 at 7:00 pm</time></p>
      <p>The link is broken and should go to <a href="http://liquidrail.com/2007/4/15/mole-plugin-inspect-the-rails/" rel="nofollow">http://liquidrail.com/2007/4/15/mole-plugin-inspect-the-rails/</a> instead.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-04-18T11:21:00+00:00">April 18, 2007 at 11:21 am</time></p>
      <p>Thanks, I've now fixed it. This is the second time their blog has changed links on something when I link to it.. Fernand, please try and stop it happening because all the people who link to you then get broken links, which will hurt your search rank, etc. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Fernand</strong> &middot; <time datetime="2007-04-19T03:37:00+00:00">April 19, 2007 at 3:37 am</time></p>
      <p>Doh !! Sorry Peter... Won't happen again...</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
