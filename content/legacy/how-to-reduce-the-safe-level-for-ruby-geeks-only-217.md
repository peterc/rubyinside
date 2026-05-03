---
title: How to Reduce the $SAFE Level (For Ruby Geeks Only)
date: '2006-08-31'
author: Peter Cooper
author_slug: admin
post_id: 217
slug: how-to-reduce-the-safe-level-for-ruby-geeks-only-217
url: "/how-to-reduce-the-safe-level-for-ruby-geeks-only-217.html"
categories:
- ruby-tricks
---

{{< rawhtml >}}
<p>Eric Hodel has worked out a scary way to <a href="http://blog.segment7.net/articles/2006/08/30/reducing-safe">reduce Ruby's safe-level on the fly using a little inline C</a>. Please don't use this in production code, it's just an experiment! That said, this could be a useful trick for things like <a href="http://rubyforge.org/projects/classroom/">Classroom</a> and sandboxing environments.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Eric Hodel</strong> &middot; <time datetime="2006-09-02T23:25:00+00:00">September 2, 2006 at 11:25 pm</time></p>
      <p>Just an experiment?  It works great!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-09-03T13:29:00+00:00">September 3, 2006 at 1:29 pm</time></p>
      <p>Experiments can work ;-) I just don't think fiddling directly with Ruby's core is something that you'd want in non-experimental environments! Just my opinion, as always.. :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
