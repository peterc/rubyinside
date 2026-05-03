---
title: Building A Well Formed Number Handling Class From Scratch
date: '2010-02-25'
author: Peter Cooper
author_slug: admin
post_id: 3011
slug: building-a-well-formed-number-handling-class-from-scratch-3011
url: "/building-a-well-formed-number-handling-class-from-scratch-3011.html"
categories:
- ruby-tricks
- tutorials
---

{{< rawhtml >}}
<p>Over on the <a href="ruby-best-practices-best-new-ruby-blog-1833.html">Ruby Best Practices blog</a>, <img src="/assets/2010/02/somenums.png" width="117" height="121" alt="somenums.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;">Robert Klemme walks through <a href="http://blog.rubybestpractices.com/posts/rklemme/019-Complete_Numeric_Class.html"><b>the process of building a new numeric class from scratch in Ruby</b></a> - taking into account all the gotchas and considerations that pop up along the way. Robert's task is harder and more involved than you'd initially suspect.!</p>
<p>Robert chooses to build a <code>HexNum</code> class that can represent integers that are then displayed as hex numbers. There are considerations to be made with handling conversions from existing numeric types and his new <code>HexNum</code> class, conversions <i>to</i> other types, supporting standard comparison methods, and overloading.</p>
<p>All of the above concerns are covered in the post with all the quality and detail you should expect from the RBP blog by now. This post in particular should prove interesting to most Ruby developers who feel happy digging deep (no, this isn't an article for beginners!).</p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><em>[job]</em> <b>BeenVerified.com</b> is currently <a href="http://ruby.jobamatic.com/a/jbb/job-details/172958">looking for a Ruby and Rails developer</a> to join their team in New York City. Alternatively, check out one of the <a href="http://jobs.rubyinside.com/a/jbb/find-jobs">other 12 jobs on our Ruby jobs board!</a></p>
{{< /rawhtml >}}
