---
title: 'Ebb: C-Powered Web Server That Uses Rack – Faster than Mongrel *and* Thin'
date: '2008-03-04'
author: Peter Cooper
author_slug: admin
post_id: 786
slug: ebb-web-framework-http-server-786
url: "/ebb-web-framework-http-server-786.html"
categories:
- cool
- miscellaneous
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2008/03/ebb-concurrency.jpg" width="400" height="300" alt="ebb-concurrency.png"></p>
<p><a href="http://ebb.rubyforge.org/">Ebb</a> is a small, extremely high performance Web / HTTP server designed specifically for hosting applications built upon Web frameworks such as Rails and Merb (and, in future, apps on other non-Ruby frameworks.) The design is event based (similar to that used by Ruby daemons that use EventMachine) but Ebb itself is written in C and dispatches requests to <a href="http://rack.rubyforge.org/">Rack</a> adapters. This is a real leapfrog over the popular Mongrel and Thin daemons which are primarily written in Ruby, and results in scary levels of performance.</p>
<p>Since the start of 2008, it seems as if the Ruby and Rails deployment sectors have been on fire! <a href="thin-a-ruby-http-daemon-thats-faster-than-mongrel-688.html">Thin</a>, a Ruby HTTP daemon that's faster than Mongrel, made it on the scene in January, then we <a href="no-true-mod_ruby-is-damaging-rubys-viability-on-the-web-693.html">discussed</a> the problems involved in deploying apps here on Ruby Inside, and my own <a href="http://switchpipe.org/">SwitchPipe</a> arrived in February. Other systems such as <a href="http://swiftiply.swiftcore.org/">Swiftiply</a> have also continued to innovate. These are exciting times!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>labria</strong> &middot; <time datetime="2008-03-04T13:38:00+00:00">March 4, 2008 at 1:38 pm</time></p>
      <p>Ebb may be damn fast, but it's memory footprint is scary.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ste</strong> &middot; <time datetime="2008-03-04T14:05:00+00:00">March 4, 2008 at 2:05 pm</time></p>
      <p>Right after launching my application, the VSIZE skyrockets to 255M! (it's around 47M with Mongrel, and slightly less with Thin). Even the RSIZE is higher (35M vs. 32-33M).<br>
The performance (reqs/sec) seems to be somewhat better, though.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-03-04T14:08:00+00:00">March 4, 2008 at 2:08 pm</time></p>
      <p>This strikes me as likely to be a bug, since I'd expect it to have a lower footprint due to the way it's constructed. There must be a rather nasty leak somewhere (or a development environment type setting / debugging information, etc.) Perhaps the attention Ebb gets today will encourage some fixes.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Zdzichu</strong> &middot; <time datetime="2008-03-04T14:19:00+00:00">March 4, 2008 at 2:19 pm</time></p>
      <p>What about -d (daemonize) option?  Doesn't work for me (ebb doesn't answer at all).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Forth</strong> &middot; <time datetime="2008-03-04T14:21:00+00:00">March 4, 2008 at 2:21 pm</time></p>
      <p>what's interresting with Ebb is that it performs better when backend takes time to answer ( few seconds) than other evented servers (afaik) : <a href="http://four.livejournal.com/841030.html" rel="nofollow">http://four.livejournal.com/841030.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Robert Dempsey</strong> &middot; <time datetime="2008-03-04T14:53:00+00:00">March 4, 2008 at 2:53 pm</time></p>
      <p>It is good to see more web server choices come out. As in free markets, competition is good, and in this case, we developers can benefit from better application performance. I hope the bar continues to be raised.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Arie</strong> &middot; <time datetime="2008-03-04T15:27:00+00:00">March 4, 2008 at 3:27 pm</time></p>
      <p>The high VSIZE is a bug in the 0.0.3 release. Daemonize works for me, but the ebb_rails command seems to ignore the 'env' setting, and always defaults to development.<br>
I manually editted the rails rack adapter to force it to production to run some tests. I didn't get anywhere the speedboost shown in the graph for real applications, more like 10%</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ry</strong> &middot; <time datetime="2008-03-04T15:38:00+00:00">March 4, 2008 at 3:38 pm</time></p>
      <p>Forth, the concurrency code that you speak of has been reverted for the time being. creating the extra threads was quite costly. I would like handle this problem in the future, but for the time being this is not a feature of ebb.</p><p>Labria, the large memory usage is from overzealous buffering on my part. this can be fixed by modifying the a few constants in the ebb.h header file and recompiling (as described <a href="http://groups.google.com/group/rubyonrails-talk/msg/8f83b6e24ea1f40d" rel="nofollow">here</a>). I don't think it is from a memory leak.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Arie</strong> &middot; <time datetime="2008-03-04T15:39:00+00:00">March 4, 2008 at 3:39 pm</time></p>
      <p>*rails applications, not 'real applications'.</p><p>It's not surprising the speedboost isn't that great for a rails application, considering the weight of a rails application.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dan</strong> &middot; <time datetime="2008-03-04T16:44:00+00:00">March 4, 2008 at 4:44 pm</time></p>
      <p>@ry: have you tried running Valgrind with Ebb?</p><p>The traditional setup with Rails apps is to have something like Mongrel behind a web server like Nginx or Apache.  Is Ebb designed to run behind a server, or is it meant to run stand-alone?  If stand-alone, then I'm curious to see how its static file serving performance compares to Nginx.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dan</strong> &middot; <time datetime="2008-03-04T16:55:00+00:00">March 4, 2008 at 4:55 pm</time></p>
      <p>I guess I should RTFM next time :).  Ebb is meant to be used behind a front-end server.</p><p>Nginx would be the obvious choice for a front-end, but I've found that the Varnish Accelerator ( <a href="http://varnish.projects.linpro.no/" rel="nofollow">http://varnish.projects.linpro.no/</a> ) has even better performance when you take care of configuring your cache-related headers: Vary, Expires, Cache-Control, ETag and Last-Modified.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Felipe Giotto</strong> &middot; <time datetime="2008-03-04T17:30:00+00:00">March 4, 2008 at 5:30 pm</time></p>
      <p>It's good to have more web servers! But, as many users are saying, how "heavy" is ebb to a web server? What if I have 5+ applications running at the same time? I think I'd better analyse them for a little more time... Anyway, this is good news!!</p><p>Best regards,</p><p>Felipe Giotto.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-03-04T17:43:00+00:00">March 4, 2008 at 5:43 pm</time></p>
      <p>It sounds like Ebb is, most likely, the "future" of this sort of stuff, but it's at least slightly amusing to me that SwitchPipe seems to be a lot easier and less burdensome at the present time. Of course, there ain't no 5000 requests per second, I'll assure you ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hawkerb</strong> &middot; <time datetime="2008-03-05T07:49:00+00:00">March 5, 2008 at 7:49 am</time></p>
      <p>why perofrmance / memory size is not compared to fcgid ?</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
