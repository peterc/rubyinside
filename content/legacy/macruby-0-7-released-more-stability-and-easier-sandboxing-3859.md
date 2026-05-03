---
title: 'MacRuby 0.7 Released: More Stability and Easier Sandboxing'
date: '2010-10-05'
author: Peter Cooper
author_slug: admin
post_id: 3859
slug: macruby-0-7-released-more-stability-and-easier-sandboxing-3859
url: "/macruby-0-7-released-more-stability-and-easier-sandboxing-3859.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<blockquote class="stylized"><p>After 5 months of development, we are happy to announce the immediate availability of MacRuby 0.7. This release does not bring any significant features but consolidates the existing functionality of MacRuby by improving its Ruby compatibility, concurrency, Cocoa support, and overall stability and performance.</p></blockquote>
<p><cite>Anon</cite></p>
<p>The MacRuby team has <a href="http://www.macruby.org/blog/2010/10/01/macruby07.html">announced the release of MacRuby 0.7.</a> No significant feature releases but stability and performance boosts are always particularly welcomed in alternative Ruby implementations.</p>
<p>To me, the most exciting "new" feature is the exposing of MacRuby's built-in "sandboxing" functionality through a <code>Sandbox</code> class. Sandboxing goes a lot further than Ruby's typical <a href="http://ruby-doc.org/docs/ProgrammingRuby/html/taint.html">safe mode</a> features, since it blocks activities performed by all of the libraries and system services called by your app's process too.</p>
<p>If MacRuby hasn't been on your radar recently, it's also worth checking out the new MacRuby-powered <a href="http://www.macruby.org/blog/2010/09/20/announcing-control-tower.html">Control Tower</a> server that's based on Rack and takes full advantage of MacRuby’s concurrency facilities.</p>
<p><em>(Sorry for the lateness of this post. I was on vacation for a week. Service now resumes!)</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>robgleeson</strong> &middot; <time datetime="2010-10-05T22:06:00+00:00">October 5, 2010 at 10:06 pm</time></p>
      <p>If you're on MRI/REE and on a Mac, you can use <a href="http://github.com/robgleeson/dia" rel="nofollow">Dia</a>.</p><p>It provides the same features and uses the same low-level OSX API, but it does not limit you to creating a sandbox environment for the current process only(Like the MacRuby Sandbox class).</p><p>It's also a pure-ruby implementation, with the help of FFI.<br>
The sandbox class in MacRuby is pure C, but still an interesting piece of code. </p><p>I plan to write a tutorial on using the Sandbox class in MacRuby soon.</p><p>- Rob</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael</strong> &middot; <time datetime="2010-10-13T23:26:00+00:00">October 13, 2010 at 11:26 pm</time></p>
      <p>It's a very nice work.<br>
I'm just a bit disapointed that HotCocoa is no longer maintained. It was such a promising library.<br>
But I guess XCode can do the work...</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
