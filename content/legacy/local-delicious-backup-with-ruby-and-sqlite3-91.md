---
title: Local del.icio.us backup with Ruby and SQLite3
date: '2006-06-16'
author: Peter Cooper
author_slug: admin
post_id: 91
slug: local-delicious-backup-with-ruby-and-sqlite3-91
url: "/local-delicious-backup-with-ruby-and-sqlite3-91.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p>I've noticed many readers are using del.icio.us, so this should come in handy. Someone has developed a <a href="http://www.bigbold.com/snippets/posts/show/290">Ruby script that uses the del.icio.us API to download all of your links</a>, and then uses SQLite to put them into a local database, whereupon you can do whatever you like with them. I just gave it a try and it works well.</p>
<p>It lacks some spit and polish though, and will complain if you run it more than once a day (as it attempts to recreate the tables on the same database). While you can run it daily, it uses a new database for each day, which might also not be so great. With some hacks, though, this could become a very useful tool.</p>
{{< /rawhtml >}}
