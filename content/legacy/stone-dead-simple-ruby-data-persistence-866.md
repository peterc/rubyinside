---
title: 'Stone: Dead-Simple Ruby Data Persistence'
date: '2008-04-20'
author: Peter Cooper
author_slug: admin
post_id: 866
slug: stone-dead-simple-ruby-data-persistence-866
url: "/stone-dead-simple-ruby-data-persistence-866.html"
categories:
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2008/04/stone.jpg" width="250" height="188" alt="stone.png"></p>
<p><a href="http://stone.rubyforge.org/">Stone</a> is a new Ruby library developed by Nick DeMonner that seems to have got a nice bit of buzz in the last week. It's a data persistence library that provides "plug and play data persistence for any application or framework," and it boasts speed and simplicity. Rather than use a database and an ORM like ActiveRecord, Stone takes care of everything in an abstract manner. Data is "persisted" to files within a directory underneath your app.</p>
<p>The <a href="http://stone.rubyforge.org/">official Stone homepage</a> gives some interesting examples, including replacing ActiveRecord with Stone in a Rails application. It <em>is</em> surprisingly simple, but by its own admission Stone is "extremely immature." It certainly looks well developed though, but if you're already happy with SQLite 3 and ActiveRecord (a surprisingly proficient combination) there might not be any compelling reasons to switch just yet.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Nick C</strong> &middot; <time datetime="2008-04-21T10:00:00+00:00">April 21, 2008 at 10:00 am</time></p>
      <p>The concept reminds of Prevayler in Java - persisting/marshalling object graphs to the HDD (and cached in memory). I seem to remember that project proving controversial back when it was released (2004?)...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Anonymous Coward</strong> &middot; <time datetime="2008-04-21T13:42:00+00:00">April 21, 2008 at 1:42 pm</time></p>
      <p>Nick's great work aside, can we all agree that "dead-simple", as a phrase, is overused and done, especially when it comes to anything Ruby?</p><p><a href="http://www.google.com/search?q=dead+simple+ruby" rel="nofollow">http://www.google.com/search?q=dead+simple+ruby</a></p><p>I'm hoping the marketing and business school folks will adopt it so that developers will shun it forever.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Garth</strong> &middot; <time datetime="2008-04-22T11:47:00+00:00">April 22, 2008 at 11:47 am</time></p>
      <p>Maybe 'Super-Easy' Ruby data Persistence instead ?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bob Aman</strong> &middot; <time datetime="2008-04-22T21:10:00+00:00">April 22, 2008 at 9:10 pm</time></p>
      <p>Perhaps no compelling reason... unless, like me, you really hate ActiveSupport and by extension, ActiveRecord.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
