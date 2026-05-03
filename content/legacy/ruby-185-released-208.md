---
title: Ruby 1.8.5 Released
date: '2006-08-25'
author: Peter Cooper
author_slug: admin
post_id: 208
slug: ruby-185-released-208
url: "/ruby-185-released-208.html"
categories:
- news
---

{{< rawhtml >}}
<p>It's not mentioned on the <a href="http://www.ruby-lang.org/en/">official Ruby homepage</a> yet, but Matz has just <a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/210528">announced the release of Ruby 1.8.5</a> on the Ruby mailing list. He claims there are no big changes from 1.8.4 and cites stability as the main benefit of upgrading. Unless you're having problems with 1.8.4, however, I'd wait a few weeks to see how it pans out, but if you're itching to try it out get it from <a href="http://ftp.ruby-lang.org/pub/ruby/ruby-1.8.5.tar.gz">http://ftp.ruby-lang.org/pub/ruby/ruby-1.8.5.tar.gz</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>DeeJay</strong> &middot; <time datetime="2006-08-25T11:57:00+00:00">August 25, 2006 at 11:57 am</time></p>
      <p>It's an auspicious date to release new software - it was on this day in 1991 that a hobbyist from Helsinki first asked publically on comp.os.minix for feedback on a new (unnamed) operating system he was working on. His name was Linus Torvalds, and I guess everyone knows what his OS developed into...</p><p>Thanks and congratulations to Matz and the rest of the core team.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dave Burt</strong> &middot; <time datetime="2006-08-25T13:20:00+00:00">August 25, 2006 at 1:20 pm</time></p>
      <p>Watch out: breakpoint (including in Rails) is broken. That's because Binding.of_caller is broken. See mfp's eigenclass blog: <a href="http://eigenclass.org/hiki.rb?ruby+1.8.5+changelog" rel="nofollow">http://eigenclass.org/hiki.rb?ruby+1.8.5+changelog</a>.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
