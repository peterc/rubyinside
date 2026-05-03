---
title: 'Passenger 3 Tech Preview 3: Easier Deployment with Passenger Lite'
date: '2010-07-02'
author: Peter Cooper
author_slug: admin
post_id: 3495
slug: passenger-3-tech-preview-3-easier-deployment-with-passenger-lite-3495
url: "/passenger-3-tech-preview-3-easier-deployment-with-passenger-lite-3495.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<blockquote class="stylized">
<p>Phusion Passenger 3 introduces a new component to the existing lineup: Phusion Passenger Lite. When it comes to usage, its interface is almost identical to that of Mongrel and Thin.</p>
<p>Unlike Mongrel, Thin and Unicorn, Phusion Passenger Lite can be directly exposed to the Internet. It can serve static files at blazing speeds thanks to the Nginx core. Mongrel and Thin can serve static files but they aren’t very good at it. Unicorn doesn’t even try.</p>
</blockquote>
<p><cite>Hongli Lai</cite></p>
<p>It's <a href="http://blog.phusion.nl/2010/07/01/the-road-to-passenger-3-technology-preview-3-closing-the-gap-between-development-and-production-rethinking-the-word-easy/">the latest</a> in the series of "tech preview" posts from the Phusion guys (of Passenger/mod_rails fame). Passenger 3 still isn't released but this time around they show off a new subsystem called "Passenger Lite" - a Nginx-backed "one line and you're done" quick deployment option for both development and production environments. You can even serve an entire suite of apps from a single "instance."</p>
{{< /rawhtml >}}
