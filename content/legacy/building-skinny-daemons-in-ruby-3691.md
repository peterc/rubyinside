---
title: Building “skinny daemons” in Ruby
date: '2010-08-18'
author: Peter Cooper
author_slug: admin
post_id: 3691
slug: building-skinny-daemons-in-ruby-3691
url: "/building-skinny-daemons-in-ruby-3691.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<blockquote class="stylized"><p>[W]e’ve been having a lot of fun writing a series of small, self-contained web apps .. When we’re building these kinds of applications, which are often meant as low-ceremony apps targeted at a very specific purpose, or as service utilities, a lot of the time we don’t want to go through the hassle associated with a “normal” web app.</p></blockquote>
<p><cite>Dave Hrycyszyn</cite></p>
<p>In <a href="http://labs.headlondon.com/2010/07/skinny-daemons/">Skinny Daemons</a>, Dave Hrycyszyn presents a practical walkthrough of how he builds what he calls "skinny daemons" - small, HTTP based daemons to perform single tasks that are then packaged up into gems for easy installation (across multiple servers, for example). It's a practical demonstration and holds your hand the whole way. Useful stuff.</p>
<p>An example of a skinny daemon is <a href="http://github.com/futurechimp/enigmamachine">enigmamachine</a>, a video processor Web service using <em>ffmpeg</em> to convert videos to profiles of your choice.</p>
{{< /rawhtml >}}
