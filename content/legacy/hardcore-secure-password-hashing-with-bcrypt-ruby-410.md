---
title: Hardcore Secure Password Hashing with bcrypt-ruby
date: '2007-03-02'
author: Peter Cooper
author_slug: admin
post_id: 410
slug: hardcore-secure-password-hashing-with-bcrypt-ruby-410
url: "/hardcore-secure-password-hashing-with-bcrypt-ruby-410.html"
categories:
- cool
- ruby-tricks
---

{{< rawhtml >}}
<p>Coda Hale has <a href="http://blog.codahale.com/2007/02/28/bcrypt-ruby-secure-password-hashing/">announced the release of his new 'bcrypt-ruby' gem</a>. <em>bcrypt-ruby</em> brings simple OpenSSL powered password hashing to Ruby along with some useful features like hash versioning, automatic salt handling, and the ability to produce hashes that are computationally difficult to compute to reduce the risks of attacks.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Coda Hale</strong> &middot; <time datetime="2007-03-02T20:46:00+00:00">March 2, 2007 at 8:46 pm</time></p>
      <p>Thanks for the link, Peter!</p><p>Slight correction -- I only use OpenSSL for a decent source of random data. Everything else takes place in the C extension.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
