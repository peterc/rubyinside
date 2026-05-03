---
title: 'SwitchPipe: My New Rapid and Easy Way To Deploy Web Apps'
date: '2008-02-04'
author: Peter Cooper
author_slug: admin
post_id: 712
slug: switchpipe-my-new-rapid-and-easy-way-to-deploy-web-apps-712
url: "/switchpipe-my-new-rapid-and-easy-way-to-deploy-web-apps-712.html"
categories:
- miscellaneous
- ruby-on-rails
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2008/02/switchpipedemo1.png" width="442" height="220" alt="switchpipedemo1.png"></p>
<p>It's not very often I get to announce my own work here, but <a href="http://switchpipe.org/">SwitchPipe</a> is a new project I've been working on since my "<a href="no-true-mod_ruby-is-damaging-rubys-viability-on-the-web-693.html">No True mod_ruby Is Damaging Ruby's Viability On The Web</a>" post. It was Ruby Inside's most commented-on post yet and inspired a lot of discussion about the state of deploying Ruby apps online, and got me to thinking about how to build something to achieve ultra-easy Ruby Web app deployment.</p>
<p><a href="http://switchpipe.org/">SwitchPipe</a> is a proof of concept Web application process manager and request proxy. Backend Web applications are loaded into their own processes, making SwitchPipe language and framework agnostic. HTTP requests are proxied at the TCP level using information extracted from the HTTP headers to establish which backend application is requested. Unlike dispatch / proxying tools that take a totally different approach (such as the wonderful <a href="http://swiftiply.swiftcore.org/">Swiftiply</a>), SwitchPipe is not designed for raw performance, but ease of use and simplicity. You don't have to think about port numbers (beyond the one that SwitchPipe resides on!), starting or stopping backend apps, and a whole lot of other dull stuff. You can even run a full demo of SwitchPipe once you've checked it out via SVN (or downloaded the <a href="http://switchpipe.org/switchpipe-1.02.tar.gz">tarball</a>) with a single command (it'll even install the dependencies!).</p>
<p>SwitchPipe is not <span style="font-style: italic;">the</span> solution, but it's <span style="font-style: italic;">a</span> solution, and one that is well suited to certain types of environment. I've been running several Rails applications live using SwitchPipe and deploying new versions is as simple as an svn checkout.. no restarts, nothing. Adding a new Rails app (or Merb, or Ramaze, or whatever) to SwitchPipe is a case of uploading, creating a config file, and that's it.. you don't even have to restart SwitchPipe!</p>
<p>It's early days for SwitchPipe, but I'm pretty happy with it just for the major benefits it's provided <span style="font-style: italic;">me</span> in deploying various Ruby-backed Web apps, so hopefully a few other people will find a use for it. If you do, make sure to join its Google Group! And yes, it will also be available via Git soon.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>meekish</strong> &middot; <time datetime="2008-02-04T01:57:00+00:00">February 4, 2008 at 1:57 am</time></p>
      <p>Hey Peter,</p><p>It's awesome that you saw a problem and dove in to help out. I'm looking forward to using SwitchPipe.</p><p>Cheers!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ericson Smith</strong> &middot; <time datetime="2008-02-04T02:07:00+00:00">February 4, 2008 at 2:07 am</time></p>
      <p>Great work!</p><p>Cant wait to try it out. That's *exactly* the direction we need to head in.</p><p>1. Something that hooks into apache or other http server<br>
2. Startup or end containers based on traffic, memory and load per container<br>
3. Brain dead easy to use</p><p>That's what litespeed does today. For us to have an open source version would be oh so wonderful.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Robert Dempsey</strong> &middot; <time datetime="2008-02-04T02:50:00+00:00">February 4, 2008 at 2:50 am</time></p>
      <p>Super cool. I am going to try this out tonight.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonno</strong> &middot; <time datetime="2008-02-04T04:02:00+00:00">February 4, 2008 at 4:02 am</time></p>
      <p>Like Ericson mentioned, now we just need a SwitchPipe apache module, mod_switchPipe!</p><p>Any volunteers?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jon</strong> &middot; <time datetime="2008-02-04T04:18:00+00:00">February 4, 2008 at 4:18 am</time></p>
      <p>"SwitchPipe is not the solution, but it’s a solution"</p><p>Thats an awesome attitude to have. You have to start somewhere. We can't just talk about a solution until we have it. I think we'll learn a lot of things with SwitchPipe.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Anon</strong> &middot; <time datetime="2008-02-04T04:24:00+00:00">February 4, 2008 at 4:24 am</time></p>
      <p>Does this do the equivalent of a load balancer/reverse proxy such as Pound?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stephen Waits</strong> &middot; <time datetime="2008-02-04T04:25:00+00:00">February 4, 2008 at 4:25 am</time></p>
      <p>Yah.. stoked on this.  Along with thin, deployment just got easier, and better.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-02-04T04:56:00+00:00">February 4, 2008 at 4:56 am</time></p>
      <p>Anon: Sort of, but it does more (which is the reason it exists). It doesn't just load balance and act as a proxy/reverse proxy, but it actually launches and controls the backend applications that serve the requests.</p><p>Stephen: One thing you might like is that Thin support is baked in to SwitchPipe, including connecting to Thin via UNIX sockets (a new feature they just added). Of course, SwitchPipe is not a performance demon, but it still makes things a little faster :)</p><p>Jonno: I actually pondered (as have a few other people) a "mod_mongrel" a year ago, but none have come to fruition (that I know of). SwitchPipe is, however, reasonably close to it in terms of the goal. The only downside is you have another daemon to keep an eye on and you have to set up some rewrite rules or ProxyReverse directives. An Apache module that automated the Apache end would rock, of course, although I must admit I rather dislike installing them (!!)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-02-04T05:13:00+00:00">February 4, 2008 at 5:13 am</time></p>
      <p>Random thing to point out.. JRuby Inside ( <a href="http://www.jrubyinside.com/" rel="nofollow">http://www.jrubyinside.com/</a> ) is one of the Rails apps currently deployed on my own SwitchPipe installation. If you're the first visitor in a minute or more, you'll notice the first request takes a few seconds, but from then on, it'll be pretty fast. The reason for that is I have a 60 second timeout (I think.. might be 120 or 180 seconds, I forget) on that app, so it's not taking up memory or resources if no-one's using it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Shanti Braford</strong> &middot; <time datetime="2008-02-04T08:59:00+00:00">February 4, 2008 at 8:59 am</time></p>
      <p>One thing I'm trying to understand is how it controls, for example, the # of mongrels.</p><p>i.e. let's say I'm running nginx proxying to mongrel_cluster, with SwitchPipe in between.</p><p>Normally I'd tell nginx to proxy to ports 4000 to 4004, for example.  Ditto in config/mongrel_cluster.yml.</p><p>SwitchPipe allows one to dynamically change this # on the fly, without restarting nginx?</p><p>Do you just configure the webserver to proxy all requests to a single SwitchPipe port and it handles the rest?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-02-04T09:03:00+00:00">February 4, 2008 at 9:03 am</time></p>
      <p>Yes. The configuration file for an app has a "max_instances" parameter (although I believe the default is 3). So, if requests come through for that app, it will spawn up to that many instances (as necessary), assign them port numbers automatically, and dispatch requests to each of them automatically. You can then change this max_instances setting on the fly if you need more capacity at some point.</p><p>SwitchPipe itself is designed in a way that it can deal with multiple concurrent requests at a time without needing multiple instances of itself.</p><p>So in your case you'd get nginx to proxy to:</p><p><a href="http://127.0.0.1:10000/whatever_app/" rel="nofollow">http://127.0.0.1:10000/whatever_app/</a></p><p>.. and SwitchPipe does the rest.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-02-04T09:04:00+00:00">February 4, 2008 at 9:04 am</time></p>
      <p>This also makes SwitchPipe ideal for Apache 1.3 setups where mod_proxy_balancer is not available, since mod_proxy (and mod_rewrite) can proxy well to a single port backend. SwitchPipe then handles the clustering automatically.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paulie</strong> &middot; <time datetime="2008-02-04T15:04:00+00:00">February 4, 2008 at 3:04 pm</time></p>
      <p>Well done Peter, money going where mouth was....</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeremy</strong> &middot; <time datetime="2008-02-04T21:08:00+00:00">February 4, 2008 at 9:08 pm</time></p>
      <p>This looks perfect for what I've been looking for -- for a corporate intranet environment, I've been looking for a way to easily deploy several rails (or othe framework) apps.</p><p>What I really want to enable is for non-developers in our engineering community to create simple web apps (used for data mining and reporting mostly).  Rails / merb / etc makes some of that easy, but the deployment part of it has been a huge barrier.  I'm looking forward to trying this in practice...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ericson Smith</strong> &middot; <time datetime="2008-02-04T21:32:00+00:00">February 4, 2008 at 9:32 pm</time></p>
      <p>Interestingly, if it becomes an apache module, it would be one of the better modules ever created on a par (but only better) than FastCGI. </p><p>Because the potential to load up different kinds of containers is just great for all the languages that are now growing heavier frameworks that need a container (Lisp, Python Ruby, etc).</p><p>For sure, there has to be facilities to scale to multiple machines and make it easy to write new container handlers. </p><p>I for one, can't wait to try this out. We're getting a new server in a couple of days, and for sure we will attempt to get this going as the default way to serve up rails apps.</p><p>When a "mod_switchpipe" becomes available, that will be heaven itself.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-02-04T21:34:00+00:00">February 4, 2008 at 9:34 pm</time></p>
      <p>Jeremy: And with support for "Host" headers being added in the next minor version (might even do it tonight, for trunk only), it could potentially even be the "front end" daemon too (no Apache, etc, needed). Actually, it can already work as a front end, as long as you don't mind using subdirectories to delimit apps (JBoss style).</p><p>Ericson: I guess that's really what it is. It's like a FastCGI that uses HTTP. I would love to hear of any experiences you have, as I have not heard any bad experiences / criticisms yet, and I really would be expecting at least some :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Lennon</strong> &middot; <time datetime="2008-02-04T23:06:00+00:00">February 4, 2008 at 11:06 pm</time></p>
      <p>@Peter: You may have just saved me a chunk of coding. I've been mulling over the design of a very similar process manager/proxy daemon, though I was planning on implementing it as a mod_ruby handler rather than a standalone service.</p><p>I may still go that route for performance reasons, as I've started to figure out recently that just how huge the performance hit is up-front for any HTTP proxy-based architecture. Being able to prototype my system with SwitchPipe will help me get a proof-of-concept up sooner, though.</p><p>Thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-02-05T00:41:00+00:00">February 5, 2008 at 12:41 am</time></p>
      <p>@Lennon: Wow. I can't believe I didn't think of that idea (especially it was the mod_ruby discussion that inspired this). I think it might actually be possible to get SwitchPipe running through mod_ruby in some way, although I haven't got any experience with it directly.</p><p>The performance hit isn't /too/ bad with SwitchPipe, as it doesn't do full HTTP parsing, etc (as a regular HTTP proxy would do), but you still have to proxy from Apache -&gt; SwitchPipe so in any case there is still latency. SwitchPipe also supports connecting to backends via UNIX sockets which can speed things up( Thin, a competitor to Mongrel, supports this). For the sort of things I deploy, however, this is more than acceptable for the ease of deployment.</p><p>I do think, however, that it should be possible to rig up or adjust SwitchPipe in some way for mod_ruby operation, so if ever anyone does that or has any tips, let me know and we'll get something in there!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bob McCormick</strong> &middot; <time datetime="2008-02-05T06:14:00+00:00">February 5, 2008 at 6:14 am</time></p>
      <p>This is a very cool idea, I'm excited to try it!   I love the fact that you've optimized for ease of use and simplicity.   </p><p>It's been driving me crazy that there are so many ruby web server projects (seemingly more every week) and they're all trying to compete on performance!   I mean come on, with Ruby's notoriously slow performance, is the web server really the bottleneck?!?  </p><p>Ruby web frameworks have always been more about fast, fun development, not performance.  And it looks like you're well on your way to completing the picture by adding fast, fun deployment.   Kudo's.</p><p>BTW... You mention adding support for host headers... Have you considered hooking up one of the Ruby web servers (like Mongrel) as an optional frontend for switchpipe?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-02-05T13:56:00+00:00">February 5, 2008 at 1:56 pm</time></p>
      <p>@Bob: Host support is now in the trunk, and is working okay in testing so far :)</p><p>Thanks for the support, I think you have pretty much summed up my personal feelings about it! :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-02-05T20:39:00+00:00">February 5, 2008 at 8:39 pm</time></p>
      <p>Another new feature in trunk is now "min_instances". JRuby Inside now has 1 "minimum" instance running at all times under SwitchPipe. This increases performance somewhat.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
