---
title: Under The Hood of Rails’ ‘find’ Method
date: '2006-12-05'
author: Peter Cooper
author_slug: admin
post_id: 317
slug: under-the-hood-of-rails-find-method-317
url: "/under-the-hood-of-rails-find-method-317.html"
categories:
- cool
- elsewhere
- ruby-on-rails
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2006/12/jamis-find.jpg" height="170" width="298" border="1" hspace="4" vspace="4" alt="Jamis-Find"></p>
<p><a href="http://weblog.jamisbuck.org/">Jamis Buck</a> has put together a cool series of articles about ActiveRecord's <em>find</em> method as used in Rails. He goes into a lot of detail about how find and its related methods work in terms of the internals of ActiveRecord. Jamis' explanations are not only useful for Rails developers, but for anyone interested in patterns and how to structure code in Ruby. The Rails team don't <em>always</em> do everything the '<em>best'</em> way, but it's usually tight, well developed code you can learn a lot from.</p>
<p>In <a href="http://weblog.jamisbuck.org/2006/11/17/under-the-hood-activerecord-base-find-part-1">the first installment</a>, Jamis just presents a basic introduction to his series.</p>
<p>In <a href="http://weblog.jamisbuck.org/2006/11/20/under-the-hood-activerecord-base-find-part-2">the second installment</a>, he leaps right in to the details of find and its child methods,<em> find_from_ids</em>, <em>find_every</em> and <em>find_initial</em>. If you want to see how the <em>find</em> methods put together the correct SQL queries, it's a must read, and it takes away a lot of the 'mystery' of the black box that is ActiveRecord.</p>
<p>In the <a href="http://weblog.jamisbuck.org/2006/12/1/under-the-hood-activerecord-base-find-part-3">latest, third, installment</a>, Jamis looks at dynamic finders (e.g. <em>find_by_username_and_password</em> and similar).</p>
<p>Hopefully Jamis will keep posting stuff like this because it makes fascinating reading.</p>
{{< /rawhtml >}}
