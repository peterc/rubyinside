---
title: Profiling memory leaks in Rails
date: '2006-08-22'
author: Peter Cooper
author_slug: admin
post_id: 198
slug: profiling-memory-leaks-in-rails-198
url: "/profiling-memory-leaks-in-rails-198.html"
categories:
- miscellaneous
- ruby-on-rails
---

{{< rawhtml >}}
<p>Scott Laird looks at <a href="http://scottstuff.net/blog/articles/2006/08/17/memory-leak-profiling-with-rails">how to profile memory leaks in Rails</a>:</p>
<blockquote><p><em>One of my long-running problems with Rails (and Ruby in general) is that it’s difficult to debug memory leaks. I’ve had a number of cases where I’ve stuck something into a long-lived array or hash and discovered much later that my Ruby process was eating over 100 MB of RAM. While ps makes it easy to see when Ruby’s using lots of RAM, actually figuring out where it went is a lot harder.</em></p></blockquote>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Chris Roos</strong> &middot; <time datetime="2006-08-22T13:04:00+00:00">August 22, 2006 at 1:04 pm</time></p>
      <p>I've already posted this to Scott's blog.</p><p>I used the memory profiler this morning and think I found a memory leak when rails is used in development, in conjunction with irb_history[1].</p><p>[1] <a href="http://blog.seagul.co.uk/articles/2006/08/22/rails-leaking-some-strings-in-development" rel="nofollow">http://blog.seagul.co.uk/articles/2006/08/22/rails-leaking-some-strings-in-development</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
