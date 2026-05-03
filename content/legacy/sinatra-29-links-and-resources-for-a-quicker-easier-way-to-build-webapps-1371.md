---
title: 'Sinatra: 29 Links and Resources For A Quicker, Easier Way to Build Webapps'
date: '2008-12-18'
author: Peter Cooper
author_slug: admin
post_id: 1371
slug: sinatra-29-links-and-resources-for-a-quicker-easier-way-to-build-webapps-1371
url: "/sinatra-29-links-and-resources-for-a-quicker-easier-way-to-build-webapps-1371.html"
categories:
- compilations
---

{{< rawhtml >}}
<p><img src="/assets/2008/12/sinatra-icon.png" width="137" height="94" alt="sinatra-icon.png" style="float:left; margin-right:12px; margin-bottom:12px;"><a href="http://sinatra.rubyforge.org/">Sinatra</a>, a Ruby "micro framework" for developing Web applications, is hot stuff! Despite being over a year since <a href="reprise-a-ruby-powered-blogging-app-in-100-lines-including-templates-646.html">we first mentioned Sinatra</a> (as used on a 100 line blogging app called <em>Reprise</em>), only now does Sinatra seem to have reached critical mass - it's on the cusp of becoming <em>really</em> popular. This is a good time, then, to check it out and see where it could fit into your own projects (with the new <a href="http://weblog.rubyonrails.org/2008/12/17/introducing-rails-metal">Rails Metal</a> functionality (in edge/2.3 only) you can ever <a href="http://github.com/rails/rails/commit/61a41154f7d50099da371e0d2f22fd25ab9113c2">run a Sinatra app as a lightweight companion</a> integrated with your Rails apps!)</p>
<p>Sinatra's <a href="http://sinatra.rubyforge.org/">official homepage</a> provides an incredible number of alluring examples. Just install the <em>sinatra</em> gem or clone <a href="http://github.com/bmizerany/sinatra/tree/master">its git repository</a> and you can have an ultra basic webapp running in just <em>five</em> lines of code:</p>
<pre>
<span class="ident">require</span> <span class="punct">'</span><span class="string">rubygems</span><span class="punct">'</span>
<span class="ident">require</span> <span class="punct">'</span><span class="string">sinatra</span><span class="punct">'</span>
<span class="ident">get</span> <span class="punct">'</span><span class="string">/</span><span class="punct">'</span> <span class="keyword">do</span>
<span class="punct">'</span><span class="string">Hello world!</span><span class="punct">'</span>
<span class="keyword">end</span>
</pre>
<p>Lots of awesome articles about Sinatra, Sinatra apps, and various links and resources have cropped up over the past few months. The remainder of this post links to the best we've found - most of which you should find useful as you start to explore Sinatra in detail. If you know of any others, please post links in the comments! Of course, if you ultimately agree with <a href="http://www.agileweb.org/">Ross Lawley</a> that Sinatra's a "horrid looking ruby web framework that looks its born straight from the worst PHP frameworks" then you might also want to check out <a href="http://ramaze.net/">Ramaze</a>!</p>
<p><span style="font-size: 14px; font-weight: bold;">Tutorials and Presentations</span></p>
<div style="margin-left: 1.5em">
<p><a href="http://devver.wordpress.com/2008/11/25/building-a-iphone-web-app-in-under-50-lines-with-sinatra-and-iui/">Building an iPhone Web app in under 50 lines with Sinatra and iUI</a> - A comprehensive walkthrough of developing an iPhone friendly Web application based on Sinatra. Even if developing an iPhone app doesn't interest you much, this tutorial is so well written that it could act as a good introduction for anyone.</p>
<p><a href="http://www.slideshare.net/adamwiggins/lightweight-webservices-with-sinatra-and-restclient-presentation/v1">Lightweight Web Services with Sinatra and RestClient</a> - A presentation (in slide form) by Adam Wiggins and Blake Mizerany on using Sinatra and RestClient to build lightweight Web services. Not much of depth in here but helps tie together some of the concepts.</p>
<p><a href="http://sinatra.rubyforge.org/book.html">The Sinatra Book</a> - A page full of Sinatra reference joy.</p>
<p><a href="http://sitr.us/2008/07/29/how-to-use-rspec-to-describe-a-sinatra-application/">How to use RSpec to describe a Sinatra application</a> - Jesse Hallett looks at how to improve the RSpecability of Sinatra apps if you're into speccing.</p>
<p><a href="http://blog.zerosum.org/2008/7/2/clone-pastie-with-sinatra-datamapper-redux">Clone Pastie with Sinatra &amp; DataMapper 0.9</a> - A tutorial by Nick Plante that walks you through developing a <a href="http://pastie.org/">pastie.org</a>-style application using Sinatra and DataMapper.</p>
<p><a href="http://m.onkey.org/2008/11/16/rails-meets-sinatra-2-mix-n-match">Rails Meets Sinatra</a> - Pratik Naik (of the Rails core team) shows how you can mount a Sinatra app <em>into</em> a Rails app (not just at the metal, as mentioned before) so that you can write Sinatra methods directly within Rails classes!</p>
<p><a href="http://www.xnot.org/sinatra/beginning.html">Sinatra Tutorial</a> - A basic Sinatra tutorial by Ari Lerner (for Sinatra 0.1.7 however).</p>
</div>
<h3>Sinatra Applications</h3>
<div style="margin-left: 1.5em">
<p><a href="http://github.com/sr/git-wiki/tree/master">git-wiki</a> - A "quick and dirty" Git-powered wiki built on Sinatra by Simon Rozet.</p>
<p><a href="http://github.com/deadprogrammer/frankie">frankie</a> - Easy creation of Facebook applications in Ruby using plugin for Sinatra web framework that integrates with the <a href="http://facebooker.rubyforge.org/">Facebooker</a> gem.</p>
<p><a href="http://github.com/adamwiggins/rifgraf/tree/master">rifgraf</a> - "Fire-and-forget" data collection and graphing service by Adam Wiggins.</p>
<p><a href="http://github.com/foca/integrity/tree/master">Integrity</a> - A continuous integration server (you can see it in action <a href="http://builder.integrityapp.com/">here</a>). Karel Minarik billed its source as "probably the most elegant Ruby I have seen lately."</p>
<p><a href="http://github.com/ichverstehe/gaze/tree/master">gaze</a> - A quick way to serve up Markdown files.</p>
<p><a href="http://github.com/bomberstudios/sinatra_wiki">sinatra_wiki</a> - An "ultralight, ultraminimal" wiki system that uses Markdown for formatting.</p>
<p><a href="http://github.com/zapnap/toopaste">toopaste</a> - A Pastie clone in Sinatra - uses DataMapper.</p>
<p><a href="http://github.com/namelessjon/notable">notable</a> - Listens on Jabber and then relays messages back to you (on the Web).</p>
<p><a href="http://github.com/webs/rash/tree/master">rash</a> - Extremely small and simple app to display results of a hashtag search on Twitter.</p>
<p><a href="http://github.com/moomerman/snail/tree/master">snail</a> - A Web interface to Amazon Web Services.</p>
<p><a href="http://github.com/karmi/yaml_micro_chat/tree/master">yaml_micro_chat</a> - A basic YAML-powered "micro-chat" system by Karel Minarik.</p>
</div>
<h3>Deployment</h3>
<div style="margin-left: 1.5em">
<p><a href="http://github.com/nakajima/capinatra/tree/master">capinatra</a> - A tool to quickly deploy Sinatra apps to a Phusion Passenger installation</p>
<p><a href="http://railstips.org/2008/12/15/deploying-sinatra-on-dreamhost-with-passenger">Deploying Sinatra on Dreamhost with Passenger</a> - A tutorial by John Nunemaker that shows how to use Capistrano and Dreamhost to deploy your Sinatra apps.</p>
</div>
<h3>Sinatra Blogging Engines</h3>
<div style="margin-left: 1.5em">
<p><a href="http://www.restafari.org/introducing-marley.html">Marley</a> - A blog engine by Karel Minarik. It works by publishing posts that you write in your favorite text editor, stored as plain files. This link goes to a post that explains Marley's operation in detail - well worth looking at.</p>
<p><a href="http://github.com/adamwiggins/scanty/tree/master">scanty</a> - A tiny blogging tool by Adam Wiggins. It uses Sequel for ORM, supports Ruby syntax highlighting, tags, and uses Markdown.</p>
<p><a href="http://github.com/rtomayko/wink/tree/master">wink</a> - A "minimalist blogging engine" by Ryan Tomayko. No longer actively maintained (but you can fork it!) but it powers a <a href="http://tomayko.com/">few</a> <a href="http://blog.nuclearsquid.com/">blogs</a>.</p>
<p><a href="http://github.com/kastner/sin/tree/master">sin</a> - A mini blog engine in Sinatra with hAtom and MetaWeblog API. All in a single file! Particularly interesting for the MetaWeblog API support. Uses Active Record.</p>
</div>
<h3>Sites Built on Sinatra</h3>
<div style="margin-left: 1.5em">
<p><a href="http://calendaraboutnothing.com/">Calendar About Nothing</a> - A "Seinfeld Calendar" based upon public Github feeds. The principle is simple.. commit something to Github every day and you get a streak. Long streaks are celebrated. Hurrah!</p>
<p><a href="http://followcost.com/">Follow Cost</a> - Find out how annoying it will be to follow specific people on Twitter, as measured in milli-scobles!</p>
<p><a href="http://stuff.lilleaas.net/">Stuff</a> - A random collection of mostly Ruby stuff..</p>
<p><a href="http://github.com/cschneid/irclogger">IRCLogger</a> - A Sinatra based app that runs <a href="http://www.irclogger.com/">irclogger.com</a>, a site that shows logs from several Ruby related IRC channels.</p>
</div>
<p><em>Thanks go to Karel Minarik of</em> <a href="http://www.restafari.org/"><em>Restafari</em></a> <em>for supplying many of these links (as well as Simon Rozet with <a href="http://gist.github.com/22172">his list on Gist</a>). Got your own? Leave a comment!</em></p>
<p class="s" style="font-family:verdana;font-style:italic;padding:8px;font-size: 12px"><strong>Support from: <a href="http://www.1steasy.com">1st Easy</a> offers <a href="http://www.1steasy.com/ruby-on-rails.htm">UK Rails hosting</a></strong> (dedicated and shared) running Phusion Passenger (mod_rails) and LAMP stack. If you want to get to know us first, or simply want to evaluate the performance of your Rails applications running on Passenger, we'll arrange a <a href="http://www.1steasy.com/ruby-on-rails.htm#try">trial hosting account</a> for you (full technical support included!)</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jason Calleiro</strong> &middot; <time datetime="2008-12-18T16:47:00+00:00">December 18, 2008 at 4:47 pm</time></p>
      <p>This is excellent. i found sinatra as a great way to ease into rails for newbies like myself.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Geoffrey Grosenbach</strong> &middot; <time datetime="2008-12-18T16:50:00+00:00">December 18, 2008 at 4:50 pm</time></p>
      <p>I spoke with Blake Mizerany recently on the Rails Podcast:</p><p><a href="http://podcast.rubyonrails.org/programs/1/episodes/rubyconf-2008" rel="nofollow">http://podcast.rubyonrails.org/programs/1/episodes/rubyconf-2008</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-12-18T16:59:00+00:00">December 18, 2008 at 4:59 pm</time></p>
      <p>I had that as a link in my list, but because I couldn't figure out a category for it and I haven't listened to it yet it was skipped, so thanks for posting it!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pat Nakajim</strong> &middot; <time datetime="2008-12-18T17:07:00+00:00">December 18, 2008 at 5:07 pm</time></p>
      <p>People interested in Sinatra might also dig my Sinatra's Hat library, which let's you easily mount RESTful resources (it's ORM agnostic, though out of the box it works with DataMapper). Here's the project: <a href="http://github.com/nakajima/sinatras-hat" rel="nofollow">http://github.com/nakajima/sinatras-hat</a>.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dale Campbell</strong> &middot; <time datetime="2008-12-18T17:20:00+00:00">December 18, 2008 at 5:20 pm</time></p>
      <p>Simon Rozet is keeping a nice list of Sinatra-based apps.  Lots of good stuff on there.</p><p><a href="http://gist.github.com/22172" rel="nofollow">http://gist.github.com/22172</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-12-18T17:41:00+00:00">December 18, 2008 at 5:41 pm</time></p>
      <p>I've added a credit to Simon since it appears many of the links were from there.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aaron Quint</strong> &middot; <time datetime="2008-12-18T17:47:00+00:00">December 18, 2008 at 5:47 pm</time></p>
      <p>Hey Peter</p><p>I also just wrote up a sinatra app skeleton generator that I worked with the sinatra mailing list on:</p><p><a href="http://github.com/quirkey/sinatra-gen" rel="nofollow">http://github.com/quirkey/sinatra-gen</a></p><p>Also second Pat's 'sinatras-hat'<br>
Thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nicolás Sanguinetti</strong> &middot; <time datetime="2008-12-18T17:56:00+00:00">December 18, 2008 at 5:56 pm</time></p>
      <p>Also to note is Chris Schneid's blog (<a href="http://gittr.com" rel="nofollow">http://gittr.com</a>), which is an invaluable repository of examples and guides for sinatra =)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>karmi</strong> &middot; <time datetime="2008-12-18T18:12:00+00:00">December 18, 2008 at 6:12 pm</time></p>
      <p>Also, definitely worth seeing is Adam's and Blake's energetic talk from RubyConf @ Confreaks: <a href="http://rubyconf2008.confreaks.com/lightweight-web-services.html" rel="nofollow">http://rubyconf2008.confreaks.com/lightweight-web-services.html</a></p><p>(And thanks for the undeserved credits, Peter! :)</p><p>--karmi</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Geoffrey Grosenbach</strong> &middot; <time datetime="2008-12-18T18:28:00+00:00">December 18, 2008 at 6:28 pm</time></p>
      <p>Additionally from RubyConf, David Goodlad mentioned running Sinatra on embedded hardware.</p><p><a href="http://rubyconf2008.confreaks.com/ruby-for-embedded-applications.html" rel="nofollow">http://rubyconf2008.confreaks.com/ruby-for-embedded-applications.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andy Atkinson</strong> &middot; <time datetime="2008-12-18T20:01:00+00:00">December 18, 2008 at 8:01 pm</time></p>
      <p>Not really an app, but I made a simple site that scrapes HTML with hpricot off my github repo, with Sinatra, and found it is great for this type of thing, a small server side proxy, or a mashup data aggregator and provider.  Have also used Sinatra for a single page site with a twitter and flickr gem to pull tweets and photos as a "live stream" type of site.  <a href="http://webandy.com/2008/11/15/gadgets-and-demo-generator" rel="nofollow">http://webandy.com/2008/11/15/gadgets-and-demo-generator</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeedee</strong> &middot; <time datetime="2008-12-18T20:43:00+00:00">December 18, 2008 at 8:43 pm</time></p>
      <p>Everyone is saying they made "small" apps using Sinatra but would it be also well suited for large applications as well? You can always use Ramaze which is amazing but what about Sinatra?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-12-18T20:45:00+00:00">December 18, 2008 at 8:45 pm</time></p>
      <p>Theoretically I don't see why not, but the structure definitely seems a lot better suited to small apps from my POV.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Blake Mizerany</strong> &middot; <time datetime="2008-12-18T20:46:00+00:00">December 18, 2008 at 8:46 pm</time></p>
      <p>The easiest way to get a Sinatra app running and deployed is here:  <a href="http://runswithpandas.heroku.com/past/2008/11/13/sinatra_hosting_for_free/" rel="nofollow">http://runswithpandas.heroku.com/past/2008/11/13/sinatra_hosting_for_free/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Julio Capote</strong> &middot; <time datetime="2008-12-18T21:35:00+00:00">December 18, 2008 at 9:35 pm</time></p>
      <p>I wrote a simple json powered blog api using sinatra/jruby/jdbc-sqlite just as a starting point for any embedded jruby/sinatra project. <a href="http://github.com/jcapote/bloggy/tree/master" rel="nofollow">http://github.com/jcapote/bloggy/tree/master</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andre Lewis</strong> &middot; <time datetime="2008-12-18T22:14:00+00:00">December 18, 2008 at 10:14 pm</time></p>
      <p>Sinatra is really, really fun to work with. I recently put together a Sinatra + DataMapper + HAML/SASS proof-of-concept app, running on Passenger. I put up some notes &amp; lessons learned here: <a href="http://earthcode.com/blog/2008/12/building_a_simple_sinatradatam.html" rel="nofollow">http://earthcode.com/blog/2008/12/building_a_simple_sinatradatam.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-12-18T22:45:00+00:00">December 18, 2008 at 10:45 pm</time></p>
      <p>Just found this:</p><p><a href="http://locomotivation.com/blog/2008/12/01/disqus-sinatra-importer.html" rel="nofollow">http://locomotivation.com/blog/2008/12/01/disqus-sinatra-importer.html</a></p><p>A Sinatra app that imports comments into Disqus.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2008-12-18T22:55:00+00:00">December 18, 2008 at 10:55 pm</time></p>
      <p>Auuugghhh! Too many web frameworks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>caffo</strong> &middot; <time datetime="2008-12-19T00:27:00+00:00">December 19, 2008 at 12:27 am</time></p>
      <p>MooURL is sinatra based - <a href="http://moourl.com/" rel="nofollow">http://moourl.com/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tobias Crawley</strong> &middot; <time datetime="2008-12-19T01:56:00+00:00">December 19, 2008 at 1:56 am</time></p>
      <p>Another sinatra app - the opposite of moourl.com: <a href="http://urlunwind.com/" rel="nofollow">http://urlunwind.com/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Maik Schmidt</strong> &middot; <time datetime="2008-12-19T07:40:00+00:00">December 19, 2008 at 7:40 am</time></p>
      <p>Shameless plug: my new book (<a href="http://www.pragprog.com/titles/msenr/enterprise-recipes-with-ruby-and-rails" rel="nofollow">http://www.pragprog.com/titles/msenr/enterprise-recipes-with-ruby-and-rails</a>) contains a Sinatra tutorial, too. It shows how to use Sinatra for quickly creating REST service prototypes.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rich Apps Consulting</strong> &middot; <time datetime="2008-12-19T18:47:00+00:00">December 19, 2008 at 6:47 pm</time></p>
      <p>nice post and good collection of informative links together.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-12-19T23:05:00+00:00">December 19, 2008 at 11:05 pm</time></p>
      <p>Cool demonstration of accepting file uploads in a Sinatra app in just one line!</p><p><a href="http://technotales.wordpress.com/2008/03/05/sinatra-the-simplest-thing-that-could-possibly-work/" rel="nofollow">http://technotales.wordpress.com/2008/03/05/sinatra-the-simplest-thing-that-could-possibly-work/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Vasudev Ram</strong> &middot; <time datetime="2008-12-20T12:56:00+00:00">December 20, 2008 at 12:56 pm</time></p>
      <p>Nice post, Peter.</p><p>Lightweight software (including lightweight frameworks) is one of my interests, so it was good to read this. With the huge growth in the mobile space, light software is likely to grow in use too, due to the relative CPU and memory constraints of mobile devices.</p><p>BTW, you likely already know of them, but just in case, and also for other readers who also use or are interested in Python, CherryPy and web.py are somewhat similar frameworks to Sinatra, but for Python. Both of those also require only a few lines for an ultra basic web app, though maybe a bit more than your first Sinatra example above.</p><p>And on a related note, Python's WSGI (Web Services Gateway Interface) is increasingly getting supported by the newer Python web app frameworks. (It's also supported in, in fact is one of the main ways of using, Google App Engine.) I also read just recently that Ruby's Rack was inspired by WSGI.</p><p>Cool stuff ...</p><p>- Vasudev</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Coleman</strong> &middot; <time datetime="2008-12-21T07:41:00+00:00">December 21, 2008 at 7:41 am</time></p>
      <p>I made a website with a complimentary Facebook application in Sinatra. FB app is about 550 ok lines, most is sass stylesheet. <a href="http://binaryattraction.com" rel="nofollow">http://binaryattraction.com</a><br>
Code is at: <a href="http://github.com/penguincoder/binaryattraction" rel="nofollow">http://github.com/penguincoder/binaryattraction</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aaron Bedra</strong> &middot; <time datetime="2008-12-30T19:47:00+00:00">December 30, 2008 at 7:47 pm</time></p>
      <p>Don't forget about Castronaut (<a href="http://github.com/relevance/castronaut" rel="nofollow">http://github.com/relevance/castronaut</a>) It is an implementation of a CAS server using Sinatra that implements a nice presenter pattern.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Juan Lupión</strong> &middot; <time datetime="2009-01-03T10:00:00+00:00">January 3, 2009 at 10:00 am</time></p>
      <p>I wrote <a href="http://github.com/pantulis/whoisbigger/tree/master" rel="nofollow">http://github.com/pantulis/whoisbigger/tree/master</a> in an effort to learn Sinatra.  In less than 6 hours I had that really simple app deployed with Passenger on Dreamhost, and loving it!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joe Fiorini</strong> &middot; <time datetime="2009-01-06T05:51:00+00:00">January 6, 2009 at 5:51 am</time></p>
      <p>I have an Intro to Sinatra screencast I put together at <a href="http://www.vimeo.com/2374819" rel="nofollow">http://www.vimeo.com/2374819</a>. It is an example of writing the app online at <a href="http://isitcodemashyet.com" rel="nofollow">http://isitcodemashyet.com</a>.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
