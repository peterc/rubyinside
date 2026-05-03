---
title: 'Rango: A New Modular Ruby Webapp Framework'
date: '2009-12-02'
author: grantmichaels
author_slug: grantmichaels
post_id: 2858
slug: rango-ruby-web-app-framework-2858
url: "/rango-ruby-web-app-framework-2858.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2009/12/Screen-shot-2009-12-02-at-13.25.25-214x300.png" alt="Screen shot 2009-12-02 at 13.25.25" title="Screen shot 2009-12-02 at 13.25.25" width="120" class="alignleft size-medium wp-image-2871" style="margin-right: 12px; margin-bottom: 12px"><a href="http://github.com/botanicus/rango">Rango</a> is a Rack-based lightweight Web framework by Jakub Šťastný that has seemingly borrowed a little bit less from past Ruby frameworks and a bit more from Django. Based on the 1.9 version of Ruby, Rango works with <a href="http://rvm.beginrescueend.com/">rvm</a>, <a href="rip-ruby-packaging-system-1837.html">Rip</a>, Usher, Warden, and both <a href="http://litanyagainstfear.com/blog/2009/10/14/gem-bundler-is-the-future/">the new Gem bundler</a> and the venerable DataMapper by default.</p>
<p>Philosophically, "Rango is attempting to be as agnostic as possible, valuing simple, readable code.  It intends to encourage explicit code rather than implicit magic."  Modularity is a top priority. In many ways it feels like <a href="http://ramaze.net/">Ramaze</a>, but with a newer "era of Rack" foundation. There's a good <a href="http://wiki.github.com/botanicus/rango/why-use-rango">"Why Use Rango"</a> article available if you want to get a feel for the project and why you might consider using it. There's also a <a href="http://101ideas.cz/Rango.pdf">PDF presentation that acts as an introduction</a> to the project.</p>
<h3>Serving, Routing and Templates</h3>
<p>Rango is <a href="http://www.modrails.com/">Passenger</a> friendly, and because Rango is designed for Ruby 1.9, using Mongrel is discouraged (although possible).  The router is pluggable and Usher is the default, but you can elect <a href="http://github.com/carllerche/rack-router">rack-router</a> or <a href="http://github.com/josh/rack-mount">rack-mount</a> via the generator.  At present, Rango plays nicely with <a href="http://haml.hamptoncatlin.com/">Haml</a>, but with the upcoming 0.2 version it will adopt <a href="http://github.com/rtomayko/tilt">Tilt</a>, which adds a number of formats, including Mustache, ERB, Erubis, and Liquid.</p>
<p>Rango has generators, but beyond that it employs a sub-project named "Simple-Templater" to assist developers in customizing project-specific code generation. Rango draws additional strength from "Pupu," a framework agnostic CLI (command-line interface) system which aids in managing <code>/public</code> directory content and functionality into modules - modules which can even include packaged javascript functionality.</p>
<p>Code reloading during development is made available by Shotgun, or if you are using Phusion Passenger, you can of course use <code>tmp/always_restart.txt</code>  to restart the app at every request.  If Racksh is installed, running <code>./init.rb -i</code> will start it, and it falls back to Irb otherwise.</p>
<h3>The Future</h3>
<p>Rango has a very aggressive <a href="http://wiki.github.com/botanicus/rango/roadmap">roadmap</a> for December 2009, and also boasts an impressive feature timeline within the wiki.  Rango offers a number of innovative departures which seem noteworthy at present.  To get updates on the Rango project, follow <a href="http://twitter.com/RangoProject">@RangoProject on Twitter.</a></p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><a href="http://devver.net/caliper" rel="nofollow"><img src="/assets/2009/10/caliper-logo.png" width="98" height="42" alt="caliper-logo.png" style="float:right; margin-bottom:8px; margin-left:12px;"></a><em>[ad]</em> Find duplication, code smells, complex code and more in your Ruby code with <a href="http://devver.net/caliper" rel="nofollow">Caliper!</a> The metrics are free and setup takes just one click. <a href="http://devver.net/caliper" rel="nofollow">Get started!</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Othmane Benkirane</strong> &middot; <time datetime="2009-12-02T16:58:00+00:00">December 2, 2009 at 4:58 pm</time></p>
      <p>Rango sounds nice, and I'm going to use it for one of my projects as an experiment. What is the best ruby implementation for Rango ? I mean, is MRI1.9 good enough, or should I use Rubinius, or any other one ?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>charly</strong> &middot; <time datetime="2009-12-02T16:59:00+00:00">December 2, 2009 at 4:59 pm</time></p>
      <p>Very exciting framework here, specially the (coming) mountable apps via pancake which I discovered a few days ago. Who knows, one day maybee the monkey will free me from jails!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Heh</strong> &middot; <time datetime="2009-12-02T19:27:00+00:00">December 2, 2009 at 7:27 pm</time></p>
      <p>It's funny to see someone refer to Rails as Jails nowadays. As a Java developer, I can safely say you don't know how good you have it in "jail"...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Vladimir Sizikov</strong> &middot; <time datetime="2009-12-02T20:21:00+00:00">December 2, 2009 at 8:21 pm</time></p>
      <p>Nice to see planned JRuby support during the next year! :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Botanicus</strong> &middot; <time datetime="2009-12-03T01:04:00+00:00">December 3, 2009 at 1:04 am</time></p>
      <p>Benkirane, ATM Rango is tested just with MRI 1.9.1 &amp; 1.9.2 preview. Rubinius isn't fully 1.9 compatible. I'll support jruby soon and then other implementations.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Greg Melton</strong> &middot; <time datetime="2009-12-03T02:16:00+00:00">December 3, 2009 at 2:16 am</time></p>
      <p>Oh, nice! I've been developing a similar type of Rack framework called, Doozer (<a href="http://github.com/grippy/doozer" rel="nofollow">http://github.com/grippy/doozer</a>). It has a lot of the same features. I do the like how the template system is modular in that you aren't bound to only Erb (which is how Doozer works at the moment).</p><p>Doozer has all the code generators for making controllers, views, migrations, etc. Features built-in clustering support for running multi apps (or unicorn), irb console which loads the environment, multi ORM support, and much more. </p><p>Nice to see a different approach.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>slabounty</strong> &middot; <time datetime="2009-12-03T15:33:00+00:00">December 3, 2009 at 3:33 pm</time></p>
      <p>Any reason someone would choose this over say Ramaze? What are the advantages/disadvantages of one over the other? </p><p>It is nice to see more frameworks though, especially simpler ones like this.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-12-03T16:02:00+00:00">December 3, 2009 at 4:02 pm</time></p>
      <p>I haven't taken a look at Rango's code yet, but on the surface it seems rather Ramaze-like (I edited the Ramaze mention into grantmichaels' piece) so I'd be interested to know that too.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Botanicus</strong> &middot; <time datetime="2009-12-03T19:32:00+00:00">December 3, 2009 at 7:32 pm</time></p>
      <p>Thanks for all the comments guys.</p><p>Ramaze is definitely the most similar framework, but there are still quite a lot of differences. Firstly Rango is definitely much more lightweight (and it's going to stay quite lightweight) and I would say Rango is more trying to help with development in Rack than build it's own platform. Rango also likes more explicit approach and philosophy of both framework is a bit different, as far as I know.</p><p>Also some parts of Ramaze seems to be a bit strange for me. I don't like routing in controllers (even it's just optional), the template engines coming with Ramaze, etc. Rango is also less monolithic, so it's putting everything what isn't required into separate gems. And of course, Rango has some unique features like template inheritance which are hard to just put into an existing frameworks, because even if some apps will use it, the plugins will just stay on the default solution.</p><p>But certainly I believe Ramaze is pretty good framework, it's just not what I was looking for.</p><p>It would be nice if @manveru or someone from Ramaze team can give some notes about it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Eliot Sykes</strong> &middot; <time datetime="2009-12-04T08:43:00+00:00">December 4, 2009 at 8:43 am</time></p>
      <p>"....attempting to be as agnostic as possible, valuing simple, readable code.  It intends to encourage explicit code rather than implicit magic."</p><p>&lt;-- Hoping to see more of this, not a big fan of implicit magic</p>
    </li>
      <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2009-12-18T00:05:00+00:00">December 18, 2009 at 12:05 am</time></p>
      <p>Add an auto database manager like django and I'm in :)</p><p>-r</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nathan</strong> &middot; <time datetime="2009-12-23T01:10:00+00:00">December 23, 2009 at 1:10 am</time></p>
      <p>Is it just me or does rango seem to have a lot of javaisms in the code?</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
