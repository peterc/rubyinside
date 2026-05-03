---
title: 'paginating_find: A paginating finder for Rails'
date: '2006-08-29'
author: Peter Cooper
author_slug: admin
post_id: 211
slug: paginating_find-a-paginating-finder-for-rails-211
url: "/paginating_find-a-paginating-finder-for-rails-211.html"
categories:
- elsewhere
- ruby-on-rails
---

{{< rawhtml >}}
<p>This isn't particularly new, alas, but still interesting:<em><br>
</em><br>
</p>
<blockquote><em><br>
Got 15,842 records that you’d like to export to a file? Using the standard the Rails ActiveRecord::Base#find method will load all 15,842 into memory all at once and return them all in an array. If your app is running on a shared host, or if you’re keeping your app on a memory budget, this is a big problem for you. So you could load each record one by one, but that’ll kill your db server. Wouldn’t it be sweet if #find could return an enumerable that would load your records in batches of say 1,500 records? Well with my new nifty-jifty paginating_find plugin, it can.</em></blockquote>
<p>Alex Wolfe <a href="http://cardboardrocket.com/2006/05/17/lots-of-records-on-a-memory-budget/">has the skinny</a>.</p>
{{< /rawhtml >}}
