---
title: RabbitMQ – A Fast, Reliable Queuing Option for Rubyists
date: '2009-04-09'
author: Peter Cooper
author_slug: admin
post_id: 1681
slug: rabbitmq-a-fast-reliable-queuing-option-for-rubyists-1681
url: "/rabbitmq-a-fast-reliable-queuing-option-for-rubyists-1681.html"
categories:
- compilations
- elsewhere
- enterprise
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2009/04/rabbitmq.png" width="137" height="39" alt="rabbitmq.png" style="float:left; margin-right:12px; margin-bottom:12px;"> When it comes to developing large systems with many interdependent parts, it’s common nowadays to use “queues.” A queue is, for the most part, just a list that you can add items to and remove items from. Apps can use queues to despatch jobs / tasks to other apps or to shuttle logs and status information around.</p>
<p><a href="http://www.rabbitmq.com/">RabbitMQ</a> is a fast, reliable, open source queueing option. It's not developed in Ruby, though, but in <a href="http://en.wikipedia.org/wiki/Erlang_(programming_language)">Erlang</a>, a functional language with a reputation for distributed, high availability, fault tolerant apps. It presents itself as a separate daemon - much as Apache, Passenger, memcached, or MySQL aren’t written in Ruby. Using it from Ruby isn’t difficult, and, of course, you can use it from a <em>multitude</em> of languages so if you want to push in items from Ruby and pull them out to be processed with something else (or vice versa) it's ideal. RabbitMQ can be used as a hub for communication between all of your processes.</p>
<p>On RabbitMQ, Rany Keddo, the developer of <a href="http://playtype.net/past/2008/10/2/workling_version_03_released/">Workling</a>, said:</p>
<blockquote>
<p>If you’re doing high volume messaging and need a high degree of reliability, you should definitely consider using RabbitMQ over Starling.</p>
</blockquote>
<p><em>(And since I started to draft this article, this point has perhaps been proven even more with</em> <a href="http://www.artima.com/scalazine/articles/twitter_on_scala.html"><em>Twitter's ditching of Starling</em></a> <em>for a new, Scala-based system.)</em></p>
<p>So RabbitMQ has the power and reputation and if you want to do some serious queueing, you should be checking it out. With that in mind, Alexis Richardson (from the RabbitMQ team) and I have put together a few resources that will be useful to you (as a Rubyist) if/when you decide to check RabbitMQ out:</p>
<p><a href="http://www.rabbitmq.com/">Official RabbitMQ Homepage</a> - Homepage with general feature information, links to documentation, downloads and examples.</p>
<p><a href="http://playtype.net/past/2008/10/9/installing_rabbitmq_on_osx/">Installing RabbitMQ on OS X</a> - A guide to installing RabbitMQ on Mac OS X by Rany Keddo. With the installation of Erlang, it's not quite the quickest process, but it's worth the wait.</p>
<p><a href="http://github.com/tmm1/amqp/tree/master">AMQP "driver" for Ruby/EventMachine</a> - A Ruby library by Aman Gupta that provides an event driven AMQP implementation for Rubyists, built around EventMachine. Works on Ruby 1.8, 1.9, and JRuby and tested directly against RabbitMQ.</p>
<p><a href="http://everburning.com/news/ridding-the-rabbit/">Riding the Rabbit</a> - A blog post by Dan Sinclair that demonstrates the setup of a RabbitMQ instance, and the use of the aforementioned AMQP Ruby/EventMachine library.</p>
<p><a href="http://www.jaikoo.com/2008/3/14/oh-hai-rabbitmq">OH HAI RabbitMQ! Screencast</a> - A great screencast by British Rubyist Jonathan Conway that demonstrates how to set up RabbitMQ and perform some basic operations.</p>
<p><a href="http://github.com/brightbox/warren/tree/master">Warren - A wrapper for AMQP</a> - A library for pushing messages on to RabbitMQ queues (and receiving them at the other end) by the Brightbox crew. Authentication and filtering features can be added through custom classes.</p>
<p><a href="http://skillsmatter.com/podcast/ruby-on-rails/rabbitmq-and-ruby">RabbitMQ and Ruby presentation</a> - Ben Hood (one of RabbitMQ's developers) gives a 40 minute presentation on RabbitMQ and Ruby. He looks at the background of RabbitMQ, the motivations behind using something like RabbitMQ, the approaches that have been taken in the past, AMQP, and, yes, a lot more.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Ericson Smith</strong> &middot; <time datetime="2009-04-09T15:00:00+00:00">April 9, 2009 at 3:00 pm</time></p>
      <p>There are so many options available now that are simpler and just as effective:</p><p>* MemcacheQ<br>
* Redis</p><p>Granted RabbitMQ has some more features that make it compelling, but as our apps become more complex, I found that more and more we need to use queues for a variety of things. The above products allow us to quickly setup a persistent queue that services a number of clients efficiently and in an atomic way.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jake mallory</strong> &middot; <time datetime="2009-04-09T15:25:00+00:00">April 9, 2009 at 3:25 pm</time></p>
      <p>It's great to see messaging adopted in the ruby/rails community. Some co-workers have created a great queue API called rosetta-queue that allows you to swap out the message broker using adapters, of which rabbitmq is available. Http://rubyforge.org/projects/rosetta-queue</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hubert Łępicki</strong> &middot; <time datetime="2009-04-09T22:35:00+00:00">April 9, 2009 at 10:35 pm</time></p>
      <p>That looks fantastic. Again, if I knew about it 2 months ago, it would have saved the day...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ed Borasky</strong> &middot; <time datetime="2009-04-10T18:33:00+00:00">April 10, 2009 at 6:33 pm</time></p>
      <p>Funny you should mention message queues. One of the Portland, Oregon bright lights in the Ruby community, Igal Koshevoy, did some research on message queue technologies and presented his results at this past Tuesday's PDX Ruby Brigade meeting. It turns out there are lots more than just RabbitMQ and Starling.</p><p>Here's the link:</p><p><a href="http://github.com/igal/rubyqueues/tree/master" rel="nofollow">http://github.com/igal/rubyqueues/tree/master</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mel Gray</strong> &middot; <time datetime="2009-04-10T22:52:00+00:00">April 10, 2009 at 10:52 pm</time></p>
      <p>Lizzy is a great library for interacting with RabbitMQ / AMQP.</p><p>Its built on top of the AMQP gem and is MUCH easier to get started with than out and out AMQP.</p><p><a href="http://github.com/bmizerany/lizzy/tree/master" rel="nofollow">http://github.com/bmizerany/lizzy/tree/master</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>BJ Clark</strong> &middot; <time datetime="2009-04-11T03:40:00+00:00">April 11, 2009 at 3:40 am</time></p>
      <p>We use AMQP at AboutUs.org to send 50 million+ messages a month. Very very happy with it's performance.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matt Brubeck</strong> &middot; <time datetime="2009-04-13T19:26:00+00:00">April 13, 2009 at 7:26 pm</time></p>
      <p>Ericson Smith, can you explain what you mean by "simpler?"  RabbitMQ Server 1.5.4 is only about 6,000 lines of code, around the same size as either Redis or MemcacheQ.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>naniter</strong> &middot; <time datetime="2009-04-14T18:44:00+00:00">April 14, 2009 at 6:44 pm</time></p>
      <p>looks like you forgot nanite [?]</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://www.opensourcery.co.za/2009/04/19/to-amqp-or-to-xmpp-that-is-the-question/" rel="external nofollow" class="url">Open Sourcery</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
