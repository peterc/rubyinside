---
title: Joyent Slingshot and Connector Go Open Source
date: '2007-07-13'
author: Peter Cooper
author_slug: admin
post_id: 556
slug: joyent-slingshot-and-connector-go-open-source-556
url: "/joyent-slingshot-and-connector-go-open-source-556.html"
categories:
- cool
- elsewhere
- news
---

{{< rawhtml >}}
<p><img src="/assets/2007/07/slingshot-1.jpg" height="289" width="302" border="1" hspace="4" vspace="4" alt="Slingshot-1"></p>
<p>Remember when <a href="build-offline-rails-applications-with-joyent-slingshot-435.html">we first announced Joyent Slingshot</a>, the technology that lets you run Rails apps within a native Windows and OS X client, a few months ago?  Well, both <a href="http://joyent.com/developers/slingshot/">Slingshot</a> and <a href="http://joyent.com/connector">Joyent Connector</a> have <a href="http://joyeur.com/2007/07/13/connector-and-slingshot-open-sourced-and-free">just been open sourced</a>, and they're yours to play with now. For those unfamiliar with Slingshot, here's what Joyent have to say:</p>
<blockquote>
<p>Joyent Slingshot allows developers to deploy Rails applications like a standard desktop application, which work online and offline (with synchronization), have drag and drop, and interact with all the other desktop applications.</p>
<p>With Joyent Slingshot:</p>
<p>    * Create a hybrid Web/desktop application<br>
    * Synchronize online and offline data<br>
    * Use the same code for online and offline application(s)<br>
    * Deploy and update your application easily<br>
    * Drag into and out of application</p>
</blockquote>
<p><a href="http://joyent.com/connector">Joyent Connector</a>, a suite of collaboration and communication applications for small businesses, has also been open sourced. While not such a big deal as Slingshot, in my opinion, this is a significant move, on a par with, say, 37signals opensourcing BaseCamp (which I bet will never happen). If you want to see how a BIG Rails application is put together, check out <a href="https://dev.joyent.com/projects/connector/browse">the code</a>.. there are about 60 models in there!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Piotr Usewicz</strong> &middot; <time datetime="2007-07-14T00:20:00+00:00">July 14, 2007 at 12:20 am</time></p>
      <p>This is simply amazing!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>CG</strong> &middot; <time datetime="2007-07-14T02:25:00+00:00">July 14, 2007 at 2:25 am</time></p>
      <p>I am currently exploring Rails combined with Flex for a richer web GUI. Does anyone know if this would be compatible with Slingshot?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>shadoi</strong> &middot; <time datetime="2007-07-14T02:42:00+00:00">July 14, 2007 at 2:42 am</time></p>
      <p>Anyone know what the subversion repository URL is?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nico Orellana</strong> &middot; <time datetime="2007-07-14T07:27:00+00:00">July 14, 2007 at 7:27 am</time></p>
      <p>This is a really big new! I think is a breakdown in our paradigms, the new  way of work with private projects. I work as consultant and Rails Developer but I don´t know What I could say if somebody ask me for my code, specially the code of my private "comercial" projects.</p><p>Awesome</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-07-14T12:46:00+00:00">July 14, 2007 at 12:46 pm</time></p>
      <p>See <a href="http://svn.joyent.com/opensource/" rel="nofollow">http://svn.joyent.com/opensource/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-07-14T12:52:00+00:00">July 14, 2007 at 12:52 pm</time></p>
      <p>CG: I /think/ so, since at the client side Flex is all implemented by Flash, right? That way it'll only depend on if the user has Flash installed or not (as it already does).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Fabio Akita</strong> &middot; <time datetime="2007-07-14T18:34:00+00:00">July 14, 2007 at 6:34 pm</time></p>
      <p>Hello Peter, as I don't know your e-mail yet I will post it here. I'm planning on using your Slingshot product to encapsulate my Rails app as a client stand-alone app. My problem was to deal with the current state of your sync process. Unfortunately I needed more control. So I took the liberty to start a separate open source project of my own called "acts_as_replica" (<a href="http://code.google.com/p/actsasreplica/" rel="nofollow">http://code.google.com/p/actsasreplica/</a>). It is still lacking the rake tasks that are required to link with your GUI events for Up and Down. </p><p>I was wondering if you're not interested in talking about maybe merging both projects or at least helping me make it easier to integrate. Any collaboration would be great. </p><p>Best Regards</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-07-15T01:25:00+00:00">July 15, 2007 at 1:25 am</time></p>
      <p>Slingshot is not my product, I'm just reporting that Joyent have open sourced it :) Joyent are at joyent.com. Good luck with your app though!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-07-15T01:25:00+00:00">July 15, 2007 at 1:25 am</time></p>
      <p>I just realize that the post might be confusing here. When I say "we announced Joyent Slingshot", I meant Ruby Inside posted about it previously ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tom</strong> &middot; <time datetime="2007-07-15T13:52:00+00:00">July 15, 2007 at 1:52 pm</time></p>
      <p>I can't seem to find any examples that I can run on a Windows box.  The only example in the Wiki is OSX/Intel.   I also downloaded the Windows source but I looks like it's missing a lot stuff compared to the OSX branch.  Has anybody else had any luck getting Slingshot to work on Windows?</p><p>Tom</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Rojas</strong> &middot; <time datetime="2007-07-16T03:31:00+00:00">July 16, 2007 at 3:31 am</time></p>
      <p>Hi!</p><p>This is great news indeed, i have just a small issue taht maybe someone here can answer. Following the install instructions for Conector, i noticed that you need to install PostgreSQL in order to completely build the application. I love the idea of PostgreSQL but somehow there are several reports of issues with Mac OS X and aditionally I havent been able to find a propper Instalation Guide for Tiger ( 10.4.10 ).  Some people have sugested installing through Fink or MacPorts, but i agree with the ideas exposed by Dan Benjamin in the Installation guide for Rails at Hivelogic (<a href="http://hivelogic.com/narrative/articles/ruby-rails-mongrel-mysql-osx" rel="nofollow">http://hivelogic.com/narrative/articles/ruby-rails-mongrel-mysql-osx</a>). So, if anybody knows how to install PostgreSQL from source on Mac OS X 10.4.10 without breaking iChat Video and properly setting up the launchd task so the database does not need to autostart with the computer i will appreciate a note here.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
