---
title: 'Terminator: A Hardcore “Timeout” For Ruby Code'
date: '2008-09-14'
author: Peter Cooper
author_slug: admin
post_id: 1189
slug: terminator-hardcore-timeout-for-ruby-code-1189
url: "/terminator-hardcore-timeout-for-ruby-code-1189.html"
categories:
- cool
- miscellaneous
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2008/09/terminator.jpg" width="121" height="154" alt="terminator.png" style="float:left; margin-right:12px; margin-bottom:12px;"></p>
<p><a href="http://www.lindsaar.net/2008/9/11/terminator-timeout-without-mercy">Terminator</a> is a new library developed by Ara Howard and Mikel Lindsaar that solves the problem of Ruby's own "<a href="http://www.ruby-doc.org/stdlib/libdoc/timeout/rdoc/index.html">timeout</a>" feature not actually being up to the task of terminating code. timeout is supposed to terminate the execution of a block of code if it's not finished within a certain amount of time, but due to Ruby's threading model it doesn't always work that way!</p>
<p>Initially, Mikel considered <a href="http://ph7spot.com/articles/system_timer">SystemTimer</a> - another replacement for timeout. SystemTimer is based upon UNIX alarm signals and, for some reason, still didn't resolve the main problem (although SystemTimer has <a href="http://ph7spot.com/articles/system_timer">ridiculously good documentation</a> and is clearly working well for <em>someone</em>). After lamenting on the Ruby-Talk mailing list, Ara Howard stepped in with a potential solution which turned into what is now <em>Terminator</em>.</p>
<p>Terminator works by starting up another Ruby instance that tracks the PID of the Ruby instance that spawned it. Windows is currently not supported.</p>
<p>You can install Terminator with <code>gem install terminator</code> or check out the code directly from <a href="http://codeforpeople.com/lib/ruby/terminator/">here</a> (note: they have some weird issue with referrals, just reload the URL when you get there).</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Mikel Lindsaar</strong> &middot; <time datetime="2008-09-14T04:54:00+00:00">September 14, 2008 at 4:54 am</time></p>
      <p>Thanks for the write up.</p><p>I just want people to know this is mainly Ara's work.  I helped with the name, some specs, testing as well as a couple of patches for the 0.4.3 release and some documentation.  But Ara should have the credit for the library.</p><p>Mikel</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alan Brown</strong> &middot; <time datetime="2008-09-14T05:38:00+00:00">September 14, 2008 at 5:38 am</time></p>
      <p>So far SystemTimer is sounding better.  Not sure what the problems with SystemTimer are and there are no links offered regarding them.</p><p>Also, the link for checking out the code got me this message:</p><p>Precondition Failed</p><p>The precondition on the request for the URL /lib/ruby/terminator/terminator-0.4.2/ evaluated to false.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-09-14T06:00:00+00:00">September 14, 2008 at 6:00 am</time></p>
      <p>They have some odd issue if you come from a site that isn't theirs, by the looks of it. If you reload once you're there, it appears as it should. They must have some HTTP precondition regarding loading their pages..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2008-09-14T09:24:00+00:00">September 14, 2008 at 9:24 am</time></p>
      <p>I wouldn't be so quick to blame Ruby's threading model for this. System call interruption is not easy to do, whether you use native (kernel) threads or userspace threads. If you want the thing to work on Windows, then be prepared for a huge amount of work. For Phusion Passenger I had to write an entire system call interruption framework just to emulate Java-style thread interruption that also works with blocking system calls (this is used during the spawn server's shutdown procedure).</p><p>As for Terminator, be aware that any data you produce within the block can only be sent to outside the block via a communication channel, e.g. a pipe or a file. Terminator is also not compatible with JRuby because JRuby (and Java) doesn't support fork().</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
