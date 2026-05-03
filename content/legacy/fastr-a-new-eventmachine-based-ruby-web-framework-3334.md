---
title: Fastr – A new EventMachine-based Ruby Web framework
date: '2010-06-10'
author: Peter Cooper
author_slug: admin
post_id: 3334
slug: fastr-a-new-eventmachine-based-ruby-web-framework-3334
url: "/fastr-a-new-eventmachine-based-ruby-web-framework-3334.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<blockquote class="stylized">
<p>Rails can scale, but it is not inherently very good when it comes to an individual instance’s performance. While this is hopefully changing in Rails 3, I wanted to see what kind of concurrency and performance I could get out of a simple EventMachine web application. Thus, fastr was born. [..]</p>
<p>The core of fastr runs on an EventMachine reactor, which is basically just a big event loop. EventMachine is very capable of maintaining thousands of connections in one instance. This is great when you want an application that supports Comet and chunked responses. There is very minimal overhead in having thousands of connections that have occasional data flowing through.</p>
</blockquote>
<p><cite>Chris Moos</cite></p>
<p>An interesting experiment with EventMachine. The number of minor Ruby webapp frameworks has now hit triple digits :-)</p>
{{< /rawhtml >}}
