---
title: Request Database Authentication When Rails Starts
date: '2007-01-26'
author: Peter Cooper
author_slug: admin
post_id: 367
slug: request-database-authentication-when-rails-starts-367
url: "/request-database-authentication-when-rails-starts-367.html"
categories:
- cool
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2007/01/dbsafe.jpg" height="127" width="281" border="1" hspace="4" vspace="4" alt="Dbsafe"></p>
<p>Derek (usernamed <em>perraultd</em>) shows us <a href="http://www.bigbold.com/snippets/posts/show/3361">how to rewrite your Rails application's database.yml file to manually prompt you</a> for database authentication information when your Rails app starts. This might not be of much use in automated deployment environments, but it demonstrates the dynamism of the templating system (I didn't even realize database.yml was processed in this way).</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Dejan Dimic</strong> &middot; <time datetime="2007-01-26T20:20:00+00:00">January 26, 2007 at 8:20 pm</time></p>
      <p>I am astonished.<br>
This new info on yaml processing will open a bunch of possibilities.<br>
Extremely interesting.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Derek</strong> &middot; <time datetime="2007-01-26T23:02:00+00:00">January 26, 2007 at 11:02 pm</time></p>
      <p>The manual prompt wouldn't work too hot for automated deployments, but if you decrypt a hashed password in database.yml, that would work.</p><p>I just needed something very lightweight, but like Dejan Dimic said, there's a bunch of possibilities. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hendy Irawan</strong> &middot; <time datetime="2007-01-27T09:24:00+00:00">January 27, 2007 at 9:24 am</time></p>
      <p>Wow...</p><p>But, being on the negative side, I can see automatically processing files using ERB (or anything that can "run code") without explicit request may be a... security concern. (for some people)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
