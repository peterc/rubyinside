---
title: 'Waves: A New Rails-like Web Applications Framework'
date: '2008-02-29'
author: Peter Cooper
author_slug: admin
post_id: 782
slug: waves-a-new-rails-like-web-applications-framework-782
url: "/waves-a-new-rails-like-web-applications-framework-782.html"
categories:
- miscellaneous
- news
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2008/02/waves.jpg" width="386" height="296" alt="waves.png"></p>
<p><a href="http://rubywaves.com/">Ruby Waves</a> is a new Web application framework for Ruby, developed by Dan Yoder. On the surface, this makes it seem "Rails-like" but Waves is billing itself as a "next-generation" framework, a cutting edge Rails-inspired framework, if you will. Dan says that Waves is "not a better Rails" but the realization of an evolution of the ideas behind frameworks like Rails. For example, Waves supports request lambdas (mapping a request to a block, rather than a URL pattern to a controller and action), just-in-time resources, nested layouts, and hot-patching. Waves is also thread-safe.</p>
<p>Dan has done a great job at documenting Waves, with a <a href="http://blip.tv/file/get/Dyoder67-WavesScreencast557.mov">screencast</a>, <a href="http://rubywaves.com/tutorial">tutorial</a>, and a bumper-packed <a href="http://rubywaves.com/">official site</a> all ready to go. The tutorial (the creation of a simple blog system, as usual!) demonstrates that creating a basic app is actually even easier than under Rails, although some of the techniques will seem initially unfamiliar.</p>
<p>It'll be interesting to see if new, superior, ultra-flexible frameworks like Waves catch on, with the amount of support and motion currently behind the incumbents: Rails and Merb.</p>
<p><span style="font-style: italic;">(Note: Dan</span> <a href="http://www.infoq.com/news/2008/02/waves-ruby-framework"><span style="font-style: italic;">has been interviewed</span></a> <span style="font-style: italic;">by Robert Bazinet of InfoQ. It's worth reading to get an idea of Dan's motivations and where he sees Waves going in the future.)</span></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Rob Bazinet</strong> &middot; <time datetime="2008-02-29T17:48:00+00:00">February 29, 2008 at 5:48 pm</time></p>
      <p>Thanks for the mention of my interview with Dan on InfoQ.  What a funny coincidence we looked at Waves at the same time.  </p><p>I went through the tutorial and Waves looks pretty cool and everything worked as in the tutorial.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-02-29T18:41:00+00:00">February 29, 2008 at 6:41 pm</time></p>
      <p>Rob: Dan e-mailed me about Waves almost a month ago, but it was at the bottom of my composting file (there's quite a queue of stuff to go on Ruby Inside at the moment, alas). I saw your post about it on InfoQ which reminded me of it and I decided to get it sorted :)</p><p>So.. not so much a coincidence ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ezra</strong> &middot; <time datetime="2008-02-29T20:35:00+00:00">February 29, 2008 at 8:35 pm</time></p>
      <p>waves is thread safe in the same way that rails is 'thread safe'. it has a giant mutex lock around the entire dispatch. Other then that misnomer it definitely has some very interesting ideas.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ben</strong> &middot; <time datetime="2008-02-29T20:53:00+00:00">February 29, 2008 at 8:53 pm</time></p>
      <p>Thanks for reviewing Waves for those of us without the time! I'm excited to see the proliferation of Ruby frameworks - cross-pollination (and competition) is bound to raise the quality of all our options.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Obie</strong> &middot; <time datetime="2008-02-29T21:08:00+00:00">February 29, 2008 at 9:08 pm</time></p>
      <p>Has Waves been extracted out of a real application?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Miles</strong> &middot; <time datetime="2008-02-29T21:55:00+00:00">February 29, 2008 at 9:55 pm</time></p>
      <p>Good point Obie.  What website did the Waves framework come from?  If it's a framework for framework's sake I'm not interested.  Been down that road before.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dan Yoder</strong> &middot; <time datetime="2008-02-29T22:05:00+00:00">February 29, 2008 at 10:05 pm</time></p>
      <p>ezra: Waves has been carefully designed to eliminate side-effects across requests, whereas Rails has a long history of problems in this area. As a first release of the framework, I took a conservative approach to locking, but Waves is in no way limited to this kind of coarse locking. I am hoping to do finer grained locking, ala Merb, as a performance optimization (as opposed to redesign) in a later release.</p><p>obie: Yes, sort of. This initial version was built in a feature-driven style based on the requirements of several existing Web apps I have and which now run on Waves.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hendrik</strong> &middot; <time datetime="2008-03-01T00:29:00+00:00">March 1, 2008 at 12:29 am</time></p>
      <p>How is Waves "next generation"? Not impressed.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pratik</strong> &middot; <time datetime="2008-03-01T03:19:00+00:00">March 1, 2008 at 3:19 am</time></p>
      <p>I doubt you will get any performance advantage due to thread safety, even in 1.9 because of GVL. Plus, it's a known fact that event based model performs better than threaded model for *well written applications*. In other words, if your application requires thread safety, that is because of poor implementation.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Fred</strong> &middot; <time datetime="2008-03-01T09:47:00+00:00">March 1, 2008 at 9:47 am</time></p>
      <p>Would it run on Ruby 1.9?</p><p>i'm gonna try it right now.</p><p>If it does. That is really good news.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James</strong> &middot; <time datetime="2008-03-01T17:59:00+00:00">March 1, 2008 at 5:59 pm</time></p>
      <p>You can see the growing list of Ruby Web frameworks here: <a href="http://ramaze.net/#other-frameworks" rel="nofollow">http://ramaze.net/#other-frameworks</a>.</p><p>"It’ll be interesting to see if new, superior, ultra-flexible frameworks like Waves catch on, with the amount of support and motion currently behind the incumbents: Rails and Merb."</p><p>:)</p><p>I guess "incumbents" all depends on what isolated community you dwell in.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-03-01T22:26:00+00:00">March 1, 2008 at 10:26 pm</time></p>
      <p>I would suspect it is more down to what your definition of "incumbent" is.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dan Yoder</strong> &middot; <time datetime="2008-03-02T20:11:00+00:00">March 2, 2008 at 8:11 pm</time></p>
      <p>Pratik: I suspect the use of GVL is a transitionary issue due to the number of extensions that currently aren't re-entrant. Also, Rubinius and JRuby will push the envelope here as well. As to the question of event-driven versus threaded, I don't think it is up to an MVC framework to make that decision for application developers. Personally, I think the vast majority Web apps fit the thread-per-request model nicely and so threads work well in that context.</p><p>James: I love what the Ramaze folks have done. I also love that they provide a list of other frameworks like that. We will follow suite, because I think for us "non-incumbents" :-) it is all about the innovation and the new ideas and giving developers some additional choices in the long run. Hopefully, we can begin collaborating a bit here and there. All this has happened very fast and probably not everyone was aware of the other efforts underway. It will be very interesting to see how all this plays out.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Phil T</strong> &middot; <time datetime="2008-03-02T20:58:00+00:00">March 2, 2008 at 8:58 pm</time></p>
      <p>Imagine how much better Rails could be if people like this helped instead of creating yet another framework. I'm all for competition but it's getting pretty ridiculous these days.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pratik</strong> &middot; <time datetime="2008-03-02T23:30:00+00:00">March 2, 2008 at 11:30 pm</time></p>
      <p>Dan : GVL is because Ruby itself isn't threadsafe.</p><p>Btw, am I going completely crazy here or waves really does not have a single test ?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pratik</strong> &middot; <time datetime="2008-03-03T12:07:00+00:00">March 3, 2008 at 12:07 pm</time></p>
      <p>Phil, I kinda agree with you there. But I can totally understand the desire of people to develop their own rails-like framework. That might be a very good way to contribute back to rails. For example Merb, it surely has some good ideas and I'm very positive some of them will be in Rails core at some point. </p><p>However, my only problem with parallel framework developers is that they don't respect rails many time, even though they copied almost everything/a lot from it, including ideas and code. I've seen merb people spreading FUD about Rails, which is a shame. I truly hope we have information flowing in all the directions instead of just fud spreading in hope of stealing a few rails noobs.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dan Yoder</strong> &middot; <time datetime="2008-03-04T07:46:00+00:00">March 4, 2008 at 7:46 am</time></p>
      <p>Phil: I totally understand your point. Waves started out as a series of would-be plug-ins. But there are points where the Rails code-base limits what you can do. Thread-safety provides a good example, as does the size of the code itself. Also, the Rails community itself does not share some of these goals, in which case you would have to create a renegade fork of the project anyway.</p><p>Pratik: As to the GVL and Ruby itself not being thread-safe, is it not a stated goal of the core team is to make it so? In addition, the extensions have access to an API in 1.9 to allow them to bypass the global lock. Here is the thread I'm basing this on, but maybe you have some insight here that I don't: </p><p><a href="http://tinyurl.com/287r8j" rel="nofollow">http://tinyurl.com/287r8j</a></p><p>I think, in any event, JRuby and Rubinious will provide early adopters with the ability to see what kinds of performance benefits might be possible.</p><p>As to the question of respecting Rails, I am in total agreement. Rails was an innovation and helped make Ruby the thriving language it is today. From the Waves acknowledgments page (<a href="http://rubywaves.com/credits" rel="nofollow">http://rubywaves.com/credits</a>):</p><p>"Next comes the Rails community, DHH in particular, who helped put Ruby on the map and gave us a blueprint for what was possible for a Web application framework. Without their insights and pioneering spirit, Waves would not be possible." :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dan Yoder</strong> &middot; <time datetime="2008-03-04T07:53:00+00:00">March 4, 2008 at 7:53 am</time></p>
      <p>Oh, one other thing: you're not completely crazy. :-) The tests will be added to the repos this week. I didn't quite anticipate the level of initial interest Waves has generated so the tests are actually part of two other applications at the moment and I am still extracting and refining them.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Francis F</strong> &middot; <time datetime="2008-03-04T17:10:00+00:00">March 4, 2008 at 5:10 pm</time></p>
      <p>I come from Java land and I worry about thread safety a little. For example, I have seen example Rails code that hacks things into a class (rather than instance) that can be used for reference or cacheing later on. Anyone who's tried to work with Java servlets knows this could cause a lot of pain in a multi-threaded environment.<br>
That said it's really pleasant not to have to worry about such a stupid architectural decision now.<br>
Pratik - please could you give me some URL's that discuss the "well known fact"? I am very ignorant about this and would appreciate some pointers. Thanks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pratik</strong> &middot; <time datetime="2008-03-04T18:53:00+00:00">March 4, 2008 at 6:53 pm</time></p>
      <p>Francis, search rubyinside for thin and ebb. Those are event based frameworks and out perform threaded model by a good margin, for a well written application.</p><p>By well written application, I mean the applications which don't have 100 actions taking longer than 1-2 seconds.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>KevinS</strong> &middot; <time datetime="2008-03-19T12:49:00+00:00">March 19, 2008 at 12:49 pm</time></p>
      <p>I am naturally drawn to underdog technologies for some reason (hence my interest in Ruby in 2000, long before the rails explostion). But I would rather be on the rails bandwagon here. However, I most of my web sites don't need/want a relational DB, and my servers often don't even have one installed. I'm tired of fighting against rails on that. Why oh why oh why didn't they make it optional from day one? </p><p>The fact that ramaze also fixes some warts here and there, or simplifies this or that, is a bonus.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
