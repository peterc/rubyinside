---
title: 'Dash: A New Metrics Service for Ruby Apps from FiveRuns'
date: '2009-03-01'
author: Matthew Lang
author_slug: mlang
post_id: 1585
slug: fiveruns-dash-ruby-app-metrics-service-1585
url: "/fiveruns-dash-ruby-app-metrics-service-1585.html"
categories:
- miscellaneous
- tools
---

{{< rawhtml >}}
<p><span><a href="http://www.fiveruns.com/"><img class="alignleft size-full wp-image-1596" src="/assets/2009/02/fiveruns-ruby-small1.gif" alt="" width="200"></a><a href="http://dash.fiveruns.com">Dash</a>, a new metrics service from <a href="http://www.fiveruns.com">FiveRuns</a>, has been moved to private beta (for which you can apply) allowing interested developers to take part in assessing a new way to monitor your applications.  The new service from FiveRuns is an extensible monitoring service for gathering metrics from your critical daemons and applications.</span></p>
<p><span>Dash collects metrics from your applications using language or framework specific plugins.  These plugins collect the metrics and send them to FiveRuns to be presented on your application’s dashboard. Information from your metrics is presented in a series of reports comprising of sparklines and line charts.  Reports can present your metrics over different preset time periods.</span></p>
<p><span><a href="/assets/2009/02/dash-reports.jpg"><img class="alignright size-medium wp-image-1594" src="/assets/2009/02/dash-reports-300x219.jpg" alt="" width="300" height="219"></a>Currently Dash supports Ruby applications and daemons, as well as <a href="http://rubyonrails.xn--org-9o0a/">Rails</a>, <a href="http://www.sinatrarb.com/%E2%80%9D">Sinatra</a> and <a href="http://merbivore.com/%E2%80%9D">Merb applications</a>.  Each of these have their own metrics that you can monitor from the dashboard.  For example, when you set up a Rails application to monitor, you can collect metrics from Action Pack or ActiveRecord from within your Rails application.</span></p>
<p><span>Not only does Dash support Ruby, but it also has built-in support for Python and Java.  Not all deployed applications use one application, so it’s good to see that other popular languages are also supported.</span></p>
<p><span>As well as supporting metrics from with your application, Dash also lets you monitor metrics from outside your application using it’s Sensor plugin.  The <a href="http://github.com/fiveruns/dash-sensor/tree/master%E2%80%9D">Sensor</a> plugin currently supports <a href="http://nginx.net/%E2%80%9D">nginx</a>, <a href="http://httpd.apache.org/%E2%80%9D">Apache</a>, <a href="http://www.danga.com/memcached/%E2%80%9D">memcached</a> and <a href="http://rubyforge.org/projects/starling/%E2%80%9D">Starling</a>.  The Sensor plugin is also extensible, allowing developers to extend the plugin further to gather metrics from their own unique infrastructure.</span></p>
<p><span>Dash is an interesting approach to the market in that it allows developers to measure the metrics that only matter to them.  It’s hoped that over time the community can provide a library different types of metrics specific to different frameworks.</span></p>
<p>For the last week I have used Dash to monitor and collect metrics for a Rails application that is running in a production environment.  The metrics that I have collected have been quite an eye opener and have already allowed me to see where potential bottlenecks can happen.</p>
<p><span>If your interested in the private beta of Dash then you can sign up to the private beta <a href="http://dash.fiveruns.com/users/new%E2%80%9D">here</a>.</span></p>
<p><em>Post by <a href="http://matthewlang.co.uk">Matthew Lang</a> - Matthew Lang is an ERP developer with a keen interest in Ruby and Rails programming.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://www.ruby-china.org/dash-ruby-app-metrics-service/" rel="external nofollow" class="url">Ruby-China</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bruce Williams</strong> &middot; <time datetime="2009-03-01T06:18:00+00:00">March 1, 2009 at 6:18 am</time></p>
      <p>Thanks, Matthew.</p><p>It's worth mentioning that Dash isn't only about performance metrics, either.  While we certainly ship instrumentation to collect traditional performance metrics, at its heart Dash is a REST API that accepts arbitrary metrics &amp; provides a UI to build reports.  Internally, we use it to track business metrics as well (eg, conversion rate, number of active users), the goal being to be able to see the real health of the application, not just the performance characteristics.  if you can write a bit of code to extract a number from something, Dash can track it.</p><p>Dash also provides deployment (git/svn) and exception tracking, with notifications to twitter/email/campfire.  We're adding new features everyday (due largely to our extremely vocal, very creative, and growing set of beta testers).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>jackie</strong> &middot; <time datetime="2009-03-01T07:47:00+00:00">March 1, 2009 at 7:47 am</time></p>
      <p>nice service, but do you know if there is something similiar to install directly on the server without the need to use an external service?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan Wedekind</strong> &middot; <time datetime="2009-03-01T15:42:00+00:00">March 1, 2009 at 3:42 pm</time></p>
      <p>Off topic:<br>
