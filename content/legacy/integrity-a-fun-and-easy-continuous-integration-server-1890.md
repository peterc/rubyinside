---
title: 'Integrity: A Fun And Easy Continuous Integration Server'
date: '2009-07-01'
author: Matt Sears
author_slug: mattsears
post_id: 1890
slug: integrity-a-fun-and-easy-continuous-integration-server-1890
url: "/integrity-a-fun-and-easy-continuous-integration-server-1890.html"
categories:
- miscellaneous
- tools
---

{{< rawhtml >}}
<p><img class="alignleft size-medium wp-image-1891" src="/assets/2009/07/integrity.png" style="margin-right: 12px; margin-bottom: 12px; float: left" alt="Integrity" width="90" height="70"><a href="http://integrityapp.com">Integrity</a> is a simple and lightweight <a href="http://en.wikipedia.org/wiki/Continuous_integration">Continuous Integration</a> server written in Sinatra (a DSL for quickly creating web-applications in Ruby). When commits are pushed to a Git repository, Integrity builds, runs tests, and reports the build status to each team member. It supports a variety of notifiers including Email, IRC, and Twitter.</p>
<p>When it comes to developing large projects with multiple team members, it’s common nowadays to set up a Continuous Integration (CI) server. CI is a development practice where developers combine their work frequently and run tests over the whole project in order to identify errors early. Wikipedia has <a href="http://en.wikipedia.org/wiki/Continuous_integration">a good summary</a> of the practice.</p>
<p>Integrity makes it easy to setup a CI server for your Ruby apps.  It lowers the barrier for people starting out with Continuous Integration, as well as provide a simpler and minimal alternative. The project’s <a href="http://integrityapp.com">homepage</a> includes helpful installation instructions for Phusion Passenger, Thin, and Heroku.</p>
<div style="background-color: #cef; padding: 4px"><em><a href="http://mattsears.com">Matt Sears</a> is a Ruby developer and co-founder of <a href="http://littlelines.com">Littlelines</a>, a Rails development and web design company. </em></div>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Joe Van Dyk</strong> &middot; <time datetime="2009-07-01T20:13:00+00:00">July 1, 2009 at 8:13 pm</time></p>
      <p>Make sure to check out cerebus (on github) as well. There's no web ui and no web hooks - it checks via cron for repo updates. Much simpler, and it works beautifully for my 10 projects.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
