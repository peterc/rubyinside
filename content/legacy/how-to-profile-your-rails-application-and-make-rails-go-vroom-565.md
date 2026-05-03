---
title: How to Profile Your Rails Application and Make Rails Go Vroom!
date: '2007-07-25'
author: Peter Cooper
author_slug: admin
post_id: 565
slug: how-to-profile-your-rails-application-and-make-rails-go-vroom-565
url: "/how-to-profile-your-rails-application-and-make-rails-go-vroom-565.html"
categories:
- cool
- elsewhere
- ruby-on-rails
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2007/07/call_graph-1.jpg" height="276" width="248" border="1" hspace="4" vspace="4" alt="Call Graph-1"><br>
Charlie Savage, author of <a href="new-ruby-profiler-released-supports-rails-threads-irb-and-more-564.html">ruby-prof</a>, recently baked in support for Rails to ruby-prof, so now it's possible to profile your Rails application, see where the delays are, and work on improving performance.</p>
<p>Hot on the heels of this development, Charlie wrote "<a href="http://cfis.savagexi.com/articles/2007/07/10/how-to-profile-your-rails-application">How to Profile Your Application</a>", an article that does just what it says on the tin, and which demonstrates how to profile the CPU time used on a single Rails request, and visualize the call tree.</p>
<p>This was quickly followed up with "<a href="http://cfis.savagexi.com/articles/2007/07/18/making-rails-go-vroom">Making Rails Go Vroom</a>", another great article that looks at what parts of Rails significantly slow things down. Charlie comes up with six key suggestions:</p>
<ul>
<li>Don't use ActiveRecord#attributes or ActiveRecord#read_attribute</li>
<li>Get your :includes right</li>
<li>Don't check template timestamps ( cache_template_loading = true) </li>
<li>Don't use url_for </li>
<li>Don't let Rails parse timestamps </li>
<li>Don't symbolize keys (local_assigns_support_string_keys = false)</li>
</ul>
<p>Learn more and see how Charlie came to his conclusions <a href="http://cfis.savagexi.com/articles/2007/07/18/making-rails-go-vroom">in the article</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://blogwi.se/2007/07/22/how-to-profile-your-ruby-on-rails-application/" rel="external nofollow" class="url">blogwi.se</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
