---
title: 'Padrino: A Webapp Framework Wrapped Around Sinatra'
date: '2010-04-01'
author: Peter Cooper
author_slug: admin
post_id: 3198
slug: padrino-sinatra-webapp-framework-3198
url: "/padrino-sinatra-webapp-framework-3198.html"
categories:
- cool
- news
---

{{< rawhtml >}}
<p><img src="/assets/2010/04/padrino.png" class="alignleft size-thumbnail notbordered">Hot on the heels of <a href="sinatra-1-0-released-3162.html">Sinatra 1.0</a> comes the official release of <a href="http://www.padrinorb.com/">Padrino</a> (or <a href="http://github.com/padrino/padrino-framework">GitHub repo</a>), a webapp framework that provides an extra layer of functionality on top of Sinatra (like helpers, generators, admin interface, and internationalization). Padrino is Sinatra 1.0 compatible.</p>
<p>Developers Davide D'Agostino, Nathan Esquenazi and Arthur Chiu love Sinatra and its development philosophy, but want to provide a deeper, standardized layer of functionality on top of the typical Sinatra stack. True to form, Padrino extends Sinatra with <a href="http://www.padrinorb.com/guides">a wealth of extra features</a>:</p>
<ul>
<li>Namespaced route aliases</li>
<li>Nested routes</li>
<li>Controllers</li>
<li>i18n / Internationalization</li>
<li>Mailer system</li>
<li>Django-esque admin interface</li>
<li>Unified logging</li>
<li>Tag, asset, for, and tag helpers for use in views</li>
<li>App, model and controller generators</li>
</ul>
<p>Most of these features can be added to Sinatra already, either manually or by selecting from a wide assortment of independent plugins. Padrino, on the other hand, provides a standard suite of functionality that, hopefully, will continue to be improved as a whole over time. It feels a lot like <a href="http://ramaze.net/">Ramaze</a> but with the similar functionality wrapped around Sinatra instead.</p>
<p>The Padrino team have done a great job putting together <a href="http://www.padrinorb.com/">its official Web site</a> and there's <a href="http://www.padrinorb.com/guides">a lot of documentation</a> to peruse. They've also put together a guide to <a href="http://www.padrinorb.com/pages/contribute">contributing to the project</a> if you want to get your hands dirty. There's also a 12 minute <a href="http://vimeo.com/10522357">screencast</a>:</p>
<p><object width="621" height="388"><param name="allowfullscreen" value="true">
<param name="allowscriptaccess" value="always">
<param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=10522357&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=1&amp;color=00ADEF&amp;fullscreen=1">
<embed src="http://vimeo.com/moogaloop.swf?clip_id=10522357&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=1&amp;color=00ADEF&amp;fullscreen=1" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" width="621" height="388"></embed></object></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>al</strong> &middot; <time datetime="2010-04-01T17:13:00+00:00">April 1, 2010 at 5:13 pm</time></p>
      <p>Yet another webapp ruby framework, why?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sleeptillseven</strong> &middot; <time datetime="2010-04-01T17:35:00+00:00">April 1, 2010 at 5:35 pm</time></p>
      <p>Yea! Check it out. I love it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>kenny</strong> &middot; <time datetime="2010-04-01T20:51:00+00:00">April 1, 2010 at 8:51 pm</time></p>
      <p>not a fan.  it's not "lightweight".  sinatra is lightweight.  rails is heavyweight.  this is neither.  this is some chosen features dumped on top of sinatra.  it would be much better as individual modules you could easily add.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nat</strong> &middot; <time datetime="2010-04-01T22:04:00+00:00">April 1, 2010 at 10:04 pm</time></p>
      <p>kenny,</p><p>before submit your sentence try it or read (well) about it.</p><p>&gt; it would be much better as individual modules you could easily add.</p><p><a href="http://www.padrinorb.com/guides/standalone-usage-in-sinatra" rel="nofollow">http://www.padrinorb.com/guides/standalone-usage-in-sinatra</a></p><p>Sinatra is lightweight because is a MicroFramework, this seems to be a full web framework, with generators, helpers, admin ...  but a little smaller  compared with others.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Arthur</strong> &middot; <time datetime="2010-04-01T22:15:00+00:00">April 1, 2010 at 10:15 pm</time></p>
      <p>Kenny,<br>
  Luckily, Padrino allows you to pick individual modules that you could easily add.<br>
