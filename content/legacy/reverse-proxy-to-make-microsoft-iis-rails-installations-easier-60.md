---
title: Reverse proxy to make Microsoft IIS Rails installations easier
date: '2006-06-09'
author: Peter Cooper
author_slug: admin
post_id: 60
slug: reverse-proxy-to-make-microsoft-iis-rails-installations-easier-60
url: "/reverse-proxy-to-make-microsoft-iis-rails-installations-easier-60.html"
categories:
- ruby-on-rails
---

{{< rawhtml >}}
<p>I'm not a Windows user at all, but <a href="http://www.reztec.co.uk/rforward">RForward</a> struck me as perhaps being very interesting to those wanting to roll out Rails apps on Windows servers. It sounds like some of the new UNIX-side solutions to deploying Rails applications.. that is, proxying requests from one daemon to another rather than doing it all from one.</p>
<blockquote>
<p><em><a href="http://www.reztec.co.uk/rforward">RForward</a></em><em> is a reverse proxy designed to make Ruby on Rails applications easy to install into Microsoft's IIS web-server.</em></p>
<p>The traditional way of installing Ruby on Rails applications into IIS is to use FastCGI. I have written a tutorial - as you can see it is quite long-winded and error-prone.</p>
<p>RForward will, instead, act as a reverse proxy. The request will come into IIS, be routed to RForward, which in turn will send the request to a Ruby web-server. The Ruby web-server will dispatch the request to Rails and the response will be routed back in reverse order to the original client. </p>
</blockquote>
{{< /rawhtml >}}
