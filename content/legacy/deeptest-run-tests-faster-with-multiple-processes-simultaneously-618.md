---
title: DeepTest – Run Tests Faster With Multiple Processes Simultaneously
date: '2007-10-04'
author: Peter Cooper
author_slug: admin
post_id: 618
slug: deeptest-run-tests-faster-with-multiple-processes-simultaneously-618
url: "/deeptest-run-tests-faster-with-multiple-processes-simultaneously-618.html"
categories:
- cool
- ruby-tricks
---

{{< rawhtml >}}
<p><a href="http://www.somethingnimble.com/bliki/deep-test">DeepTest</a> is a new library that allows you to run test suites in separate processes simultaneously. The obvious benefit is that on multiple core machines, as are becoming hip with the kids nowadays, test performance can be increased significantly. Initial tests by the developers showed that a test suite ran in half the time on a dual core machine, although real life performance is bound to vary.</p>
<p>With the perennial complaints from developers of how long test suites take to run, DeepTest looks like a promising development. The developers say they're looking at implementing a similar system for RSpec in future.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Matthijs Langenberg</strong> &middot; <time datetime="2007-10-04T08:29:00+00:00">October 4, 2007 at 8:29 am</time></p>
      <p>Neat, but RSpec support would be welcome.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sean</strong> &middot; <time datetime="2007-10-04T16:34:00+00:00">October 4, 2007 at 4:34 pm</time></p>
      <p>Wow, this looks great, but I don't know if I'm ready to dump my fixtures just yet.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
