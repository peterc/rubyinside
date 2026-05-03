---
title: Ruby and C Integration Presentation
date: '2007-03-31'
author: Peter Cooper
author_slug: admin
post_id: 443
slug: ruby-and-c-integration-presentation-443
url: "/ruby-and-c-integration-presentation-443.html"
categories:
- cool
- ruby-tricks
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2007/03/ruby-c.jpg" height="281" width="375" border="1" hspace="4" vspace="4" alt="Ruby-C"></p>
<p><a href="http://www.ociweb.com/mark/">Mark Volkmann</a> has put together <a href="http://www.ociweb.com/mark/Ruby_C_Extensions.pdf">a kickass presentation </a><em><a href="http://www.ociweb.com/mark/Ruby_C_Extensions.pdf">[PDF]</a></em> that walks through topics relating to C/Ruby integration. If you want to write a library in C that integrates with Ruby, or vice versa, it's an essential read.</p>
<p>And while we're at it.. two years ago Garrett Rooney wrote <a href="http://www.onlamp.com/pub/a/onlamp/2004/11/18/extending_ruby.html">an article called "Extending Ruby with C"</a> that could come in useful too. It's a little old, but covers a lot. He demonstrates how to take a basic, pre-existing C library and make it accessible from Ruby.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Alexander Lomakin</strong> &middot; <time datetime="2007-03-31T10:03:00+00:00">March 31, 2007 at 10:03 am</time></p>
      <p>It looks very difficult for me. I think, this issue is very useful, but not simple - only for professionals!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Vasudev Ram</strong> &middot; <time datetime="2007-03-31T11:58:00+00:00">March 31, 2007 at 11:58 am</time></p>
      <p>Thanks! Should be useful ...</p><p>Vasudev Ram<br>
<a href="http://www.dancingbison.com" rel="nofollow">http://www.dancingbison.com</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2007-04-02T13:41:00+00:00">April 2, 2007 at 1:41 pm</time></p>
      <p>Looks good. There's a mistake I noticed - NIL_P() and FIXNUM_P() do not raise exceptions. They're boolean macro functions.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
