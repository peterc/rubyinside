---
title: Why Rubyists Should Care About Messaging (A High Level Intro)
date: '2011-06-14'
author: Jakub Stastny
author_slug: jakub
post_id: 5017
slug: why-rubyists-should-care-about-messaging-a-high-level-intro-5017
url: "/why-rubyists-should-care-about-messaging-a-high-level-intro-5017.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2011/06/roads.jpg" alt="" title="roads" width="130" height="130" class="alignnone size-full wp-image-5039" style="float: right; margin-left: 12px; margin-bottom: 12px; border: 1px solid #666"><em>Messaging</em> in the context of application architecture (grandly referred to as <a href="http://en.wikipedia.org/wiki/Message-oriented_middleware">message oriented middleware</a> on Wikipedia) is similar to messaging in the real world. If you want to ask your colleague to do something, you'll send him a message of some sort. And if your app needs to ask another app to do something it can do the same, send a message to another app or process to run a command or send an e-mail, for example.</p>
<p><em>Note: This is a guest post by Jakub Stastny, a member of the <a href="http://www.rabbitmq.com/">RabbitMQ</a> team. Further info can be found at the footer of this post.</em></p>
<p>There are many reasons for using messaging in your applications. It can help you:</p>
<ul>
<li>
<strong>improve response times</strong> by doing some tasks asynchronously</li>
<li>
<strong>reduce complexity</strong> by decoupling and isolating applications</li>
<li>build <strong>smaller</strong> apps that are easier to develop, debug, test, and scale</li>
<li>build <strong>multiple</strong> apps that each use the most suitable language or framework versus one big monolithic app</li>
<li>get robustness and reliability through message queue <em>persistence</em>
</li>
<li>potentially get <strong>zero-downtime redeploys</strong>
</li>
<li>distribute tasks across machines based on load</li>
</ul>
<p>For the purpose of this article I'm going to use the word "messaging" only for sending messages over some kind of messaging protocol such as AMQP or STOMP. There are some messaging systems which work only within one language, such as JMS for Java, and I'm not going to touch on these.</p>
<h3>Messaging Architecture</h3>
<p>Most messaging software is implemented as a <strong>message broker</strong> which is a daemon connecting <strong>producers</strong> with <strong>consumers</strong>. Producers send messages and consumers process them. In Web development, a producer is usually a frontend which based on user actions generates tasks, whereas a consumer is usually a backend executing those tasks. Examples of a messaging broker are <a href="http://www.rabbitmq.com">RabbitMQ</a> and <a href="http://activemq.apache.org/">ActiveMQ</a>. However, a broker isn't strictly required. For example, ZeroMQ provides only a socket-like API (this <a href="http://www.zeromq.org/whitepapers:brokerless">white paper explains more</a> about broker vs brokerless systems).</p>
<p><img src="/assets/2011/06/messaging-schema.png" alt="" title="messaging-schema" width="640" height="139" class="alignnone size-full wp-image-5020"></p>
<p><em>Basic schema of how messaging works.</em> </p>
<p>A broker isn't only a dumb storage of tasks - it can do a lot more. An important feature is <strong>advanced routing</strong>, giving you the power to route one message to one or multiple queues based on configuration or even based on some pattern in the messages. The part of the broker which takes care of the routing is called an <strong>exchange</strong> in the case of <a href="http://en.wikipedia.org/wiki/Advanced_Message_Queuing_Protocol" title="Advanced message queue protocol">AMQP</a>.</p>
<p><img src="/assets/2011/06/amqp-schema.png" alt="" title="amqp-schema" width="640" height="704" class="alignnone size-full wp-image-5018"></p>
<p><em>Schema of how AMQP works.</em> </p>
<h3>How Can You Benefit from Using Messaging?</h3>
<h4>Reliability &amp; Robustness</h4>
<p>Now you might wonder: <em>"Isn't a background thread enough?"</em> What if the application crashes? Most of the messaging brokers support some form of <strong>persistency</strong>, so even if the server is restarted, no data are lost<sup>1</sup>. Messaging protocols often support 'acknowledgements' too, which means that a task is considered to be finished only if the client sends confirmation that everything went OK.</p>
<p><small><sup>1</sup> It might be tricky in case the broker is killed, but there's usually a solution for that as well. For example AMQP supports transactions and RabbitMQ provides <a href="http://www.rabbitmq.com/extensions.html#confirms">publisher confirms</a> which is a fast, asynchronous way to be notified that the message was published successfully. Persistent messages are confirmed when all queues have either delivered the message and received an acknowledgement, or persisted the message.</small></p>
<h4>Decoupling</h4>
<p>With a message based infrastructure, different parts of your app can easily communicate to each other, making it simple to decouple your app into a few smaller ones. I believe this is really crucial, because it makes the design much better, it makes a lot of stuff simpler and gives a natural progression for scaling.</p>
<p>If your apps are separated, you don't have to write everything in one language, hence <strong>you can choose the right tool for the right job</strong>. You can <strong>connect your new apps in Ruby with your legacy apps</strong> in, let's say PHP. You don't have to rewrite the whole ecosystem of apps and specific problems can be solved using Java, Erlang or C if you need better performance or scalability. This isolation can also make it easier for different people to work on different apps, as long as the messaging scheme is agreed upon. (Hello, outsourcing!)</p>
<p>The pain of deploying of large apps can also, in many cases, be reduced. Designed correctly, a heavily decoupled system made of several parts is less likely to come crashing down like a house of cards. Instead, you might have a few component apps dying and only having a cosmetic effect on the larger app overall.</p>
<p>And a bonus: because the apps are isolated, you can easily see the input and output of them, therefore it's easy to inspect and debug them.</p>
<pre>#!/usr/bin/env ruby
# encoding: utf-8

