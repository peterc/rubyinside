---
title: 'Watchr: A Flexible, Generic Alternative to AutoTest'
date: '2009-09-24'
author: Ric Roberts
author_slug: ricroberts
post_id: 2511
slug: watchr-generic-autotest-alternativ-2511
url: "/watchr-generic-autotest-alternativ-2511.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2009/09/watcher.jpg" alt="watcher" style="float:left; margin-right:12px; margin-bottom:12px"><a href="http://github.com/mynyml/watchr">Watchr</a> is a continuous-testing tool by <a href="http://mynyml.com/">Martin Aumont</a> in the vein of Autotest (part of the <a href="http://www.zenspider.com/ZSS/Products/ZenTest/">ZenTest</a> package).</p>
<p>At its heart, Watchr basically watches any (or all!) of your project's files, then executes arbitrary Ruby code of your choice when things change.  Watchr configuration takes such a form:</p>
<pre>
watch('pattern') { |match_data_object| command_to_run }
</pre>
<p>For example, to produce Autotest-like functionality, you'd just specify Watchr to run the tests whenever a test or some library code changes, like this (taken from Martin's blog post):</p>
<pre>watch('test/test_.*.rb') { |md| system "ruby #{md[0]}"}
watch('lib/(.*).rb')     { |md| system "ruby test/test_#{md[1]}.rb"}</pre>
<p>...but Watchr can be used for much more than just testing.  You could use it to automatically generate documentation, build your gem or any other tasks that you can script in Ruby.</p>
<p>To get started with Watchr, just install the gem (from <a href="http://gemcutter.org/">Gemcutter</a>), and run the watchr command from your project root, passing the location of the configuration script:</p>
<pre>
$ gem install watchr --source=http://gemcutter.org
$ cd to/your/project/root
$ watchr path/to/script
</pre>
<p>The <a href="http://github.com/mynyml/watchr">source</a> and some <a href="http://wiki.github.com/mynyml/watchr">documentation</a> (including example scripts) is available on Github, and you can <a href="http://mynyml.com/ruby/flexible-continuous-testing">read more on Martin's blog</a> too.</p>
<p>If an even more simplistic route appeals to you, Ruby Inside's editor, Peter Cooper, has <a href="http://gist.github.com/113226">a basic Rake task</a> that can run a script of your choice when files change within a project.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Kerry Buckley</strong> &middot; <time datetime="2009-09-24T12:19:00+00:00">September 24, 2009 at 12:19 pm</time></p>
      <blockquote><p>
Unlike Autotest, Watchr doesn't depend on rubygems…
</p></blockquote><p>Cool.</p><blockquote><p>
…To get started with Watchr, just install the gem
</p></blockquote><p>Wait, what?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-09-24T12:28:00+00:00">September 24, 2009 at 12:28 pm</time></p>
      <p>Good catch, Kerry - I've fixed it up.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>mynyml</strong> &middot; <time datetime="2009-09-24T13:04:00+00:00">September 24, 2009 at 1:04 pm</time></p>
      <p>oops :)</p><p>Yeah I agree the Watchr docs don't make it too clear either. It doesn't depend on rubygems as in if you install Watchr with rip (rip install git://github.com/mynyml/watchr.git), rubygems will never be loaded. Just trying to be a good gemizen. Though of course, a gem is still provided for convenience.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Adrian Veidt</strong> &middot; <time datetime="2009-09-24T15:06:00+00:00">September 24, 2009 at 3:06 pm</time></p>
      <p>But who watches the Watchr?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ric Roberts</strong> &middot; <time datetime="2009-09-24T16:00:00+00:00">September 24, 2009 at 4:00 pm</time></p>
      <p>Regarding the rubygems thing - I was trying to express what Martin explains above. i.e. you don't need rubygems if you don't want it.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
