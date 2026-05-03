---
title: 'DHH’s RailsConf 2010 Keynote Video: A Justification of Rails 3.0'
date: '2010-06-10'
author: Peter Cooper
author_slug: admin
post_id: 3325
slug: dhhs-railsconf-2010-keynote-video-a-justification-of-rails-3-0-3325
url: "/dhhs-railsconf-2010-keynote-video-a-justification-of-rails-3-0-3325.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><object width="560" height="340"><param name="movie" value="http://www.youtube.com/v/b0iKYRKtAsA&amp;hl=en_US&amp;fs=1&amp;">
<param name="allowFullScreen" value="true">
<param name="allowscriptaccess" value="always">
<embed src="http://www.youtube.com/v/b0iKYRKtAsA&amp;hl=en_US&amp;fs=1&amp;" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="560" height="340"></embed></object></p>
<p>DHH gives <a href="http://www.youtube.com/watch?v=b0iKYRKtAsA">an insightful and accessible 38 minute walkthrough</a> of some of Rails 3's differences from Rails 2.0 and explains the motivations behind them. A particular focus is given to improvements made to the routing system (both for REST and non-REST URLs).</p>
<p>I've been a bit lukewarm on Rails lately, opting instead to strongarm <a href="http://www.sinatrarb.com/">Sinatra</a> into doing whatever I want, but DHH's keynote is a compelling overview that encourages me to give it a fair look.</p>
<p>The final release of Rails 3.0 is expected within the next few weeks, with a release candidate in the next week or so.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Robert Dempsey</strong> &middot; <time datetime="2010-06-10T03:38:00+00:00">June 10, 2010 at 3:38 am</time></p>
      <p>I haven't seen the keynote yet (about to watch it) however I've been using the latest beta of Rails 3 and can say it's much improved over Rails 2.x. Coding is more intuitive all around and much more Ruby-ish. I look forward to deploying a full Rails 3 app into production soon.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Trans</strong> &middot; <time datetime="2010-06-13T16:26:00+00:00">June 13, 2010 at 4:26 pm</time></p>
      <p>Bundler's "Bubble" is what so ridiculous about it. Every repo I have checked-out is going to have an separate install of every gem? Am I understanding this correctly? Why even bother with gems then? I can just vendor everything. (And I won't even mention the multiplicative effect of rvm versions).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Vincent</strong> &middot; <time datetime="2010-06-15T10:41:00+00:00">June 15, 2010 at 10:41 am</time></p>
      <p>For those interested by the flush functionality at the end of the video, there's a nice chapter about it in "Even faster web sites" from google's Steve Souders. <a href="http://books.google.fr/books?id=E7p-07kNfXYC&amp;lpg=PP1&amp;ots=ULimPNjgNs&amp;dq=even%20faster%20web%20sites&amp;pg=PA171#v=onepage&amp;q&amp;f=false" rel="nofollow">http://books.google.fr/books?id=E7p-07kNfXYC&amp;lpg=PP1&amp;ots=ULimPNjgNs&amp;dq=even%20faster%20web%20sites&amp;pg=PA171#v=onepage&amp;q&amp;f=false</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jared Fine</strong> &middot; <time datetime="2010-06-19T00:27:00+00:00">June 19, 2010 at 12:27 am</time></p>
      <p>@Trans My understanding is that you don't version your gems, in fact you should ignore them. What bundler does is on an app by app, system by system basis builds and installs the gems, it's basically another step in your deploy process similar to migrating your database.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
