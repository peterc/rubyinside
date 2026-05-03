---
title: Getting Code Ready for Ruby 1.9
date: '2008-01-03'
author: Peter Cooper
author_slug: admin
post_id: 686
slug: getting-code-ready-for-ruby-19-686
url: "/getting-code-ready-for-ruby-19-686.html"
categories:
- miscellaneous
- ruby-tricks
---

{{< rawhtml >}}
<p>In <a href="http://blog.grayproductions.net/articles/getting_code_ready_for_ruby_19">Getting Code Ready for Ruby 1.9</a>, James Edward Gray II is attempting to put together a comprehensive blog post on the various things you need to do to migrate your Ruby 1.8 code over to working on Ruby 1.9. So far, James only looks at a handful of potentially sticky areas, but commenters have already started chipping in with suggestions, including how to rewrite the <a href="http://onestepback.org/index.cgi/Tech/Ruby/BlankSlate.rdoc">BlankSlate</a> class for Ruby 1.9.</p>
<p>Further afield, Sam Ruby has written <a href="http://intertwingly.net/blog/2007/12/31/Porting-REXML-to-Ruby-1-9">Porting REXML to Ruby 1.9</a> where he rattles off a laundry-list of things he's had to do to get REXML ported to Ruby 1.9. This will also be a useful read for those migrating code to 1.9.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jon Wood</strong> &middot; <time datetime="2008-01-04T10:31:00+00:00">January 4, 2008 at 10:31 am</time></p>
      <p>I'm not sure if this will be included in 1.9 or not (I've not installed it yet, since I'm almost exclusively on Rails), but Mauricio Fernandez's changelog seems to imply that their is a new object available called SimpleClass, which seems to be the equivalent to BlankSlate.</p><p><a href="http://eigenclass.org/hiki/Changes+in+Ruby+1.9#l22" rel="nofollow">http://eigenclass.org/hiki/Changes+in+Ruby+1.9#l22</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
