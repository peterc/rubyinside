---
title: No True “mod_ruby” Is Damaging Ruby’s Viability On The Web
date: '2008-01-10'
author: Peter Cooper
author_slug: admin
post_id: 693
slug: no-true-mod_ruby-is-damaging-rubys-viability-on-the-web-693
url: "/no-true-mod_ruby-is-damaging-rubys-viability-on-the-web-693.html"
categories:
- controversy
- miscellaneous
- ruby-on-rails
---

{{< rawhtml >}}
<p><span style="font-style: italic;">Note: This post was drafted before DHH's "</span><a href="http://www.loudthinking.com/posts/21-the-deal-with-shared-hosts"><span style="font-style: italic;">The deal with shared hosts</span></a><span style="font-style: italic;">" post, but as it covers similar ground, it's worth reading too. DHH's opinion appears to be that shared hosts should put up or shut up, but I disagree and suggest this is something we need to solve as a community.</span></p>
<p>Most of us in the Ruby community know that deploying Web apps powered by Ruby can be like pulling teeth. Running up simple CGI scripts is easy enough, but once you move on to more robust systems, using things like Rails, Sinatra, Ramaze, Merb, Camping, whatever, it deviates significantly from the well-established "just upload it" route. The reason is that applications built around these frameworks tend to expose themselves directly via HTTP daemons, using libraries such as Mongrel or WEBrick, and then requests from Web servers like Apache need to be proxied through to them, but this feels like a hackish workaround to the fact we lack a proper "mod_ruby."</p>
<p>In the PHP world, things are a lot simpler. Almost universally Apache comes with mod_php built in, and PHP scripts uploaded to any sort of Web space, shared or not, tend to "just work." This is POLS (Principle of Least Surprise) in deployment. With Rails apps, say, you either need to go to a specialized, over priced Web host, rig up Apache with reasonably fragile FastCGI solutions, set up a Mongrel cluster separately to Apache and then do some proxying, or even deploy a whole new stack based around Mongrel clustering, Nginx and the like. This makes deploying a Ruby application offputting to the typical webmaster and is, in my opinion, damaging Ruby's viability as a mass market Web application technology. If I'm going to put up a blog, I'll use WordPress (Ruby Inside actually does). If I want a forum, I'll find one of the many PHP variants. Why? Easy deployment on well established, easy to replicate application stacks.</p>
<p>Since PHP, Python (including Django apps), and even Java apps (via Tomcat) can be deployed reasonably easily on an Apache stack with the relevant modules installed, shouldn't we be able to get <a href="http://www.modruby.net/">mod_ruby</a> doing the same thing? I'm definitely willing to help in whatever way I can on this, as I'd <strong>love</strong> to see Ruby / Rails / whatever apps as easy to deploy as PHP apps! This is the main reason Ruby powered forum and blog systems aren't beating WordPress and vBulletin. Unfortunately, I'm pretty dumb when it comes to the technicalities of Apache modules and rigging these things up, but if the main impediment is money, publicity, programmers, or whatever, I'm sure we can figure something out as a community.</p>
<p>So some questions arise:</p>
<p>1) Is there / why isn't there a version of <a href="http://www.modruby.net/">mod_ruby</a> that doesn't have the "class sharing" issue? What is the technical impediment?</p>
<p>2) Is there any immutable reason that Ruby apps couldn't, in the future, be deployed in a PHP-esque fashion?</p>
<p>When we have this ease of deployment, imagine how significantly the market for Ruby powered Web sites and applications could grow! But, first, is it even possible? We'll await answers from the technical wizards out there, but if we can take even a single step forward on this, we're getting somewhere.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>crayz</strong> &middot; <time datetime="2008-01-10T17:40:00+00:00">January 10, 2008 at 5:40 pm</time></p>
      <p>Once you solve the first issue, solving the second is easy. Create a lightweight framework that allows PHP-style development in Ruby - ERB, basically</p><p>There's three separate problems here, really:<br>
