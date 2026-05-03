---
title: 'Swiftiply: A step forward in Rails serving?'
date: '2007-05-14'
author: Peter Cooper
author_slug: admin
post_id: 489
slug: swiftiply-a-step-forward-in-rails-serving-489
url: "/swiftiply-a-step-forward-in-rails-serving-489.html"
categories:
- ruby-on-rails
---

{{< rawhtml >}}
<p>A few days ago Kirk Haines <a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/251320">announced</a> the release of <a href="http://swiftiply.swiftcore.org/index.html">Swiftiply</a>, an "agnostic clustering proxy for web applications that is specifically designed to support HTTP traffic from web frameworks." In particular, it's a fast, clustering proxy that uses untraditional methods to deliver a lot of dynamism, reliability and performance. Naturally, the first target for Swiftiply's benefits is Rails, in the shape of a replacement to the mongrel_rails script (<a href="http://merb.rubyforge.org/files/README.html">merb</a> is also directly supported).</p>
<p>This all sounds like sales talk, but merb creator Ezra Zygmuntowicz has <a href="http://brainspl.at/articles/2007/05/12/event-driven-mongrel-and-swiftiply-proxy">posted about his experiences with using Swiftiply to serve one of his Rails apps</a> and has noticed a significant increase in daemon performance. From FastCGI to lighttpd to Apache/mod_proxy_cluster to Mongrel/Pound to Nginx, developments in serving Rails applications have come quickly.. perhaps Swiftiply will provide another step forward?</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Michael Air</strong> &middot; <time datetime="2007-05-15T02:54:00+00:00">May 15, 2007 at 2:54 am</time></p>
      <p>I'd love to see the rails community focus on making some of the current solutions better rather than yet another web server :)</p><p>One of the hardest decisions I found when deciding to use rails was what platform do you use to serve your application. It's a moving target.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kirk Haines</strong> &middot; <time datetime="2007-05-17T03:09:00+00:00">May 17, 2007 at 3:09 am</time></p>
      <p>Actually, Rails wasn't the first target.  It's just one I made sure to support.  My original motivation was to develop a fast custering proxy for Swiftcore IOWA.  It's just that after it all came together, I decided that other frameworks could benefit from it, as well.  :)</p><p>Michael, it's not a web server.  It's a clustering proxy.  You can put a web server in front of it.  You can let your framework serve static files itself, if it's fast enough, too.  I am experimenting with adding _minimal_ file serving to swiftiply.  Just enough to serve static files correctly and very quickly.  The motivation being that for many applications, that would let the application be deployed very simply, with high performance.  Swiftiply right to your cluster of swiftiplied mongrels; no mucking with other components; minimal configuration; high reliability and performance; better ability to monitor the health of the cluster, and more are my overall goals.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
