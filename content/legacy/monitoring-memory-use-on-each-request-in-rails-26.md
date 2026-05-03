---
title: Monitoring memory use on each request in Rails
date: '2006-06-02'
author: Peter Cooper
author_slug: admin
post_id: 26
slug: monitoring-memory-use-on-each-request-in-rails-26
url: "/monitoring-memory-use-on-each-request-in-rails-26.html"
categories:
- elsewhere
- ruby-on-rails
---

{{< rawhtml >}}
<p>An oldie but a goldie.. <a href="http://www.datanoise.com/">Kent Siblev</a> had an issue with his Rails application ballooning to 150 megabytes of memory usage per process. He couldn't figure out where the problem was, so he wrote <a href="http://www.datanoise.com/articles/2006/03/17/rails-and-response-streaming">a small plugin called MemoryLogging to check memory usage</a> on each request <em>(Linux only, I'm afraid)</em>. He found his problem within minutes and explains what was going on.</p>
{{< /rawhtml >}}
