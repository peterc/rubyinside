---
title: 'Interesting Rails Tidbits #3'
date: '2008-01-30'
author: Peter Cooper
author_slug: admin
post_id: 706
slug: interesting-rails-tidbits-3-706
url: "/interesting-rails-tidbits-3-706.html"
categories:
- compilations
- controversy
- os-x-specific
- ruby-on-rails
---

{{< rawhtml >}}
<p><big><strong>Ext JS Powered Administration System Generator for Rails 2.0</strong></big></p>
<p><img src="/assets/2008/01/lipsiaadmin6-tm.png" width="296" height="174" alt="LipsiaAdmin6-tm.png"></p>
<p>Davide D'Agostino writes in with news about <a href="http://rails.lipsiasoft.com/wiki/lipsiadmin">Lipsiadmin</a>, his <a href="http://extjs.com/">Ext JS</a> powered administration system generator for Rails 2.0. Ext JS is an interesting JavaScript framework that lets you quickly put together AJAX-powered Web pages that look and feel somewhat like Windows applications. Lipsiadmin takes this attribute of Ext JS and builds backend administrator systems for your Rails applications that feel more like GUI apps than Web pages. It's pretty interesting work.</p>
<p><big><strong>RailsConf 2008 Registration Now Open</strong></big></p>
<p>Just a quick note to those who are interested that <a href="http://en.oreilly.com/rails2008/public/content/home">the registration for RailsConf 2008 is open</a>. Get in quick as it typically books out fast. David Hansson gives <a href="http://weblog.rubyonrails.org/2008/1/29/railsconf-08-registration-is-open">some brief background</a>.</p>
<p><big><strong>"Rails Is Shitty"</strong></big></p>
<blockquote>
<p>
  There's no thought given to the general problem to solve, it's just improved PHP + "ActiveRecord, lol". This means Rails doesn't have solutions that are particularly good or scalable or make sense, only hacks that happened to solve someone's specific problem at a time and were implementable in 5 minutes or less. Rails is heaps better than PHP, but it's still only good for what PHP is good, and that's not writing webapps. This permeates Rails all the way down: it's got hacky modules that only solve particular problems, those modules have hacky functions that only solve particular problems and those functions only do hacky things that solved someone's particular problem.</p>
