---
title: 'CouchRest: CouchDB, Close to the Metal'
date: '2009-09-02'
author: Ric Roberts
author_slug: ricroberts
post_id: 2358
slug: couchrest-couchdb-close-to-the-metal-2358
url: "/couchrest-couchdb-close-to-the-metal-2358.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img style="float:left; margin-right:12px; margin-bottom:12px" src="/assets/2009/08/couch.png" alt="couch">I have been contemplating the use of document-stores in my Ruby apps for a few months (you might remember my <a href="getting-started-mongodb-ruby-1875.html">MongoMapper post</a> from back in June), and I've been following developments in the <a href="http://en.wikipedia.org/wiki/Nosql">No-SQL</a> movement.  George Palmer's presentation at Rails Underground on his <a href="http://github.com/georgepalmer/couch_foo/tree/master">couch_foo</a> gem inspired me to explore the possibilities further, and I've recently started work on incorporating <a href="http://couchdb.apache.org/">CouchDB</a> into some projects that I'm working on.</p>
<h3>What is a "document store?"</h3>
<p><a href="http://couchdb.apache.org/">Couch</a> is one of several available document oriented databases (the other main contender being <a href="http://www.mongodb.org/">MongoDB</a>, for which there's a good comparison <a href="http://www.mongodb.org/display/DOCS/Comparing+Mongo+DB+and+Couch+DB">on the Mongo website</a>).  Document stores go some way to bridging the gap between traditional functionality-rich relational databases (like <a href="http://www.mysql.com/">MySQL</a>, <a href="http://www.postgresql.org/">Postgres</a>) and fast, highly scalable key/value stores (such as <a href="http://tokyocabinet.sourceforge.net/">Toyko Cabinet</a>). I think I should make it clear at this point that I'm not a SQL-hater: I worked as a DBA for a while a few years ago, and if you have truly relational data with a fixed schema and complex transaction requirements then you can't beat a good RDBMS.</p>
<p>With CouchDB and friends, data is held in <em>documents</em>. These documents don't have a fixed schema - they can have any number of arbitrary properties.  This makes document stores great for holding collections of similarly (but not identically) stuctured items.  CouchDB stores the data as JSON hashes, and provides a REST interface for creating, updating and querying.</p>
<h3>Using CouchDB in your Ruby App</h3>
<p>I've already mentioned <a href="http://github.com/georgepalmer/couch_foo/tree/master">couch_foo</a> as one option for interacting with a CouchDB from Ruby app but after a bit of investigation, I eventually decided against it.  Although it provides a familiar ActiveRecord-style interface and seems well-written, I wanted something that was a bit closer to couch's RESTful HTTP and JSON interface.  Also, I wasn't convinced that extending the ActiveRecord paradigm to a document-based database was a good fit. I also dabbled with Alex Lang's <a href="http://github.com/langalex/couch_potato/tree/master">couch_potato</a> library, but finally decided on <a href="http://github.com/couchrest/couchrest">CouchRest</a>.</p>
<h3>CouchRest</h3>
<p>CouchRest lightly wraps CouchDB's HTTP API (via <a href="http://github.com/adamwiggins/rest-client/tree/master">RestClient</a>, <a href="http://heroku.com/">Heroku</a>'s Ruby HTTP wrapper), and provides a simple, Object-Mapper agnostic framework on which to build your application.  Things just work as you'd expect: the JSON that comes back from CouchDB queries are presented as objects based on Ruby Hashes.</p>
<h3>Models, Properties and Views</h3>
<p>With CouchRest, you can define models for documents that share similar structures, deriving from <code>CouchRest::ExtendedDocument</code>. Properties that are common to each Model can be declared with CouchRest's <code>property</code> method. It also supports the automatic setting of created_at and updated_at properties, callbacks and validations.</p>
<p>In Couch, you query and filter your data via <a href="http://books.couchdb.org/relax/design-documents/views">views</a>.  Views are declared as javascript <a href="http://en.wikipedia.org/wiki/MapReduce">map-reduce</a> functions that iterate through all documents in the database, building an ordered index of key-value pairs.  CouchRest lets you declare simple views in Ruby, so that you can look up documents by that property.  If you need more control, there's also the option of passing the raw javascript to the Ruby method.</p>
<pre>class Article &lt; CouchRest::ExtendedDocument

  include CouchRest::Validation

  property :date
  property :title
  property :slug

  view_by :slug

  validates_present :title

  timestamps!

  save_callback :before, :generate_slug_from_title

  def generate_slug_from_title
    self.slug = title.downcase.gsub(/[^a-z0-9]/,'-').squeeze('-').gsub(/^-|-$/,'') if new?
  end