* need a working mod_ruby or performant CGI to run ruby websites<br>
* need a lightweight framework(I almost view PHP as a web framework for C) for ruby, name it something like w-ruby<br>
* Rails deployment is tough/resource intensive</p><p>Realistically, the final problem isn't going to be solved any time soon. Rails is just too big</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James Thompson</strong> &middot; <time datetime="2008-01-10T17:44:00+00:00">January 10, 2008 at 5:44 pm</time></p>
      <p>I am completely unqualified to speak to the technical nature of this but I really like the sentiments. I don't think this will be the answer for big deployments that should use systems like Mongrel, Nginx and proxying but a real mod_ruby would be great for apps like Radiant and others that could REALLY use a stupid simple "just upload it" style of deployment.</p><p>I have a designer friend who loves Radiant and especially loves using it with SQLite but hates having to call me whenever he needs to deploy to a shared host.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-10T17:51:00+00:00">January 10, 2008 at 5:51 pm</time></p>
      <p>@James: A connected issue is that if the "small guys" aren't used to deploying Ruby apps, forum systems, weblog systems, and the such.. then they might not consider them for the more enterprisey / larger deployment stuff either. So IMHO being able for joe public to install a Ruby app as simply as a PHP one is a great way to "catch em while they're young" and boost Ruby's fortunes across the board.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tuxie</strong> &middot; <time datetime="2008-01-10T17:52:00+00:00">January 10, 2008 at 5:52 pm</time></p>
      <p>Running app code inside the public webserver is stupid IMHO, especially on shared hosts. </p><p>Yes, it's easy to just drop some .php-files in the public_html directory and having them run, but that's also the source of a lot of security holes. </p><p>It's much better to run the app externally. Whether it's via HTTP-proxying, FastCGI, SCGI or some other way doesn't matter. This is true for PHP apps also. You get better scalability, bad code (like security holes and deadlocks) in one app is less likely to affect the other apps.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Tomayko</strong> &middot; <time datetime="2008-01-10T17:59:00+00:00">January 10, 2008 at 5:59 pm</time></p>
      <p>Yea, the reason there's no `mod_ruby` is because running Ruby code inside of the web server is almost always a horrible idea. The current reverse proxy -&gt; mongrel solution is The Right Way To Do It but configuration needs to become much easier.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ivan Storck</strong> &middot; <time datetime="2008-01-10T18:04:00+00:00">January 10, 2008 at 6:04 pm</time></p>
      <p>I am soooo glad people are finally talking about this!  The frustrations with Rails deployment have been really slowing the adoption of the language, in my opinion.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-10T18:06:00+00:00">January 10, 2008 at 6:06 pm</time></p>
      <p>There is a "technically better" vs "pragmatic" debate in most technological issues. I fear that PHP's pragmatic approach, even though not technically better, is "good enough" for PHP to maintain its reputation and advantage in deployment.</p><p>The Mongrel situation annoys me, however, because I don't like having large numbers of processes sitting around doing nothing but, of course, similarly dislike the problems with CGI's on-the-fly execution.</p><p>Perhaps there is room, however, for a "mod_mongrel" type Apache module that can handle the spawning of Mongrel processes, the proxying, and the shutting down of inactive processes (if the app hasn't been used for, say, 10 minutes)? Perhaps that's the ultimate technically superior solution? Sounds a bit like how FastCGI is *meant* to work though.. so is the solution fixing FastCGI instead? ;-) So many options!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dave</strong> &middot; <time datetime="2008-01-10T18:11:00+00:00">January 10, 2008 at 6:11 pm</time></p>
      <p>Peter, I like your mod_mongrel idea! Being ale to upload a rails of merb application and run it simply by pointing the browser to the apps url would be amazing!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Greg</strong> &middot; <time datetime="2008-01-10T18:14:00+00:00">January 10, 2008 at 6:14 pm</time></p>
      <p>Yes, clearly the current setup is too complicated. A "mod_mongrel" approach definitely seems easier to manage. Regardless of technical superiority, there is no doubt the current array of rails deployment methods are all a royal PITA to manage.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Tomayko</strong> &middot; <time datetime="2008-01-10T18:17:00+00:00">January 10, 2008 at 6:17 pm</time></p>
      <p>Peter: yes! The "mod_mongrel" idea is the way to go, IMO. Although, I'm not convinced it has to be a server module. It could be a separate daemon or external command, the benefit of which being that it would be independent of a specific web server. It should be able to spawn and monitor processes, dynamically allocate ports based on availability, and possibly make the configuration discoverable to other processes. I suppose some kind of lightweight apache module that was capable of querying this configuration information and setting up mod_proxy would be beneficial as well...</p><p>Basically, I'd say something like mongrel_cluster with auto-configuration and process management would get you 80% of the way there. The remaining 20% would be on the web server side and would simply interface with this management daemon.</p><p>Also, FastCGI is bad from an architectural standpoint. A huge portion of the FastCGI code base is a re-implementation of HTTP in a non-standard message format.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tim Harper</strong> &middot; <time datetime="2008-01-10T18:32:00+00:00">January 10, 2008 at 6:32 pm</time></p>
      <p>A mod_ruby solution would be good only if it acted as an intelligent gateway to a persistent application (which may not be a bad idea).  One thing about PHP apps: each requests starts up a brand new application, reparses the classes and methods loaded, initialize the db connection, complete the request, then shut the whole thing down.  Hardly efficient. (<a href="http://blog.milkfarmsoft.com/?p=51" rel="nofollow">http://blog.milkfarmsoft.com/?p=51</a>).  Rails applications are persistent, initialize once, and then serve many requests during their lifetime.</p><p>I have been using FastCGId for my rails deployments.  It's no cake walk to set up (I have to compile several things, and set up suEXEC to keep my rails processes from running as apache, or httpd, etc.), but it has been rock solid for me.  I've set it up for several clients (including one that receives well over 100,000 requests per day).  It's a great solution that I much prefer over mongrel_cluster (though it's Apache-only).  A down side about FastCGId is when you restart Apache, all of your application processes restart (so it's bad for shared hosting), but a good thing about FastCGId is your application processes can be started as needed.  FastCGId has done for me a decent job at managing processes with a little configuration.</p><p>I think something along those lines, along with an uploadable .htaccess file that configures apache automatically for you, is the way to go for a persistent application server such as a RubyOnRails app.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paul Barry</strong> &middot; <time datetime="2008-01-10T18:34:00+00:00">January 10, 2008 at 6:34 pm</time></p>
      <p>I think saying that Java apps have this an Rails doesn't is misleading.  </p><p>Tomcat is almost the exact same concept as Mongrel except that it is threaded.  Tomcat is a java application server that you have to install, config and deploy your code to.  You only have to run one Tomcat process, because it can handle multiple requests with threads.  </p><p>With Rails, Mongrel fills the same role as Tomcat, but the problem is that Rails can't do that because Rails isn't thread safe.  So that is why you need a mongrel cluster and not just one Tomcat instance.  If you are wondering why you can't just run process, then there is your technical impediment, one that Merb is trying to solve.</p><p>So my point is that a Java app, minus the threading/cluster issue, has the same problem as a Mongrel/Rails app.  You can't just install mod_java, upload your .java and .jsp files and be up and running.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>topfunky</strong> &middot; <time datetime="2008-01-10T18:37:00+00:00">January 10, 2008 at 6:37 pm</time></p>
      <p>In the meantime, it's great that many of these new frameworks are built around Christian Neukirchen's Rack interface. </p><p>Building webapps that talk to Rack means that running under Mongrel, FastCGI, or even plain CGI is a minor tweak. As I understand it, a Rack-friendly app would be better positioned to use other solutions like mod_ruby once they have been more sufficiently implemented.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tim Harper</strong> &middot; <time datetime="2008-01-10T18:39:00+00:00">January 10, 2008 at 6:39 pm</time></p>
      <p>Pardon me - the correct name for FastCGId is mod_fcgid.</p><p>Here's a weblink -<br>
<a href="http://fastcgi.coremail.cn/" rel="nofollow">http://fastcgi.coremail.cn/</a></p><p>On the ruby side, you still use the fcgi gem, which will require you to download and install the FastCGI development kit.</p><p><a href="http://www.fastcgi.com/#TheDevKit" rel="nofollow">http://www.fastcgi.com/#TheDevKit</a></p><p>You can compile mod_fcgid after installing the devel package.  Apache2 is required.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luke Francl</strong> &middot; <time datetime="2008-01-10T18:41:00+00:00">January 10, 2008 at 6:41 pm</time></p>
      <p>I think there may be an actual disincentive in the Rails community to working on shared hosting. Many of us (myself included) work as consultants. If Rails is more exclusive, we can charge more. Not out of malice, naturally, but as experienced consultants, we do not have trouble setting up a server to run Rails (or paying for same) and we would never recommend our clients host on shared servers due to the reliability problems.</p><p>But for many small sites and hobbyists, shared hosting is the way to go. I have found myself inhibited from working on Rails apps "for fun" because I don't know where I'd host them.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jens Alfke</strong> &middot; <time datetime="2008-01-10T18:58:00+00:00">January 10, 2008 at 6:58 pm</time></p>
      <p>Peter, it sounds like you and DHH are actually on the same page. DHH makes the good point that shared host sites have incentives to work on these issues since they've got money and reputation on the line. And you're right that this should also be important to the Ruby community at large.</p><p>PHP didn't get where it is today by being a good language! Compared to PHP or Python it's a joke; I always call it "Pidgin C". It took over the world by having an incredibly shallow learning curve for your average Jo who's picked up some HTML and some C; and by offering good performance.  Ruby needs to go there too.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeremy</strong> &middot; <time datetime="2008-01-10T19:17:00+00:00">January 10, 2008 at 7:17 pm</time></p>
      <p>@crayz: You might want to check out my framework Vintage; it's basically what you describe: <a href="http://vintage.devjavu.com/" rel="nofollow">http://vintage.devjavu.com/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-10T19:17:00+00:00">January 10, 2008 at 7:17 pm</time></p>
      <p>@Luke: Same here! I have multiple dedicated servers and can do pretty much what I want deployment wise.. yet I still prefer to stick with the regular CPanel-esque way of doing things and tend to stick to established PHP apps (and I don't even know PHP!). I use FastCGI for any Rails apps I do have, simply because it's easy, even if I have to have a killall -9 dispatch.fcgi cronned every few minutes ;-)</p><p>@Paul Barry / topfunky: Do you think there is some way to, perhaps, make a Ruby version of Tomcat that would resolve a lot of these issues? It would be great to have something handle all of the processes, spawning of Mongrels, etc, for ALL the Rails / Ruby apps on a machine, rather than do it all "by hand" and have tens of processes everywhere. Rack would certainly be a good interface for creating such a beast. I don't even really care if this "Ruby Tomcat" is written in Python, Perl, C, or whatever, for the threading (Ruby 1.9 is worth looking at though) as long as it makes it easy.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alastair</strong> &middot; <time datetime="2008-01-10T19:24:00+00:00">January 10, 2008 at 7:24 pm</time></p>
      <p>I've used shared hosting at Dreamhost (horrible),  and Media Temple (ok) but there is one shared host where you just upload Rails and go -  Mosso (well upload, and one click). </p><p>However it's not on Apache it's Litespeed with Ruby LSAPI (their mod_ruby) and whether on a shared host, VPS,  or dedicated it just works. No guessing how many Mongrel processes to spawn etc. Litespeed is set up for shared hosting and they claim to be faster than Apache at just about everything. Of course it's not open source so many smaller hosts will stick with Apache because of cost, and those that have it like Mosso charge $25 per site on top of the regular monthly hosting fee. </p><p>So Mosso/Litespeed proves it can be done, the only problem is price which hopefully would come down if a shared host had enough users to flatten it out.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nicholas Henry</strong> &middot; <time datetime="2008-01-10T19:29:00+00:00">January 10, 2008 at 7:29 pm</time></p>
      <p>I didn't view DHH's opinion "to be that shared hosts should put up or shut up" - I saw it as a "call to action" in similar vein to the issue with twitter and multiple databases (<a href="http://www.loudthinking.com/posts/3-scaling-to-multiple-databases-with-rails" rel="nofollow">http://www.loudthinking.com/posts/3-scaling-to-multiple-databases-with-rails</a>). OK, his tone might sound a little harsh, but he is honest - maybe "shut up or do something about it because you are profiting from this technology" might be a more accurate description. Sure there are issues but how much can we expect from the core team?  After all it is an opinionated framework :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>jennyw</strong> &middot; <time datetime="2008-01-10T19:36:00+00:00">January 10, 2008 at 7:36 pm</time></p>
      <p>Yes mod_php has to load the entire app when it runs ... but it often works with reasonable speed anyway. And a lot of PHP sites are many apps put together -- a cms, a forum, a photo gallery, a blog ... etc. Imagine doing that with Rails -- you'd have to have a min. of one Mongrel process for each application (unless you rewrote them to work together) and if your site became busy, you'd have to multiply your mongrels. On shared hosting ... well you can imagine how many Mongrels would need to be around. Your problem becomes more one of RAM usage than processing power at this point (and of course that can affect processing time).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-10T19:44:00+00:00">January 10, 2008 at 7:44 pm</time></p>
      <p>@jennyw: Okay, I wasn't entirely aware how PHP dealt with it, but Rails (and most Ruby frameworks) isn't designed in such a way where loading it up on each request is effective.. so it seems some sort of persistence might be required, perhaps this mod_mongrel / Tomcatty idea that's now floating about. Thanks for highlighting this point.</p><p>@Nicholas Henry: That's what I meant by "put up or shut up." I think that might be a rather English expression though (it's commonly used here in public rhetoric), it means basically what you've said, as in "shut up or do something about it." I do want to stress, however, I don't consider this just a Rails thing.. this affects all Ruby frameworks (except those that purely use regular CGI).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>CptOatmeal</strong> &middot; <time datetime="2008-01-10T19:46:00+00:00">January 10, 2008 at 7:46 pm</time></p>
      <p>Given that Merb aims to be thread safe, would it be possible to use mod_ruby with Merb?  Increased traffic would just spawn more threads to handle the load.</p><p>Granted, this wouldn't ever work for Rails, but it would be a fairly simple solution for any of the many new frameworks that are thread safe.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-10T19:48:00+00:00">January 10, 2008 at 7:48 pm</time></p>
      <p>@CptOatmeal: As far as I understand it, the issue is that classes used become "public".. that is, they're shared across the instance of Ruby. This means if you had two different Merb apps on a single server that had the same class name for a controller, say, you'd hit big problems. Of course, I could be wrong here, but that's how I understand it and welcome corrections!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gen Du</strong> &middot; <time datetime="2008-01-10T19:50:00+00:00">January 10, 2008 at 7:50 pm</time></p>
      <p>Nobody here gets it.</p><p>You can't have a Ruby version of Tomcat because Ruby 1.8 and 1.9 threads can't cross CPUs. 1.8 has local scheduling and 1.9 has the GIL. Java spent a million man-years getting concurrent threading working and this is one benefit of it.</p><p>Mod_mongrel is a stupid idea. You're gonna parse the CGI request again when you're already inside a parsed request, and have Apache spawn external programs? Have fun making that work cross-platform.</p><p>Mod_ruby doesn't work well because Rails's start-up time is slow and Ruby's GC means that you can't prefork and page out. Ruby basically can't use VM because of the COW problem. Plus it doesn't work on Windows.</p><p>Mod_ruby could be made better, but the set of people who understand Apache and Ruby well enough to work on it, and the set of people who care about bargain-basement hosting, are exclusive right now. If a budget host wants it they need to pay some to do it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gen Du</strong> &middot; <time datetime="2008-01-10T19:53:00+00:00">January 10, 2008 at 7:53 pm</time></p>
      <p>@Peter mod_python lets you have named interpreter instances to avoid the class sharing problem. Mod_ruby doesn't support that.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2008-01-10T19:55:00+00:00">January 10, 2008 at 7:55 pm</time></p>
      <p>If nothing else, why not just a simple web-based gui? Just upload the app to a folder, then  set it up via something like Dreamhost's panel.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gen Du</strong> &middot; <time datetime="2008-01-10T19:58:00+00:00">January 10, 2008 at 7:58 pm</time></p>
      <p>Also note that part of what lets PHP 'just work' is a security flaw. Exceptions get dumped to the public-facing web because there's no way to introspect a request to mod_php directly.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>CptOatmeal</strong> &middot; <time datetime="2008-01-10T20:00:00+00:00">January 10, 2008 at 8:00 pm</time></p>
      <p>Admittedly, I know very little about how mod_ruby works, but it seems that two situations are possible:</p><p>1. A separate interpreter instance is started for each merb app running and oft threads within each interpreter instance take care of handling traffic.  In this case there shouldn't be any sharing of classes.  Evidently this isn't what happens, so...</p><p>2. One interpreter handles all ruby apps running on the server.  This makes no sense, as it seems very very slow and brittle.</p><p>Regardless of what is actually happening, might it be possible to use something like _why's sandbox's to isolate different apps?  The mod_ruby code could run each app in its own sandbox, and no conflicts would occur.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alan Wilensky</strong> &middot; <time datetime="2008-01-10T20:09:00+00:00">January 10, 2008 at 8:09 pm</time></p>
      <p>Doesn't perball already do this for Ruby? My ignorance.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nicholas Henry</strong> &middot; <time datetime="2008-01-10T20:11:00+00:00">January 10, 2008 at 8:11 pm</time></p>
      <p>@Peter: originating from a commonwealth country I should be in the know :) Actually, I had always interpreted it as "live with it" not "do something about it". Maybe that's why people got frustrated with the result of me "putting up" :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-10T20:12:00+00:00">January 10, 2008 at 8:12 pm</time></p>
      <p>@CptOatmeal: Regarding why's sandbox.. interesting idea! That would be worth looking into.</p><p>@Gen Du (1): You're highlighting some relevant problems, but do you have any suggestions (well though out or not, it doesn't matter!)?</p><p>@Gen Du (3): Even if what makes PHP work easily is a security flaw, it's powering millions of sites out there. It might suck, but there's definitely a "good enough" point on the scale from "too open" through to "too difficult". Ruby is too far on the difficult side, deployment-wise, and being on the "too open" side is less a detriment, IMHO.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-10T20:15:00+00:00">January 10, 2008 at 8:15 pm</time></p>
      <p>@Gen Du: Oh, and it's not all about "bargain basement hosting." It's about getting stuff to work easily in the stack nearly everyone is already familiar with. I have CPanel and the usual Apache stack running on all sorts of machines.. I want apps to run on that stack with as minimal extra configuration as possible. FastCGI is currently the best solution, but it's not as good as it should be, although it's the closest to the ideal of "upload and it runs" so far.</p><p>My personal desires aside.. as a community we should WANT the millions of smaller webmasters to be trying out Ruby / Rails apps all over the place. That's what builds up an ecosystem. Remaining an elite club helps no-one but the elitists.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-10T20:17:00+00:00">January 10, 2008 at 8:17 pm</time></p>
      <p>@Nicholas: I guess it can be interpreted both ways, especially as "to put up" with something usually does mean to "live with it." Unfortunately though, you can "put up money" or "put up a solution" or "put up your fists" and that variant has a totally opposite meaning!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Copper Pete</strong> &middot; <time datetime="2008-01-10T20:19:00+00:00">January 10, 2008 at 8:19 pm</time></p>
      <p>This is what killed perl really hard. </p><p>mod_perl was not easily deployable on shared hosts where mod_php sandboxed things really well.</p><p>Essentially an inferior language won due to deployability!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-10T20:23:00+00:00">January 10, 2008 at 8:23 pm</time></p>
      <p>@Copper: Before I got into Ruby, I was a Perl developer for about 8 years (from 1996 to 2004) and man.. even I hated mod_perl! It's super fast, but needlessly arcane and complex (although a lot of Perl could be accused of this).</p><p>I am certainly keen to see Ruby at least get on an equal footing with PHP somehow, although I am not particularly encouraged by developments so far.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-10T20:29:00+00:00">January 10, 2008 at 8:29 pm</time></p>
      <p>This is going to be a controversial idea, but perhaps the solution is to go with Java's deployment system, and just use JRuby for everything ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sam Freiberg</strong> &middot; <time datetime="2008-01-10T20:36:00+00:00">January 10, 2008 at 8:36 pm</time></p>
      <p>I'm so confused. Everytime I read an article like this or an article about how great Mongrel is I'm completely confused In all of the posts above only one person (Alastair) mentions LiteSpeed. LiteSpeed is very easy to setup, faster than Mongrel, way faster than Apache and much, much simpler for Rails deployments. My Rails deployments take 3 lines in a web gui and I'm off and running. Oh and LiteSpeed works with third party hosting panels like CPanel. Maybe if people would do some research and be willing to try something besides the mainstream crappy solutions of Apache and Mongrel I wouldn't have to endure all these pointless articles.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dallas Kashuba</strong> &middot; <time datetime="2008-01-10T20:56:00+00:00">January 10, 2008 at 8:56 pm</time></p>
      <p>I am very happy to see the direction this discussion is going!</p><p>DreamHost's current setup is not ideal, though when we first developed our FastCGI setup all the Ruby on Rails documentation implied it would work fine.  It just doesn't quite work perfectly, even though, to my knowledge, FastCGI does work with perl, python, php, etc.</p><p>There are some great web hosting services out there that have greatly simplified the Rails deployment process but each one of those has had to cook up an interface to it on their own.  That means it's still hard for an 'average joe' to deploy because they can't use the same method on different hosting services.  It really needs to be something more universal to be closer to 'easy'.</p><p>Mongrel is very definitely not a solution for standard shared hosting services now.  It can work well in a VPS, and those are relatively inexpensive at this time.</p><p>A more 'super-mongrel' type application server with per-application sandboxing would be even better for a VPS, and may even be workable in a more advanced shared hosting environment.</p><p>I would be happy to provide a free hosting account to anyone who would like to help work on these issues with us.  Just contact me through our contact form and we can talk about it...<br>
<a href="http://www.dreamhost.com/contact.cgi" rel="nofollow">http://www.dreamhost.com/contact.cgi</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Arron</strong> &middot; <time datetime="2008-01-10T21:02:00+00:00">January 10, 2008 at 9:02 pm</time></p>
      <p>@Sam: A lot of people have issues with LiteSpeed's EULA -- mostly the whole 'no pornography' bit. That indicates there's a chance they'll keep extending the EULA to cover more and more things they're morally against.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>planetmcd</strong> &middot; <time datetime="2008-01-10T21:02:00+00:00">January 10, 2008 at 9:02 pm</time></p>
      <p>I think Ruby deployment is pretty analogous to Java deployment (Web server proxy to application server).  Maybe I missed something, but I don't see Java on shared hosts alot.</p><p>Tomcat can manage several apps in one instance, but even if you go 1 mongrel per ruby app, Tomcat would need to allocate resources for reach additional application.</p><p>As Jruby improves, you'll be able to deploy your Ruby applications to tomcat, perhaps obviating a need for Ruby Tomcat.</p><p>You'll notice I didn't say Rails applications, because Rails isn't threadsafe.  It requires something else handle this safety and the current workaround is mongrel clusters.  Rails apps require more resources because of this.  Its not a knock per se, because you should know that going in.  I want to use Rails, I need to cluster my app/design it to handle thread issues.  So its more of a resource hog than some would like it to be.  Thats the trade off for developer time which is often a pricier resource.</p><p>How does this apply to shared hosting?  Well, Ruby is bit little harder than Java on a shared host, which I believe is not common.  Rails is a bit harder than that because it requires you to proxy to a cluster of application servers and manage that proxy.  Clearly this is not for shared hosts.</p><p>By way of comparison has anyone ever deployed a symfony or cakephp to a shared host and found them perform at high levels?  I don't have an answer for that.</p><p>Vis a vis the shared hosting question, how does mod_python work?  The concerns are essentially the same.  I've also not deployed any django apps to a shared host, so I can't say how they fare.  Anyone?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-10T21:04:00+00:00">January 10, 2008 at 9:04 pm</time></p>
      <p>@Sam: From what I understand, people who use Litespeed with CPanel replace Apache with Litespeed. That's not suitable for me (or many hosting providers). Secondly, it's not open source. Third, there's no way I'm paying $699 a year for it (my main dedicated server is quad core) just to run a few small apps.</p><p>There are solutions, sure, but there needs to be an open source, easily configurable, pragmatic solution too, if we want Ruby to flourish in this sector. This isn't about coming up with boutique solutions that only wealthy consultants or businesses can use. It's about coming up with a solution that Joe Webmaster can use to try out that cool new Ruby-powered forum software he's seen without really needing to think about deployment issues.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-10T21:05:00+00:00">January 10, 2008 at 9:05 pm</time></p>
      <p>@planetmcd: I've not deployed a Django app either, but the Django people suggest that mod_python + Apache is the best way to deploy a Django app. That seems kinda encouraging. A previous poster in this thread suggested that the way mod_python works is to have multiple Python interpreters running under mod_python with defined names that apps can bind to in some way. mod_ruby lacks that.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-10T21:09:00+00:00">January 10, 2008 at 9:09 pm</time></p>
      <p>By the way, I'm now knee-deep in writing a quick "proof of concept" of some of the ideas raised earlier in these comments. It's jokingly called RBoss so far ;-) If I can get it to successfully act as an app server for a few apps without concurrency issues, I'll post some updates.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-10T21:12:00+00:00">January 10, 2008 at 9:12 pm</time></p>
      <p>@Aaron: Wow, you're right! Just looked into it.. LiteSpeed are now on my taboo list and are unlikely to get any further mentions in RI posts (although they haven't had any so far anyway, due to alternative solutions being so much better). Thanks for the pointer!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tim Moore</strong> &middot; <time datetime="2008-01-10T21:16:00+00:00">January 10, 2008 at 9:16 pm</time></p>
      <p>@Peter</p><p>Dreamhost doesn't support Java either. Java has many of the same issues, so using JRuby for everything won't solve this particular problem (as Paul Barry already pointed out).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Finn Higgins</strong> &middot; <time datetime="2008-01-10T21:17:00+00:00">January 10, 2008 at 9:17 pm</time></p>
      <p>Sam's got a point in that LiteSpeed seem to have figured out a solution that actually works for Rails inside their server infrastructure, in that they provide a suitable persistent interface and Ruby code that works to integrate Rails with it.</p><p>Surely that would be the logical way forward for Apache?  Rather than trying to run Ruby inside the browser instead provide an Apache module that interfaces to Ruby processes cleanly?  At the moment you can have fastcgi (which is a horrible interface) or you can merely proxy the request to a pure-Ruby web server.  </p><p>The problem with mod_proxy_balancer and Mongrel is (as Gen Du points out) that you're essentially parsing the HTTP request twice: Apache parses it, sees if it can serve static content and then forwards it to Mongrel if it can't.  Mongrel then parses the request again and passes the results into Rails / Merb / whatever.</p><p>We would perhaps be better served by a module that just handled inter-process communication with Ruby processes on top of Rack, or something similar.  Rack provides web server abstraction, after all - so why not just work on interfacing at that level?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Finn Higgins</strong> &middot; <time datetime="2008-01-10T21:21:00+00:00">January 10, 2008 at 9:21 pm</time></p>
      <p>I obviously need a coffee.  "Run ruby inside the browser"?  What on earth am I talking about.  Inside the web server, duh.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sam Freiberg</strong> &middot; <time datetime="2008-01-10T21:25:00+00:00">January 10, 2008 at 9:25 pm</time></p>
      <p>@Peter: LiteSpeed has a free version of it's product. My company ran the free version for several years, easily handling hundreds of thousands of visitors a day. The free version will support a web site up to around a million hits a day. I agree it's not for everybody but people that are getting that many hits can afford to spend a little bit on a web server. Also, LiteSpeed is at least twice as fast as Apache in my personal tests so a hosting company could easily justify the cost by cramming more people onto a single server. At least one hosting company has already switched.</p><p>As far as open source goes I guess I'm just pragmatic. I just want to run my apps without jumping through a million hoops and LiteSpeed lets me do that. For free even. And it does it in a way that is much easier to manage and more reliably than Apache + anything else.</p><p>I guess my point is this. There are solutions out there for easy Rails deployments and they are free and simple. I understand a company like DreamHost can't wholesale replace it's web servers with a new one, but if they are going to support Rails and really want to then they need to look at other options or create their own option, instead of complaining that people that make a framework should be doing it for them.</p><p>Frankly I don't see LiteSpeed as a boutique solution. If they didn't have a very usable free version then I'd agree with you but you can do a LOT with their free version and I'm really surprised that more people don't take advantage of it.</p><p>I'm not a wealthy consultant and all my Rails websites run under the free version of LiteSpeed. I've also turned several developers onto it and they are very glad to have an easy to use, free way to deploy Rails apps. And everybody I've talked to is really happy to be free of Apache and it's horrible configuration.</p><p>And of course I'd love to have more options for Rails deployments. Choice is always good. But for now I'm perfectly happy with my current choice. I don't have any of them problems that DreamHost and others are complaining about.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>planetmcd</strong> &middot; <time datetime="2008-01-10T21:27:00+00:00">January 10, 2008 at 9:27 pm</time></p>
      <p>@Peter,<br>
It seems that if django/Python could do it, so could Ruby.  The caveat there is that might not easily include rails as rails requires multiple application servers.  I've scanned some Django docs and it seems to indicate it is multi threaded (or can be, it is an option).  </p><p>On the Django approach:<br>
<a href="http://www.djangobook.com/en/1.0/chapter20/" rel="nofollow">http://www.djangobook.com/en/1.0/chapter20/</a><br>
<a href="http://www.onlamp.com/pub/a/python/2003/10/02/mod_python.html" rel="nofollow">http://www.onlamp.com/pub/a/python/2003/10/02/mod_python.html</a></p><p>Shared hosting might be an area where another web application framework like MERB can gain real traction.</p><p>Also, regards you Jruby comment, I think it may be prescient (especially since I agree) but the solution does not address the shared host niche.</p><p>Has anyone tried symfony or such.  Perhaps they are dogs in shared hosting too?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>warren</strong> &middot; <time datetime="2008-01-10T21:34:00+00:00">January 10, 2008 at 9:34 pm</time></p>
      <p>Finn, I was just having a similar thought. Apache 2.x has mod_proxy_ajp, which talks to Tomcat using the Apache JServ Protocol. </p><p>This kind of approach could be a stepping off point for better Apache/Mongrel integration perhaps? An apache module that would essentially obviate the need for mongrel_cluster, and could spawn more mongrels on demand?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-10T22:11:00+00:00">January 10, 2008 at 10:11 pm</time></p>
      <p>@Sam: The problems I see with the free version are the 5 virtual host limitation, no chrooting, no mod_security, and it appears to be bound to one processor (core?). I'm not particularly demanding, but those are all things Apache covers well. On a more moral level, Litespeed's attitude to censorship and revoking licenses of people just because they host some porn is pretty disgraceful, IMHO. Of course, if Litespeed works for someone, they should use it :) But Litespeed might have a limited free as in beer system, but free as in speech it ain't.</p><p><em>There are solutions out there for easy Rails deployments and they are free and simple.</em></p><p>I'll agree it might be reasonably simple to someone experienced to setting up Rails stacks to go the Litespeed + LSAPI route, but it's not simple in the sense that it needs to be simple for, say, a regular webmaster who's used to rolling out PHP apps. That's how simple it needs to be.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sam Freiberg</strong> &middot; <time datetime="2008-01-10T22:52:00+00:00">January 10, 2008 at 10:52 pm</time></p>
      <p>@Peter: I haven't seen too many people say that not allowing someone to host porn with their servers is disgraceful, usually it's the other way around :), but we all have to stick to our principles so I certainly respect that. And I completely agree with you on setting up Rails in general. Compiling in all that native code is a nightmare. And PHP was exactly the same way when I first started fiddling with it 10 years ago. Ultimately though that seems to be something that the Linux/BSD/Solaris distros have fixed. Not Zend. And while I wouldn't expect a regular Joe Blow to be able to do it I would expect that a Webmaster would be able to. But I might expect too much.</p><p>Just a couple of corrections on the free version of LiteSpeed. That 5 virt host limit only applies to using Apache's httpd.conf. If you set up vhosts inside the LiteSpeed control panel you can set up an unlimited amount. I'm not sure why they make this distinction because it seems a little silly to me, but I use the LiteSpeed control panel so it's a nonissue for me. And the one processor only applies to static requests so any Rails requests will use all available processors. As for mod_security and chrooting I just don't see that many people using them. LiteSpeed allows you to run dynamic apps as the user that owns the web direcctory and that generally seems to what most people are looking for.</p><p>It seems like at the very least the open source world should strive for something as simple and powerful as LiteSpeed. If they can do that and keep the speed I'll be all for it. And I can't wait for the day that I don't have to compile all that native code on my own. It's a pain in the arse.</p><p>Love the blog by the way. Especially the interesting Ruby tidbits that don't seen separate posts. Great stuff!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Bigg</strong> &middot; <time datetime="2008-01-10T22:53:00+00:00">January 10, 2008 at 10:53 pm</time></p>
      <p>Even if we did make this new module, or upgrade the existing mod_ruby so that it actually worked, how long would it take for webhosting companies to adopt it? Months? Years?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan A.</strong> &middot; <time datetime="2008-01-10T22:54:00+00:00">January 10, 2008 at 10:54 pm</time></p>
      <p>Shared hosting is on its way out, progressive hosting companies like MediaTemple realise this and have responded appropriately.</p><p>Having a large number of mongrels running isn't Ruby's fault, it's Rails' fault. There are other Ruby web app frameworks that work perfectly well threaded in a single process (per CPU), and soon we'll have a nice native thread VM so we'll only need to run one process regardless how many CPUs there are.</p><p>I'm not saying this as an argument as to why we wouldn't need a mod_ruby, but companies like Dreamhost complaining they can't monetise RoR coz their environment sucks balls (to say the least - everyone I know has had nothing but trouble with their sub-par service) is their own damn fault.</p><p>Dreamhost should keep up with the times, get virtualisation solutions off the ground or stay with their existing markets.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dr Nic</strong> &middot; <time datetime="2008-01-10T23:05:00+00:00">January 10, 2008 at 11:05 pm</time></p>
      <p>The Deprec project (<a href="http://deprec.org" rel="nofollow">http://deprec.org</a>) makes setup+deployment of rails apps onto $20 slicehost accounts so easy that it reduces enough pain to stop looking for alternate solutions, for me.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kirk Haines</strong> &middot; <time datetime="2008-01-10T23:14:00+00:00">January 10, 2008 at 11:14 pm</time></p>
      <p>Consider Swiftiply for deployment.  It's not aimed at making Ruby like PHP, but it is being designed and built in order to create a deployment system that is performant and simple to use.</p><p>As of 0.6.3 (the prerelease of which is, as of this afternoon, running about 15 production sites), it is faster at static file handling than Apache, faster at proxying than Apache, supports ssl and x-sendfile, and requires very little configuration (I add three lines to a config file to turn on a new app cluster of any size).</p><p>It also solves the problems of shared host deployment with Mongrel (or other app containers) nicely, as well.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-10T23:39:00+00:00">January 10, 2008 at 11:39 pm</time></p>
      <p>Can I take it that the consensus here is along the lines of.. PHP's deployment method is outdated and insecure and there are enough solutions for Ruby / Rails already?</p><p>If so, I think we have problems. Dreamhost is at least highlighting a problem from a mass market point of view, even if the way it's framed is flawed. From a technical point of view we're certainly able to come up with acceptable niche solutions, but I don't think these are satisfactory for mass market and beginner use, and I feel Ruby will, and does, suffer because of this.</p><p>@Sam: Some people don't think it's okay for others to censor and impose their morals upon them. Can you imagine how hideous it'd be if all vendors made various moral demands in their licenses? Free speech is something worth maintaining.</p><p>@Kirk: Swiftiply is a great system. One issue I have with it, however, is that I believe it maintains connections with the backend servers. That's great for many cases and great for speed, but I'd like it to handle all the port allocation for me, kill processes that aren't being used for a certain period of time (little used apps, say), and restart apps that suddenly come under demand. I'm guessing these features are probably a bit off of Swiftiply's core ethos to be acceptable patches? :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kirk Haines</strong> &middot; <time datetime="2008-01-10T23:41:00+00:00">January 10, 2008 at 11:41 pm</time></p>
      <p>@Peter, actually, most of that is in the feature set description for 0.7.0.....</p><p>It will monitor cluster health, allow for dynamically resizing the cluster, etc...<br>
With an API for writing external tools to interface to this information and capabilities.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>CptOatmeal</strong> &middot; <time datetime="2008-01-10T23:42:00+00:00">January 10, 2008 at 11:42 pm</time></p>
      <p>As we've been discussing, I've been looking over Rack and several docs on Apache modules.  While it hasn't been done, I'm sure it's possible to create a mod_ruby (or, in this case, mod_rack) that provides decent performance for ruby apps.  I can't be sure if this will work for Rails, due to it's lack of thread support, but for the other frameworks (Merb, Ramaze, etc.) it should be possible to cook something up.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>warren</strong> &middot; <time datetime="2008-01-11T00:27:00+00:00">January 11, 2008 at 12:27 am</time></p>
      <p>@CptOatmeal:</p><p>unfortunately, any mod_rack implementation is going to be limited by the same issue that limits mod_ruby, namely that you can only have one interpreter per process using 1.8. </p><p>You would need to impose the restriction of a single application to ensure they don't tread on each other's class level config attributes AND require the use of the apache prefork MPM since MRI isn't thread-safe.</p><p>It's a good idea though. Maybe you could target 1.9/2.0 ? or even Rubinius? (The latter might be a ways off yet...)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gen Du</strong> &middot; <time datetime="2008-01-11T00:52:00+00:00">January 11, 2008 at 12:52 am</time></p>
      <p>&gt; soon we'll have a nice native thread VM so we'll only need to run one process regardless how many CPUs there are.</p><p>No. This is totally wrong. The Ruby 1.9 GIL prevents it (Python has the same problem).</p><p>Repeat after me: the only way to run Ruby on multiple CPUs is to use multiple interpreter processes.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alastair</strong> &middot; <time datetime="2008-01-11T01:38:00+00:00">January 11, 2008 at 1:38 am</time></p>
      <p>@Peter and Aaron dismissing LiteSpeed because of a EULA that doesn't allow porn would be fine if we weren't talking about shared hosting. Name a single shared host that doesn't have a EULA.</p><p>I've tried all kinds of deployments and hosts, and Litespeed is so much easier and less time consuming it's not even funny. I have two servers on SliceHost running Litespeed, one has five Rails apps on it right now and it hums along at between 2-15mb RAM usage max.</p><p>PS a private company who put out a product with a EULA is not restricting free speech, they're private it's their creation accept the license or not - I'm guessing you'll choose not :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brian Ketelsen</strong> &middot; <time datetime="2008-01-11T02:30:00+00:00">January 11, 2008 at 2:30 am</time></p>
      <p>@Kirk - where's the 0.6.3 release?  I only see 0.6.1 on the site, and that's what gems serve me as well.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chad J</strong> &middot; <time datetime="2008-01-11T02:48:00+00:00">January 11, 2008 at 2:48 am</time></p>
      <p>For anyone wondering what a GIL is (Global Interpreter Lock) take a look at this post :</p><p><a href="http://www.infoq.com/news/2007/05/ruby-threading-futures" rel="nofollow">http://www.infoq.com/news/2007/05/ruby-threading-futures</a></p><p>The GIL effectively eliminates the "thread safe" benefits of a framework like Merb.  A single Ruby process (1.8 or 1.9) is only ever serving up 1 request at a time.</p><p>More importantly this isn't as large of an issue as you would think.  Most people running Apache 2 are still using the Prefork MPM.  If you aren't sure what an MPM is then you're certainly using the Prefork variety.  What does that mean?  To sum it up quickly one parent Apache (httpd) process spawns child httpd process to handle incoming web requests.  Each one of these child processes handle requests serially (i.e. one at a time).  So a mod_ruby that isn't truly "thread safe" doesn't matter one bit.  Atleast in the Prefork MPM world.</p><p>To be honest with you though, I don't believe mod_ruby is the route to take for the shared hosting world.  Why?  For the exact same reason the shared hosters are moving (moved?) away from mod_php.  Your web application has zero security if it is running under the same 'nix user account as 500 other applications (including the web server).  See this article for more details :</p><p><a href="http://hostingfu.com/article/running-php-on-shared-hosting" rel="nofollow">http://hostingfu.com/article/running-php-on-shared-hosting</a></p><p>What is the answer then?  Personally, I think a more stable Fast CGI is what Rails / Ruby needs.  Today, right now, Fast CGI can start and stop Ruby Dispatcher processes as web traffic demands.  It can kill off unneeded processes after a traffic spike hits.  These processes stay resident in memory between requests so there's no excessive class loading time.  These processes can be initiated through suExec, meaning each daemonized dispatcher can run as the *nix user of the shared account owner.  Some, unofficial, benchmark show that FCGI is Faster than the Mongrel approach :</p><p><a href="http://blog.kovyrin.net/2006/08/28/ruby-performance-results/" rel="nofollow">http://blog.kovyrin.net/2006/08/28/ruby-performance-results/</a></p><p>Why isn't FCGI more widely used?  Read this post for a great summary :</p><p><a href="http://www.vmunix.com/mark/blog/archives/2006/01/02/fastcgi-scgi-and-apache-background-and-future/" rel="nofollow">http://www.vmunix.com/mark/blog/archives/2006/01/02/fastcgi-scgi-and-apache-background-and-future/</a></p><p>Or perhaps take a look the Fast CGI "announcement" mailing list for the years of 2004, 2005, and 2006 :</p><p><a href="http://fastcgi.com/archives/fastcgi-announce/" rel="nofollow">http://fastcgi.com/archives/fastcgi-announce/</a></p><p>Is there no hope?  Well as a few posters in the comments here mentioned, "mod_fcgid" (note the "d" at the end) appears to have solved many of mod_fcgi's failings.  So there might be a future answer there:</p><p><a href="http://fastcgi.coremail.cn/" rel="nofollow">http://fastcgi.coremail.cn/</a><br>
<a href="http://sourceforge.net/projects/mod-fcgid/" rel="nofollow">http://sourceforge.net/projects/mod-fcgid/</a></p><p>Another FCGI implementation called "mod_proxy_fcgi" appeared on the scene a year or two ago but development appears to have stopped.</p><p>The Fast CGI landscape of today does seem bleak but hopefully a polished solution will emerge soon.</p><p>That's all!</p><p>-Chad Johnson</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Arron</strong> &middot; <time datetime="2008-01-11T03:02:00+00:00">January 11, 2008 at 3:02 am</time></p>
      <p>@Alastair: it's a problem if your shared host, like DreamHost, allows "adult" content.</p><p>What do they do?</p><p>"Adult / pornographic sites are allowed ONLY if they're not hosted as a Ruby on Rails application" -- ?!</p><p>There's a very good reason most people don't mix technology and politics, religion, etc. This is one of them.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>planetmcd</strong> &middot; <time datetime="2008-01-11T03:46:00+00:00">January 11, 2008 at 3:46 am</time></p>
      <p>No one is disputing that Lightspeed may be an excellent approach for deploying rails applications on a standalone server or vps.  Because of its proprietary nature, and its content based restrictions, it is not a good solution for shared hosting.  Hosts do not want/need to be in the business of policing their clients content.  I don't want hosts in my content.  Deal Breaker.  End of story.</p><p>If you want to discuss lightspeed and its under appreciated stature in the Rails community, go post about it.  Its not relevant to this topic beyond how it may technically implement rails applications.  That may indeed be quite useful.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-11T03:58:00+00:00">January 11, 2008 at 3:58 am</time></p>
      <p>@Chad J: Smashing comment! Lots of helpful stuff in there.</p><p>In other news, my 6 hours of hacking on my "RBoss" application server has worked out very well. I now have a Ruby application server that can maintain any number of sub-applications based upon different systems (I'm only testing with Rails apps and self-written WEBrick daemon so far). I can set individuals timeouts on apps, so my WEBrick driven app will only live for, say, 20 seconds after the last request made to it, and the Rails one could live for, say, 5 minutes. All seems to work okay so far, and no nasty blocking issues.</p><p>Still quite a bit to do, but the initial tests on "real world" applications are encouraging! It's not going to be as fast or robust as Swiftiply I imagine, as it's really just a proof of concept.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-11T04:08:00+00:00">January 11, 2008 at 4:08 am</time></p>
      <p>@Alastair: Of course hosts have EULAs, but those EULAs typically do not cross the line of preventing legal free speech. If a host wants to enforce it so that you cannot host kiddy porn, credit card numbers, or whatever, that's fine, since they're illegal and nearly universally immoral. LiteSpeed, however, wants to enforce some bizarre religious-driven (no doubt) morality on its users. That's fine if you agree with their moral stance, but if you don't, you shouldn't use or promote their products, so I won't.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-11T04:11:00+00:00">January 11, 2008 at 4:11 am</time></p>
      <p>@Alastair: <em>PS a private company who put out a product with a EULA is not restricting free speech, they're private it's their creation accept the license or not - I'm guessing you'll choose not :)</em></p><p>You're confusing the constitutional right to free speech with the personal preference for free speech. Sure, you don't have a constitutional right to free speech on private property or when using things provided by a private company, but you can sure make judgments upon companies for not allowing free speech generally. Indeed, there's a constant debate raging on about major companies assisting the Chinese government in online censorship.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-11T05:02:00+00:00">January 11, 2008 at 5:02 am</time></p>
      <p>RBoss is now spawning and reaping processes reliably. Just need to come up with a new name for it so not to violate JBoss' trademark ;-) And, no, not RomCat. Rucat maybe..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>IronRuby</strong> &middot; <time datetime="2008-01-11T05:08:00+00:00">January 11, 2008 at 5:08 am</time></p>
      <p>Hi,</p><p>I am happy that finally the discussion for easy deployment has started. I am going to cover many details of deployment on my blog soon.</p><p>Meantime... let me point out few important things which will take take a new shape in near future. I am discussing... Ironruby as a solution of deployment and the classic Ruby disadvantages that will arise later on.</p><p>IronRuby is based on DLR... and hence shall run smoothly on Windows IIS platform. Deployment is damneasy.. Just i click installation. PHP community were knocking the Microsoft DLR door since long and finally Microsoft along with Zend created a FastCGI specially to run  PHP on IIS-7 as easily as apache. They have also introduced drivers for easy implementation of SQL 2005 in PHP.</p><p>PHP community has best of both the worlds. They can run the website on Apache and Windows with Mysql and SQl 2005, with 1 click rule.</p><p>IronRuby shall offer the same advantage of Ruby deployment on IIS in a very easy manner like asp.net. IronRuby shall have MySql and Sql 2005 support.</p><p>The interesting topic starts now... IronRuby shall offer 2 different MVC for Ruby community. (1) Original Ruby on Rails and (2) Asp.Net MVC based on the same concept. The advantages are endless for IronRuby developers, and Windows hosting companies.</p><p>Windows Hosting companies shall offer best of both the world, with IIS and fastCGI support. BUT&gt;&gt;&gt;&gt; this will kill the charm of Classic Ruby and Ruby on rails, PLUS.... Apache shall lose the ground as it cannot offer best of both the worlds.</p><p>Majority Ruby developers will shift to IronRuby for (1) Easy Deployment (2) huge .Net  Framework support with Asp.Net and (3) Powerful inbuilt FastCGI support with MySql and Sql 2005/2008 as options.</p><p>Ruby community has to think  and act sooner on making deployment as easy as PHP. I have hardly seen any Forums, Blogs, CMS based on Classic Ruby and all thats due to deployment.</p><p>I am totally in support with Cooper and wish this thread best of success in achieving the goal as soon as possible. I want Ruby where it should be. No.1 position.</p><p>Parag Kantharia<br>
(IronRuby )</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ben</strong> &middot; <time datetime="2008-01-11T05:50:00+00:00">January 11, 2008 at 5:50 am</time></p>
      <p>@Dr. Nic - deprec is a great idea but it doesn't seem capable of keeping up.  I've deployed 5 slices in 2 months and have had to hack the guts of deprec every time (apache changed their urls, cap problems, rails 2.0 problems, latest gem version problems).   </p><p>If they can get it consistently stable then it's definitely the way to go.  Once you get it working it's great.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kirk Haines</strong> &middot; <time datetime="2008-01-11T06:34:00+00:00">January 11, 2008 at 6:34 am</time></p>
      <p>@brian, I'm running the prerelease of 0.6.3 on one of my servers.  I finished tests for the x-sendfile support today, then flipped the switch.  I'm letting it run for about a day to make sure there's nothing strange that forces me to roll back, and then I'll push it to the site and rubyforge.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>remi</strong> &middot; <time datetime="2008-01-11T06:35:00+00:00">January 11, 2008 at 6:35 am</time></p>
      <p>@topfunky (not that you'll ever see it with all these posts ...) re: rack</p><p>I'm with you, 100%, regarding rack.</p><p>I've been doing a lot of eruby[.cgi] / mod_ruby lately.  I don't need full Rails/Merb or even Camping sized apps ... mostly just lots of rendering templates to static files, with some of them not being static (so I don't use webgen or staticmatic ... as well as for some other reasons).</p><p>*Instead* of building my apps directly as .rhtml scripts, I actually write them *as Rack apps.*  This makes them easy to *test* and *deploy.*  Things are running OK on these low traffic sites using regular old CGI ... but, if one of the sites starts getting loads of traffic ... I can set it up on mongrel/thin behind apache/nginx ... or I can run it as FastCGI.  No problem!  Cause it's Rack!!!</p><p>i</p>
    </li>
      <li>
      <p class="comment-meta"><strong>remi</strong> &middot; <time datetime="2008-01-11T06:37:00+00:00">January 11, 2008 at 6:37 am</time></p>
      <p>^ mine got cut off!  :(</p><p>summary:</p><p>i love rack!</p><p>( just #call it! )</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeff S</strong> &middot; <time datetime="2008-01-11T07:32:00+00:00">January 11, 2008 at 7:32 am</time></p>
      <p>Guys have you tried out <a href="http://heroku.com/" rel="nofollow">http://heroku.com/</a>.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dennis</strong> &middot; <time datetime="2008-01-11T09:22:00+00:00">January 11, 2008 at 9:22 am</time></p>
      <p>I'm currently using hostingrails.com as my hosting company, and they have FCGI/Mongrel solution on a shared server.  My sites have had no problems (hosting 4 seperate apps/domains on one account), they're really cheap and supportive.  True, you have to ask them to provision a few things, such as enabling mongrel, but they are quite quick about it.  While I agree it would be great to deploy Rails as easily as deploying PHP, it isn't that much more difficult with hostingrails: upload, kill fcgi processes, or in the case of mongrel: upload, restart mongrel processes.  The initial hit is sending email to support to enable mongrel and wait an hour.  So, yeah, if a hosting company really wants to host rails apps, they can do it well if they care to, and it can be a pleasant experience...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Neil Wilson</strong> &middot; <time datetime="2008-01-11T09:23:00+00:00">January 11, 2008 at 9:23 am</time></p>
      <p>Can somebody tell me why we're comparing Ruby to the deployment facilities of PHP (a simple scripting language) and not the fun and games required by Java deployment?</p><p>It is actually relatively straightforward to have multiple apps on a single server. You just need to exploit the long-standing Unix ability to have multiple users. Mongrels then run in user space on allocated ports and the front end web host proxies to it.</p><p>What you can't do is take a PHP shared host design and expect it to accommodate Rails. Rails deploys more like a Java app than a PHP one.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Neil Wilson</strong> &middot; <time datetime="2008-01-11T10:21:00+00:00">January 11, 2008 at 10:21 am</time></p>
      <p>Can somebody explain to me why people are so obsessed with getting threading working for Ruby. Everything has to be 'thread safe'. That sounds to me just like people saying five years ago 'everything has to be compiled so you can check type safety' - and we know that is baloney.</p><p>Fundamentally processes were invented to separate concerns. Now that machines are faster and have bigger memories there is no need to stick everything in the same memory space and reinvent memory separation for the fifty millionth time.</p><p>What we *do* need is for Ruby and the framework tools to work with the operating system to allow it to work effectively - particularly allowing 'Copy on write' to work properly. (Although with memory so cheap these days that is getting less and less of an issue).</p><p>Remember that Java and PHP models of shared hosts are based upon restrictions in place when the technology was invented. You need to understand whether those restrictions still apply before shoehorning Ruby programs into the same straitjacket.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>EmmanuelOga</strong> &middot; <time datetime="2008-01-11T12:44:00+00:00">January 11, 2008 at 12:44 pm</time></p>
      <p>Ok, I'm interpreting this post comments as a brainstorming session... </p><p>Here's my crazy idea. </p><p>Get someone who could port ruby to neko, then use mod_neko :)</p><p><a href="http://nekovm.org/faq#how_is_neko_different_from_php_perl_python_ruby_javascript" rel="nofollow">http://nekovm.org/faq#how_is_neko_different_from_php_perl_python_ruby_javascript</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chad J</strong> &middot; <time datetime="2008-01-11T13:12:00+00:00">January 11, 2008 at 1:12 pm</time></p>
      <p>Neil,<br>
  I don't think that most people here are all that interested in fixing Ruby's threading model.  Unless something cataclysmic happens in the near future the clear and obvious way to gain concurrency with Ruby is multi-processes and NOT multi-threads.</p><p>  Fortunately for us, processes are cheap on *nix!  </p><p>-Chad Johnson</p>
    </li>
      <li>
      <p class="comment-meta"><strong>planetmcd</strong> &middot; <time datetime="2008-01-11T14:16:00+00:00">January 11, 2008 at 2:16 pm</time></p>
      <p>@Neil,<br>
Threading is relevant in two important fashins.<br>
1st, as I understand it, Ruby cannot run across cores in a multicore cpu.  While not the end of days perhaps, it is limiting.</p><p>2nd, as I understand it, Rails developers chose to ignore threads and so 1 rails instance can handle 1 request at a time.  If 1 request takes a long time, other requests queue up behind and this can cause a delay.  To get around this, you need to set up multiple application instances and proxy to them and have something manage the connections to the cluster efficiently.  This is something that Tomcat/Servelt containers take care of for servlet applications and thus its advantage in this case.</p><p>@Peter, Way to go!  I can't wait to see it, even if its proof of concept.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>RJ</strong> &middot; <time datetime="2008-01-11T17:37:00+00:00">January 11, 2008 at 5:37 pm</time></p>
      <p>@IronRuby</p><p>Come on...the majority of Ruby developers are not going to flock to Microsoft.  Why am I going to pay $670 for a license of Windows Server Dijour to host my apps on?</p><p>Ruby on the DLR is great and may allow some of us that work in a .Net only shop at our day jobs to introduce ruby to a larger, more enterprisey office.  I think the numbers you'll see in adoption of IronRuby will be C# and VB coders making a switch.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brandon</strong> &middot; <time datetime="2008-01-11T18:52:00+00:00">January 11, 2008 at 6:52 pm</time></p>
      <p>@Sam: this is not pointless just because LiteSpeed exists.   It would be very useful to have a mod_ruby available.  Just because Litespeed is better than Apache doesn't mean mod_ruby wouldn't be useful.</p><p>@Peter:  Litespeed is on your taboo list because they don't allow PORN!?   You've got to be kidding me.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-11T19:14:00+00:00">January 11, 2008 at 7:14 pm</time></p>
      <p>@Brandon: I don't get why it's such a shocker that I can't support a company that blocks its products from being used for legal uses. Even Microsoft rarely stoops to such levels. If you let vendors get away with stuff like that, more will want to try it and you'll soon be looking for a whole stack whose software all agrees on whatever type of content it is you wish to host. Most companies, however, are wisely focused on making money, not pushing 19th century social mores down their customers' throats.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sam Freiberg</strong> &middot; <time datetime="2008-01-11T19:39:00+00:00">January 11, 2008 at 7:39 pm</time></p>
      <p>@Brandon: I couldn't agree more. I welcome a simple, fast and elegant way to run Rails outsides of LiteSpeed. Preferrably with Apache since it has such a huge market share and I've been using it for 10 years. My point with my original post was simply to point out that I'm tired of people saying there's no good way to host Rails apps when I know there is. I've been hosting Rails apps on LiteSpeed for 2 years now and it's solid as a rock. Not to mention it's configuration file and web gui combined with templates are a breath of fresh air compared to the nightmare that is Apache.</p><p>Now if you are like Peter and have a moral problem with LiteSpeed that's fine, but people should be at least acknowledging that a great solution exists today. If they choose not to use it then that's certainly their choice and I respect it. And if the open source world wants something to strive for it should definitely look at LiteSpeed.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Csaba</strong> &middot; <time datetime="2008-01-11T20:28:00+00:00">January 11, 2008 at 8:28 pm</time></p>
      <p>Hi all,</p><p>Surprise, surprise….</p><p>To summerize: Joe Doe Webmaster can with the bad PHP5 (even without using a framework), and could even with the really bad PHP 4 (which even lacks object) manage about 99% of all web sites easily. While the Alpha Geek with the extremely powerful and easy to use and understand Ruby, with or without Rails, is limited to target large web applications; a tiny part of all web sites needs. </p><p>Hmmm …Do I really understand this? Ruby and RoR is unsuitable for small and moderate complex web applications? It is easier done with PHP? The Alpha Geeks have certainly been able to promote the wrong answer (RoR) to the right need (simple and moderate complex web applications)! And I understand why  so few are hosting RoR – there is no market!</p><p>Why can’t Ruby (with or without a framework, not necessarily Rails) be used to solve those 99% needs of all web applications, for instance this site? (I know NOTHING about web application development, I write control and measurement applications.)  Why is it so hard to do it with plain Ruby since it is possible to do it with plain PHP5 and even PHP4? Is just mod_PHP the reason? Does not any of all those “tiny” Ruby frameworks that pop up everywhere address this need? What is missing besides a deployment tool for RoR web applications? This is strange, since a deployment application does not even have to be fast (the major drawback with Ruby as I have understood it). Until this is solved, Ruby and RoR are certainly very over hyped for web applications! And PHP will rule…</p><p>I have just read “Learn to program” by Pine, a very joyful experience, but I will now not look at another Ruby book or buy one until there is a book describing how Ruby is better than PHP to create simple and moderate complicated web applications. Sorry Peter, or see it as a hint: I will be the first one to by the second edition of your book if you include information how to write a simple and moderate complex web application! Such a book should be a larger success than any other Ruby or RoR book!</p><p>Regards<br>
Csaba</p>
    </li>
      <li>
      <p class="comment-meta"><strong>zerohalo</strong> &middot; <time datetime="2008-01-11T20:43:00+00:00">January 11, 2008 at 8:43 pm</time></p>
      <p>It's wonderful to see this getting some serious discussion. Thanks, Peter. I completely support your thinking.--The easier it is to deploy Ruby (and Rails) apps, the wider adoption will see of the language/platform. Currently, I see it as one of the biggest barriers to adoption. People get excited that they can create a good app in less time, but when they go to deploy it, they find that they lost all that time they gained, and the experience is soured. (I'm painting with a wide brush, of course.) They have to experience the joys of deployment if they want to truly benefit from the joys of development.<br>
I use mongrel + apache 2.2 and it's not that difficult, and fairly stable; but compared to serving up a PHP app, it's still complicated (thank God+*** for ******* though, or I'd really be in pain). And it only became easy when my company upgraded their servers to apache 2.x. Deploying on apache 1.x was the pits (especially if you want to run multiple rails apps on the same domain--ie, if you have several apps that talk to each other, or you have a cms, forum and blog all on the same domain and you want to keep them as separate apps rather than mashing them all together). The fact is, those creating the apps don't always have a choice of platform on which to deploy them, and if the company is using Apache, they may not allow you to install Litespeed or Ngnix or even a different version of Apache, just to get your Rails app working. This is especially true if on top of it you're trying to break new ground by bringing Rails into an environment dominated by PHP.<br>
I'm too ignorant of web server technologies to offer any smart solutions, but I want to add my voice to those who welcome any efforts to simplify the process. Thank you in advance for your efforts!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-11T20:57:00+00:00">January 11, 2008 at 8:57 pm</time></p>
      <p>@Csaba: My book is a language-focused book for people learning Ruby as a language, so going into depth on developing Web applications is not relevant. That's the topic covered by many other good books, such as Practical Rails Social Networking Sites by Alan Bradburne.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ericson Smith</strong> &middot; <time datetime="2008-01-11T23:49:00+00:00">January 11, 2008 at 11:49 pm</time></p>
      <p>We run <a href="http://www.funadvice.com" rel="nofollow">http://www.funadvice.com</a></p><p>A pretty large advice site getting hundreds of thousands of requests per day. We started with Apache + FCGI, then moved on to Apache + Mongrel, then made the plunge to Litespeed. It has been night and day as far as deployment is concerned.</p><p>Let me be first to say. We make money with our website. $699 per year is a no-brainer for us, because we (more accurately, I) can sleep at night without worrying if my pack of mongrels are still up, or monit is doing its job.</p><p>I also use the free version of litespeed on another server to run around 15 rails websites. All those together get around 100,000 requests per day.</p><p>Sure, I don't like the porn thing on the free version of Litespeed. Who would? But the benefits outweigh that. Life (and technology) is about trade-offs.</p><p>So in my book, deployment of rails is a SOLVED problem. All Litespeed needs now is free open-source competition.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-12T00:02:00+00:00">January 12, 2008 at 12:02 am</time></p>
      <p>Rails deployment <em>is</em> a solved problem. It's not a case of whether it's possible, however, but how easy it is, and the ease of deployment and number of easy options overall is still a significant complaint.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kirk Haines</strong> &middot; <time datetime="2008-01-12T01:23:00+00:00">January 12, 2008 at 1:23 am</time></p>
      <p>@csaba, a large part of my business for almost 6 years (it'll be 6 in April) has been small to medium sized dynamic web sites for businesses (lots of mutual funds, in particular), using Ruby.</p><p>The funny thing here with all of this talk about deployment is that it has never been that hard for me.  The majority of my sites over the years have been deployed through Apache using mod_proxy.</p><p>No, not mod_proxy_balancer.  Plain old mod_proxy.  If you know Apache and mod_proxy, you know that implies a single backend process.</p><p>And that works extremely well.  I really don't understand the aversion people have to deploying on a single process.  Is Rails _really_ that slow/unstable, even after all this time?  Even my absolute slowest sites deployed on a single process on my slowest server could do over 20k page views per hour, and the fastest, on my fastest server (and, admittedly, running through Swiftiply and not Apache) could probably do nearly 4000k (i.e. four million) dynamic page views per hour on a single process.</p><p>So for all of those simple apps that aren't intended to be big, high traffic sites, why not deploy just to a single process using something simple like mod_proxy?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>remi</strong> &middot; <time datetime="2008-01-12T01:55:00+00:00">January 12, 2008 at 1:55 am</time></p>
      <p>@RJ<br>
&gt; Come on [...] Why am I going to pay $670 for a license of Windows Server Dijour to host my apps on?<br>
&gt; I think the numbers you'll see in adoption of IronRuby will be C# and VB coders making a switch.</p><p>I'm with you on this one.  I "flocked to ruby" from C#.  When I was still working at the .NET shop, I used ruby for sysadmin stuff but not for our web apps (save for some little intranet utilities).  After learning ruby, I moved some of our code to Boo.  If IronRuby were stable and I still working in .NET, I'd be *all over it*</p><p>But, even there, I didn't use VS ($$$) (tho we had enterprise licenses for all devs).  I used vim and did bits of coding in mono, tho all production code was on wonderfully expensive Windows IIS / SQL servers ($$$).</p><p>... nowadays, you couldn't pay me enough to go back to Windows / .NET development ...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brandon</strong> &middot; <time datetime="2008-01-12T02:35:00+00:00">January 12, 2008 at 2:35 am</time></p>
      <p>@Peter:<br>
you say "I don't get why it's such a shocker that I can't support a company that blocks its products from being used for legal uses. Even Microsoft rarely stoops to such levels. "</p><p>so you're saying that whatever is legal is okay?  If it's not illegal, then (in your view) it is by definition moral, right?</p><p>You're also implying that it's not okay for companies or individuals to choose to abstain from participating in or contributing to activities that they believe are immoral.  </p><p>You say "If you let vendors get away with stuff like that, more will want to try it and you'll soon be looking for a whole stack whose software all agrees on whatever type of content it is you wish to host."</p><p>Surely you don't think companies are just waiting to see how this goes for Litespeed and if no one punishes them for standing up for what they believe in, then suddenly everyone is going to be adding "no porn" clauses to their EULAs?   </p><p>You say "Most companies, however, are wisely focused on making money, not pushing 19th century social mores down their customers' throats."</p><p>So are newer social mores inherently better?  Why?</p><p>So the most important thing is to try to make money, no matter who is run over in the process?   Do you object to Fair Trade coffee, because if companies are allowed to treat their growers and workers well then pretty soon we'll be overrun with products from companies who aren't abusing enough people?  </p><p>I'm sure you can't believe all that.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-12T03:03:00+00:00">January 12, 2008 at 3:03 am</time></p>
      <p><em>so you're saying that whatever is legal is okay? If it's not illegal, then (in your view) it is by definition moral, right?</em></p><p>Whatever's legal is legal. The market has no conscience or morals. That doesn't necessarily mean <b>I</b> think everything legal is fine, but I don't go around stopping people from doing things I think are wrong.</p><p><em>Surely you don't think companies are just waiting to see how this goes for Litespeed and if no one punishes them for standing up for what they believe in, then suddenly everyone is going to be adding "no porn" clauses to their EULAs?</em></p><p>I don't think anyone's waiting on the results of a morality experiment by some random small business, but these are ideas that can spread. If another company sees what they're doing and is influenced by that, I don't think that's a good thing. What if their clause was "No African Americans can use our software" or "We won't provide support to female users"? That sort of negative discrimination is not to be encouraged, IMHO.</p><p><em>So the most important thing is to try to make money, no matter who is run over in the process? Do you object to Fair Trade coffee, because if companies are allowed to treat their growers and workers well then pretty soon we'll be overrun with products from companies who aren't abusing enough people?</em></p><p>I don't object to the market providing things that consumers want. That's it's job! If someone wants to pay for a "Web server" then host legal pornography with it, they're using what they've purchased for its intended purpose. Litespeed's attitude is like Apple making it a condition of the iPod that you can't listen to death metal, simply because Steve Jobs isn't too keen on it. Give me a break.</p><p>On the coffee deal, If everyone cares about coffee farmers and wants to pay for fair trade coffee, that's great! If everyone thinks coffee farmers deserve to be ripped off, and continue to buy regular coffee, that's fine too because clearly there's a market that has that belief.</p><p>..</p><p>Anyway, separate to the morality issue here, someone from their company posted on their forum about how pornography is worse than smoking and passive smoking, something that is far more statistically likely to harm your health. I'm not sure I could rely on or promote code written by people with such blindness to science and reason.. and that's not an issue of morality at all.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Arron</strong> &middot; <time datetime="2008-01-12T03:40:00+00:00">January 12, 2008 at 3:40 am</time></p>
      <p>A random thought:</p><p>What if instead of trying to provide a "built from the ground up" solution for shared hosts, we instead try to package existing solutions in a way that makes them "drop in" enhancements to most shared hosts?</p><p>What if there was a way to deploy, say, a version of switfiply that could grab / parse the httpd.conf information (or whatever shared hosts use to configure Apache), and then with one command be able to connect to Apache through mod_proxy or the host de jour is?</p><p>Lowering the cost of setting up a stable, reliable way to host shared Rails applications might work. As part of this deployment package you'd want some kind of autogen'd Capistrano recipe for new users to use...</p><p>I bet that came out pretty stupid -- if so, sorry. I'm a developer, not a sysadmin.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-12T03:45:00+00:00">January 12, 2008 at 3:45 am</time></p>
      <p>Actually, your ideas are reasonably close to the solution I'm pursuing, Arron. Dropping in enhancements to the existing Apache stack seems like the best solution to me so far.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ezra</strong> &middot; <time datetime="2008-01-12T08:32:00+00:00">January 12, 2008 at 8:32 am</time></p>
      <p>I'm just going to say that Rubinius has support(as of today!) for running multiple instances of it's VM within one process, each VM on it's own *native* thread, each VM running many ruby green threads. Each VM has it's own heap and so each VM could load different apps that wouldn't interfere with each other.  We have plans for a mod_rubinius for apache that takes full advantage of this feature. Stay tuned ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>AkitaOnRails</strong> &middot; <time datetime="2008-01-12T19:19:00+00:00">January 12, 2008 at 7:19 pm</time></p>
      <p>Correct if I missed something important. mod_ruby is quite stalled but last time Shugo updated it, it had a Apache::RailsDispatcher working for Rails 1.1. Is it usable? What are the reasons we can't use it today? I mean, if Apache runs in MPM prefork, Rails not being thread safe shouldn't be a huge problem as each child process would run in isolation, isn't it?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Joyce</strong> &middot; <time datetime="2008-01-13T02:21:00+00:00">January 13, 2008 at 2:21 am</time></p>
      <p>Rubinius soon please!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-13T02:24:00+00:00">January 13, 2008 at 2:24 am</time></p>
      <p>The Rubinius news is rather exciting. Looking forward to it!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Joyce</strong> &middot; <time datetime="2008-01-13T02:31:00+00:00">January 13, 2008 at 2:31 am</time></p>
      <p>But seriously, "damaging"? Come on Peter, that's a bit of a stretch...<br>
Ruby is every bit as viable as it's ever been if not more so than it used to be.<br>
PHP has serious money behind it for making it web centric.<br>
Ruby does not have that.<br>
That's what's lacking the most, big money behind Ruby development.<br>
Rails is nifty and all, but *** **** put well some of the bad points of Rails.<br>
As for DreamHost deployment, it's not a single upload-and-go, but it's not too bad actually.</p><p>But I do agree, we need some improvement in the area of mod_ruby.<br>
It needs to be able to run multiple ruby processes.<br>
Rubinius may be the key to it, maybe Ruby1.9.x will do it...</p><p>Where are the well-funded university research projects for this? Berkely...<br>
or how about Google... summer of code anyone?<br>
or, hey Apple? here's your chance to finally sell more of those Xserves... bundle a fast, multi-threaded ruby interpreter for the web server...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-13T02:34:00+00:00">January 13, 2008 at 2:34 am</time></p>
      <p>@John Joyce: I'd say having a significant number of developers turned off of using Ruby for Web applications due to deployment issues is "damaging." In any case, it reads better than "Why is deploying Ruby Web apps such a pain in the arse?" ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James Bennett</strong> &middot; <time datetime="2008-01-13T15:51:00+00:00">January 13, 2008 at 3:51 pm</time></p>
      <p>Speaking as somewhat of an outsider (I'm a Python/Django guy), I'd say that Rack (which I've been reading up on) and a hypothetical "mod_rack" is probably the way to go.</p><p>In the Python world, we have WSGI, which is a standardized protocol/abstraction for Python web apps to talk to Python-aware web servers, and a mod_wsgi is under development (and already quite usable) for Apache. It can embed Python processes directly in Apache, but (more importantly for the shared-hosting case) it also supports a "daemonize" mode where it spawns and manages long-lived external application processes.</p><p>The same process feels like it could work for Ruby as well; standardizing on a protocol/abstraction (e.g., Rack) and developing a module which supports either embedding or daemonizing (as mod_wsgi does for Python) seems like it could solve the deployment issue quite nicely.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kirk Haines</strong> &middot; <time datetime="2008-01-13T17:16:00+00:00">January 13, 2008 at 5:16 pm</time></p>
      <p>@james, You know what I find funny?  I developed something very similar to the daemon mode of mod_wsgi, implemented as a simple Apache handler written with mod_ruby, about 6 years ago.  It was my first deployment mechanism for IOWA apps.</p><p>It has not been my preferred deployment method for quite a while, but I still have the code, as I have about 12 sites/apps that still use it.  It'd be pretty trivial to convert it to use Rack instead of the IOWA request/response structures.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>CptOatmeal</strong> &middot; <time datetime="2008-01-13T17:24:00+00:00">January 13, 2008 at 5:24 pm</time></p>
      <p>I agree with James (#105).  In a shared host situation the mod_rack could watch the daemonized processes and apply whatever limits the hosting provider has placed on that account.  For non-thread safe apps, multiple processes could be started - as long as they don't exceed the specific cpu/ram requirements there shouldn't be a problem.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dr Nic</strong> &middot; <time datetime="2008-01-14T01:13:00+00:00">January 14, 2008 at 1:13 am</time></p>
      <p>@ezra - very exciting rubinius news</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Eric Davis</strong> &middot; <time datetime="2008-01-15T04:03:00+00:00">January 15, 2008 at 4:03 am</time></p>
      <p>I've met a lot of people who are turned off by Ruby and Rails because you can't  "just upload it".  It would be great if there was a way to easily deploy short erb scripts and have Apache just work.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-15T05:26:00+00:00">January 15, 2008 at 5:26 am</time></p>
      <p>Eric: You kinda can. Just use good old CGI. As long as the hosting provider has Ruby installed, it'll work.. just in the same way as you get Perl scripts working.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-15T05:26:00+00:00">January 15, 2008 at 5:26 am</time></p>
      <p>(I used a Ruby CGI script to run the Ruby Inside 2006 Advent Calendar, FWIW)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gabe Purrenhage</strong> &middot; <time datetime="2008-01-16T18:09:00+00:00">January 16, 2008 at 6:09 pm</time></p>
      <p>@John Joyce (103) - For what it's worth, OS X 10.5 Server runs Rails out-of-the-box, via proxy to Mongrel cluster. :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>zerohalo</strong> &middot; <time datetime="2008-01-16T20:11:00+00:00">January 16, 2008 at 8:11 pm</time></p>
      <p>@Peter: Yes, you can, and I've done it too. But it's so damn slow that it's not a viable option.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-16T21:30:00+00:00">January 16, 2008 at 9:30 pm</time></p>
      <p>It's not particularly slow if you're not using a framework. I've run a few things under CGI and full page load time is well under half a second. That's not 900 requests per second territory, but good enough for temporary or low level situations (i.e. up to a few hundred visitors an hour or whatever). With Rails, though, forget it, takes too many seconds to load.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Robert Oschler</strong> &middot; <time datetime="2008-01-24T05:32:00+00:00">January 24, 2008 at 5:32 am</time></p>
      <p>Good lord, I can't believe I read all the comments on this post.  Even more amazing, despite the fact my eyes are nearly glazed over, I'm glad I did!</p><p>I've been wondering about the true nature of Ruby/Rails deployment and I believe I just got the fast crash course on everything I need to know.  A big thank you to everyone that participated on this comment thread.</p><p>Now if I could just get over my fear of "what's new in, and what's made obsolete in 2.0" I could restart my Ruby/Rails project. :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
