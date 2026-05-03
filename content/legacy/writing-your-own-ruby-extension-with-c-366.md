---
title: Writing Your Own Ruby Extension With C
date: '2007-01-25'
author: Peter Cooper
author_slug: admin
post_id: 366
slug: writing-your-own-ruby-extension-with-c-366
url: "/writing-your-own-ruby-extension-with-c-366.html"
categories:
- cool
- elsewhere
- ruby-tricks
- tutorials
---

{{< rawhtml >}}
<p>In case the title of this post is giving you deja-vu, we've looked at "<a href="how-to-create-a-ruby-extension-in-c-in-under-5-minutes-100.html">How To Create A Ruby Extension In C</a>" before at Ruby Inside. We've also looked at <a href="using-rubyinline-to-speed-up-code-by-10x-159.html">using RubyInline</a> to make the process even faster by not having to write a specialized C extension.</p>
<p>Despite this, Wim Vander Schelden has written such a detailed and interesting guide called "<a href="http://nanoblog.ath.cx/?module=readmore&amp;id=8">Writing Your Own Ruby Extension With C</a>" that it's a must-read if this area interests you, especially since it goes far beyond what was covered in our previous articles.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>juantar</strong> &middot; <time datetime="2007-01-25T14:52:00+00:00">January 25, 2007 at 2:52 pm</time></p>
      <p>Also check the excellent Ruby Extension utility classes on Gaffer on Games (<a href="http://www.gaffer.org/archives/category/ruby/" rel="nofollow">http://www.gaffer.org/archives/category/ruby/</a>). It is a really nice toolkit to create your C++ ruby objects easily.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2007-01-25T17:59:00+00:00">January 25, 2007 at 5:59 pm</time></p>
      <p>His comments on arrays are completely wrong.  You do not need to declare an extra RARRAY struct and then assign to it, as he does in the greet function.  If the user passed an array, then that's what you get. Or, you can force the issue by setting the number of arguments in the function declaration to -2 to get splat-like behavior.</p><p>If an array is passed as the argument, just use RARRAY(arg)-&gt;ptr. To get at a specific index, just use RARRAY(arg)-&gt;ptr[i].</p><p>Dan</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
