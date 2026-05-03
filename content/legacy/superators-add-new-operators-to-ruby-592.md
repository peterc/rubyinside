---
title: 'Superators: Add new operators to Ruby'
date: '2007-08-30'
author: Peter Cooper
author_slug: admin
post_id: 592
slug: superators-add-new-operators-to-ruby-592
url: "/superators-add-new-operators-to-ruby-592.html"
categories:
- cool
- miscellaneous
- nonsense
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2007/08/superators.jpg" height="165" width="223" border="1" hspace="4" vspace="4" alt="Superators"><span style="font-size:0pt;"><br>
</span><br>
I know there's going to be some controversy around this clever piece of code by Jay Phillips. He's developed "<a href="http://jicksta.com/articles/2007/08/29/superators-add-new-operators-to-ruby">Superators</a>", a library that finally makes it easy to create new operators within Ruby that look like line noise. Always wanted a "-~+~-" or "===~-+~++" operator? Now it's within your grasp! As Aleks Clark says: "Job security and spiffy DSL construction in one neat package."</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>andrew</strong> &middot; <time datetime="2007-08-31T00:48:00+00:00">August 31, 2007 at 12:48 am</time></p>
      <p>I like it. We'll finaly be able to increment integers like i++.<br>
(Not that it's that hard to do i+=1)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2007-08-31T13:57:00+00:00">August 31, 2007 at 1:57 pm</time></p>
      <p>Actually, superators are still binary operations, so the unary increment/decrement operators still won't work (I tried).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sean</strong> &middot; <time datetime="2007-08-31T14:00:00+00:00">August 31, 2007 at 2:00 pm</time></p>
      <p>Ok, now this is silly. It sounds very useful, but this is exactly the kind of thing developers love to abuse. (I say this as I download it. ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Shadowfiend</strong> &middot; <time datetime="2007-08-31T19:57:00+00:00">August 31, 2007 at 7:57 pm</time></p>
      <p>Yeah, it turns out this is written in pure Ruby (no C), so it doesn't actually *add* operators, it just reuses the existing ones in a very very interesting way.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Markús</strong> &middot; <time datetime="2007-09-18T11:56:00+00:00">September 18, 2007 at 11:56 am</time></p>
      <p>What's all i++? I already have i.next or i.upto. I think somebody miss the point of ruby language...</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
