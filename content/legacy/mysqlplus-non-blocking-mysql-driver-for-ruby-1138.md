---
title: 'MySQLPlus: A Non-Blocking MySQL Driver for Ruby 1.8 and 1.9'
date: '2008-09-03'
author: Peter Cooper
author_slug: admin
post_id: 1138
slug: mysqlplus-non-blocking-mysql-driver-for-ruby-1138
url: "/mysqlplus-non-blocking-mysql-driver-for-ruby-1138.html"
categories:
- cool
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2008/09/bm11.gif" width="323" height="200" alt="bm11.png" style="margin-right:12px;"></p>
<p>Recently <a href="neverblock-easy-non-blocking-io-in-ruby-1083.html">we posted about NeverBlock</a>, a Ruby 1.9-specific library that eases the development of apps that use non-blocking IO. <a href="http://www.espace.com.eg/">eSpace</a>, the company behind the library, have now come along with another surprise... <a href="http://github.com/espace/mysqlplus/tree/master">MySQLPlus</a> - a non-blocking MySQL driver for Ruby 1.8 <em>and</em> 1.9! There's <a href="http://www.espace.com.eg/neverblock/blog/2008/08/28/neverblock-mysql-support/">more information here in the official announcement</a>.</p>
<p>MySQLPlus is <a href="http://www.espace.com.eg/neverblock/blog/2008/08/28/neverblock-mysql-support/">billed</a> as a new general purpose MySQL driver that supports "threaded access and async operations" and after installing it and running the basic tests that come with the library, it certainly seems to do the job. eSpace believes that MySQLPlus could be used to significantly reduce the latency of certain Rails applications, but as a bare MySQL driver it should be of significant benefit to all Ruby developers whose code talks to MySQL servers. If yours does, try out MySQLPlus right now - your Ruby processes are crying out for some relief.</p>
<p class="s"><cite>This post supported by <a href="http://www.notifixio.us/">Notifixious</a> -</cite> Notifixious - a new notification service startup based in San<br>
Francisco - needs a Rails expert to <a href="http://jobs-notifixious.tumblr.com/post/43032723/notifixious-is-hiring-within-the-ruby-rails">become its CTO!</a> Knowledge of messaging technologies (XMPP) and REST API development is a must. You can <a href="http://jobs-notifixious.tumblr.com/post/43032723/notifixious-is-hiring-within-the-ruby-rails">learn more here.</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>AkitaOnRails</strong> &middot; <time datetime="2008-09-03T23:57:00+00:00">September 3, 2008 at 11:57 pm</time></p>
      <p>Awesome news!!! Ruby is gearing towards an Async world very fast.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John</strong> &middot; <time datetime="2008-09-04T00:51:00+00:00">September 4, 2008 at 12:51 am</time></p>
      <p>I am wondering how this will affect the common Rails CRUD sites that use the standard Rails conventions.</p><p>Would this make any difference if used in place of the mysql-ruby gem ?</p><p>Or would this only be of interest to apps that are doing all sorts of hackish things with ActiveRecord::Base.connection directly in their code, such as managing a database connection pool?</p><p>I'm just trying to see what this all means.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ActsAsFlinn</strong> &middot; <time datetime="2008-09-04T01:42:00+00:00">September 4, 2008 at 1:42 am</time></p>
      <p>@John, seems like anything that depends on a DB query would benefit from this.  AR or otherwise if the site makes a db hit per request I'd think it would benefit from the async.  I'd love to combine this with merb's run_later for things like hit counting.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>murphee</strong> &middot; <time datetime="2008-09-04T04:51:00+00:00">September 4, 2008 at 4:51 am</time></p>
      <p>There's more extensive information in an interview with one of the Neverblock developers over @ InfoQ:<br>
