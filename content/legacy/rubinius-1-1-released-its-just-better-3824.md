---
title: 'Rubinius 1.1 Released: It’s Just Better'
date: '2010-09-24'
author: Peter Cooper
author_slug: admin
post_id: 3824
slug: rubinius-1-1-released-its-just-better-3824
url: "/rubinius-1-1-released-its-just-better-3824.html"
categories:
- news
---

{{< rawhtml >}}
<p>Version 1.1 is the latest release of <a href="http://rubini.us/">Rubinius</a>, a Ruby implementation based around a C++ and LLVM virtual machine but with the bytecode compiler and majority of the core written in Ruby itself. It's often called a "Ruby in Ruby." We <a href="the-why-what-and-how-of-rubinius-1-0-s-release-3261.html">celebrated and explained the background</a> to Rubinius' 1.0 release 4 months ago.</p>
<p><img src="/assets/2010/09/0001.png" alt="" title="0001" width="460" height="182" class="alignnone size-full wp-image-3825"></p>
<p>The Rubinius 1.1 release brings the typical benefits to the table — performance improvements, bug fixes, improved memory usage, and increased stability (notably with Rails 3) — and brings together 546 commits from 16 developers led by Evan Phoenix. More technically, additions include block inlining within the JIT system, a new GIL algorithm, a "report" system for VM crashes, and better checks for detecting bad extensions.</p>
<p>The Rubinius team have promised some blog posts over the next few weeks going into the new features, so if you want to keep up, follow <a href="http://twitter.com/rubinius">their Twitter account @rubinius.</a> Dirkjan Bussink also have a <a href="http://rubyandrails.eu/articles/dirkjan-bussink-explains-rubinius-at-rar10">Rubinius talk</a> lined up for October's <a href="http://rubyandrails.eu/">Ruby and Rails conference</a> in Amsterdam (tickets now on sale).</p>
<h3>Installing Rubinius 1.1</h3>
<p>You can download a tarball archive or binary installer (OS X only) from the <a href="http://rubini.us/">rubini.us</a> Web site, but it's also possible to use <a href="http://rvm.beginrescueend.com/">RVM</a> to manage the installation. If you're using RVM, try this:</p>
<pre><code>rvm update --head
rvm reload
rvm install ruby-1.8.7-p249  # only if you don't already have it installed.. the Rubinius build process uses it
rvm install rbx-1.1.0</code></pre>
{{< /rawhtml >}}
