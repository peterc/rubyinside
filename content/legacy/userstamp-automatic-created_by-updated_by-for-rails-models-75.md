---
title: 'UserStamp: Automatic created_by / updated_by for Rails models'
date: '2006-06-13'
author: Peter Cooper
author_slug: admin
post_id: 75
slug: userstamp-automatic-created_by-updated_by-for-rails-models-75
url: "/userstamp-automatic-created_by-updated_by-for-rails-models-75.html"
categories:
- elsewhere
- ruby-on-rails
---

{{< rawhtml >}}
<p><a href="http://delynnberry.com/">Delynn Berry</a> has developed a useful plugin called <a href="http://delynnberry.com/pages/userstamp/">UserStamp</a>. Whereas Rails has built in support for automatic columns such as <em>created_at</em> and <em>updated_at</em>, it doesn't (quite rightly) support concepts such as <em>created_</em><strong><em>by</em></strong>, as these belong in the application domain. It's a commonly required feature though, and Delynn has done a great job of packaging it up.</p>
<p>This is also worth looking at if you want to get an idea of how to put a similar plugin together. Most Rails applications have similar requirements and packaging them up as plugins makes it a lot easier to manage.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Scott</strong> &middot; <time datetime="2006-06-14T00:01:00+00:00">June 14, 2006 at 12:01 am</time></p>
      <p>The one potential issue with UserStamp -- not today but perhaps at some point in the future -- is support for handling multiple requests via threads in Rails.  The fact that you set the "current user" using a class-level attribute gives me pause.  What I ended-up doing myself was to add versions of all of the save-related methods with a user parameter ("save_with_user" for example) and passed the user in explicitly so that I wasn't dependent on cross-thread-globals, which is pretty much exactly what UserStamp does under the covers. This all probably sounds silly since it's not an issue today, but I'm crazy like that.  - Scott</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-06-14T00:17:00+00:00">June 14, 2006 at 12:17 am</time></p>
      <p>Thanks for the comment, Scott.</p><p>Is it going to be an issue in the future though? I'm probably not as au-fait with the latest things that'll be coming in Rails as you are, possibly, but surely it's necessary to always run the before_filters before any request, threaded or not?</p><p>For example, most apps I know of (and which I develop myself) have some sort of 'current_user' attribute to use all over, and while I don't tend to tack it onto the User class directly, it has much the same function.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tarmo</strong> &middot; <time datetime="2006-06-14T13:05:00+00:00">June 14, 2006 at 1:05 pm</time></p>
      <p>The problem of threading can easily be solved by using thread local storage to store the attributes.</p><p>Just use Thread.current[:whatever] and it is guaranteed to be visible only to the thread that is handling the request.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
