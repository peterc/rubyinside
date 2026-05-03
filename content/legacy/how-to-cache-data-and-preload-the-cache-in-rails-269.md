---
title: How to Cache Data and Preload The Cache in Rails
date: '2006-10-17'
author: Peter Cooper
author_slug: admin
post_id: 269
slug: how-to-cache-data-and-preload-the-cache-in-rails-269
url: "/how-to-cache-data-and-preload-the-cache-in-rails-269.html"
categories:
- cool
- ruby-on-rails
- ruby-tricks
---

{{< rawhtml >}}
<p>Courtenay has come up with <a href="http://blog.caboo.se/articles/2006/10/14/premcache-caching-and-precaching-with-memcached">an ingenious solution to caching and precaching in Ruby on Rails with memcached</a>. It caches data from database requests, as you'd expect, but you can also put together a special forking method that caches data in advance. Courtenay's suggestion for this is if a user does a search and you cache the initial page of search results, you could speculate the user might progress onto page two of the search, so you can get Rails to precache that data in advance so the next page load is blazing fast.</p>
{{< /rawhtml >}}
