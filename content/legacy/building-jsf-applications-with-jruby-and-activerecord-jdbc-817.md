---
title: Building JSF Applications with JRuby and ActiveRecord-JDBC
date: '2008-03-20'
author: Peter Cooper
author_slug: admin
post_id: 817
slug: building-jsf-applications-with-jruby-and-activerecord-jdbc-817
url: "/building-jsf-applications-with-jruby-and-activerecord-jdbc-817.html"
categories:
- enterprise
- jruby
---

{{< rawhtml >}}
<p><img src="/assets/2008/03/jsfinfrastructure.jpg" width="249" height="243" alt="jsfinfrastructure.png" style="border:1px #000000 solid;"></p>
<p><a href="http://java.sun.com/javaee/javaserverfaces/">JavaServer Faces</a> (JSF) is a Java platform Web application framework developed by Sun. Unlike most Web frameworks, which are request-driven, JSF uses UI components on the front end (typically a Web browser, none the less) that interact over the network, triggering events that cause various actions within a back end application. Rogério Pereira Araújo has put together a solid two part (so far) tutorial that demonstrates how to create JSF applications using <a href="http://jruby.codehaus.org/">JRuby</a> and the JDBC variant of ActiveRecord.</p>
<p><a href="http://faces.eti.br/2008/03/16/creating-jsf-applications-with-jruby-and-activerecord-jdbc-part-1/">Part one</a> covers declaring JRuby-powered beans within the application and setting up a simple class. <a href="http://faces.eti.br/2008/03/16/creating-jsf-applications-with-jruby-and-activerecord-jdbc-part-2/">Part two</a> goes into defining models, interacting with a database, and presenting data using the UI components.</p>
<p>None of what Rogério presents is particularly mind blowing by itself, but it's a great introduction to using Ruby in a previously unanticipated way. With JRuby's flexibility on the Java platform, it seems that Ruby can, to many extents, replace the need for the Java language in many situations. If you're locked on to the Java platform, with the enterprise world, say, experiments like these could help you use the power of Ruby / JRuby while still being able to roll out and support a platform that's already won favor with the rest of the IT department.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Assaf</strong> &middot; <time datetime="2008-03-21T04:49:00+00:00">March 21, 2008 at 4:49 am</time></p>
      <p>If you're locked into the Java platform, definitely have a look at JRuby and see where you can use Ruby instead of Java.  But if you're locked into JSF, definitely have a look at Indeed and consider a new job.  JSF seems to thrive on anti-patterns and take Enterprisy to its extreme, with all due respect to Ruby, I don't think it help recover from these losses.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
