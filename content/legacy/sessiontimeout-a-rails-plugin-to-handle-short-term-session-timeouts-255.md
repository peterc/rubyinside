---
title: 'SessionTimeout: A Rails Plugin to handle short-term session timeouts'
date: '2006-10-02'
author: Peter Cooper
author_slug: admin
post_id: 255
slug: sessiontimeout-a-rails-plugin-to-handle-short-term-session-timeouts-255
url: "/sessiontimeout-a-rails-plugin-to-handle-short-term-session-timeouts-255.html"
categories:
- elsewhere
- ruby-on-rails
---

{{< rawhtml >}}
<p><a href="http://opensource.agileevolved.com/trac/wiki/SessionTimeout">SessionTimeout</a> is a Rails plugin by Luke Redpath that makes enforcing short session times easy, like so:</p>
<pre><span class="keyword">class </span><span class="class">ApplicationController</span>
	<span class="ident">session_times_out_in</span> <span class="number">600</span><span class="punct">,</span> <span class="symbol">:after_timeout</span> <span class="punct">=&gt;</span> <span class="symbol">:do_something</span>

	<span class="keyword">def </span><span class="method">do_something</span>
	  <span class="ident">logger</span><span class="punct">.</span><span class="ident">info</span> <span class="punct">"</span><span class="string">HELLO, IVE TIMED OUT!</span><span class="punct">"</span>
	<span class="keyword">end</span>
<span class="keyword">end</span>
</pre>
<p>Luke explains:</p>
<blockquote><p>With Rails built-in session options, you can set a specific session expiry time however in production mode this expiry time is set just the once. This is fine if you are setting your expiry time far in the future (and therefore you are likely to restart your server processes by that time) but if you want to set your timeout in the near future, your session expiry will soon be a date/time in the past - this will cause a new session to be created for every new request resulting in disaster.</p></blockquote>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Luke Redpath</strong> &middot; <time datetime="2006-10-02T17:17:00+00:00">October 2, 2006 at 5:17 pm</time></p>
      <p>Cool, thanks for the linkage. Don't forget you can also use Rails' time helpers for a more expressive timeout:</p><p>session_times_out_in 10.minutes</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
