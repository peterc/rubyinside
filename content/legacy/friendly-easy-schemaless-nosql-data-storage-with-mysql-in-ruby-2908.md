---
title: 'Friendly: Easy Schemaless “NoSQL” Data Storage with MySQL in Ruby'
date: '2009-12-21'
author: Peter Cooper
author_slug: admin
post_id: 2908
slug: friendly-easy-schemaless-nosql-data-storage-with-mysql-in-ruby-2908
url: "/friendly-easy-schemaless-nosql-data-storage-with-mysql-in-ruby-2908.html"
categories:
- cool
- elsewhere
---

{{< rawhtml >}}
<p><img src="/assets/2009/12/friendly.png" width="110" height="110" alt="friendly.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"> <a href="http://friendlyorm.com/">Friendly</a> is a new Ruby ORM (a la ActiveRecord) that lets you easily use NoSQL ideas on regular database engines, such as MySQL. Developer James Golick has written <a href="http://jamesgolick.com/2009/12/16/introducing-friendly-nosql-with-mysql-in-ruby.html">a blog post introducing Friendly</a> that goes into detail on how it works - with code examples. Effectively you get schema-less, document-like storage (with indexes!) but based around MySQL.</p>
<p>If you're not familiar with "<a href="http://en.wikipedia.org/wiki/NoSQL">NoSQL</a>", it's a blanket/branding term (somewhat like AJAX or Web 2.0) that covers non-relational forms of databases that, typically, have no need for SQL. A common subset of NoSQL technologies is the "document-based database," as provided by systems like <a href="http://couchdb.apache.org/">CouchDB</a> or <a href="http://www.mongodb.org/">MongoDB</a> (for which RailsTips author John Nunemaker <a href="http://railstips.org/2009/12/18/why-i-think-mongo-is-to-databases-what-rails-was-to-frameworks">has evangelized strongly</a>).</p>
<p>An issue many people are having with the various NoSQL systems available is that they're not all "battle hardened" or as familiar to administer than their existing MySQL or Postgres systems. Social aggregator FriendFeed wrote about <a href="http://bret.appspot.com/entry/how-friendfeed-uses-mysql">how they use MySQL to store schema-less data</a>, and Friendly is based on the same techniques.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>@pauliephonic</strong> &middot; <time datetime="2009-12-22T00:48:00+00:00">December 22, 2009 at 12:48 am</time></p>
      <p>I created something similar last year called HybridDB. You can find it here: <a href="http://github.com/pauliephonic/hybriddb" rel="nofollow">http://github.com/pauliephonic/hybriddb</a> and some explanation and tutorials here: <a href="http://hybriddb.org/pages/tutorial_starter" rel="nofollow">http://hybriddb.org/pages/tutorial_starter</a>.</p><p>I had abandoned the whole idea of schema-less db after it didn't fit a few projects which needed non ruby access to the data. Glad to see someone finding it performant enough for a large public site. I'll maybe revisit the idea, I had a few other ways I had wanted to take the concept.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hubert Łępicki</strong> &middot; <time datetime="2009-12-23T13:16:00+00:00">December 23, 2009 at 1:16 pm</time></p>
      <p>I think the whole idea of schema-less database is not right. Don't get me wrong, I like the ability to add fields ad I need it, but I always end up using some sort schama for my data. Even today, when I use MongoDB with MongoMapper I define fields in my model. I don't need a migration any more and I can add some extra fields in future easily, but I do:</p><p>class MyClass<br>
  include MongoMapper::Document<br>
  key :something, String<br>
  key :otherthing, Integer<br>
end</p><p>I know that in some situations it's not enough, but it's good for 90% of my needs.</p><p>About mentioned solution with MySQL... is it only me thinking it's not justified and misuse of relational database? Still see no point in why I just wouldn't use Mongo. Or Couch. Or something that was designed to be schema-free.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>logan</strong> &middot; <time datetime="2009-12-27T06:45:00+00:00">December 27, 2009 at 6:45 am</time></p>
      <p>I also did a NoSQL style rails plugin that runs on top of MySQL, for much the same reason that FriendFeed did.  See my repos at <a href="http://github.com/henriquez/use_uuid" rel="nofollow">http://github.com/henriquez/use_uuid</a> and <a href="http://github.com/henriquez/acts_as_distributed" rel="nofollow">http://github.com/henriquez/acts_as_distributed</a>.  These have been in production at <a href="http://workne.ws" rel="nofollow">http://workne.ws</a> for about 9 months.</p><p>Schema-less in the database doesn't have to mean that at the ORM layer there is no schema.  My plugin defines a schema in each model using a simple DSL instead of defining it in the db schema, much like what Hubert illustrates above.  Simple migration plus the benefits of having some definition around attributes.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>marc</strong> &middot; <time datetime="2010-01-03T01:38:00+00:00">January 3, 2010 at 1:38 am</time></p>
      <p>do you mind changing the title of this article every time i see it in my rss reader i misread schemaless and get disturbing images in my head</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
