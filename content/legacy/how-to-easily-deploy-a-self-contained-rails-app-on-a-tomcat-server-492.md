---
title: How to Easily Deploy a Self-Contained Rails App On A Tomcat Server
date: '2007-05-14'
author: Peter Cooper
author_slug: admin
post_id: 492
slug: how-to-easily-deploy-a-self-contained-rails-app-on-a-tomcat-server-492
url: "/how-to-easily-deploy-a-self-contained-rails-app-on-a-tomcat-server-492.html"
categories:
- cool
- jruby
- ruby-on-rails
- tutorials
---

{{< rawhtml >}}
<p>Victor Igumnov has put together a simple walkthrough of <a href="http://letsgetdugg.com/view/How_to_deploy_a_self_contained_Rails_application_on_Tomcat,_painlessly">how to package a Rails application into a single WAR file to run on a Tomcat server</a> using JRuby, a pure Ruby PostgreSQL library (no ActiveRecord-JDBC needed!), and GoldSpike (JRuby addon that provides rake tasks to make WAR files). This is useful knowledge for anyone who might be forced into deploying Rails apps in an enterprise type system where Tomcat may be the only viable deployment option.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Garth</strong> &middot; <time datetime="2007-05-14T17:42:00+00:00">May 14, 2007 at 5:42 pm</time></p>
      <p>Sounds like a hack to me, a great hack, but still a hack.  I'm still not onto the buzz of JRuby and getting Rails running with it.  Maybe I'm missing something?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-05-14T22:00:00+00:00">May 14, 2007 at 10:00 pm</time></p>
      <p>Enterprise rollouts.</p><p>You won't believe the amount of proposals I see where the "hosting environment" is just J2EE or something else. Sysadmins at those kinds of shops (if they even have them, often they just "outsource" in-house hosting!) don't like playing around with things like Mongrel, etc.. they have a system and you gotta stick to it. If they support TomCat, then being able to roll out apps with it can mean your Rails app could be deployed in an enterprise environment.. and there's big money in that.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hendy Irawan</strong> &middot; <time datetime="2007-05-15T02:00:00+00:00">May 15, 2007 at 2:00 am</time></p>
      <p>This is really cool... More choices are very good, at least in this matter. :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://java.rainbowpurple.com/2007/05/15/deploy-railsjruby-web-apps-on-tomcat-easily/" rel="external nofollow" class="url">Java, Please! Stirred, Not Shaken</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonathan Rochkind</strong> &middot; <time datetime="2007-05-15T18:26:00+00:00">May 15, 2007 at 6:26 pm</time></p>
      <p>Do you think such a weird hacky solution will really be stable/scalable enough for an enterprise deployment?  I'm suspicious, but just based on the general principle, I don't know any of the details at all (or enough to understand them).</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
