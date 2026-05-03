---
title: How to Install and Use Postgres On OS X For Ruby and Rails Development
date: '2011-06-11'
author: Peter Cooper
author_slug: admin
post_id: 4999
slug: how-to-install-and-use-postgres-on-os-x-for-ruby-and-rails-development-4999
url: "/how-to-install-and-use-postgres-on-os-x-for-ruby-and-rails-development-4999.html"
categories:
- elsewhere
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2011/06/postgres-logo.png" alt="" title="postgres-logo" width="120" height="123" class="alignnone size-full wp-image-5000" style="float: left; margin-right: 12px; margin-bottom: 12px">I hang out in #nwrug on Freenode, the IRC channel of <a href="http://nwrug.org/">a Ruby user group</a> here in the UK, and floated the idea of doing a <a href="http://www.postgresql.org/">PostgreSQL</a> (a.k.a. Postgres) installation tutorial for Ruby Inside. Coincidentally, it turned out 37signals sysadmin <a href="http://willj.net">Will Jessop</a> was already working on one so, I present.. <strong><a href="https://willj.net/2011/05/31/setting-up-postgresql-for-ruby-on-rails-development-on-os-x/">Setting up PostgreSQL for Ruby on Rails development on OS X</a> by Will Jessop :-)</strong></p>
<h3>The Article..</h3>
<p><a href="https://willj.net/2011/05/31/setting-up-postgresql-for-ruby-on-rails-development-on-os-x/">Will's post</a> is a walkthrough of the process from sitting at an empty terminal prompt through to having a barebones Rails 3 app running on a Postgres powered database. <strong>It's entirely Mac OS X focused</strong>, so don't expect to enjoy it too much if you're on Linux or Windows!</p>
<p>Will covers:</p>
<ul>
<li>installation (super simple with <a href="http://mxcl.github.com/homebrew/">Homebrew</a>)</li>
<li>start/stop controls for OS X</li>
<li>initialization</li>
<li>user creation</li>
<li>database setup</li>
<li>installing the <code>pg</code> gem</li>
</ul>
<h3>Or, the Screencast!</h3>
<p>I still wanted to bring something to the table despite Will's work so I asked if I could make a screencast that roughly followed the same lines as his tutorial and he was up for it. So, I present, a scrappy 13 minute video alternative to the above tutorial:</p>
<p><iframe width="640" height="390" src="http://www.youtube.com/embed/pf5jPUJAeU4" frameborder="0" allowfullscreen></iframe></p>
<p>My walkthrough is <em>somewhat different</em>. I spend a couple of minutes explaining what Postgres is, in case you're not familiar with it, and I use Mike Perham's awesome launchctl controller <a href="http://thechangelog.com/post/4164540515/lunchy-a-friendly-wrapper-for-launchctl">Lunchy</a> to manage the starting and stopping of Postgres instead of the usual (and arcane) Apple tools. I also make references to Rebecca Black and Mister Mister.</p>
<p>While preparing for this post, I've found a lot of small, useful Ruby libraries that improve the Postgres experience. I'm collecting those together and will be posting with a grab-bag of useful links soon.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jared Mehle</strong> &middot; <time datetime="2011-06-11T17:51:00+00:00">June 11, 2011 at 5:51 pm</time></p>
      <p>Have you come across any good GUI tools for working with Postgres? PGAdmin is pretty sad and doesn't have a native OS X look.</p><p>Sequel Pro is my favorite DB GUI tools, but it only supports MySQL. Base is pretty good, but only supports SQLite. Navicat has tools for all of the above, but they're insanely expensive.</p><p>There just doesn't seem to be one good tool out there for working with multiple database products.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joel Meador</strong> &middot; <time datetime="2011-06-12T21:06:00+00:00">June 12, 2011 at 9:06 pm</time></p>
      <p>Very nice! First time I've tried postgres (outside of heroku), mostly because it was no hassle. Lunchy is awesome, btw. Yay, brew, bundler, and lunchy.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Will Jessop</strong> &middot; <time datetime="2011-06-22T15:54:00+00:00">June 22, 2011 at 3:54 pm</time></p>
      <p>@Jared I don't know of any unfortunately, I stick to the CLI. Another option could be PHPPgAdmin if you're really stuck.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Worajedt S.</strong> &middot; <time datetime="2011-06-27T17:20:00+00:00">June 27, 2011 at 5:20 pm</time></p>
      <p>@jared  Navicat for Postgresql is native speed and good in may way of connection/reach to psql on remote side. All of the most things you need is there..</p><p>also consider DbVisualizer (java based). If you use many db engines, dbvis is one of the app that you have to consider. Fast, Good UI, Import &amp; Export capabilities and good sql editor inside.</p><p>both are good for PG but dbvis is the best choice if you need multiple db engines.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>lobo_tuerto</strong> &middot; <time datetime="2011-07-13T18:01:00+00:00">July 13, 2011 at 6:01 pm</time></p>
      <p>Same but for Ubuntu, in Spanish ;)</p><p><a href="http://lobotuerto.com/blog/2009/07/20/como-instalar-postgresql-en-ubuntu-9-04-jaunty-jackalope/" rel="nofollow">Postgres on Ubuntu 11.04 for Ruby and Rails development</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Patrick Marsceill</strong> &middot; <time datetime="2011-07-25T14:36:00+00:00">July 25, 2011 at 2:36 pm</time></p>
      <p>Followed your instructions to the letter, but am getting a permissions issue when I try to run any of the postgres commands (createuser, createdb, pgsql, etc...)</p><p>When I get to the step where you createuser i get...</p><p>Shall the new role be a superuser? (y/n) n<br>
Shall the new role be allowed to create databases? (y/n) n<br>
Shall the new role be allowed to create more new roles? (y/n) n<br>
createuser: could not connect to database postgres: could not connect to server: Permission denied<br>
	Is the server running locally and accepting<br>
	connections on Unix domain socket "/var/pgsql_socket/.s.PGSQL.5432"?</p><p>any ideas?  Lunchy started postgres with no errors and when I do a status, it shows the plist file as being active.  Not sure what the problem could be...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John</strong> &middot; <time datetime="2011-08-20T23:02:00+00:00">August 20, 2011 at 11:02 pm</time></p>
      <p>Um, you know PostGreSQL is now bundled with Lion...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alessandro Dal Grande</strong> &middot; <time datetime="2011-08-23T10:58:00+00:00">August 23, 2011 at 10:58 am</time></p>
      <p>With Lion there is in fact another installation of PG. If you run the homebrew one, to get the user created etc. you need to run the right command, something like:</p><p><cite>/usr/local/Cellar/postgresql/9.0.4/bin/createuser</cite></p><p>Otherwise you will run PG commands with Lion configuration and you will get errors like:</p><p>createuser: could not connect to database postgres: could not connect to server: </p><p><cite><br>
No such file or directory<br>
	Is the server running locally and accepting<br>
	connections on Unix domain socket "/var/pgsql_socket/.s.PGSQL.5432"?<br>
</cite></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