end</pre>
<p>Hopefully this has given you a taster of what CouchDB might be good for, and how CouchRest can help you with integrating it into your Ruby app. Obviously there's much more too it than I've covered here, but this (draft) <a href="http://books.couchdb.org/relax/">online O'Reilly book</a> is a great place to start learning about CouchDB ...and it's co-written by <a href="http://jchrisa.net/drl/_design/sofa/_list/index/recent-posts?descending=true&amp;limit=5">J. Chris Anderson</a>, author of the CouchRest Ruby library.</p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><img style="float:left; margin-left:12px; margin-right:8px; border:1px #000000 solid;" src="/assets/2009/07/jslab.png" alt="jslab.png" width="32" height="35"><em>Also...</em><a rel="nofollow" href="http://jumpstartlab.com">Jumpstart Lab</a> is offering <a rel="nofollow" href="http://jumpstartlab.com/courses/ruby/090926"><strong>Ruby Jumpstart</strong></a>, an introduction to programming for total beginners, on 9/26-9/27 in Washington, DC. Save $30 with code "<strong><a rel="nofollow" href="http://www.eventbrite.com/event/365969625/?discount=rubyinside">rubyinside</a></strong>"!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Kevin Radcliffe</strong> &middot; <time datetime="2009-09-02T02:20:00+00:00">September 2, 2009 at 2:20 am</time></p>
      <p>This looks great, thanks for the post! It (perhaps) should be noted, that like a number of ruby related projects that seem very interesting, it's a bit difficult to get started with Couch on a Windows system. The install and deployment seems unintuitive at best.</p><p>Luckily, I found the zips and install instructions for MongoDB to be a lot friendlier to a windows environment. I'm not "fighting" for Mongo here, I just wanted to note that it seemed much much easier to get it going on a Windows system.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Christopher Petersen</strong> &middot; <time datetime="2009-09-02T04:36:00+00:00">September 2, 2009 at 4:36 am</time></p>
      <p>Thanks for the post, we have been using CouchDB and CouchRest in production for a few weeks now, and it's been great. I'm glad to see it getting some press.</p><p>Thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ric Roberts</strong> &middot; <time datetime="2009-09-02T09:24:00+00:00">September 2, 2009 at 9:24 am</time></p>
      <p>Hi Kevin. I've got nothing against MongoDB - it's useful for slightly different things to CouchDB (which didn't suit my circumstances).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ric Roberts</strong> &middot; <time datetime="2009-09-02T09:32:00+00:00">September 2, 2009 at 9:32 am</time></p>
      <p>CouchDBX looks like a good way to get Couch up and running quickly (just for Macs for now, I think).  Check out the CouchDB wiki for instructions regarding installing on Windows.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matjaž Gregorič</strong> &middot; <time datetime="2009-09-02T10:12:00+00:00">September 2, 2009 at 10:12 am</time></p>
      <p>I got CouchDB 0.9 running on Windows using the package mentioned in the following post:</p><p><a href="http://mail-archives.apache.org/mod_mbox/couchdb-user/200904.mbox/%3C49D7E0DD.9080409@gmail.com%3E" rel="nofollow">http://mail-archives.apache.org/mod_mbox/couchdb-user/200904.mbox/%3C49D7E0DD.9080409@gmail.com%3E</a></p><p>It's very simple to install (just unzip) and so far has been working well for me.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>renoke</strong> &middot; <time datetime="2009-09-02T10:13:00+00:00">September 2, 2009 at 10:13 am</time></p>
      <p>Thanks for this article and the other one talking about key-value storing alternative. I'm also convinced that document oriented databases have a bright future, not as replacement of relational database but for specific situations.</p><p>I've started to developp a simple library to abstract document object: DocumentMapper. It has now two adapters: couchdb and mongodb, but the idea is to embrace the main document datagases and have tools for switching easily from one to another.</p><p>I invite you to have a look.<br>
<a href="http://github.com/renoke/DocumentMapper/tree/master" rel="nofollow">http://github.com/renoke/DocumentMapper/tree/master</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Wagenet</strong> &middot; <time datetime="2009-09-02T15:26:00+00:00">September 2, 2009 at 3:26 pm</time></p>
      <p>I've played around with CouchRest some and my biggest concern is that it doesn't play nicely enough with Rails. I'm glad that CouchRest doesn't just try to mirror ActiveRecord, but I would like to see them go to more effort to make it Rails like. Admittedly, CouchRest isn't Rails only so maybe this would be best done through some sort of CouchRest Rails plugin. I've actually played around with this on my own fork of CouchRest (<a href="http://github.com/rxcfc/couchrest" rel="nofollow">http://github.com/rxcfc/couchrest</a>) Anyway, something to consider when you're looking at CouchRest for a Rails project.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James Nathan</strong> &middot; <time datetime="2009-09-02T23:21:00+00:00">September 2, 2009 at 11:21 pm</time></p>
      <p>I am still having a hard time installing Ruby on my computer, and most of the files are zipped and can not unziped them to try and use the program. if so you can email me.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ric Roberts</strong> &middot; <time datetime="2009-09-03T08:17:00+00:00">September 3, 2009 at 8:17 am</time></p>
      <p>Peter: Check out CouchRest-Rails for extra Rails support: <a href="http://github.com/hpoydar/couchrest-rails/tree/master" rel="nofollow">http://github.com/hpoydar/couchrest-rails/tree/master</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Robert Dempsey</strong> &middot; <time datetime="2009-09-10T20:02:00+00:00">September 10, 2009 at 8:02 pm</time></p>
      <p>Hey Rick,</p><p>Thanks for the article and the link to CouchDBX on Twitter. Do you have any links to complete examples of creating a basic Rails app using Couch as a backend, showing not only the models but the views as well? I've seen many examples of using it in Ruby apps, but not so much with Rails. I appreciate the help.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter F. Dyle</strong> &middot; <time datetime="2009-09-11T20:02:00+00:00">September 11, 2009 at 8:02 pm</time></p>
      <p>Hi,</p><p>using CouchDB for something other than a small production environments is a bit crazy. Look at the PUT/POST times. Look at the View generation time consumption. You can't make bulk updates server side.</p><p>This seems to be a "cool" project. "Futon" sells it like hot potatoes, 'cause its "cute". The talks given by usual 2 commiters are self.repeat. If you ask them about numbers, they can't seem to give them. Wait severall minutes for a view generation !?? Oh, nice for backups, not transaction intensive apps, even for document storage.</p><p>I read lot's of people on the "cool couchdb", that test it a bit, and that's it.<br>
Can someone point to a decent talk ? I found severall and on this one the guy got asked about things and won't even respond (min.16; min.27;...)<br>
<a href="http://videos.sapo.pt/utZAoUewNMSoJstnchSL" rel="nofollow">http://videos.sapo.pt/utZAoUewNMSoJstnchSL</a></p><p>CouchDB's talks is just slides with the f* word and cool word....<br>
let's get some grip... CouchDb should be considered an incubation product on this phase.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ric Roberts</strong> &middot; <time datetime="2009-09-13T09:11:00+00:00">September 13, 2009 at 9:11 am</time></p>
      <p>Hi Peter.  I am involved in a couple of projects which will use couch 'for real' in a production environment.  Yes, updates are not super-fast, but the way it maintains indexes means that lookups can be kept quick.  Whether Couch is suitable for your project depends on what structure the data takes and how frequently it is updated.  I agree that it's not for everyone.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ric Roberts</strong> &middot; <time datetime="2009-09-15T21:06:00+00:00">September 15, 2009 at 9:06 pm</time></p>
      <p><a href="http://groups.google.com/group/couchrest/browse_thread/thread/67295ea21f8d810f" rel="nofollow">Just discovered</a> that the official CouchRest repo is actually here: <a href="http://github.com/couchrest/couchrest" rel="nofollow">http://github.com/couchrest/couchrest</a> (I'll update the article accordingly).</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
