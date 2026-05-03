---
title: 'god: Extensible Process Monitoring Framework'
date: '2007-07-18'
author: Hendy Irawan
author_slug: hendy-irawan
post_id: 559
slug: god-extensible-process-monitoring-framework-559
url: "/god-extensible-process-monitoring-framework-559.html"
categories:
- cool
- enterprise
- linux-specific
- ruby-on-rails
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2007/07/god-monitoring.jpg"></p>
<p><a href="http://god.rubyforge.org/">god</a> monitors your server processes and tasks to make sure they run smoothly, and performs maintenance tasks (such as restarting your application servers) as necessary. This Ruby application is written by <a href="http://rubyisawesome.com/">Tom Preston-Werner</a> and serves similar functionality to, and inspired by, a popular tool called <a href="http://www.tildeslash.com/monit/">monit</a>.</p>
<p>Among the features god provides include:</p>
<ul>
<li>
	Config file is written in Ruby<br>
	Easily write your own custom conditions in Ruby<br>
	Supports both poll and event based conditions<br>
	Different poll conditions can have different intervals</li>
</ul>
<p>Here's a part of an example config file used to monitor mongrel instances:</p>
<pre>god.watch do |w|
  w.name = "gravatar2-mongrel-#{port}"
  w.interval = 30 # seconds
  w.start = "mongrel_rails cluster::start --only #{port}
    -C #{RAILS_ROOT}/config/mongrel_cluster.yml"
  w.stop = "mongrel_rails cluster::stop --only #{port}
    -C #{RAILS_ROOT}/config/mongrel_cluster.yml"
  w.grace = 10 # seconds

  ...
end
</pre>
<p>Monit users (including myself) will instantly recognize the mapping between monit rules/tests and the ones in a god config file. The main difference and advantage is, because god uses the Ruby language, you can have all sorts of advanced tests, loops, and even include your own extensions like modules and mixins. God actually supports an official mechanism for this purpose.</p>
<p>Install god using Rubygems:</p>
<pre>sudo gem install god -y
</pre>
<p>The <a href="http://god.rubyforge.org/">god web page</a> has thorough information and you can also <a href="http://repo.or.cz/w/god.git">browse the source code directly</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Nick</strong> &middot; <time datetime="2007-07-18T07:44:00+00:00">July 18, 2007 at 7:44 am</time></p>
      <p>I don't believe in god</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tamer Salama</strong> &middot; <time datetime="2007-07-18T22:18:00+00:00">July 18, 2007 at 10:18 pm</time></p>
      <p>Haven't they found a better name ?!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-07-19T06:03:00+00:00">July 19, 2007 at 6:03 am</time></p>
      <p>I don't understand all the hoopla around the name. A lot of supposedly intelligent people wasted a lot of their valuable time actually discussing this in ruby-talk and sent the S/N ratio through the floor. It's a name, much like Mongrel, Hpricot, or that any other Ruby library has.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hendy Irawan</strong> &middot; <time datetime="2007-07-19T06:10:00+00:00">July 19, 2007 at 6:10 am</time></p>
      <p>Dear Nick and Tamer,</p><p>It seems a lot of people agree with you, as you're not the only one who says so. :-)</p><p>You might be interested at <a href="http://groups.google.co.id/group/ruby-talk-google/browse_thread/thread/b9f7d625576349c3/fb0fe13005215a7b" rel="nofollow">debates around the god monitoring framework</a>. There's no bad time for a bit of entertainment. ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kevin Clark</strong> &middot; <time datetime="2007-07-20T04:11:00+00:00">July 20, 2007 at 4:11 am</time></p>
      <p>god 0.2.0 is actually already out if you want to take a look. The new release features event based monitoring (straight from kqueue or netlink depending on your OS), so things can come back up as soon as they go down.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hendy Irawan</strong> &middot; <time datetime="2007-07-20T15:06:00+00:00">July 20, 2007 at 3:06 pm</time></p>
      <p>Thanks Kevin for the update! :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>g</strong> &middot; <time datetime="2007-07-22T02:43:00+00:00">July 22, 2007 at 2:43 am</time></p>
      <p>More pointless wheel re-inventing by someone who drank too much Ruby kool-aid.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
