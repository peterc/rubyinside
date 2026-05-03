---
title: 'daemon_controller: Automatic Daemon Process Management'
date: '2008-08-27'
author: Eldon Alameda
author_slug: eldon
post_id: 1098
slug: daemon_controller-automatic-daemon-process-management-1098
url: "/daemon_controller-automatic-daemon-process-management-1098.html"
categories:
- cool
- linux-specific
- tools
---

{{< rawhtml >}}
<p>After tackling the difficult task of improving Rails deployment, <a href="http://blog.phusion.nl">Phusion</a> - the creators of <a href="http://www.modrails.com/">Passenger</a> (mod_rails) <a href="http://blog.phusion.nl/2008/08/25/daemon_controller-a-library-for-robust-daemon-management/">recently announced the availability of daemon_controller</a> - a library (rather than a stand-alone tool) for managing daemons. It lets you write applications that manage daemons in a robust manner (e.g. mongrel_cluster or UltraSphinx could be adapted to use this library).</p>
<p>The primary motivation for using daemon_controller is to make it easier to have other applications (such as Rails apps) start daemons without encountering race conditions or parallel attempts. With a little work, daemon_controller makes it possible for your app to safely launch all the daemons that its functionality relies upon (UltraSphinx, BackgrounDRb, etc.).</p>
<p>The library is simple to use - though it does require that you know how to start the daemon, how to contact the daemon, and you must know where it will put its PID and log files. Source code is available at <a href="http://github.com/FooBarWidget/daemon_controller/tree/master">http://github.com/FooBarWidget/daemon_controller/tree/master</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Glenn</strong> &middot; <time datetime="2008-08-27T13:25:00+00:00">August 27, 2008 at 1:25 pm</time></p>
      <p>Great news, on of the major thorns in my side of late has been insuring that ferret is started on an old up. And god doesn't handle task dependency at all so it's a convoluted shell script to make it all happen.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Adam Greene</strong> &middot; <time datetime="2008-08-29T20:42:00+00:00">August 29, 2008 at 8:42 pm</time></p>
      <p>Your description seems like it is very similar to the daemons gem.  What's the difference here?</p><p>Time to dive into the source code I guess.... ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-08-29T21:20:00+00:00">August 29, 2008 at 9:20 pm</time></p>
      <p>Adam: The key is that it handles other applications launching the daemons almost as dependencies. The daemons gem provides daemon features to programs. This provides daemon control to non-daemons.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
