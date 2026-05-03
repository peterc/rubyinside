---
title: Getting Started with MongoDB and Ruby
date: '2009-06-30'
author: Ric Roberts
author_slug: ricroberts
post_id: 1875
slug: getting-started-mongodb-ruby-1875
url: "/getting-started-mongodb-ruby-1875.html"
categories:
- miscellaneous
- tools
---

{{< rawhtml >}}
<p><img class="alignnone size-medium wp-image-1874" style="float:left; margin-bottom: 12px; margin-right: 12px;" title="mongomapper_logo" src="/assets/2009/06/mongomapper_logo.jpg" alt="mongo mapper"> <a href="http://www.mongodb.org/">MongoDB</a> a is a high-performance, open source, schema-free, document-oriented database written in C++. It's sort of a cross between scalable key/value stores and traditional functionality-rich relational databases.</p>
<p>MongoDB might be useful as a fast, simple, non-transactional data store for a web application, or as a caching mechanism.  You don't ever need to worry about migrations due to Mongo's schema-less nature.</p>
<p>Getting started with MongoDB using Ruby is now fairly straightforward thanks to the <a href="http://github.com/mongodb/mongo-ruby-driver/tree/master">Mongo Ruby driver</a>. This provides access to the core Mongo database operations, and natively supports many Ruby objects without requiring conversion (including nested hashes).  There's even an <a href="http://github.com/mongodb/activerecord-mongo-adapter/tree/master">ActiveRecord connection adapter for Mongo</a>.</p>
<p>Earlier this week, John Nunemaker announced his <a href="http://railstips.org/2009/6/27/mongomapper-the-rad-mongo-wrapper">MongoMapper</a>, a wrapper for MongoDB which includes typecasting, callbacks, validations and other ActiveRecord-like features. The project is heading towards drop-in Rails compatibility.</p>
<p>MongoMapper uses a default connection from the Ruby driver, and to create a MongoMapper model you just need to include <code>MongoMapper::Document</code> in the class (as opposed to ActiveRecord's inheritance pattern).  From there, it's simple to define your document's keys, validations and callbacks.</p>
<p>The MongoMapper gem is available from RubyForge or <a href="http://github.com/jnunemaker/mongomapper/tree/master">Github</a>, and you can read more on <a href="http://railstips.org/2009/6/27/mongomapper-the-rad-mongo-wrapper">RailsTips</a>.</p>
<div style="background-color: #ffd; padding: 8px; font-family: verdana; font-size: 12px">
<a href="http://mobileorchard.com/inside" rel="nofollow"><img src="/assets/2009/06/rupho.png" width="74" height="40" alt="rupho.png" style="float:left; margin-right:12px;"></a><em>Also worth seeing.. </em> <strong>Mobile Orchard's <a href="http://mobileorchard.com/ri">Beginning iPhone Programming Workshop</a>.</strong>  Bay Area/July 30-31.  Seattle/Aug 20-21. Ruby Inside discount of $200 -- use "ri" discount code.</div>
{{< /rawhtml >}}