The results of the Ruby Fukuoka Award [1] are out. The first price was awarded to the CLimate Information ToolKit (CLIK) [3].</p><p>[1] <a href="http://www.ruby-award.jp/" rel="nofollow">http://www.ruby-award.jp/</a><br>
[2] <a href="http://translate.google.com/translate?sl=ja&amp;tl=en&amp;u=http://www.ruby-award.jp/grand.html" rel="nofollow">http://translate.google.com/translate?sl=ja&amp;tl=en&amp;u=http://www.ruby-award.jp/grand.html</a><br>
[3] <a href="http://classpath.egloos.com/4808382" rel="nofollow">http://classpath.egloos.com/4808382</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Doe</strong> &middot; <time datetime="2009-03-01T19:34:00+00:00">March 1, 2009 at 7:34 pm</time></p>
      <p>This has the same problem like google analytics: i will no way give this data out of my hands.</p><p>So if this were an open source project that i could install in my own infrastructure it would be great.</p><p>Please, ruby community, stop advertising that kind of BS.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-03-02T00:56:00+00:00">March 2, 2009 at 12:56 am</time></p>
      <p>@John Doe: It's a problem for you, but we're not going to stop writing about stuff like this because, for the majority, things like Google Analytics, GMail, New Relic RPM, and other forms of centralized Web app work fine.</p><p>@John Doe &amp; @jackie: Yes, I believe Rubysophic's RubyRun is free and runs locally - see <a href="http://www.rubysophic.com/products/RubyRun/" rel="nofollow">http://www.rubysophic.com/products/RubyRun/</a> (disclaimer: they are a Ruby Inside sponsor)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-03-02T00:56:00+00:00">March 2, 2009 at 12:56 am</time></p>
      <p>@Jan Wedekind: You can post that to RubyFlow.com too if you like.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan Wedekind</strong> &middot; <time datetime="2009-03-02T14:55:00+00:00">March 2, 2009 at 2:55 pm</time></p>
      <p>@Peter Cooper: All right. <a href="http://rubyflow.com/items/1813" rel="nofollow">http://rubyflow.com/items/1813</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dwayne</strong> &middot; <time datetime="2009-03-02T22:05:00+00:00">March 2, 2009 at 10:05 pm</time></p>
      <p>How do you compare Dash to New Relic RPM</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-03-02T23:15:00+00:00">March 2, 2009 at 11:15 pm</time></p>
      <p>I only have casual experience with New Relic RPM but I believe RPM is focused at Rails applications. Dash is a more general performance metrics service that you can integrate "as you want."</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matthew Lang</strong> &middot; <time datetime="2009-03-03T07:33:00+00:00">March 3, 2009 at 7:33 am</time></p>
      <p>@Dwayne I've never used Relic RPM so I couldn't possibly compare one to the other.  What I like about Dash though is it's flexibility to be used in different Ruby frameworks as well as being fully extendable.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>jash</strong> &middot; <time datetime="2009-03-07T01:10:00+00:00">March 7, 2009 at 1:10 am</time></p>
      <p>matthew,</p><p>you should check out rpm:</p><p><a href="http://www.newrelic.com/get-RPM.html" rel="nofollow">http://www.newrelic.com/get-RPM.html</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
