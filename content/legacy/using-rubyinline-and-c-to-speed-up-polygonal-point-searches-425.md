---
title: Using RubyInline and C To Speed Up Polygonal Point Searches
date: '2007-03-19'
author: Peter Cooper
author_slug: admin
post_id: 425
slug: using-rubyinline-and-c-to-speed-up-polygonal-point-searches-425
url: "/using-rubyinline-and-c-to-speed-up-polygonal-point-searches-425.html"
categories:
- cool
- elsewhere
- ruby-tricks
---

{{< rawhtml >}}
<p><a href="http://blog.evanweaver.com/">Evan Weaver</a> had a basic problem to solve:</p>
<blockquote><p>We need to compute whether a point lies within a polygon. And we need to do it a lot.</p></blockquote>
<p>Due to MySQL's lacking geometry features, Evan had to perform location searches using Ruby code to find points within certain polygons. Keen for a speed-up, Evan <a href="http://blog.evanweaver.com/articles/2007/03/14/getting-dirty-with-rubyinline">digs out some C code from 1987 and sets about using RubyInline to speed up the whole process</a>. The end result? A 22x increase of speed.</p>
<p>Of particular interest to RubyInline newbies will be the way Evan had to adjust the C code for it to work directly on Ruby objects.</p>
{{< /rawhtml >}}
