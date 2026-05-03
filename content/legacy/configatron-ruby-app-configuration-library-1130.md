---
title: 'Configatron: Simple, Persistent Configs for your Ruby App(s)'
date: '2008-08-31'
author: Peter Cooper
author_slug: admin
post_id: 1130
slug: configatron-ruby-app-configuration-library-1130
url: "/configatron-ruby-app-configuration-library-1130.html"
categories:
- miscellaneous
- tools
---

{{< rawhtml >}}
<p><a href="http://configatron.mackframework.com/">Configatron</a> is a new Ruby library that makes it easy to have persistently accessible configuration data available through your Ruby application. It bears some similarities to the Rails plugin<a href="http://github.com/lukeredpath/simpleconfig/tree/master">SimpleConfig</a>, but being distributed as a gem, is suitable for non-Rails applications. To install: <code>gem install configatron</code></p>
<p>Once configatron is installed, the following code will get things going:</p>
<p>
</p>
<pre><span class="ident">configatron</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">config</span><span class="punct">|</span>
  <span class="ident">config</span><span class="punct">.</span><span class="ident">app_name</span> <span class="punct">=</span> <span class="punct">"</span><span class="string">My Awesomely Jazzy App</span><span class="punct">"</span>
  <span class="ident">config</span><span class="punct">.</span><span class="ident">database_url</span> <span class="punct">=</span> <span class="punct">"</span><span class="string">postgres://localhost/somedb</span><span class="punct">"</span>
  <span class="comment"># etc...</span>
<span class="keyword">end</span></pre>

<p>And then you can access these configuration variables throughout your application, like so:</p>
<p>
</p>
<pre><span class="ident">configatron</span><span class="punct">.</span><span class="ident">app_name</span>     <span class="comment"># =&gt; "My Awesomely Jazzy App"</span>
<span class="ident">configatron</span><span class="punct">.</span><span class="ident">database_url</span> <span class="comment"># =&gt; "postgres://localhost/somedb"</span></pre>

<p>Note that this only gives a very cursory look at what Configatron offers, however, as it has many other features - including namespacing and nested configurations.</p>
<p>Configatron comes from Mark Bates, creator of the <a href="mack-distributed-ruby-web-application-framework-releases-070-1107.html">Mack</a> Web application framework.</p>
<p class="s"><cite>Post supported by <a href="http://thoughtbot.com/training">thoughtbot training</a> —</cite> <a href="http://thoughtbot.com">thoughtbot</a> is a five year old web development consultancy, specializing exclusively in Ruby since Rails 1.0. We now provide an <a href="http://thoughtbot.com/training">Advanced Rails training class</a>, sharing our lessons from the trenches and interactively taking participants through the source and development process of a real-world app, <a href="http://umbrellatoday.com">Umbrella Today</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jackson</strong> &middot; <time datetime="2008-08-31T01:57:00+00:00">August 31, 2008 at 1:57 am</time></p>
      <p>So it's a verbose DSL for making a global hash? </p><p>Do not want.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark Bates</strong> &middot; <time datetime="2008-08-31T03:14:00+00:00">August 31, 2008 at 3:14 am</time></p>
      <p>Thanks Peter for the great write up. Jackson, it's more than just a DSL for creating a global hash. It provides n-level nesting of namespaced configurations, with the ability to override a single value, n-levels deep as well. it provides the ability to revert the last set of configurations, great for testing, you can reload the configurations, great if you don't want to have to restart your application if something changes, and a bit more. If you don't like it, that's cool. I'm just putting it out there because it makes my day a bit nicer to use it, and I like to share. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alex Zavalny</strong> &middot; <time datetime="2008-08-31T08:22:00+00:00">August 31, 2008 at 8:22 am</time></p>
      <p>Hi there! just wanted to say that there is an error in your code.<br>
This -&gt; config.app_name     # =&gt; "My Awesomely Jazzy App"<br>
Should be -&gt; configatron.app_name</p><p>Check it and fix it ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jamie Flournoy</strong> &middot; <time datetime="2008-08-31T10:18:00+00:00">August 31, 2008 at 10:18 am</time></p>
      <p>Since there's no link to Configatron in the article:</p><p><a href="http://github.com/markbates/configatron/" rel="nofollow">http://github.com/markbates/configatron/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark Bates</strong> &middot; <time datetime="2008-08-31T13:03:00+00:00">August 31, 2008 at 1:03 pm</time></p>
      <p>You can also find the RDoc at <a href="http://configatron.mackframework.com" rel="nofollow">http://configatron.mackframework.com</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-08-31T16:40:00+00:00">August 31, 2008 at 4:40 pm</time></p>
      <p>Can't believe I forgot to link it - thanks!</p><p>Alex: What's the error? It's meant to be a comment.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Robin Kaarsgaard</strong> &middot; <time datetime="2008-08-31T22:27:00+00:00">August 31, 2008 at 10:27 pm</time></p>
      <p>What he means is that one should use configatron.app_name instead of config.app_name when accessing the configuration ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-08-31T22:34:00+00:00">August 31, 2008 at 10:34 pm</time></p>
      <p>Ohh, thanks :)</p><p>I think I'm going to write this post off as a calamity from start to finish. Quick, need another one ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brendan</strong> &middot; <time datetime="2008-09-01T20:09:00+00:00">September 1, 2008 at 8:09 pm</time></p>
      <p>@Mark Awesome work, and more importantly great timing. I've been looking for something just like this. Namespaces!</p><p>@Jackson I hope you took the time to click on the link, because you'll see it's pretty amazing. It's not for everyone, so if you don't need it, just don't use it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>7rans</strong> &middot; <time datetime="2008-09-09T06:27:00+00:00">September 9, 2008 at 6:27 am</time></p>
      <p>Ditch the global. Instead allow</p><p> myconfigatron = Configatron.new do ...</p><p>If you want to use it globally then use:</p><p>  $configatron = Configatron.new do ...</p><p>or at the toplevel:</p><p>  def configatron<br>
    @configatron ||= Configatron.new<br>
  end</p><p>But I'd encourage you to move past globals. I know it is very convenient, especially for a Web Framework, but in the end you'll be much better off encapsulating. Think DI.</p><p>(NOTE: This is much like an OpenCascade).</p><p>T.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
