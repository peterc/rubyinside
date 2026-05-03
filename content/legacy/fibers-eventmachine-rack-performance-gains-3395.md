---
title: Ruby 1.9 Fibers + EventMachine for Big Ruby Webapp Performance Gains
date: '2010-06-14'
author: Peter Cooper
author_slug: admin
post_id: 3395
slug: fibers-eventmachine-rack-performance-gains-3395
url: "/fibers-eventmachine-rack-performance-gains-3395.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p>Developers hankering for more performance from their Rack and Rails applications are using Ruby 1.9 fibers and event-based <a href="http://rubyeventmachine.com/">EventMachine</a>-driven libraries as a way to boost the performance of their applications - in opposition to scaling by merely running multiple processes or using threads.</p>
<p>It's no secret that thread-based development can be Hard™, even if you didn't have to deal with Ruby quirks like <a href="http://redmine.ruby-lang.org/issues/show/921">autoloading not working properly</a> and the GIL (Global Interpreter Lock). Luckily, Ruby 1.9 provides <a href="http://www.infoq.com/news/2007/08/ruby-1-9-fibers">fibers</a>, light-weight "execution units" that are manually scheduled by their parent application.</p>
<p>Back in April, Mike Perham <a href="http://www.mikeperham.com/2010/04/03/introducing-phat-an-asynchronous-rails-app/">introduced Phat</a>, an asynchronous Rails 2.3.5 app running on Ruby 1.9 and supporting "many concurrent requests in a single Ruby process." In his explanation, he referred back to <a href="http://www.mikeperham.com/2010/01/27/scalable-ruby-processing-with-eventmachine/">Scalable Ruby Processing with EventMachine</a>, a talk he gave at Austin On Rails that's worth checking out.</p>
<p>Event-based database drivers are used to keep database queries asynchronous (this, however, is <a href="neverblock-easy-non-blocking-io-in-ruby-1083.html">not a new concept</a>) so that execution can be switched deftly between multiple fibers each serving a separate Web request by the <a href="http://github.com/mperham/rack-fiber_pool">rack-fiber_pool</a> middleware component. Ilya Grigorik's <a href="http://github.com/igrigorik/em-synchrony">EM-Synchrony</a> can then be used to make a collection of common EventMachine clients fiber-aware (for using Memcached, MongoDB, Beanstalk, and more). All of this works with any Rack app, not just in Rails.</p>
<p>This week, Aaron Gough has written an article called <a href="http://thingsaaronmade.com/blog/improving-application-throughput-900-percent-with-asynchronous-responses-in-rails-3.html">Improving application throughput 9x with asynchronous responses in Rails 3</a>  that covers the concepts at a higher level and demonstrates how he ported an existing Rails app to use the concepts outlined above. In doing so, he increased his requests per second from 5.46 to 52.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Stephen Eley</strong> &middot; <time datetime="2010-06-14T06:55:00+00:00">June 14, 2010 at 6:55 am</time></p>
      <p>Autoload does work properly in Ruby 1.9.  See: <a href="http://stackoverflow.com/questions/2837912" rel="nofollow">http://stackoverflow.com/questions/2837912</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-06-14T07:12:00+00:00">June 14, 2010 at 7:12 am</time></p>
      <p>Interesting, but something more authoritative than a casual example would be interesting - I hope we will find a citation.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>raggi</strong> &middot; <time datetime="2010-06-14T10:40:00+00:00">June 14, 2010 at 10:40 am</time></p>
      <p>Um sorry to burst the bubble a little, but that app gained so significantly because it was halting the whole stack whilst waiting (a long time) for external requests.</p><p>Apps which have already solved this problem (normally by pushing long running operations into background runners) won't see these kinds of gains for their main runtime.</p><p>The most expensive part of the process at the moment, arbitrarily, is rendering, and no ones written stream rendering yet. DHH did mention 'flush' at railsconf, which I think is a bad idea. Apps shouldn't (generally) be in control of IO, the flushing should be implicit wherever possible.</p><p>What this requires is for someone to wire the renderer up with the servers scheduler (think env['async.schedule'].call(&amp;work_for_next_chunk)) and then to work out how to deal with the content_for problem.</p><p>Without doing this properly, you'll only see a very small gain in concurrency, which in reality (and I'm saying this from experience) will just eat up heap space, and eventually, the GC will kill you again.</p><p>It is possible to make some gains in concurrency not waiting for overloaded / slow database servers, but again, you have to be careful not to shoot yourself in the foot, as balancing application memory overheads with concurrency levels in the servers is key to managing whether or not you actually get higher throughput. Especially under MRI.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>raggi</strong> &middot; <time datetime="2010-06-14T10:59:00+00:00">June 14, 2010 at 10:59 am</time></p>
      <p>autoload works fine in 1.9, that problem comes up on 1.8 too.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jean</strong> &middot; <time datetime="2010-06-14T11:13:00+00:00">June 14, 2010 at 11:13 am</time></p>
      <p>You wouldn't happen to have a link to some discussion on how thread unsafe libraries fare on fiber? From all I can read/watch it sounds like fiber is a green thread implementation. From the sound of it, there are no deadlock risks but I don't see how it protects against data corrution if a library stores data in a thread unsafe way.<br>
