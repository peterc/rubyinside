---
title: 'acts_as_textiled: Auto-formatted columns plugin for Rails'
date: '2006-08-21'
author: Peter Cooper
author_slug: admin
post_id: 188
slug: acts_as_textiled-auto-formatted-columns-plugin-for-rails-188
url: "/acts_as_textiled-auto-formatted-columns-plugin-for-rails-188.html"
categories:
- elsewhere
- ruby-on-rails
---

{{< rawhtml >}}
<pre><span class="punct">&gt;&gt;</span> <span class="ident">story</span><span class="punct">.</span><span class="ident">description</span> <span class="punct">=</span> <span class="punct">"</span><span class="string">Peter flippin' _Cooper_</span><span class="punct">"</span>
<span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">Peter flippin' _Cooper_</span><span class="punct">"</span> 

<span class="punct">&gt;&gt;</span> <span class="ident">story</span><span class="punct">.</span><span class="ident">description</span>
<span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">&lt;p&gt;Peter flippin&amp;#8217; &lt;em&gt;Cooper&lt;/em&gt;&lt;/p&gt;</span><span class="punct">"</span> 

<span class="punct">&gt;&gt;</span> <span class="ident">story</span><span class="punct">.</span><span class="ident">textiled</span> <span class="punct">=</span> <span class="constant">false</span>
<span class="punct">=&gt;</span> <span class="constant">false</span>

<span class="punct">&gt;&gt;</span> <span class="ident">story</span><span class="punct">.</span><span class="ident">description</span>
<span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">Peter flippin' _Cooper_</span><span class="punct">"</span>
</pre>
<p>Chris Wanstrath has created <a href="http://errtheblog.com/post/14">acts_as_textiled</a>, a new plugin for Rails that allows you to specify columns on your model to be automatically parsed as Textile content.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Danno</strong> &middot; <time datetime="2006-08-21T20:22:00+00:00">August 21, 2006 at 8:22 pm</time></p>
      <p>Okay, that's hot.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Waite</strong> &middot; <time datetime="2006-08-22T23:22:00+00:00">August 22, 2006 at 11:22 pm</time></p>
      <p>Damn hot. :) Thanks for sharing. (And thanks to Chris!)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
