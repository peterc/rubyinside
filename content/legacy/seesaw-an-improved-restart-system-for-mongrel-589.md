---
title: 'Seesaw: An Improved Restart System for Mongrel'
date: '2007-08-25'
author: Peter Cooper
author_slug: admin
post_id: 589
slug: seesaw-an-improved-restart-system-for-mongrel-589
url: "/seesaw-an-improved-restart-system-for-mongrel-589.html"
categories:
- miscellaneous
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2007/08/seesaw2.jpg" height="141" width="268" border="1" hspace="4" vspace="4" alt="Seesaw2"></p>
<p>Most Rails developers will be familiar with *** ****'s <a href="http://mongrel.rubyforge.org/">Mongrel</a>, a great HTTP library used by most Rails developers to either test or deploy their applications (it's also pretty great for building your own basic HTTP handlers too, but I digress).<br>
Sometimes when restarting applications after code updates, some requests can be "lost" in the whole process, particularly in high-traffic environments. <a href="http://synaphy.com.au/2007/8/20/seesaw">Seesaw</a>, developed by Max Muermann and Matt Allen, however, resolves this problem by restarting your mongrel processes one by one so that availability is ensured. Seesaw is available as a gem (gem install seesaw), although <a href="http://synaphy.com.au/2007/8/20/seesaw">this blog post</a> is essential reading to learn about integration with Nginx and Apache.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Carl Mercier</strong> &middot; <time datetime="2007-08-26T02:23:00+00:00">August 26, 2007 at 2:23 am</time></p>
      <p>I can't believe it!  I just implemented the -exact same thing- and I was about to release it to the world on Monday.  Looks like somebody beat me to it :)?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Carl Mercier</strong> &middot; <time datetime="2007-08-26T02:43:00+00:00">August 26, 2007 at 2:43 am</time></p>
      <p>After reading a little more about Seesaw, I can say that their approach is more robust than mine, so my last comment was wrong, my solution is not the exact same thing although the results are similar.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kirk Haines</strong> &middot; <time datetime="2007-08-27T03:23:00+00:00">August 27, 2007 at 3:23 am</time></p>
      <p>Just wantd to throw out there that Swiftiply, as of the 0.6.1 release, also addresses part of this by providing redeployable requests.  If the backend goes down before returning a response, the request can be redeployed to a different backend.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Carl Mercier</strong> &middot; <time datetime="2007-09-07T15:15:00+00:00">September 7, 2007 at 3:15 pm</time></p>
      <p>@kirk: that sounds like a great idea!  Does it detect if Mongrel is down or it will time out after x number of seconds?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Carl Mercier</strong> &middot; <time datetime="2007-09-07T17:59:00+00:00">September 7, 2007 at 5:59 pm</time></p>
      <p>Here's my hack for those who might be interested:</p><p><a href="http://blog.carlmercier.com/2007/09/07/a-better-approach-to-restarting-a-mongrel-cluster/" rel="nofollow">http://blog.carlmercier.com/2007/09/07/a-better-approach-to-restarting-a-mongrel-cluster/</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
