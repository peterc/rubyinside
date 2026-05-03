---
title: A Walk Through the Ruby Object Model
date: '2009-03-06'
author: Peter Cooper
author_slug: admin
post_id: 1608
slug: a-walk-through-the-ruby-object-model-1608
url: "/a-walk-through-the-ruby-object-model-1608.html"
categories:
- elsewhere
- reference
---

{{< rawhtml >}}
<p><img src="/assets/2009/03/rom.png" width="137" height="81" alt="rom.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"> Vidar Hokstad is the writer behind the fine <a href="http://www.hokstad.com/compiler">Writing a Compiler in Ruby</a> series, but he's taken a break to <a href="http://www.hokstad.com/ruby-object-model.html">explain the structure and semantics of the Ruby object model</a>. It's a fine walkthrough.</p>
<p>Vidar takes us through what objects really "are" (a bundle of things, such as a reference to a class, a table of instance variables, and a set of flags) but also explains the exceptions (for example, <code>FixNum</code>s, <code>nil</code>s, <code>true</code>, <code>false</code>, and symbols are represented "natively" in the 32-bits where a pointer to an object's metadata would usually be stored - this is one of the reasons why symbols are so efficient).</p>
<p>Going further, Vidar walks through class relationships (including metaclasses/virtual classes) modules, message sending, and method_missing.</p>
{{< /rawhtml >}}
