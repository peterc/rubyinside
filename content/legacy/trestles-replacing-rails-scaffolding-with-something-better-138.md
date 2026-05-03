---
title: 'Trestles: Replacing Rails scaffolding with something better'
date: '2006-07-11'
author: Peter Cooper
author_slug: admin
post_id: 138
slug: trestles-replacing-rails-scaffolding-with-something-better-138
url: "/trestles-replacing-rails-scaffolding-with-something-better-138.html"
categories:
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2006/07/trestle.jpg" height="100" width="329" border="1" hspace="4" vspace="4" alt="Trestle"></p>
<p>Scaffolding is not meant to be a final solution for any application. It's designed to provide 'scaffolding' for you to extend and improve. However, the developers of <a href="http://trestle.rubyforge.org/">Trestle</a> believe that the scaffolding could be improved significantly and have released their own version.</p>
<blockquote><p><em>The trestle generator is an adaptation of the Rails scaffold generator. It produces scaffolding that’s more like production-quality code while maintaining all the rapid goodness you know and love about Rails.</em></p></blockquote>
<p>The primary difference is that the HTTP verbs GET and POST are respected and used properly, as opposed to the system in Rails' default scaffolding. This also allows trestles to be more succinct, with just four actions (<em>index</em>, <em>new</em>, <em>edit</em>, and <em>destroy</em>). Trestles also have nicer error messages.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Nils Jonsson</strong> &middot; <time datetime="2006-07-12T15:58:00+00:00">July 12, 2006 at 3:58 pm</time></p>
      <p>Glad you like it!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
