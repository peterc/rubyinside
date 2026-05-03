---
title: Control your Rails Process Sizes with Ruby 1.8.5
date: '2006-09-21'
author: Peter Cooper
author_slug: admin
post_id: 246
slug: control-your-rails-process-sizes-with-ruby-185-246
url: "/control-your-rails-process-sizes-with-ruby-185-246.html"
categories:
- cool
- ruby-on-rails
- ruby-tricks
---

{{< rawhtml >}}
<p>Eric Hodel has <a href="http://blog.segment7.net/articles/2006/09/13/controlling-rails-process-size">looked at a new feature</a> provided by Ruby 1.8.5 called <em>Process::setrlimit</em>. It makes it easy to limit the memory usage of your Ruby processes.. ideal if you're experiencing memory leaks! Eric shows an example that's as simple as adding this to your application's <em>environment.rb</em> file:</p>
<pre><span class="constant">Process</span><span class="punct">.</span><span class="ident">setrlimit</span> <span class="constant">Process</span><span class="punct">::</span><span class="constant">RLIMIT_RSS</span><span class="punct">,</span> <span class="number">1024</span><span class="punct">*</span><span class="number">1024</span><span class="punct">*</span><span class="number">150</span><span class="punct">,</span> <span class="constant">Process</span><span class="punct">::</span><span class="constant">RLIM_INFINITY</span>
</pre>
<p>Of course, this isn't a Rails only feature.</p>
{{< /rawhtml >}}