require "amqp"

EventMachine.run do
  AMQP.connect do |connection|
    channel  = AMQP::Channel.new(connection)
    queue    = channel.queue("", auto_delete: true)
    exchange = channel.direct("")

    exchange.publish "Hello RubyInside readers!", key: queue.name
  end
end</pre>
<p><img src="/assets/2011/06/tracer.png" alt="" title="tracer" width="640" height="204" class="alignnone size-full wp-image-5026"></p>
<p><em>This from <code>com.rabbitmq.tools.Tracer</code> tool of <a href="http://www.rabbitmq.com/java-client.html">rabbitmq-java-client</a> showing how we can easily inspect the code above.  Another tool you can use for this purpose is <a href="http://www.wireshark.org">Wireshark</a>.</em></p>
<p>Now imagine everyone starts to use your application. You've suddenly become rich, you buy beers to everyone and you <a href="http://jamster.tumblr.com/post/4262893865/github-has-hired-26-talented-fucking-people-in-the-past">hire the top people of your community</a>. But then what happens? Oh no, an angry unicorn!</p>
<p>Right, it's <strong>time to scale</strong>. But how? The frontend is fairly simple, but there's a lot of stuff going on on the backend: sending e-mails, processing images, running some tasks ... you can add new instances, but it won't reduce complexity, and it won't be very efficient as different parts of the app have different performance requirements.</p>
<p>So instead you can use <strong>decoupling</strong> and split your app into multiple separate services. Such applications are <strong>very easy to scale</strong> and because they're small, they're also <strong>way easier to test</strong> and <strong>the isolation makes it easy to rewrite some parts</strong> in case you have so big load that you need to rewrite the critical bits into Java or C.</p>
<p><img src="/assets/2011/06/scalling-by-adding-instances.png" alt="" title="scalling-by-adding-instances" width="362" height="290" class="alignnone size-full wp-image-5023"> </p>
<p><em>Scaling by adding new instances.</em></p>
<p><img src="/assets/2011/06/scalling-by-adding-consumers.png" alt="" title="scalling-by-adding-consumers" width="601" height="744" class="alignnone size-full wp-image-5022"></p>
<p><em>Scaling by adding new task consumers.</em></p>
<h4>Faster Response Times</h4>
<p>Most of the Web apps nowadays are too synchronous. If you upload an image, you might sit there waiting for the thumbnails to be made. It's slow and puts a lot of load on the frontend of a Web app. With a message based architecture, the frontend could instead publish a message saying <em>"Please resize me image XY"</em> (well, in a slightly more technical way ;-)) and leave it be. The same applies for many other situations: sending e-mails, following other users etc.</p>
<p>If it can't get an instant response and deliver that to the user, put it into a message and pop it on a queue to be done later. Most larger sites and services <em>have</em> to do this, so if you can bake it into your smaller app, you'll give yourself a longer runway.</p>
<h4>Avoiding Unnecessary Downtimes</h4>
<p>Another advantage of messaging is that, if designed properly, you could experience <strong>no downtime when redeploying backend services</strong>. Consider the scenario with uploading images I mentioned previously. If the communication were synchronous and the "scaler" were down, any request to the service would fail because it couldn't respond. With messaging, you don't have to care. You'd just publish the task and once the service is back online, it will "catch up" and process all of the images.</p>
<p><img src="/assets/2011/06/service-over-http.png" alt="" title="service-over-http" width="640" height="185" class="alignnone size-full wp-image-5024"></p>
<p><em>Communicating with service over HTTP. If the service goes down, the frontend won't work.</em> </p>
<p><img src="/assets/2011/06/service-via-rabbitmq.png" alt="" title="service-via-rabbitmq" width="640" height="108" class="alignnone size-full wp-image-5025"></p>
<p><em>Communicating with a service over a messaging broker. If the service goes down, the frontend can still work, because once the service goes online, it'll catch up on the messages which have been sent before.</em> </p>
<h3>But I Can Just Use HTTP, Right?</h3>
<p>In the Ruby community <strong>HTTP is very popular but often overused</strong>. It always depends on your use-case. For example, if you need more <strong>advanced routing</strong> like 1:n or n:m, HTTP has little to offer. If you need <strong>asynchronous functionality</strong> or <strong>loosely coupled components</strong> like in case of pub/sub pattern, again, HTTP isn't usually a good choice.</p>
<h3>Downsides of Messaging</h3>
<p>On the other hand, messaging infrastructures have their own downsides. First of all there are the innate <a href="http://en.wikipedia.org/wiki/Fallacies_of_Distributed_Computing">downsides of going distributed</a> at all such as increased reliance on the network and systems administrators (networks can and do go down, even within a single machine). Then there's quite some code for <strong>handling reconnection</strong> like <strong>redeclaring non-durable queues and exchanges</strong> and also you have to <strong>accumulate messages</strong> until network connection is up again (though a good broker will deal with much of this).</p>
<p>One of the most important features of the upcoming <a href="http://github.com/ruby-amqp/amqp">AMQP 0.8 gem</a> is <strong>significantly improved error handling</strong>, so these problems aren't fatal, but you should mind them before making the decision whether the architecture suits your application or not. In most cases it's a fair price for the advantages of a messaging-based architecture, but in some cases you might find it better to just use a synchronous approach.</p>
<p><img src="/assets/2011/06/http-routing.png" alt="" title="http-routing" width="488" height="176" class="alignnone size-full wp-image-5019"></p>
<p><em>Routing via HTTP with sending request/response for each client/message.</em></p>
<p><img src="/assets/2011/06/routing-through-broker.png" alt="" title="routing-through-broker" width="640" height="152" class="alignnone size-full wp-image-5021"></p>
<p><em>Routing via a messaging broker when you send a message to the broker and it takes care about the rest.</em></p>
<h3>My Presentation</h3>
<p>I recently gave a talk giving an introduction to messaging, along similar lines to this article. The slides are embedded below for your reference:</p>
<div style="width:425px" id="__ss_8002480"> <strong style="display:block;margin:12px 0 4px"><a href="http://www.slideshare.net/botanicus/messaging-8002480" title="WTF Is Messaging And Why You Should Use It?">WTF Is Messaging And Why You Should Use It?</a></strong> <iframe src="http://www.slideshare.net/slideshow/embed_code/8002480" width="425" height="355" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
<div style="padding:5px 0 12px"> View more <a href="http://www.slideshare.net/">presentations</a> from <a href="http://www.slideshare.net/botanicus">botanicus</a> </div>
</div>
<p><em>I'd like to thank <a href="https://github.com/michaelklishin">Michael Klishin</a> for his suggestions about improving this post.</em> </p>
<p class="s" style="background-color: #eee; padding: 12px"><strong>This post was by Jakub Stastny.</strong> Jakub is a Ruby contractor currently working for the RabbitMQ team of VMware with the mission to make Ruby developers more aware of messaging. He created the <a href="rango-ruby-web-app-framework-2858.html">Rango framework</a>, the first Ruby framework with template inheritance and has contributed to many well-known projects such as RubyGems, rSpec and Merb. He has a <a href="http://blog.101ideas.cz">blog 101ideas.cz</a> where he writes about IT and self-development stuff and he tweets as <a href="http://twitter.com/botanicus">@botanicus</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Scott Parrish</strong> &middot; <time datetime="2011-06-15T02:21:00+00:00">June 15, 2011 at 2:21 am</time></p>
      <p>lets say I want to start using messaging.  And I'm looking at using solely in 2 contexts.<br>
