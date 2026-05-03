---
title: Port scanning and monitoring with Ruby and TCP sockets
date: '2006-06-03'
author: Peter Cooper
author_slug: admin
post_id: 31
slug: port-scanning-and-monitoring-with-ruby-and-tcp-sockets-31
url: "/port-scanning-and-monitoring-with-ruby-and-tcp-sockets-31.html"
categories:
- elsewhere
- miscellaneous
---

{{< rawhtml >}}
<p><a href="http://beer-monkey.com/">Craig Webster</a> has posted several times over the few days about his adventures with sockets in Ruby. He provides nice code examples (even doing socket stuff direct from irb!) and his explanations are useful if you know what you're doing with Ruby, but haven't tried doing any TCP or socket work yet:</p>
<ul>
<li>
<a href="http://beer-monkey.com/articles/2006/05/30/socket-programming-in-ruby">Absolute basics: Connecting to ports</a> - First, Craig looks at how easy it is to connect to a remote port and how to check if a port is open.</li>
<li>
<a href="http://beer-monkey.com/articles/2006/06/01/concurrent-socket-programming-in-ruby">Concurrent socket programming</a> - Craig moves on to using Ruby threads to connect to multiple ports at the same time, building a very basic port scanner.</li>
<li>
<a href="http://beer-monkey.com/articles/2006/06/03/forking-ruby-processes">A more advanced port checker</a> - Using forking and threads to build a more advanced port checker.</li>
</ul>
<p>I hope Craig continues to post stuff like this as his blog could soon become a must-read.</p>
{{< /rawhtml >}}