<a href="http://www.padrinorb.com/guides/standalone-usage-in-sinatra" rel="nofollow">http://www.padrinorb.com/guides/standalone-usage-in-sinatra</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>DAddYE</strong> &middot; <time datetime="2010-04-01T23:02:00+00:00">April 1, 2010 at 11:02 pm</time></p>
      <p>@kenny, I only suggest you to read some of our docs.</p><p>Btw there is also a QuickTime version and transcript here:<br>
<a href="http://www.padrinorb.com/guides/blog-tutorial" rel="nofollow">http://www.padrinorb.com/guides/blog-tutorial</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ted</strong> &middot; <time datetime="2010-04-01T23:32:00+00:00">April 1, 2010 at 11:32 pm</time></p>
      <p>Kenny, it's more than a "bunch of features dumped on Sinatra"</p><p>It's a very elegant frameworks that, IMHO, has made a lot better decisions than Rails.</p><p>You really ought to try something out before you decide not to be a fan.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>jaze</strong> &middot; <time datetime="2010-04-02T00:18:00+00:00">April 2, 2010 at 12:18 am</time></p>
      <p>Looks great, lots of helpful materials on the official site. I will surely check it out as I enjoy Sinatra, but had always felt it was missing some features out of the box.</p><p> (As a person quite new to web development extending Sinatra on my own was a difficult task, not every gem worked, not every thing was decently documented, etc. - having a standard package solves most of this!)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Richard Conroy</strong> &middot; <time datetime="2010-04-02T03:31:00+00:00">April 2, 2010 at 3:31 am</time></p>
      <p>I have just done a rather big project in Sinatra (course work). By big, I mean there's a lot of code present. There is a huge opportunity for DRYing all this up, and I am looking forward to what Padrino brings to the party.</p><p>I would be very interested to see how Padrino compares with Monk and Pancake, feature-wise and philosophically.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paul</strong> &middot; <time datetime="2010-04-02T05:03:00+00:00">April 2, 2010 at 5:03 am</time></p>
      <p>@kenny: you're probably sayin' to yourself that hey i'm gonna go out there &amp; i'm gonna get the world by the tail, wrap it around, pull it down &amp; put it in my pocket...well, i'm here to tell you that you're probably gonna find out, as you go out there, that you're not going to amount to JACK SQUAT!!!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>http://dashin.co.uk</strong> &middot; <time datetime="2010-04-02T16:33:00+00:00">April 2, 2010 at 4:33 pm</time></p>
      <p>I love Sinatra the way it is. I use it for simple web-sites and RESTful interfaces.<br>