<p>  <cite>Maciej Kataflasz</cite>
</p>
</blockquote>
<p><a href="http://groups.google.com/group/comp.lang.lisp/msg/f2c33661b80ba302">A post on comp.lang.lisp</a> recently caught the eyes of several Rails developers. It's inflammatory and a prime piece of flamebait, but Maciej Kataflasz makes a few good points amongst the hate.</p>
<p><big><strong>Easy Restful Rails Screencast</strong></big></p>
<p>In the <a href="http://www.akitaonrails.com/2008/1/25/easy-restful-rails-screencast">"Easy Restful" screencast</a>, Fabio Akita takes a 50 minute journey into putting together RESTful Rails 2.0 applications in an efficient manner.</p>
<p><big><strong>Installing Rails and PostgreSQL on OS X Leopard</strong></big></p>
<p>Robby Russell has put together an <a href="http://www.robbyonrails.com/articles/2008/01/22/installing-ruby-on-rails-and-postgresql-on-os-x-third-edition">easy to follow, complete guide to getting a full Rails stack along with PostgreSQL installed</a> on OS X Leopard. Lots of screenshots and hand holding. Nice work!</p>
<p><strong><br></strong></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Finn Higgins</strong> &middot; <time datetime="2008-01-30T02:26:00+00:00">January 30, 2008 at 2:26 am</time></p>
      <p>I can't be the only person who's a bit bemused by the couple of Rails ExtJS interface plugins that have turned up here lately?</p><p>ExtJS is cool and has a lot of potential for building very powerful desktop-like interfaces which can run in a fairly similar way online or offline using a combination of REST and technologies like Google Gears or Adobe AIR.  But its whole layout paradigm is very oriented around it being used as a javascript application framework.  You have a data layer that interfaces to Gears/AIR or to a web service using JSON or XML, and you do your MVC separation and UI logic in Javascript.  The server is just there to manage data and serve up the UI.</p><p>But then things like Lipsiadmin or the plugin that was linked here the other day turn up... and I really don't get it.  Lipsiadmin in particular is just using a combination of Prototype and ExtJS (two fairly heavy libraries, in tandem) to render what appear to be purely static UI pages.  Every click still results in a new page load, it's just building the page using ExtJS widgets instead of generating them on the server side with helpers and CSS classes.</p><p>It's almost like they're just using ExtJS for its stylesheet so that the interface can look good, rather than gaining any of the desktop-like responsiveness or the reduced network latency from pre-loading/caching the UI classes and then just communicating with a web service during use.  It's nothing that could be easily extended to abstract the data layer to AIR or Gears and use the server for back-end only, as far as I can tell.</p><p>An auto-interface plugin for ExtJS would be really cool, but to work in a way that actually uses Ext's features properly I can't help but think it would have to be written as a generator that just produced generated Javascript which talked JSON to a RESTful web service.  And if you're going to do that, why make it a Rails tool at all?  It'd surely be better as an IDE tool coupled with some drag-and-drop UI design features.</p><p>I'm actually not sure Rails has any substantial place in the ExtJS world anyway, actually: if all you want is a RESTful web service that speaks JSON and communicates with a database then there are faster, lighter, threaded frameworks like Merb that would seem to fit the bill better.  Most of Rails would be just bloat in that environment.  Using Javascript calls to generate standard UI widgets doesn't fit the Rails paradigm very well - it's better suited to something like jQuery UI which uses standard snippets of XHTML (a good candidate for helpers) and behavior JS includes to define its widgets.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>RJ</strong> &middot; <time datetime="2008-01-30T06:04:00+00:00">January 30, 2008 at 6:04 am</time></p>
      <p>"There’s no thought given to the general problem to solve, it’s just improved PHP + “ActiveRecord, lol”."</p><p>Rails isn't over engineered.</p><p>"This means Rails doesn’t have solutions that are particularly good or scalable or make sense, ..."</p><p>Yeah, Rails doesn't scale.   /sarcasm</p><p>"...only hacks that happened to solve someone’s specific problem at a time and were implementable in 5 minutes or less."</p><p>Rails is productive.</p><p>"Rails is heaps better than PHP, but it’s still only good for what PHP is good, and that’s not writing webapps."</p><p>PHP isn't good for writing web apps, so Rails isn't?  WTF?</p><p>I read his entire post and I found it to be similar to other FUD I've read lately.  I googled him and checked out other places where he wrote including his blog(http://mathrick.org/).  I didn't see anything that convinced me to give much value to his opinion.</p><p>Just 2 cents from an average joe web developer...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Finn Higgins</strong> &middot; <time datetime="2008-01-30T06:37:00+00:00">January 30, 2008 at 6:37 am</time></p>
      <p>No, I think the guy has a number of good points.  Rails actually probably is over-engineered in many places, there's a hell of a lot of weird magic that goes on in the framework to support sugary syntax and automatic invisible activity inside the framework.  And his complaints about ActiveRecord#find* are right on the mark - ActiveRecord is great for creating, updating and deleting records with proper support for validation, but it can get very nasty when you attempt to get into complex reporting with a lot of joins and conditions.  You know, "show me all the unique products that people who are members of a particular group and all its (nested set) children bought during November and January".  All the relationship structures are well supported by ActiveRecord, but the finders are pretty shocking for that kind of stuff.</p><p>Rails is definitely much better than PHP, if only because Ruby isn't painful from a syntax POV.  But I can see it losing ground to frameworks that have learned from its conceptual advances without being laden down with its historical mistakes.  </p><p>To be honest, his original post is more lucid than your response.  You don't seem to have really addressed his concerns, instead just repeating many of the Rails mantras.  How does "Rails is productive" address a complaint that many of the tools provided by Rails were only added to sold the author's specific problem at the time of writing, and that they're of limited wider utility?  That's a legit complaint if true, not a productivity boost.  Quite the opposite.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Seka</strong> &middot; <time datetime="2008-01-30T11:34:00+00:00">January 30, 2008 at 11:34 am</time></p>
      <p>I see Lipsiadmin now and I think wose beautifull this because is thin and fast to use, is ubuntrusive so is pretty for me that I like a good layout but I hate write so much in javascripts.</p><p>The aim of rails is be agile. So this generator is good for do that.</p><p>If you like extjs and no refresh page use only webservices or another framework like <a href="http://halcyon.rubyforge.org/" rel="nofollow">http://halcyon.rubyforge.org/</a></p><p>Bye!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Markus</strong> &middot; <time datetime="2008-01-30T14:14:00+00:00">January 30, 2008 at 2:14 pm</time></p>
      <p>Ruby Inside is may favorite Ruby resource, but I'm baffled as to why this flamebate post from comp.lang.lisp is detailed here. Since I've already responded to his rant when I saw it referenced on Reddit, I won't comment on it again in any detail.  My  feeling is that a) no framework can be all things to all people and b) if Rails was as big of a mess with "hacky functions" (and by the way, Ruby doesn't have functions) we would see all of the Rails clones that we do.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>RJ</strong> &middot; <time datetime="2008-01-30T15:00:00+00:00">January 30, 2008 at 3:00 pm</time></p>
      <p>"You know, “show me all the unique products that people who are members of a particular group and all its (nested set) children bought during November and January”."</p><p>Serious question: Does ActiveRecord#find_by_sql not work well in this situation?</p><p>"You don’t seem to have really addressed his concerns, instead just repeating many of the Rails mantras."</p><p>You're right.  I didn't address his concerns, I dismissed them.  When I said "Rails is productive" I should have said "Ruby is a productive language" and his argument that:</p><p>“…only hacks that happened to solve someone’s specific problem at a time and were implementable in 5 minutes or less.”</p><p>doesn't make sense to me.  Some of the better frameworks today solve real problems.  Specific problems too. Really, what web framework today solves everyone's general problems but no specific problems.  How productive would that be?  I guess I read his statement as "Rails doesn't solve *my* specific problems so its hacky."  He is certainly entitled to propose any patches to ActiveRecord or any other part of Rails for that matter.  I guess you can fault me for parroting another Rails mantra there.</p><p>"To be honest, his original post is more lucid than your response."</p><p>Because I don't agree with him doesn't make my response less coherent.  I will concede that I have not had to exercise all that ActiveRecord has to offer, but that's only one point.  I don't see the other "good points" in his rant.</p><p>“Rails is heaps better than PHP, but it’s still only good for what PHP is good, and that’s not writing webapps.”</p><p>Really?  I don't like PHP either, but I wouldn't go as far as saying that PHP is not good for building web applications.  This statement didn't add to his credibility for me.  Friendster, Flickr, ThemBid, Digg, Wikimedia, Fotolog.....There are several high traffic sites built in PHP.</p><p>"As a rule, there's no quality assurance, and the average quality is<br>