1.  different processes on the same machine on an Ubuntu system(s)<br>
2.  different machines on a LAN.</p><p>What messaging brokers best serves each context?  </p><p>And is DBus in Ubuntu a messeging solution in this same vein or is something different?</p><p>thanks for the great article.  I can see the usefulness of this approach.  in things I'm working on now even.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joe Van Dyk</strong> &middot; <time datetime="2011-06-15T02:50:00+00:00">June 15, 2011 at 2:50 am</time></p>
      <p>In Ruby, why would you want to use an async approach (i.e. the ampq gem) instead of something synchronous (i.e. the carrot gem @ <a href="https://github.com/ruby-amqp/bunny" rel="nofollow">https://github.com/ruby-amqp/bunny</a>)?</p><p>Carrot seems much simpler.  I don't understand the advantages of async for a typical Ruby web application.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nick</strong> &middot; <time datetime="2011-06-15T07:16:00+00:00">June 15, 2011 at 7:16 am</time></p>
      <p>Great Article!<br>
Totally unrelated, may I ask what you used to create those schemas? Have been looking for something to create pretty flowcharts with.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael</strong> &middot; <time datetime="2011-06-15T08:08:00+00:00">June 15, 2011 at 8:08 am</time></p>
      <p>AMQP gem no longer lives at rubyforge.org. Please correct link to <a href="http://github.com/ruby-amqp/amqp" rel="nofollow">http://github.com/ruby-amqp/amqp</a>, documentation is at <a href="http://bit.ly/amqp-gem-docs" rel="nofollow">http://bit.ly/amqp-gem-docs</a>.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael</strong> &middot; <time datetime="2011-06-15T08:20:00+00:00">June 15, 2011 at 8:20 am</time></p>
      <p>@JoeVanDyk: I won't judge what a "typical Ruby web application" looks like but many people use <a href="http://github.com/ruby-amqp/bunny" rel="nofollow">Bunny</a> (what you referred to as "carrot") in Web apps to publish messages and standalone apps use amqp gem. That's why people over at github.com/ruby-amqp maintain both libraries and reach out to all those people who forked Bunny to make a few changes that were never merged back, especially lots of improvements by the Xing engineers.</p><p>If you prefer Bunny, use it. It is going strong and is not abandoned. But I encourage people to read through <a href="http://bit.ly/amqp-gem-docs" rel="nofollow">amqp gem documentation guides</a>, at least <a href="http://bit.ly/jcuACj" rel="nofollow">Getting Started guide</a>, before they declare amqp gem as "not easy to use". This is largely a problem of documentation quality and this is where most of the effort goes now for the <a href="http://github.com/ruby-amqp/amqp" rel="nofollow">amqp gem</a>. Up to the point that I am <a href="http://bit.ly/lMKV7w" rel="nofollow">rewriting EventMachine documentation</a>.</p><p>I hope that answers your question.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael</strong> &middot; <time datetime="2011-06-15T08:31:00+00:00">June 15, 2011 at 8:31 am</time></p>
      <p>Finally, Ruby amqp ecosystem updates (from releases to new features to documentation updates) are published at twitter.com/rubyamqp.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jakub Stastny</strong> &middot; <time datetime="2011-06-15T11:42:00+00:00">June 15, 2011 at 11:42 am</time></p>
      <p>Joe, there are reasons for using async particularly for messaging:</p><p>1) Messaging protocols such as AMQP are async themselves, so async code is a natural fit.<br>
