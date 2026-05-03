---
title: 'CouchFoo: Like ActiveRecord, but for CouchDB'
date: '2009-02-11'
author: Peter Cooper
author_slug: admin
post_id: 1504
slug: couchfoo-like-activerecord-but-for-couchdb-1504
url: "/couchfoo-like-activerecord-but-for-couchdb-1504.html"
categories:
- cool
---

{{< rawhtml >}}
<p><img src="/assets/2009/02/couchdb.png" width="109" height="78" alt="couchdb.png" style="float:left; margin-right:12px; margin-bottom:12px;"><a href="http://couchdb.apache.org/">Apache CouchDB</a> is a "distributed, fault-tolerant and schema-free document-oriented database accessible via a RESTful HTTP/JSON API" that has received quite a bit of publicity in developer circles in the past year. It's written in Erlang, so has all of the scalability and flexibility the Erlang environment brings to the table, but as a RESTful service, you can use it from pretty much anywhere.</p>
<p>George Palmer, a UK-based Rails developer, wanted to use CouchDB but found the existing libraries (such as <a href="http://github.com/paulcarey/relaxdb/tree/master">RelaxDB</a>, <a href="http://github.com/jchris/couchrest/tree/master">CouchREST</a>, <a href="http://blog.codefront.net/2008/02/02/activecouch-a-couchdb-library-in-the-spirit-of-activeresource-and-activerecord/">ActiveCouch</a> and <a href="http://upstream-berlin.com/2008/10/27/couch-potato-unleashed-a-couchdb-persistence-layer-in-ruby/">CouchPotato</a>) lacking - not that they <em>are</em>, as such, but they didn't fit George's needs. George wanted something that was as ActiveRecord-like as possible, so he developed <a href="http://github.com/georgepalmer/couch_foo/tree/master"><strong>CouchFoo</strong></a> (a.k.a. couch_foo) - an ActiveRecord-style interface to CouchDB.</p>
<p>Basic operations (creating records, finding, and even <em>dynamic</em> finders) are much the same as with ActiveRecord, but there have been some additions to deal with the differences in CouchDB (such as defining properties to get typing or view definitions). Associations (<em>has_many</em>, etc) also work as expected.</p>
<p>This is a clever bit of work on George's part and I know that based on the strong feedback he's had, he's decided to submit a RailsConf proposal on CouchFoo. After taking a look at it, I can only hope his talk gets accepted as I'd love to hear more from someone in the know.</p>
<p><em>As an aside, back in September 2008, PeepCode released a</em> <a href="http://peepcode.com/products/couchdb-with-rails"><em>CouchDB with Rails</em></a> <em>screencast.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Mislav</strong> &middot; <time datetime="2009-02-11T14:29:00+00:00">February 11, 2009 at 2:29 pm</time></p>
      <p>Worst name ever in the series of foo stuff.</p><p>However I'm pleased so many adapters exist for CouchDB and that there's constant striving for perfection among developers.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>tonyc</strong> &middot; <time datetime="2009-02-11T15:36:00+00:00">February 11, 2009 at 3:36 pm</time></p>
      <p>I'd rather see work go into the DataMapper CouchDB adapter, myself.</p><p><a href="http://github.com/datamapper/dm-more/tree/63327515cc4430a7a59c717afec5c14c9f299d3d/adapters/dm-couchdb-adapter" rel="nofollow">http://github.com/datamapper/dm-more/tree/63327515cc4430a7a59c717afec5c14c9f299d3d/adapters/dm-couchdb-adapter</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Basaah</strong> &middot; <time datetime="2009-02-11T15:47:00+00:00">February 11, 2009 at 3:47 pm</time></p>
      <p>Just tried couchDB out, it is really cool.<br>
combined with CouchFoo absolutely killing.<br>
I wonder if it plays along nice with rails.</p><p>Now let's do a few performance test with CouchFoo in rails.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-02-11T16:00:00+00:00">February 11, 2009 at 4:00 pm</time></p>
      <p>I asked George why he wrote this when there are already so many alternatives, and on the Datamapper front he said there were no docs, it was dependency hell, and views had to be defined manually (as a non-user, I can't elaborate on that).</p><p>In any case, I'd much rather someone produce something new than get dissuaded and give up on improving something that already exists.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sam Figueroa</strong> &middot; <time datetime="2009-02-11T16:17:00+00:00">February 11, 2009 at 4:17 pm</time></p>
      <p>Railsenvy podcast is gonna love this. Finally a plugin that ends in foo again :P</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-02-11T16:36:00+00:00">February 11, 2009 at 4:36 pm</time></p>
      <p>Well get ready, I hear it's going to be on there.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>George Palmer</strong> &middot; <time datetime="2009-02-11T16:56:00+00:00">February 11, 2009 at 4:56 pm</time></p>
      <p>@tonyc I had quite a lot of problems with the DM adapter myself (no associations, incomplete doc) and critically it doesn't manage views automatically (views are a bit like indexes over a subset of the documents in your database).</p><p>@basaah - very interested to hear any results you get there - dm me on twitter @Georgio_1999</p><p>@mislav, @sam - What can I say?  I guess naming isn't my strong point!! ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-02-11T17:11:00+00:00">February 11, 2009 at 5:11 pm</time></p>
      <p>Thanks for following up, George. :) The name doesn't matter anyway, as long as it's pronounceable and not offensive.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Wesley Beary</strong> &middot; <time datetime="2009-02-11T22:38:00+00:00">February 11, 2009 at 10:38 pm</time></p>
      <p>@george I'm the current maintainer of the DM adapter, and realize it needs work.  Time has been at a premium for me, but I am rewriting it to include better view generation.  Updated docs should follow, but were there specific things that were unclear?  Could you details your dependency issues so we can track them down?  Associations should work the same as they do for other DataMapper models, what issues did you have?  I'd love to make the adapter better, so any details you could provide would be greatly appreciated.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ActsAsFlinn</strong> &middot; <time datetime="2009-02-12T01:07:00+00:00">February 12, 2009 at 1:07 am</time></p>
      <p>Why are there so many couchdb adapters trying to be activerecord?  Seems like ar tries to address relational db suckage while couchdb addresses data in a totally different way.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