For other purposes I use RoR.</p><p>Another framework? What for?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>KD</strong> &middot; <time datetime="2010-04-02T18:47:00+00:00">April 2, 2010 at 6:47 pm</time></p>
      <p>Because Rails is not the end-all. People said the same thing about rails when it came out. Not all of us are tools that just accept the status quo. If you can't handle change, change professions. There were hundreds of web frameworks that came out before Rails did, and in many respects Rails built on the shoulders of those early pioneers.</p><p>I'm probably not going to find a use for this framework, but it's got some great ideas on it, and it's going to work great for a lot of people. Sinatra is a fantastic engine for laying frameworks on top of, and I'm learning a lot of good things from these efforts. We've done something similar for our work, for a development problem which would have not been easy to solve with either base Sinatra or Rails.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>rubiii</strong> &middot; <time datetime="2010-04-02T19:43:00+00:00">April 2, 2010 at 7:43 pm</time></p>
      <p>&gt; Another framework? What for?</p><p>freedom of choice. diversity. new ideas that one day might be implemented in your favourite framework as well.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ben</strong> &middot; <time datetime="2010-04-03T17:43:00+00:00">April 3, 2010 at 5:43 pm</time></p>
      <p>Sinatra is great for writing modular rack-mounted applications that can be reused across projects.</p><p>For smaller pieces there are Sinatra Extensions or simple module mixins.</p><p>Why do you need to create new namespaces and base classes? There are a bunch of Sinatra-based "frameworks", and I don't like any of them. Sinatra is predictably simple, predictably maintained, and all I want is *Sinatra* apps, extensions, and dependency-free modules.</p><p>I liked "sinatra_more" better, and it would be nice to grow a sinatra and generic web "facets" lib instead of piling frameworks on top of each other.</p><p>That said, I think it's great to try to compete with and/or provide alternatives to Rails. I just think that libraries are better than frameworks (in terms of high cohesion, loose coupling, and having less proprietary API/conventions to work through).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>IVANOV</strong> &middot; <time datetime="2010-04-03T19:20:00+00:00">April 3, 2010 at 7:20 pm</time></p>
      <p>Im using padrino from one week and I think its clean and simple API is awesome.</p><p>So in reply to Ben:</p><p>&gt; Why do you need to create new namespaces and base classes?</p><p>Depends, for complex things I think this can be helpful.</p><p>&gt; here are a bunch of Sinatra-based "frameworks", and I don't like any of them.</p><p>Can you tell us about that? I searched on github for a couple of days and I found some like chicago big_band but any of them seems to be complete like this framework. Any of them has: Bundled I18n ? Orm adapters? Generators? Reloader? Logger? Named routes? Respond To? FULL Helpers? ADMIN INTERFACE ????</p><p>&gt; I just think that libraries are better than frameworks</p><p>I think this depends on how many applications do you build and manage.</p><p>I don't love repeat my self so for each app cut/paste files add remove same code is not beautiful ... almost for me.</p><p>Then consider that every "external library" is enginered for itself and not for work togheter with another. The better thing that I see in Padrino IMHO is how it was designed.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nathan Esquenazi</strong> &middot; <time datetime="2010-04-04T06:54:00+00:00">April 4, 2010 at 6:54 am</time></p>
      <p>I am one of the Padrino core developers. We have really appreciated all the comments and reactions posted here and elsewhere around the web since the announcement of Padrino! I took some time to address a couple common concerns in our latest blog post: <a href="http://www.padrinorb.com/blog/addressing-concerns-about-padrino" rel="nofollow">http://www.padrinorb.com/blog/addressing-concerns-about-padrino</a> . I hope this helps clarify a few things and thanks again for checking out Padrino.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Zingg</strong> &middot; <time datetime="2010-04-05T02:29:00+00:00">April 5, 2010 at 2:29 am</time></p>
      <p>Used padrino for a project since 0.7.  Very nice Sinatra extensions.  If you prefer to work mostly at the Rack level and with DataMapper as the default instead of ActiveRecord, padrino is a good alternative to Rails.  </p><p>Admin interface (based on <a href="http://github.com/pilu/web-app-theme" rel="nofollow">http://github.com/pilu/web-app-theme</a>) out of the box if you want it is a plus.</p><p>Support for tasks and other goodies that Sinatra doesn't have.</p><p>Recommended.  Would like to see a community rising around this and other frameworks.  Why not?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>grantmichaels</strong> &middot; <time datetime="2010-04-06T13:44:00+00:00">April 6, 2010 at 1:44 pm</time></p>
      <p>I'm a fan, but I'd like to see benchmarks on the homepage ...</p><p>It's hard for me to reason about a middle of the road product without seeing how it compares to the controls (rack to rails) in terms of performance ...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nathan Esquenazi</strong> &middot; <time datetime="2010-04-22T08:52:00+00:00">April 22, 2010 at 8:52 am</time></p>
      <p>Just released major update version 0.9.10 which includes bug fixes, new features and a lot of performance optimizations. We also have application benchmarks now detailed in our latest blog post. </p><p>Read more about the latest release here: <a href="http://www.padrinorb.com/blog/padrino-0-9-10-released-built-for-speed" rel="nofollow">http://www.padrinorb.com/blog/padrino-0-9-10-released-built-for-speed</a> . Let us know what you guys think!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
