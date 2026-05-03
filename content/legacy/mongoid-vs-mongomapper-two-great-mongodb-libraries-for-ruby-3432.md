---
title: 'Mongoid vs MongoMapper: Two Great MongoDB Libraries for Ruby'
date: '2010-06-19'
author: Peter Cooper
author_slug: admin
post_id: 3432
slug: mongoid-vs-mongomapper-two-great-mongodb-libraries-for-ruby-3432
url: "/mongoid-vs-mongomapper-two-great-mongodb-libraries-for-ruby-3432.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p>It's been almost a year since Ric Roberts <a href="getting-started-mongodb-ruby-1875.html">posted about using MongoDB and MongoMapper</a> and I've seen an explosion in the number of people using these tools in the Ruby community since then (I use them heavily on <a href="http://coder.io/">coder.io</a> too).</p>
<p><a href="http://github.com/jnunemaker/mongomapper">MongoMapper</a> has become the de facto standard way to use MongoDB from Ruby, but it's not the only game in town. <a href="http://mongoid.org/">Mongoid</a>, by Durran Jordan, has recently been creeping up in popularity too, and with a stunning project site and robust documentation, it deserves some attention.</p>
<p><a href="http://mongoid.org/"><img src="/assets/2010/06/00015.png" alt="" title="0001" width="460" height="211" class="alignnone size-full wp-image-3435"></a></p>
<p>At first glance, Mongoid and MongoMapper seem to take similar approaches and have very similar APIs, so I got in touch with both Durran Jordan (Mongoid) and John Nunemaker (MongoMapper) to split some hairs and it turns out they have different motivations, aims, and, underneath it all, they target different use cases pretty well.</p>
<p>If you're reading this far, you're probably already using MongoDB or have some ideas on how you'd want to use it, so I'll skip the pleasantries and get straight to the developers' insights into why you might prefer their library over the other (or even why the other library is better). First up, Durran Jordan of Mongoid:</p>
<blockquote class="stylized">
<ul>
<li>Mongoid is completely Rails 3 compatible, and uses ActiveModel all<br>
over the place (validations, serialization, etc), where MongoMapper is still focused on Rails 2 and uses the <a href="http://github.com/jnunemaker/validatable">validatable</a> gem for its validations.</li>
<li>Mongoid officially supports and works on Ruby 1.8.7, 1.9.1, and 1.9.2 head.</li>
<li>Mongoid supports embedded documents more robustly, performing the MongoDB atomic operations on any area of the hierarchy internally. ($set, $push, $pull, etc). With MM you need to explicitly tell it to do these operations.</li>
<li>MongoMapper has better relational association support and works like this as default.</li>
<li>MongoMapper is more extensible, with a plugin architecture that makes it pretty easy for people to extend it with their own libraries. Mongoid does not have this.</li>
<li>MM supports identity maps, Mongoid does not.</li>
<li>MM has a larger community, and probably more 3rd party library support. I went crazy on documentation and rdoc.</li>
<li>Mongoid supports Master/Slave replication clusters. (Writes to master, round robin reads to slaves) MM does not.</li>
<li>Mongoid has an extremely rich ARel style criteria API, MM use AR2 style finders. <strong>(Ed: This may not be such a big issue in MM's case since version 0.8 added a new query DSL.)</strong>
</li>
</ul>
<p>The biggest comment I have gotten from people, and why I designed Mongoid the way I did is predictability. For one, wrapping the driver cursor when dealing with huge documents and lots of them (in the millions) needs to have predictable performance and memory consumption. We noticed MM didn't deal with large documents (over 500k in size) very well as far as these characteristics go, but handles small documents better than Mongoid. (This may have changed over the past few months, but was an issue for us and others I have talked to.)</p>
</blockquote>
<p><cite>Durran Jordan (Mongoid)</cite></p>
<p>I also asked John Nunemaker to give some reasons why someone should or might prefer to use MongoMapper:</p>
<blockquote class="stylized">
<ul>
<li>It's built from the ground up to be very extendable and gets more so with each release. Sweet plugin system makes this possible and powers every feature (check out <a href="http://github.com/jnunemaker/mongomapper/tree/master/lib/mongo_mapper/plugins/"><code>lib/mongo_mapper/plugins</code></a>).</li>
<li>Very familiar for those coming from ActiveRecord (querying, scopes, saving, validations, callbacks, etc.) while still allowing you to take full advantage of the things that make MongoDB awesome.</li>
<li>I bet the farm on MongoDB with Harmony (which will hopefully someday pay my bills) so MongoMapper is not going anywhere. It will continue to get leaner, meaner, and easier to use. Big plans my friends, big plans.</li>
</ul>
</blockquote>
<p><cite>John Nunemaker (MongoMapper)</cite></p>
<p>I'm likely to stick with MongoMapper myself, mostly because I know John, appreciate his dedication to MM and I'm already using MM in production, but Mongoid is an attractive option, especially for Rails developers or newcomers who might prefer its slicker presentation and "getting started" documentation.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-06-19T00:28:00+00:00">June 19, 2010 at 12:28 am</time></p>
      <p>I want to emphasize for the benefit of any commenters that this is definitely not a contest or a competition, but merely an attempt at highlighting the differences between the two libraries so that people can choose which one to try first in a more informed way. Neither developer is militant about their library being best or that they want everyone to use their library. This is a great form of competition - the libraries might do similar things, but they have slightly different aims and techniques that mean we, as developers, can only benefit from a wider variety of approaches.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Durran Jordan</strong> &middot; <time datetime="2010-06-19T01:34:00+00:00">June 19, 2010 at 1:34 am</time></p>
      <p>Id like to emphasize what Peter said as well... Both myself and John have slaved over both libraries are aiming to please. Have fun with either - but don't crucify us for our hard work. We only want to love everyone! :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jesse Cooke</strong> &middot; <time datetime="2010-06-19T01:45:00+00:00">June 19, 2010 at 1:45 am</time></p>
      <p>Thanks for revisiting this topic. Just wondering if you or anyone else have actually used both libraries &amp; your opinion with the experience.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Lar Van Der Jagt</strong> &middot; <time datetime="2010-06-19T01:47:00+00:00">June 19, 2010 at 1:47 am</time></p>
      <p>What I love about both of these libraries is that they were clearly a product of their respective author solving a real problem. MongoMapper helped me get into MongoDB before I came to Hashrocket, and then I got to watch as Mongoid evolved on the project it was built to support.</p><p>Regardless of which library you ultimately choose, you're doing yourself a disservice if you don't at least take a look at MongoDB &amp; other non-relational stores. Both libraries will help ease you in, and personally it has changed the way I think about data persistence for the better.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aaron</strong> &middot; <time datetime="2010-06-19T02:14:00+00:00">June 19, 2010 at 2:14 am</time></p>
      <p>They both great libraries, I feel MM is more stable than Mongoid, cause MM has less bugs atm</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brandon Martin</strong> &middot; <time datetime="2010-06-19T03:05:00+00:00">June 19, 2010 at 3:05 am</time></p>
      <p>I have used Mongomapper on a few projects and it is great. I have recently started playing with Mongoid just for the simple fact that I wanted to start digging into rails 3 and I really like using devise. At this point Mongoid works with devise for rails 3. That being said I am highly impressed with both Mongomapper and Mongoid and recommend playing with both. Great work and huge thanks to John and Durran both for there hardwork along with the mongodb people and anyone else who has contributed to any of these projects. Mongodb is awesome.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Josef Richter</strong> &middot; <time datetime="2010-06-19T06:24:00+00:00">June 19, 2010 at 6:24 am</time></p>
      <p>First of all, thank you both guys for great mongodb libraries! Two questions:</p><p>1. How about you two joining forces to create single great library?<br>
2. Why did you chose to start from scratch rather than e.g. using DataMapper and creating a mongoDB adapter for it? (just curious, actually don't know much about datamapper)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-06-19T06:29:00+00:00">June 19, 2010 at 6:29 am</time></p>
      <p>@Josef: I don't want to speak on their behalf, but in my e-mails with Durran, he said that the idea of combining the libraries had been suggested before but that due to the totally different ways they were structured internally, it'd be more trouble and cause more instability than it would be worth. Sometimes there is value in having individuals "own" their projects rather than diluting down the responsibility.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>solnic</strong> &middot; <time datetime="2010-06-19T08:45:00+00:00">June 19, 2010 at 8:45 am</time></p>
      <p>@Josef: re question 2, there's already a MongoDB DataMapper adapter which is under heavy development at the moment (<a href="http://github.com/solnic/dm-mongo-adapter" rel="nofollow">http://github.com/solnic/dm-mongo-adapter</a>) and it also waits for a few required features that will be added to DataMapper in its 1.x series. I suppose MM and Mongoid authors didn't go with DataMapper mostly because it doesn't support embedded documents yet.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dennis</strong> &middot; <time datetime="2010-06-19T09:24:00+00:00">June 19, 2010 at 9:24 am</time></p>
      <p>It's great for the community to have the choice between these two awesome libraries and because of their different approaches to dealing with the underlying database both of them deserve our attention.<br>
We are using Mongoid in production in one project now and I personally favor it over MongoMapper, because of its Rails 3 and ActiveModel compatibility and the ARel style criteria API.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jon Leighton</strong> &middot; <time datetime="2010-06-19T13:00:00+00:00">June 19, 2010 at 1:00 pm</time></p>
      <p>Can anyone expand the explanation of MongoMapper's plugin system? What does it provide over and above simply including modules to provide additional behaviour? (Which seems to be the approach of Mongoid, see <a href="http://mongoid.org/docs/extras/" rel="nofollow">http://mongoid.org/docs/extras/</a>).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aaron</strong> &middot; <time datetime="2010-06-19T13:01:00+00:00">June 19, 2010 at 1:01 pm</time></p>
      <p>@Brandon Martin: I've used MM with devise in rails3, need some minor modification, worked well as a whole</p>
    </li>
      <li>
      <p class="comment-meta"><strong>erwin</strong> &middot; <time datetime="2010-06-20T06:56:00+00:00">June 20, 2010 at 6:56 am</time></p>
      <p>Mongoid 2.X fro Rails 3 not compatible with Rails 3 pre 4.....</p><p>No compatible versions could be found for required dependencies:<br>
    Conflict on: "activesupport":<br>
    * activesupport (3.0.0.beta4) activated by rails (= 3.0.0.beta4, runtime)<br>
    * activesupport (= 3.0.0.beta3, runtime) required by mongoid (= 2.0.0.beta6, runtime)<br>
    All possible versions of origin requirements conflict.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Martijn Storck</strong> &middot; <time datetime="2010-06-20T11:06:00+00:00">June 20, 2010 at 11:06 am</time></p>
      <p>I can confirm that MongoMapper works with Rails 3 just fine, it's just not based on ActiveModel yet but that's not a big issue.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brandon Martin</strong> &middot; <time datetime="2010-06-21T00:10:00+00:00">June 21, 2010 at 12:10 am</time></p>
      <p>@erwin try using mongoid 2.0.0.beta7</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Julien Guimont</strong> &middot; <time datetime="2010-06-21T13:25:00+00:00">June 21, 2010 at 1:25 pm</time></p>
      <p>What I like with Mongoid is the documentation - easy to understand, easy to find. I checked MM to see if it would fit my project but there was no readily available documentation except from some blog posts. I think, and hope, this is going to change in the near future - any documentation, even incomplete, is better than none.</p><p>Keep up the good work! I am looking forward for that DM adapter as well - with embedded documents.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Cristian R. Arroyo</strong> &middot; <time datetime="2010-06-26T13:55:00+00:00">June 26, 2010 at 1:55 pm</time></p>
      <p>For what it's worth, recently I was asked to evaluate MongoDB for a potencial Rails project and I finally chose Mongoid because it was so Rails3-ready AND not so attached to the old ways of ActiveRecord. I forked a little project on GitHub, added some unit tests with Machinist Mongo and the mongoid_taggable plugin to the mix. It all worked beautifully and the set up was chosen for out next project. See the test concept at <a href="http://github.com/vivaserver/mongoid-starter-app" rel="nofollow">http://github.com/vivaserver/mongoid-starter-app</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Carlos Paramio</strong> &middot; <time datetime="2010-08-30T15:22:00+00:00">August 30, 2010 at 3:22 pm</time></p>
      <p>For the latest 3 months, I've also been working on an ODM that uses the native MongoDB syntax, and takes care of those particular features one wants to find at the model space. It seems that Ben Myles had a similar idea than me with its MongoMatic gem :-)</p><p>MongoODM uses the native MongoDB syntax, but additionally it supports validations, embedded documents, dirty objects, embedded objects and queries nesting (the ability to concatenate several 'find' methods like ActiveRecord scopes work). Its main difference to MongoMatic is that it requires fields definitions, but not to force an schema, but to properly convert from/to Mongo any kind of supported object. It's pretty easy to define your own custom types so more complicated or unsupported values can be saved on MongoDB properly. And I might be changing this to a DSL that defines some conversion rules for specific attributes, assuming the class of the attribute value as the type for the rest.</p><p>You can find some basic documentation and examples at:</p><p><a href="http://github.com/carlosparamio/mongo_odm" rel="nofollow">http://github.com/carlosparamio/mongo_odm</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
