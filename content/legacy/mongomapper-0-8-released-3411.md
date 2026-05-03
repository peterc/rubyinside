---
title: MongoMapper 0.8 Released
date: '2010-06-16'
author: Peter Cooper
author_slug: admin
post_id: 3411
slug: mongomapper-0-8-released-3411
url: "/mongomapper-0-8-released-3411.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<blockquote class="stylized"><p>Features added include a sexy query language, scopes, attr_accessible, a fancy cache key helper, a :typecast option for array/set keys, and a bajillion little improvements. Let’s run through each of them just for fun.</p></blockquote>
<p><cite>John Nunemaker</cite></p>
<p>If you're using the <a href="http://www.mongodb.org/">MongoDB</a> document oriented "NoSQL" database from Ruby at all, you owe it to yourself to try John Nunemaker's <a href="http://github.com/jnunemaker/mongomapper">MongoMapper</a> - it's practically the ActiveRecord of the MongoDB world.</p>
<p>The latest version is a strong step forward. ActiveRecord-esque scoping has been added, and a smart new querying DSL has been implemented that lets you do things like:</p>
<pre><code>User.where(:age.gt =&gt; 27).sort(:age).skip(1).limit(1).all</code></pre>
<p>If you're not using MongoDB at all and aren't sure what all the hoopla is about, John's <a href="http://railstips.org/blog/archives/2009/12/18/why-i-think-mongo-is-to-databases-what-rails-was-to-frameworks/">Why I Think Mongo Is To Databases What Rails Was To Frameworks</a> from December 2009 is a great high-level introduction to the concepts involved. I'm using it (and MongoMapper) on <a href="http://coder.io/">coder.io</a> and love it so far.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>John Nunemaker</strong> &middot; <time datetime="2010-06-16T23:51:00+00:00">June 16, 2010 at 11:51 pm</time></p>
      <p>Glad you are enjoying mongo and mongomapper.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
