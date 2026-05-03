---
title: 'Starling: A Ruby Persistent Queue Server That Speaks Memcached'
date: '2008-07-22'
author: Peter Cooper
author_slug: admin
post_id: 958
slug: starling-and-rudeq-persistent-ruby-queues-958
url: "/starling-and-rudeq-persistent-ruby-queues-958.html"
categories:
- elsewhere
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2008/07/starling.jpg" width="262" height="225" alt="starling.png" style="border:1px #000000 solid;"></p>
<p>It's been around for a while now, but <a href="http://rubyforge.org/projects/starling/">Starling</a> is a "light-weight persistent queue server that speaks the MemCache protocol." Starling makes it ridiculously easy to set up a network-accessible queue (or many queues) for, say, asynchronous job processing between multiple processes and machines. It was developed by Twitter to handle the heavy amount of queueing necessary to keep their service ticking over. Starling is proven in production, with not only Twitter using it in anger, but <a href="http://www.mikeperham.com/2008/05/29/starling-and-a-reliable-memcached-client/">FiveRuns too</a>. FiveRuns have even created <a href="http://github.com/fiveruns/starling/tree/master">their own fork</a> that, they say, is significantly faster.</p>
<p>Why the sudden interest in Starling? Well, Glenn Gillen has written <a href="http://rubypond.com/articles/2008/07/17/the-complete-guide-to-setting-up-starling/">an excellent introductory guide to setting up Starling</a> over at RubyPond.com. He walks through the process of using Starling (and Workling, a Rails plugin to make using Starling easier) from installation, through to actually adding things to the queue and processing them.</p>
<p>An interesting alternative to Starling is also presented within the comments on Glenn's post - <a href="http://github.com/matthewrudy/rudeq/tree/master">RudeQ</a>. RudeQ uses the same API as Starling but is ActiveRecord / database based, meaning there's no extra process to monitor. I suspect it's nowhere near as fast, but if you'd rather avoid the headache of monitoring another persistent process or don't have the option of having a persistent process at all (shared hosting, perhaps) it's worth checking out.</p>
<p><em><strong>Post supported by Brightbox:</strong></em> <a href="http://www.brightbox.co.uk/"><em>Brightbox</em></a> <em>is a specialist European</em> <a href="http://www.brightbox.co.uk/"><em>Rails hosting</em></a> <em>company. Each Brightbox server includes an optimised Ruby on Rails stack, SAN storage and access to a managed MySQL database cluster. They also manage dedicated clusters for large scale Rails deployments.</em> <a href="http://www.brightbox.co.uk/"><em>Click here to learn more...</em></a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Mike Perham</strong> &middot; <time datetime="2008-07-22T03:39:00+00:00">July 22, 2008 at 3:39 am</time></p>
      <p>We (FiveRuns) do have our own fork of Starling, but it based 99.9% on the work of others to make it faster than 0.9.3.  See the Readme for credit where credit is due!</p><p>As for the database-based queue, we wrote something very similiar to RudeQ and delayed_job.  It scaled horribly and was about 10x slower than Starling.  The database is not a good queue.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aman Gupta</strong> &middot; <time datetime="2008-07-22T04:04:00+00:00">July 22, 2008 at 4:04 am</time></p>
      <p>Would you mind commenting on the specific changes that were made to increase performance?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luke Redpath</strong> &middot; <time datetime="2008-07-22T09:12:00+00:00">July 22, 2008 at 9:12 am</time></p>
      <p>I highly recommend Beanstalkd as an alternative lightweight (albeit non-persistent queue) - its been rock solid for us at Reevoo; its lack of persistance has not proved to be an issue with its current uptime of 185 days, i.e. since we first started it up in production, and its very fast too.</p><p><a href="http://labs.reevoo.com/plugins/beanstalk-messaging" rel="nofollow">http://labs.reevoo.com/plugins/beanstalk-messaging</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luke Redpath</strong> &middot; <time datetime="2008-07-22T09:17:00+00:00">July 22, 2008 at 9:17 am</time></p>
      <p>Oh, and for stats freaks: we currently run one instance of beanstalkd per queue (we've been using it since it added support for multiple queues per instance, but I actually prefer the redundancy in only have one queue per instance) with each instance using between 0.3 and 1.5 MB of memory on average an CPU time rarely going above 0.3%. </p><p>Our busiest queue has processed over 48 million messages since we started using it 3 months ago (after replacing our buggy, slow ActiveMQ setup) and continues to process hundreds of thousands of messages a day.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>steve</strong> &middot; <time datetime="2008-07-22T12:48:00+00:00">July 22, 2008 at 12:48 pm</time></p>
      <p>is this the queue server that cause a lot of down time in twitter?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-07-22T13:30:00+00:00">July 22, 2008 at 1:30 pm</time></p>
      <p>I was waiting for someone to pick up on Twitter's downtime ;-) I suspect that the queue server is not to blame. Indeed, I believe Starling was developed after the first significant bout of outage in order to make Twitter more scalable? Perhaps someone could confirm that though..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alex Payne</strong> &middot; <time datetime="2008-07-22T17:31:00+00:00">July 22, 2008 at 5:31 pm</time></p>
      <p>Peter: I'm an engineer at Twitter, and I can confirm that Starling was written after our first major traffic growth spurt in Spring 2007.  Our scalability issues have more frequently had to do with database than with Starling, but it has limits and oddities.  Particularly, we see its performance come a crawl at around 400,000 items in a queue.  Replaying its on-disk journal (for example, after a crash or reboot) can also be extremely slow.</p><p>Generally, we don't expect to use Starling in perpetuity at Twitter.  At the time it was developed, the Ruby libraries to interface with mature, robust queueing systems were underdeveloped.  Now that so many Rubyists have taken an interest in queues, those libraries have improved.  Given that, I'd take a good look at ApacheMQ, RabbitMQ, and so forth before deploying Starling.  Starling is only suitable for applications that require zero transactional support from their queuing system (ie, all reads are destructive).</p><p>Another of our engineers has an implementation of Starling in Scala, called Scarling, that's more suited to certain operational scenarios: <a href="http://github.com/robey/scarling/" rel="nofollow">http://github.com/robey/scarling/</a>.  We may deploy Scarling, but we expect to move to a robust queuing system within the next several months.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-07-22T17:41:00+00:00">July 22, 2008 at 5:41 pm</time></p>
      <p>Thanks for the incredibly useful (and authoritative!) info, Alex. Scarling sounds interesting (I own ScalaInside.com, and was going to jump into doing some Scala but somehow got put off). I haven't played with RabbitMQ yet, but being Erlang based, I get the impression it'll be the ultimate "winner" in this area.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>steve</strong> &middot; <time datetime="2008-07-22T19:29:00+00:00">July 22, 2008 at 7:29 pm</time></p>
      <p>Thanks for the explanation Alex. It is an excellent insider tips</p>
    </li>
      <li>
      <p class="comment-meta"><strong>alexis</strong> &middot; <time datetime="2008-07-22T20:35:00+00:00">July 22, 2008 at 8:35 pm</time></p>
      <p>Hello ruby people, thanks for mentioning RabbitMQ in this context.  </p><p>There is a shiny new ruby client that you might like to play with.  No need to know any erlang code, but you still get all the scalability and stability of the platform.  Plus you can turn on persistence, do pub-sub, etc - these are all config options.</p><p>The ruby client is described here: <a href="http://hopper.squarespace.com/blog/2008/7/22/simple-amqp-library-for-ruby.html" rel="nofollow">http://hopper.squarespace.com/blog/2008/7/22/simple-amqp-library-for-ruby.html</a></p><p>Please give it a try and contact us if you have questions!</p><p>BTW - messaging geeks may also enjoy this - click through to see a presentation explaining how a top grade messaging system this can all be written with less than 5k lines of code: <a href="http://www.lshift.net/blog/2008/07/01/slides-from-our-erlang-exchange-talk" rel="nofollow">http://www.lshift.net/blog/2008/07/01/slides-from-our-erlang-exchange-talk</a></p><p>cheers</p><p>alexis</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matthew Rudy</strong> &middot; <time datetime="2008-07-23T13:37:00+00:00">July 23, 2008 at 1:37 pm</time></p>
      <p>Yeah.<br>
RudeQ/RudeQueue is clearly a lot slower than Starling.<br>
I certainly wouldn't suggest it as a replacement for Twitter.</p><p>But for boring day-to-day passing normal amounts of data to an asynchronous process, it certainly works.</p><p>We use it at JobsGoPublic.com to queue up and asynchronously process updates to Job listings, and it handles that very well.</p><p>I did some benchmarks vs Starling<br>
<a href="http://github.com/matthewrudy/rudeq/tree/master/performance/benchmark_vs_starling.rb" rel="nofollow">http://github.com/matthewrudy/rudeq/tree/master/performance/benchmark_vs_starling.rb</a></p><p>Maybe it's 5 times slower than starling.<br>
But on my dev machine it still handled more than 100 a second.<br>
(albeit without simulated contention, but...)</p><p>I challenge most Rails sites to need to more queueing operations than that.</p><p>Will take a look at RabbitMQ no doubt!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>dubek</strong> &middot; <time datetime="2008-07-24T07:37:00+00:00">July 24, 2008 at 7:37 am</time></p>
      <p>Just wanted to add a few more links to the party here. First, these post also deal with the queuing issues:</p><p><a href="http://nubyonrails.com/articles/about-this-blog-beanstalk-messaging-queue" rel="nofollow">http://nubyonrails.com/articles/about-this-blog-beanstalk-messaging-queue</a></p><p><a href="http://blog.thinkrelevance.com/2008/6/1/small-things-loosely-joined-written-fast" rel="nofollow">http://blog.thinkrelevance.com/2008/6/1/small-things-loosely-joined-written-fast</a> (updated code samples: <a href="http://blog.thinkrelevance.com/2008/6/3/updated-code-sample-from-small-things-talk" rel="nofollow">http://blog.thinkrelevance.com/2008/6/3/updated-code-sample-from-small-things-talk</a> )</p><p>Besides Starling, RabbitMQ, RudeQ and beanstalkd already mentioned in the post+comments, there are also:</p><p>Apache ActiveMQ<br>
<a href="http://activemq.apache.org/" rel="nofollow">http://activemq.apache.org/</a><br>
(needs Java J2EE, and speaks many protocols, including the simple STOMP protocol which has a ruby client / command-line)</p><p>Sparrow<br>
<a href="http://code.google.com/p/sparrow/" rel="nofollow">http://code.google.com/p/sparrow/</a><br>
(persistent in files/SQLite, speaks memcached)</p><p>RQ (by Ara T. Howard)<br>
<a href="http://www.codeforpeople.com/lib/ruby/rq/" rel="nofollow">http://www.codeforpeople.com/lib/ruby/rq/</a><br>
(based on NFS?)</p><p>StompServer<br>
<a href="http://stompserver.rubyforge.org/" rel="nofollow">http://stompserver.rubyforge.org/</a><br>
(speaks STOMP, of course)</p><p>Seems like a mess. The first criterion for deciding, as Luke Redpath mentioned in a comment above, is whether you need queue persistence. If not, simpler solutions such as beanstalkd are probably best. In addition, I think that RudeQ is the only one that doesn't require a constant running process, so if it's an issue (like Peter said) you might wanna choose it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dan Mayer</strong> &middot; <time datetime="2008-07-24T21:22:00+00:00">July 24, 2008 at 9:22 pm</time></p>
      <p>We did a ruby queue systems benchmarking post awhile ago. It is a little out of date, as apparently both starling and beanstalk had faster versions that aren't packed in gems (then again I don't know if I can count non battle tested versions). In this case Benastalk won out a bit. Starling was very close though... We have been using beanstalk for Devver and been very happy with it.</p><p><a href="http://devver.net/blog/2008/06/ruby-messaging-shootout/" rel="nofollow">http://devver.net/blog/2008/06/ruby-messaging-shootout/</a></p><p>Dan</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
