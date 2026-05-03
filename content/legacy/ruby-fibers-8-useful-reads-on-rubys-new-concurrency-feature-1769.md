---
title: 'Ruby Fibers: 8 Useful Reads On Ruby’s New Concurrency Feature'
date: '2009-05-13'
author: Peter Cooper
author_slug: admin
post_id: 1769
slug: ruby-fibers-8-useful-reads-on-rubys-new-concurrency-feature-1769
url: "/ruby-fibers-8-useful-reads-on-rubys-new-concurrency-feature-1769.html"
categories:
- compilations
- elsewhere
- reference
---

{{< rawhtml >}}
<p><img src="/assets/2009/05/fibers.png" width="88" height="96" alt="fibers.png" style="float:left; margin-right:12px; margin-bottom:12px;">New to Ruby 1.9 is the concept of <em>fibers</em>. Fibers are light-weight (green) threads with manual, cooperative scheduling, rather than the preemptive scheduling of Ruby 1.8's threads. Since Ruby 1.9's threads exist at the system level, fibers are, in a way, Ruby 1.9's answer to Ruby 1.8's <em><span style="font-style: normal;">green threads</span>,</em> but lacking the pre-emptive scheduling.</p>
<p>Now that Ruby 1.9 is becoming more important with each passing month, I've rounded up some of the best articles about Ruby 1.9's fiber functionality so that you can be up to speed with all of the major concepts in perhaps 10 to 15 minutes. If you're getting interested in Ruby 1.9, you'll want to read on:</p>
<div style="margin-left: 1.5em">
<p><a href="http://www.igvita.com/2009/05/13/fibers-cooperative-scheduling-in-ruby/"><strong>Fibers &amp; Cooperative Scheduling in Ruby</strong></a> - Ilya Grigorik hits it out of the ballpark with perhaps the best overview of fibers. Includes a snazzy diagram, a code example, and a look at how JRuby and Rubinius compare. If you read just one article, make it this one.</p>
<p><a href="http://pragdave.blogs.pragprog.com/pragdave/2007/12/pipelines-using.html"><strong>Pipelines Using Fibers in Ruby 1.9</strong></a> - Dave Thomas gives one of his typically awesome code walkthroughs by showing how fibers can be used to emulate a UNIX-esque pipeline of operations. There's even <a href="http://pragdave.blogs.pragprog.com/pragdave/2008/01/pipelines-using.html">a second installment</a>.</p>
<p><a href="http://ruby-doc.org/core-1.9/classes/Fiber.html"><strong>Ruby 1.9 Fiber documentation</strong></a> - The actual Ruby 1.9 documentation for the Fiber class. There's not any depth but it's a reasonable introduction with a couple of simple examples.</p>
<p><a href="http://www.infoq.com/news/2007/08/ruby-1-9-fibers"><strong>Ruby 1.9 adds Fibers for lightweight concurrency</strong></a> - A summary post about fibers by Werner Schuster of InfoQ. It's two years old (back when it wasn't even 100% sure whether fibers would end up in 1.9 or not) but features a very simple example and features some information on fibers taken from both MSDN and Sasada Koichi (the YARV guy).</p>
<p><a href="http://oldmoe.blogspot.com/2008/08/ruby-fibers-vs-ruby-threads.html"><strong>Ruby Fibers vs Ruby Threads</strong></a> - Muhammed Ali presents some benchmarks showing how fibers are much "lighter" than threads in terms of creation time and memory usage. Notably, Muhammed ran against a limit of 3070 threads whereas 100,000 fibers weren't a problem (except for crazy levels of memory usage).</p>
<p><a href="http://timetobleed.com/fibers-implemented-for-ruby-1867/"><strong>Fibers implemented for Ruby 1.8.6/7</strong></a> - Aman Gupta and Joe Damato quickly earned their code master badges with a set of patches for Ruby 1.8.6 and 1.8.7 that implemented fibers on those Ruby interpreters. I haven't tried it myself, but it looks like an impressive piece of work nonetheless.</p>
<p><strong><a href="http://people.equars.com/2008/5/22/ruby-fiber-ring-benchmark">Ruby Fiber Ring Benchmark</a></strong> - An implementation of the Erlang "ring" benchmark in Ruby. Considering Ruby and Erlang's relative differences, Ruby holds up pretty well in the benchmark. The code may also be of interest to you.</p>
<p><a href="http://on-ruby.blogspot.com/2008/01/ruby-concurrency-with-actors.html"><strong>Ruby Concurrency with Actors</strong></a> - Pat Eyler takes a look at fibers and their use in implementing <a href="http://en.wikipedia.org/wiki/Actor_model">actor</a> systems, principally with <a href="http://revactor.org/">RevActor</a>.</p>
</div>
<p><em>Still new to the Ruby 1.9 bandwagon? Check out our</em> <a href="23-useful-ruby-19-links-and-resources-1498.html"><em><a title="23 Useful Ruby 1.9 Links and Resources" href="23-useful-ruby-19-links-and-resources-1498.html">23 Useful Ruby 1.9 Links and Resources</a> post</em></a> <em>to whet your appetite.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>TPReal</strong> &middot; <time datetime="2009-05-14T07:29:00+00:00">May 14, 2009 at 7:29 am</time></p>
      <p>Good read, most of those. Another article with examples of Fiber usage: <a href="http://al2o3-cr.blogspot.com/2009/02/fiber.html" rel="nofollow">http://al2o3-cr.blogspot.com/2009/02/fiber.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andy</strong> &middot; <time datetime="2009-05-29T03:22:00+00:00">May 29, 2009 at 3:22 am</time></p>
      <p>Didn't read the article yet, but the picture did remind me to pick up some Fiber Choice next time I'm grocery shopping. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-05-29T12:27:00+00:00">May 29, 2009 at 12:27 pm</time></p>
      <p>I'm a big fan of Fiber One, lol :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