very low. Because it's such a patchwork, it will only have parts of<br>
things implemented, some other (not necessarily overlapping) parts<br>
documented, and a whole load of missing things just dangling and waiting<br>
for you to run into them."</p><p>There are several tests and process for getting patches approved.  There is al least *some* QA.</p><p>"I'm a huge fan of innovative frameworks like Weblocks, because they<br>
actually stopped and thought about the whole thing for a moment, and try<br>
things that will address the problem as a whole. And even if some<br>
specific things will turn out to be harder to do that by just churning<br>
out raw HTML, and there will be abstraction leaks, it's still better<br>
because they try out new things to find a solution that has a chance<br>
work. Rails doesn't, because its entire culture seems to be fundamentally<br>
incapable of thinking more than 5 minutes into the future."</p><p>I guess I disagree with the original post mostly because I'm not looking for a silver bullet.  I like the shortcut I'm given by using frameworks like Rails, but I'm not looking for it to handle my every need.  YMMV and you can agree with him whole heartedly - I just don't have the same problems with Rails in my development.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>AkitaOnRails</strong> &middot; <time datetime="2008-01-30T16:44:00+00:00">January 30, 2008 at 4:44 pm</time></p>
      <p>Hello! Thanks for the link! :-) I hope everybody likes the "screencast":<a href="http://www.akitaonrails.com/2008/1/25/easy-restful-rails-screencast" rel="nofollow">http://www.akitaonrails.com/2008/1/25/easy-restful-rails-screencast</a> and if you do, please leave a comment. Feedback is always good for me to improve. Cheers</p>
    </li>
      <li>
      <p class="comment-meta"><strong>sharnik</strong> &middot; <time datetime="2008-01-31T12:56:00+00:00">January 31, 2008 at 12:56 pm</time></p>
      <p>I think the name is Maciej Katafiasz (rather than Kataflasz) as you probably mean the person behind the blog - <a href="http://mathrick.org/" rel="nofollow">http://mathrick.org/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Joyce</strong> &middot; <time datetime="2008-02-01T14:40:00+00:00">February 1, 2008 at 2:40 pm</time></p>
      <p>Hope Lipsiadmin doesn't have other mistakes like "Delte" in its internals...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>jvlake</strong> &middot; <time datetime="2008-02-13T07:20:00+00:00">February 13, 2008 at 7:20 am</time></p>
      <p>Hi, </p><p>Is Finn Higgins in this post this F Higgins,</p><p><a href="http://www.stuff.co.nz/4399404a11.html" rel="nofollow">http://www.stuff.co.nz/4399404a11.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-02-13T07:50:00+00:00">February 13, 2008 at 7:50 am</time></p>
      <p>Even if it is, the posting here was long before he went missing, alas. Unfortunately I don't have the IP address available to tell you the country.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