Take the following sequence :<br>
- IO call (fake blocking using EM/Fiber)<br>
- call to unsafe library which stores request specific information in memory<br>
- IO call (fake blocking ...)<br>
- call to unsage librare which reads previously stored state. </p><p>Now you get 2 requests at the same time R1 and R2 .<br>
- IO 1 from R1 goes to EM and waits<br>
- IO 1 from R2 goes to EM and waits<br>
- IO 1 from R1 calls back, R1 executes the misbehaving library call and IO 2 from R1 goes to EM and waits<br>
- IO 1 from R2 calls back, R2 executes the misbehaving library call and IO 2 from R2 goes to EM and waits </p><p>At this point whenever R1 comes back from waiting on IO 2 it's context is corrupted. </p><p>Is this discussed anywhere ? I don't see how the execution flow with fiber and EM can prevent this.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aaron Gough</strong> &middot; <time datetime="2010-06-14T16:43:00+00:00">June 14, 2010 at 4:43 pm</time></p>
      <p>@Raggi:</p><p>You are right, in this case the gain is huge because the external HTTP calls were taking so long. But there are plenty of other cases where big gains can be seen. A warm Rails stack generally has a pretty small overhead for a simple action, but a database call might be slow and inflate the overall request time, particularly if you're accessing a DB on another server (for example on a different EC2 instance)</p><p>An example taken from a common action on one of my production apps:</p><p>  View                11.4ms<br>
  Controller       5.7ms<br>
  ActiveRecord  25.9ms</p><p>That 25.9 ms could definitely be better spent serving other requests...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aaron Gough</strong> &middot; <time datetime="2010-06-14T17:08:00+00:00">June 14, 2010 at 5:08 pm</time></p>
      <p>@ Jean:</p><p>You're right, I'm sure this is addressed to an extent in libraries like EM-Synchrony, but right now I don't really have the technical knowledge to discuss it further. My reading/experimenting list for the next little while is going to focus heavily on EM, Fibers and Ruby concurrency in general...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stephen Eley</strong> &middot; <time datetime="2010-06-15T16:10:00+00:00">June 15, 2010 at 4:10 pm</time></p>
      <p>Peter: you're right, and I'd have preferred a proper citation too describing the bug fix.  But I couldn't find one after some earnest time spent searching.  Not in ruby-forum.com, nor in any 1.9 changelogs,  nor via Google.  Repeating the reproducible experiment was the best I could do; and because the experiment correctly emulated the conditions described in Charles Nutter's original bug description, it convinced me.</p><p>(Aside: I also couldn't find any evidence that the defect in 1.8 autoload had ever impacted anyone in a real-world application.  It's an edge case involving multi-threading and bad timing, so a NON-trivial example would likely be difficult to demonstrate.)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-06-15T19:09:00+00:00">June 15, 2010 at 7:09 pm</time></p>
      <p>@Stephen: Thanks for the clarifications. I am by no means against empirical evidence on things like this, but.. when it comes to stuff as notoriously complicated as threading, more authoritative words are certainly reassuring. I think it's proof of how tricky thread related topics are that so few authoritative posts are made about them.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2010-07-14T23:20:00+00:00">July 14, 2010 at 11:20 pm</time></p>
      <p>I had a bit discussion about this at</p><p><a href="http://www.igvita.com/2010/06/07/rails-performance-needs-an-overhaul/" rel="nofollow">http://www.igvita.com/2010/06/07/rails-performance-needs-an-overhaul/</a></p><p>My conclusion is that threading per-se, though annoying to program, is not the bottleneck in rails, and careful profiling has to be done to see *what is* before running off and declaring fibers the answer.</p><p>If you want to be able to handle requests without blocking on the DB, use the mysqlplus or postgres drivers with threads.  Should work like a champ.</p><p>-r</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