<a href="http://www.infoq.com/articles/fibers-neverblock-revactor" rel="nofollow">http://www.infoq.com/articles/fibers-neverblock-revactor</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Haitham</strong> &middot; <time datetime="2008-09-04T04:59:00+00:00">September 4, 2008 at 4:59 am</time></p>
      <p>@John: You are right, Rails applications that follow the standard way cannot benefit from MySQLPlus yet. However, it's good to know that eSpace is just about to release an ActiveRecord adapter (among other NeverBlock stuff) that would benefit from MySQLPlus. after the adapter is released, it will be a matter of configuring your Rails application to use it along with MySQLPlus, and everything wlse will be just seamless.. You'll continue writing code the way you have always been doing, but you'll gain the massive performance boost.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Senthil Nayagam</strong> &middot; <time datetime="2008-09-04T19:40:00+00:00">September 4, 2008 at 7:40 pm</time></p>
      <p>it is a good start to have   thread safe rails 2.2 with thread safe db driver, </p><p>hope people start posting their benchmarks,</p><p>hope someone builds a tool for connection pooling as well</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andy</strong> &middot; <time datetime="2008-09-04T21:44:00+00:00">September 4, 2008 at 9:44 pm</time></p>
      <p>this is great news.<br>
between rails 2.2 and this new mysql driver, we'll be entering into a new generation of development and support soon.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jay</strong> &middot; <time datetime="2008-09-05T14:48:00+00:00">September 5, 2008 at 2:48 pm</time></p>
      <p>Awesome news, but completely irrelevant for Rails production systems at this point in time. ALL these drivers require 1.9 and there is no news on the horizon that Rails is going to be 1.9 stable any time soon. In fact, Matz has even said 1.9 itself should not be considered stable.</p><p>We're not going to see any of these drivers put into production until sometime next year probably. These non-blocking drivers have been making the rounds on all the news sites and that's good, but people need to realize that they're completely alpha at this point in time and are no where near being available as a usable gem that Rails can deploy on.</p><p>The next biggest news for Rails, besides being thread safe in 2.2 will be Rails on 1.9.x. Watch out for that.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-09-05T15:41:00+00:00">September 5, 2008 at 3:41 pm</time></p>
      <p>Jay: "ALL these drivers require 1.9" ? I'd be interested to hear more, but this works fine on 1.8 for me and is non-blocking as claimed.</p><p>To your other point, 1.9 should be considered stable on the release of 1.9.1 which is supposedly production ready. Whether Rails will work with it is a different issue, of course :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2008-09-06T16:52:00+00:00">September 6, 2008 at 4:52 pm</time></p>
      <p>@Jay MysqlPlus is compatible with 1.8 and 1.9.  You could use it with rails 2.2 to have a more "ruby thread friendly" rails app that doesn't block on IO--whenever 2.2 comes out, that is :)</p><p>MysqlPlus is a fork off the [already stable] Mysql C gem, so it should be near production ready [many thanks to Tomahito M.].</p><p>1.9 will theoretically be "stable" at the end of this year [whatever that means], I probably wouldn't recommend upgrading until...at least a little while after that :)</p><p>AFAIK all rails' tests pass in Ruby 1.9 so you can run it and try it yourself :)</p><p>@Senthil: Note that rails 2.2 will come with pooled db connections [you set the size in the database.yml descriptions].</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ben Johnson</strong> &middot; <time datetime="2008-09-07T21:42:00+00:00">September 7, 2008 at 9:42 pm</time></p>
      <p>I think this is awesome. But does anyone else feel a little skeptical about upgrading to ruby 1.9, rails 2.2, and throwing a new mysql driver at your production environment?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2008-09-09T21:58:00+00:00">September 9, 2008 at 9:58 pm</time></p>
      <p>Yeah if you want rails mysql multi threaded I'd probably just upgrade to mysqlplus + rails 2.2 [staying with 1.8.6] until the dust settles a little more.  I guess it depends how aggressively you want to upgrade [or need to or what not].<br>
-=R</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
