---
title: 'Cramp: Asychronous Event-Driven Ruby Web App Framework'
date: '2010-01-07'
author: Peter Cooper
author_slug: admin
post_id: 2928
slug: cramp-asychronous-event-driven-ruby-web-app-framework-2928
url: "/cramp-asychronous-event-driven-ruby-web-app-framework-2928.html"
categories:
- cool
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2010/01/got-the-cramp.png" width="101" height="110" alt="got-the-cramp.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"><a href="http://m.onkey.org/2010/1/7/introducing-cramp">Cramp</a> <sup>(<a href="http://github.com/lifo/cramp">GitHub repo</a>)</sup>is a new, asychronous evented Web app framework by Pratik Naik of 37signals (and the Rails core team). It's built around Ruby's <a href="http://rubyeventmachine.com/">EventMachine</a> library and was designed to use event-driven I/O throughout - making it ideal for situations where you need to handle a large number of open connections (such as <a href="http://en.wikipedia.org/wiki/Comet_(programming)">Comet</a> systems or streaming APIs.)</p>
<p>Out of the box, Cramp relies on Rails 3.0-pre's ActiveSupport and <a href="http://github.com/rails/rails/tree/master/activemodel">ActiveModel</a> libraries (and won't work with earlier versions). Using these, it presents you with two layers to develop: controllers and models. Cramp controllers are ostensibly Rack compliant (Rack was designed primarily for synchronous scenarios) but <a href="http://code.macournoyer.com/thin/">Thin</a> is currently the only HTTP daemon that can run Cramp apps due to its asynchronous app support.</p>
<p>Cramp models are built around a custom asynchronous MySQL-only ORM built on top of <a href="http://github.com/rails/arel">Arel</a> and ActiveModel. Compared to the controllers, it seems to be at a very embryonic stage though it supports data methods like all, first, each, where, select, group, order, limit and offset. For basic CRUD functionality, it should do the job fine.</p>
<p>Pratik has a basic "hello world" example to show off the general structure of a Cramp app:</p>
<p><img src="/assets/2010/01/cramp-hello-world.png" width="415" height="200" alt="cramp-hello-world.png"></p>
<p>To learn more, read Pratik's <a href="http://m.onkey.org/2010/1/7/introducing-cramp">Introducing Cramp blog post</a>. He's presented a lot of examples to get you going.</p>
{{< /rawhtml >}}
