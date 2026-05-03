---
title: Cross platform GUI debugger for Ruby
date: '2006-07-17'
author: Peter Cooper
author_slug: admin
post_id: 147
slug: cross-platform-gui-debugger-for-ruby-147
url: "/cross-platform-gui-debugger-for-ruby-147.html"
categories:
- cool
- elsewhere
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2006/07/mrguid.jpg" height="274" width="349" border="1" hspace="4" vspace="4" alt="Mrguid"></p>
<p><a href="http://mr-guid.rubyforge.org/">Mr. Guid</a> is a Ruby GUI Debugger by 'Mitchell'. It uses GTK+ so it's cross platform (Windows, Linux, OS X) and it can even work remotely over a network. Otherwise, it has all the features that the standard Ruby debugger has, just in GUI form.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Vladimir</strong> &middot; <time datetime="2006-07-17T12:45:00+00:00">July 17, 2006 at 12:45 pm</time></p>
      <p>Just curios what need to be done to use Mr. GUID as a debuger for Rails app</p>
    </li>
      <li>
      <p class="comment-meta"><strong>mitchell</strong> &middot; <time datetime="2006-07-17T12:50:00+00:00">July 17, 2006 at 12:50 pm</time></p>
      <p>This is Mitchell, author of Mr. Guid. Unfortunately, there are still some issues in the Windows version and threads locking up. I would welcome any assistance on the issue.</p><p>Thanks for the recognition :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>mitchell</strong> &middot; <time datetime="2006-07-17T12:54:00+00:00">July 17, 2006 at 12:54 pm</time></p>
      <p>Vladimir - <a href="http://rubyforge.org/forum/forum.php?thread_id=5786&amp;forum_id=5618" rel="nofollow">http://rubyforge.org/forum/forum.php?thread_id=5786&amp;forum_id=5618</a></p><p>I haven't tried it myself, but it seems to be very well thought out!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Victor Rottenstein</strong> &middot; <time datetime="2006-07-17T13:16:00+00:00">July 17, 2006 at 1:16 pm</time></p>
      <p>Hi. what about radrails? could you debug your code with it?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>mitchell</strong> &middot; <time datetime="2006-07-17T13:25:00+00:00">July 17, 2006 at 1:25 pm</time></p>
      <p>It's not a matter of fixing a bug, it's a matter of how sockets are handled in Windows. I couldn't find a workaround, and a very astute developer I worked had no success either. See <a href="http://rubyforge.org/forum/forum.php?forum_id=5807" rel="nofollow">http://rubyforge.org/forum/forum.php?forum_id=5807</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
