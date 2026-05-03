---
title: 'Racksh: A Rails-Console-A-Like for Rack-Based Ruby Apps'
date: '2009-11-23'
author: Ric Roberts
author_slug: ricroberts
post_id: 2796
slug: racksh-rack-console-2796
url: "/racksh-rack-console-2796.html"
categories:
- miscellaneous
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2009/10/rack-logo.png" style="float:left; margin-right:12px; margin-bottom:12px;"> Have you ever yearned for something like Rails's <code>script/console</code> or Merb's <code>merb -i</code> in your other Rack based apps? If so, then <a href="http://sickill.net/">Marcin Kulik</a>'s <a href="http://github.com/sickill/racksh">racksh</a>, inspired by Heroku's console, might be for you.</p>
<p><strong>Racksh is a console for Rack based ruby web applications</strong>. It allows you run a console in the context of an application environment for Rails, Merb, Sinatra, Camping, Ramaze (or even your own framework) provided there is a <em>rackup</em> file in the root directory.  </p>
<p>When you run the <code>racksh</code> command, it loads the whole application environment just like a Rack web server, but instead of running the app it starts an <em>irb</em> session where you can invoke commands.</p>
<pre>
$ racksh
Rack::Shell v0.9.4 started in development environment.
&gt; Article.all
=&gt; # returns all articles...
</pre>
<p>As of version 0.9.4 (released this week), racksh uses Bryan Helmkamp's <a href="http://github.com/brynary/rack-test">rack-test</a> to simulate HTTP requests to your Rack application via the $rack variable.</p>
<pre>
$ racksh
Rack::Shell v0.9.4 started in development environment.
&gt; $rack.get "/"
=&gt; # returns a Rack::MockResponse
</pre>
<p>Racksh also allows you to apply configuration through a <em>.rackshrc</em> file.  This can be used to set headers which will be used for requests, or to make additional setup requests (e.g. to make sure a user is logged in).</p>
<p>Install as a gem from Gemcutter, or get <a href="http://github.com/sickill/racksh">the source</a> from Github.</p>
<pre>
gem install racksh -s http://gemcutter.org
</pre>
<p>For more details, check out the project's <a href="http://github.com/sickill/racksh/blob/master/README.markdown">README</a>, and <a href="http://sickill.net/blog/2009/11/19/more-rack-shell-goodies-for-all-rack-worshippers.html">these</a> recent <a href="http://sickill.net/blog/2009/11/15/rails-like-console-for-any-rack-based-ruby-web-app.html">posts</a> on Marcin's blog.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Botanicus</strong> &middot; <time datetime="2009-11-23T18:12:00+00:00">November 23, 2009 at 6:12 pm</time></p>
      <p>Racksh is great, I have support for it in my Rango framework <a href="http://github.com/botanicus/rango" rel="nofollow">http://github.com/botanicus/rango</a> When you generate a project via rango create project myblog, cd myblog; gem bundle and run ./init.rb -i, you'll get racksh console if racksh is available.</p><p>PS: Unfortunately at the moment you have to use <a href="http://github.com/botanicus/racksh" rel="nofollow">http://github.com/botanicus/racksh</a> otherwise init.rb will fail, but I sent a pull request, so I hope Marcin will fix it soon.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Marcin Kulik</strong> &middot; <time datetime="2009-11-23T19:38:00+00:00">November 23, 2009 at 7:38 pm</time></p>
      <p>Hi there, I've already applied Botanicus' patch and relased gem to gemcutter :)</p><p>It's nice to see that new ruby frameworks are using racksh as a default. First was Pancake, now Rango :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ric Roberts</strong> &middot; <time datetime="2009-11-24T12:58:00+00:00">November 24, 2009 at 12:58 pm</time></p>
      <p>Hi Marcin - thanks for your quick turnaround regarding the problems I initially had with racksh.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
