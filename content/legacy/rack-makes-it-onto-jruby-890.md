---
title: Rack Makes It Onto JRuby
date: '2008-05-11'
author: Peter Cooper
author_slug: admin
post_id: 890
slug: rack-makes-it-onto-jruby-890
url: "/rack-makes-it-onto-jruby-890.html"
categories:
- jruby
---

{{< rawhtml >}}
<p><img src="/assets/2008/05/rack-logo.jpg" width="340" height="170" alt="rack-logo.png">Most Ruby developers should be familiar with <a href="http://rack.rubyforge.org/">Rack</a>, an interface / library that abstracts away a lot of the banalities of hooking up application code to HTTP servers. It's used by several Ruby Web application frameworks already, some as a default - such as Merb, and others as an optional extra - such as Rails. Rack is significant because it provides a <span style="font-style: italic;">standard</span> for Web-facing Ruby applications and frameworks to adhere to and is rapidly becoming the <span style="font-style: italic;">de-facto</span> standard in this space.</p>
<p>Nick Sieger has developed <a href="http://blog.nicksieger.com/articles/2008/05/08/introducing-jruby-rack">JRuby-Rack</a>, a variant of Rack that runs on the Java-based Ruby implementation, <a href="http://jruby.codehaus.org/">JRuby</a>. You can use it to run any Rack-compatible application (e.g. Rails or Merb applications) inside a Java application server. This is significant because it gives application developers an independent, abstracted way to roll out Ruby-based Web applications on a Java server with significant ease (at least, more ease than before!).<br>
If JRuby's of particular interest to you, you might also want to check out <a href="http://www.jrubyinside.com/">JRuby Inside</a>, one of Ruby Inside's sister sites, and one dedicated entirely to JRuby links and news.</p>
<p><em><strong>This post is sponsored by Rails Kits —</strong> Looking to build a subscription-based or membership web site with Rails? Use the <a href="http://railskits.com/saas/">SaaS Rails Kit</a> to skip having to write the billing code. Instead of starting from scratch, start with subscription management and recurring billing all ready to go.</em></p>
{{< /rawhtml >}}
