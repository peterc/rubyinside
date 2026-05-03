---
title: UNIX start / stop / restart script for automatic Mongrel cluster management
date: '2006-09-27'
author: Peter Cooper
author_slug: admin
post_id: 251
slug: unix-start-stop-restart-script-for-automatic-mongrel-cluster-management-251
url: "/unix-start-stop-restart-script-for-automatic-mongrel-cluster-management-251.html"
categories:
- elsewhere
- miscellaneous
---

{{< rawhtml >}}
<p>Jon Maddox was inspired by Ruby Inside's <a href="how-to-create-a-unix-etcinitd-startup-script-with-ruby-250.html">previous post about init.d startup scripts</a>, and has put together a UNIX init.d script that can <a href="http://www.simplisticcomplexity.com/2006/9/26/start-and-stop-all-your-mongrel_cluster-processes">start, stop, and restart all of your Rails apps' Mongrel clusters automatically</a>. The benefit of Jon's approach is that unlike with the startup script supplied with Mongrel, you don't need to manually copy in each Mongrel configuration file to make it work. Instead, you tell the script under which folder your apps are hosted, and it looks for your Mongrel cluster configuration files automatically. This is an ideal script if you have multiple Rails apps on a single machine and want to stop and start the entire set at once.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>drift</strong> &middot; <time datetime="2006-09-27T19:08:00+00:00">September 27, 2006 at 7:08 pm</time></p>
      <p>Why not:</p><p>gem install mongrel_cluster</p><p>mongrel_cluster_ctl restart</p><p>instead?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-09-27T20:30:00+00:00">September 27, 2006 at 8:30 pm</time></p>
      <p>When I was playing with mongrel cluster it still made me have to set up configurations and then manually copy them across someplace. This script detects the applications automatically.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>drift</strong> &middot; <time datetime="2006-09-28T03:45:00+00:00">September 28, 2006 at 3:45 am</time></p>
      <p>Copy the configs, or define your directories...I'll stick with the older, tried and true, gem updateable method.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-09-28T06:26:00+00:00">September 28, 2006 at 6:26 am</time></p>
      <p>That's why we have options :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rimantas</strong> &middot; <time datetime="2006-09-28T11:12:00+00:00">September 28, 2006 at 11:12 am</time></p>
      <p>I have symlinks to mongrel config files in /etc/mongrel_cluster/<br>
mongrel_cluster_ctl uses them to start instances. No scanning, no copying.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