2) Generally async code is much faster.</p><p>Anyway you'd be pleased to hear that I'm going to start to work on Bunny soon. We don't plan to support Carrot at least for the time being, but we want to port all the goodies of amq-client to bunny, so it'll get more granular API and it'll be much faster as well, because amq-protocol parser we've written is way more faster than the one the old AMQP gem and Bunny use (see <a href="http://www.rabbitmq.com/blog/2011/03/01/ruby-amqp-benchmarks" rel="nofollow">Ruby AMQP benchmarks</a>).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joe Van Dyk</strong> &middot; <time datetime="2011-06-15T16:41:00+00:00">June 15, 2011 at 4:41 pm</time></p>
      <p>Bah, I got my rabbit names mixed up. Yes, I meant bunny, not carrot.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joe Van Dyk</strong> &middot; <time datetime="2011-06-15T18:42:00+00:00">June 15, 2011 at 6:42 pm</time></p>
      <p>Yes, I meant Bunny, not Carrot, sorry.  Got my rabbit names mixed up.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>skrat</strong> &middot; <time datetime="2011-06-15T19:54:00+00:00">June 15, 2011 at 7:54 pm</time></p>
      <p>Great post! I like the emphasis on cross platform and standardization. We run Rails frontend and Celery for async. job running. With just a bit of glue (<a href="https://github.com/skrat/celerb" rel="nofollow">https://github.com/skrat/celerb</a>) it works like H 2 the O.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>terrcin</strong> &middot; <time datetime="2011-06-16T00:48:00+00:00">June 16, 2011 at 12:48 am</time></p>
      <p>you can install hadoop on a mac with brew:</p>
    </li>
      <li>
      <p class="comment-meta"><strong>postmodern</strong> &middot; <time datetime="2011-06-16T02:28:00+00:00">June 16, 2011 at 2:28 am</time></p>
      <p>I wonder how <a href="http://www.zeromq.org/" rel="nofollow">ZeroMQ</a> is doing in Ruby (<a href="http://rubygems.org/gems/zmq" rel="nofollow">zmq</a> and <a href="https://github.com/chuckremes/ffi-rzmq" rel="nofollow">ffi-rzmq</a>). ZeroMQ is a simpler and more self-contained alternative to AMQP. Although, last time I played with it there were some Threading issues.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Milan Dobrota</strong> &middot; <time datetime="2011-06-16T18:53:00+00:00">June 16, 2011 at 6:53 pm</time></p>
      <p>Awesome post! I use AMQP gem/RabbitMQ in the project I am currently working on and it works well so far. One of my pain points is getting the asynchronous code properly tested.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>rick</strong> &middot; <time datetime="2011-06-17T14:56:00+00:00">June 17, 2011 at 2:56 pm</time></p>
      <p>postmodern: ZeroMQ isn't supposed to work across threads.  You can create ZeroMQ sockets to communicate between threads using the inter-process transport though.</p><p>The <a href="http://zguide.zeromq.org/page:all" rel="nofollow">ZeroMQ Guide</a> is a great read for anyone hungry for more about messaging systems after reading this.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dewayne VanHoozer</strong> &middot; <time datetime="2011-06-20T19:43:00+00:00">June 20, 2011 at 7:43 pm</time></p>
      <p>Messaging between apps has played an extreamly important part of our work at the VRSIL (search youtube) within Lockheed.  I have proposed a presentation for LSRC and RubyConf 2011 which focuses on our 5 years of integrating legacy apps and new apps using Ruby.  We developed our Intergrated System Environment around the concept of smart messages and plug in messade routers.  It works great for rapidly integrating new systems...</p><p>btw RabitMQ was the latest protocol/router we added to ISE in support on some commercial apps...  and may I just say that it is an impressive bit of work. </p><p>If my proposal gets accepted the session title will be something like "The Secret Life of Ruby: Warrior With a Cause"</p><p>Dewayne<br>
  o-*<br>
Dewayne<br>
  o-*</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tobin Harris</strong> &middot; <time datetime="2011-07-09T16:17:00+00:00">July 9, 2011 at 4:17 pm</time></p>
      <p>Nice. Are the diagrams from <a href="http://yuml.me" rel="nofollow">http://yuml.me</a> :) ?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>GuyBoertje</strong> &middot; <time datetime="2011-07-15T05:53:00+00:00">July 15, 2011 at 5:53 am</time></p>
      <p>At MusicGlue we are building our next gen platform that uses ZeroMQ for transient synchronous request/reply and RabbitMQ for persistent async pub/sub in jruby without EM.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
