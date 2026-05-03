---
title: 28 mod_rails / Passenger Resources To Help You Deploy Rails Applications Faster
date: '2008-05-23'
author: Peter Cooper
author_slug: admin
post_id: 899
slug: 28_mod_rails_and_passenger_resources-899
url: "/28_mod_rails_and_passenger_resources-899.html"
categories:
- compilations
- miscellaneous
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2008/05/passenger.jpg" width="206" height="69" alt="passenger.png"></p>
<p><a href="http://modrails.com/">Passenger</a> (often known as "<a href="http://modrails.com/">mod_rails</a>") is an Apache module developed by <a href="http://www.phusion.nl">Phusion</a>, a small Dutch IT consultancy, that makes it easy to deploy Rails applications on Apache-based stacks. Passenger follows on well from the popular "<a href="no-true-mod_ruby-is-damaging-rubys-viability-on-the-web-693.html">No True mod_ruby Is Damaging Ruby's Viability on the Web</a>" discussion of January 2008 in that it mostly solves the Rails deployment issue (see <a href="http://switchpipe.org/">SwitchPipe</a> for an alternative that can deal with non-Rails frameworks).</p>
<p>Since its launch in April, Passenger has become quite popular and a lot of developers are already using it to rapidly deploy Rails sites. Even popular budget Web hosting company <a href="http://blog.dreamhost.com/2008/05/13/passenger-for-ruby-on-rails/">Dreamhost has got in on the action</a>, and is offering cheap, Passenger-based Rails application hosting. The de-facto Ruby (and Rails) deployment system seems to change rapidly (remember Apache+FastCGI, <span style="font-style: italic;">then</span> lighttpd+FastCGI, <span style="font-style: italic;">then</span> Apache+Mongrel, <span style="font-style: italic;">then</span> Nginx+Mongrel...?) and while Passenger may or may not be a de-facto standard in a few years' time, it's certainly becoming the standard for <span style="font-style: italic;">now</span>, so jump on board!</p>
<p>To help with your leap on to the Passenger bandwagon, I've collected together some of the better resources and blog posts of recent weeks covering its use:</p>
<p><big><strong>General</strong></big></p>
<div style="margin-left: 1.5em">
<p><a href="http://modrails.com/">Official Passenger / mod_rails Site</a> - The official site for the Apache module. Features testimonials, installation instructions, <a href="http://modrails.com/documentation.html">documentation</a>, and information on how you can further support the project.</p>
<p><a href="http://github.com/FooBarWidget/passenger/tree/master">Passenger / mod_rails Source Repository</a> - Passenger / mod_rails is an open-source project at heart, and the code is available on Github.</p>
<p><a href="http://www.modrails.com/documentation/Users%20guide.html">Passenger Users Guide</a> - A very Apache-documentation-esque guide to using, configuring, and trouble shooting Passenger.</p>
</div>
<p><big><strong>Installation</strong></big></p>
<div style="margin-left: 1.5em">
<p><a href="http://nubyonrails.com/articles/ask-your-doctor-about-mod_rails">Ask Your Doctor About mod_rails</a> - Geoffrey Grosenbach (of Peepcode fame) writes about Passenger from a user's point of view. He walks through rolling out Passenger on his own server in a bunch of easy steps. He also covers log rotation.</p>
<p><a href="http://www.fngtps.com/2008/04/using-passenger-on-osx-for-rails-development">Using Passenger on OS X for Rails development</a> - Manfred Stienstra quickly walks through what's involved in setting up Passenger on Mac OS X.</p>
<p><a href="http://www.railsgarden.com/2008/04/12/configurating-passenger-mod_rails-on-slicehost-with-ubuntu-710/">Configurating [sic] Passenger (mod_rails) on SliceHost with Ubuntu 7.10</a> - Ben Hughes covers the roll-out of Passenger, SQLite 3 and Rails on a SliceHost VM.</p>
<p><a href="http://sysadminschronicles.com/articles/2008/05/06/ubuntu-8-04-rails-server-using-passenger">Ubuntu 8.04 Rails Server Using Passenger</a> - Ron Valente covers the installation of Passenger on Ubuntu 8.04 (a.k.a. Hardy Heron). This is a very well put together guide, cut into nice bite size pieces with well formatted code examples.</p>
<p><a href="http://www.akitaonrails.com/2008/4/16/phusion-passenger-mod_rails-test-drive">Passenger Installation in Portuguese</a> - Fabio Akita presents a Passenger installation guide in Portuguese.</p>
</div>
<p><span style="font-size: 14px; font-weight: bold;">Discussion &amp; Benchmarks</span></p>
<div style="margin-left: 1.5em">
  <a href="http://www.pervasivecode.com/blog/2008/04/14/why-mod_rails-is-a-really-good-thing-for-light-duty-ruby-on-rails/">Why mod_rails is great for light-duty Rails apps</a> - A blog post that takes a deep look into the motivation behind Passenger and where it fits in amongst other deployment solutions. It looks at Passenger's memory use and how Passenger integrates with Apache (somewhat).
</div>
<div style="margin-left: 1.5em">
  <br>
  <a href="http://ariekanarie.nl/archives/51/mod_rails-vs-thin-vs-ebb-vs-mongrel">mod_rails vs thin vs ebb vs mongrel</a> - A comparison of four different Rails serving techniques. <a href="ebb-web-framework-http-server-786.html">Ebb</a> appears to have the edge.
</div>
<div style="margin-left: 1.5em">
  <br>
  <a href="http://www.akitaonrails.com/2008/5/7/chatting-with-hongli-lai-and-ninh-bui-phusion">Interview with Hongli Lai and Ninh Bui of Phusion</a> - Fabio Akita interviews the two masterminds behind mod_rails.
</div>
<div style="margin-left: 1.5em">
  <br>
  <a href="http://blog.fiveruns.com/2008/4/17/on-mod_rails-and-fiveruns-rails-instrumentation">Looking at mod_rails and FiveRuns Rails Instrumentation</a> - Oliver of FiveRuns takes a look at mod_rails and examines its usage scenarios.
</div>
<div style="margin-left: 1.5em">
  <br>
  <a href="http://2fkd.com/2008/04/12/a-few-notes-on-using-passenger-mod_rails-with-mac-os-x/">A few notes on using Passenger (mod_rails) with Mac OS X</a> - A quick examination of mod_rails on OS X.
</div>
<div style="margin-left: 1.5em">
  <br>
  <a href="http://alloycode.com/2008/4/26/another-passenger-on-the-mod_rails">Miscellaneous</a> <a href="http://s2.diffuse.it/blog/show/43_passenger%253A+mod_rails+-+first+try">Experiences</a> <a href="http://lstoll.net/2008/04/12/passenger-a-k-a-mod-rails">Some</a> <a href="http://intertwingly.net/blog/2008/04/28/modrails-easy-if-you-are-root">People</a> <a href="http://simpson.mine.nu/?tag=mod_rails">Have</a> <a href="http://www.sitepoint.com/blogs/2008/04/22/smooth-your-deployment-with-passenger/">Had</a> <a href="http://brianketelsen.blogspot.com/2008/04/modrails-passenger-and-pre-loading-of.html">With</a> <a href="http://rorblog.techcfl.com/2008/04/11/ease-rails-deployments-with-phusion-passenger/">Passenger</a> - A roundup of various impressions and experiences people have had so far.
</div>
<div style="margin-left: 1.5em">
  
</div>
<div style="margin-left: 1.5em">
  <br>
  <a href="http://izumi.plan99.net/blog/index.php/2008/03/31/benchmark-passenger-mod_rails-vs-mongrel-vs-thin/">mod_rails vs Mongrel vs Thin</a> - Benchmarks performed by Phusion themselves with three alternative deployment solutions.
</div>
<div style="margin-left: 1.5em">
  
</div>
<p><big><strong>Tools and Tips</strong></big></p>
<div style="margin-left: 1.5em">
  <a href="http://es.cohesiveft.com/site/rails2">Ruby on Rails 2.x Elastic Server</a> - A Rails /Passenger virtual machine creator of sorts. It appears to let you choose which components you want to include in the VM then give you access to download a virtual machine image for VMware, Xen, Parallels, or Amazon EC2 containing the features selected. I have not tested this, and would appreciate any feedback in comments.
</div>
<div style="margin-left: 1.5em">
  <br>
  <a href="http://tomcopeland.blogs.com/juniordeveloper/2008/05/mod_rails-and-c.html">mod_rails and Capistrano</a> - Tom Copeland presents a simple Capistrano recipe for restarting mod_rails applications.
</div>
<div style="margin-left: 1.5em">
  <br>
  <a href="http://jimneath.org/2008/05/10/using-capistrano-with-passenger-mod_rails/">Using Capistrano with Passenger</a> - A slightly deeper guide to using Capistrano to deploy mod_rails applications.
</div>
<div style="margin-left: 1.5em">
  <br>
  <a href="http://macksmind.net/2008/04/13/installing-typo-blog-engine-and-mod_rails-for-multiple-accounts/">Installing Typo (blog engine) and mod_rails for multiple accounts</a> - A walkthrough of creating and installing multiple instances of the Typo blogging engine using mod_rails.
</div>
<div style="margin-left: 1.5em">
  
</div>
<p><span style="font-style: italic;">Disclaimer: I don't use and haven't tried mod_rails yet, so any corrections to above comments are welcomed and encouraged.</span></p>
<p><em><strong>This post is sponsored by KickStart Events —</strong> <a href="http://kickstartme.co.uk" title="UK RubyOnRails Training">RubyOnRails Training at the EMCC (East Midlands Conference Centre), UK</a>. High-quality hands-on workshops and courses for web application developers. Taught by experienced mentors using live coding sessions, slides and participatory discussion.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Lori Olson</strong> &middot; <time datetime="2008-05-23T22:59:00+00:00">May 23, 2008 at 10:59 pm</time></p>
      <p>Hey, you left out "NGINX + Thin"...  ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>AkitaOnRails</strong> &middot; <time datetime="2008-05-24T03:56:00+00:00">May 24, 2008 at 3:56 am</time></p>
      <p>If you're attending RailsConf: DO NOT lose June 1st keynote! And the Phusion guys recommend everybody to bring extra SOCKS! :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dave</strong> &middot; <time datetime="2008-05-24T07:24:00+00:00">May 24, 2008 at 7:24 am</time></p>
      <p>I also found the slicehost guide to installing and configuring Passenger on Ubuntu 8.04 helpful: <a href="http://articles.slicehost.com/2008/5/1/ubuntu-hardy-mod_rails-installation" rel="nofollow">http://articles.slicehost.com/2008/5/1/ubuntu-hardy-mod_rails-installation</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2008-05-24T11:54:00+00:00">May 24, 2008 at 11:54 am</time></p>
      <p>Thanks for the links Peter. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Babble On</strong> &middot; <time datetime="2008-05-24T18:03:00+00:00">May 24, 2008 at 6:03 pm</time></p>
      <p>Thanks for collecting these resources.  For a long while, Rails deployment has been a bit of a chore and more recently, a bit overwhelming in terms of the different configurations of software out there...  I wonder if Passenger is the way forward, and am intrigued as to what it will offer when combined with Phusion's Ruby Enterprise Edition (<a href="http://www.rubyenterpriseedition.com/" rel="nofollow">http://www.rubyenterpriseedition.com/</a>).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-05-27T19:22:00+00:00">May 27, 2008 at 7:22 pm</time></p>
      <p>To add to the above, Andre Lewis has written a great (and more detailed) explanation of using Passenger on OS X:</p><p><a href="http://napkin.highgroove.com/articles/2008/05/27/development-with-rails-passenger-aka-mod_rails-on-mac" rel="nofollow">http://napkin.highgroove.com/articles/2008/05/27/development-with-rails-passenger-aka-mod_rails-on-mac</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Simon Starr</strong> &middot; <time datetime="2008-05-28T08:56:00+00:00">May 28, 2008 at 8:56 am</time></p>
      <p>Thanks for all the Passenger info; I've been meaning to try it out since you mentioned it the other week and I'm currently downloading a VMware image from Elastic Server. I'll report back once I've tried it out.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
