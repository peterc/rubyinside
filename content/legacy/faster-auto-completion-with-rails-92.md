---
title: Faster Auto-Completion with Rails
date: '2006-06-16'
author: Peter Cooper
author_slug: admin
post_id: 92
slug: faster-auto-completion-with-rails-92
url: "/faster-auto-completion-with-rails-92.html"
categories:
- cool
- elsewhere
- ruby-on-rails
---

{{< rawhtml >}}
<p>Derek Haynes <a href="http://cleanair.highgroove.com/articles/2006/06/15/snippet-faster-auto-completion-with-rails">laments</a>:</p>
<blockquote><p><em>Auto-Complete is a great tool when it provides possible results BEFORE you finish typing. Unfortunately, using Rails’s included AJAX helpers to query the database as you type often results in a large delay before matches are returned.</em></p></blockquote>
<p>There have been small hacks from several people to help resolve this, but Derek <a href="http://cleanair.highgroove.com/articles/2006/06/15/snippet-faster-auto-completion-with-rails">presents a simple local_auto_complete_field helper</a> (with source to use right away) that lets you specify some pre-fetched results for the autocompleter to use right away.</p>
{{< /rawhtml >}}
