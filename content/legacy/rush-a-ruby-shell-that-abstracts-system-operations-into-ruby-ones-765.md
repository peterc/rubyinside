---
title: 'Rush: A Ruby Shell That Abstracts System Operations Into Ruby Ones'
date: '2008-02-22'
author: Peter Cooper
author_slug: admin
post_id: 765
slug: rush-a-ruby-shell-that-abstracts-system-operations-into-ruby-ones-765
url: "/rush-a-ruby-shell-that-abstracts-system-operations-into-ruby-ones-765.html"
categories:
- cool
- tools
---

{{< rawhtml >}}
<p><a href="http://adam.blog.heroku.com/past/2008/2/19/rush_the_ruby_shell/">Rush</a>, by Adam Wiggins, is an interesting development. It's a shell and remote login (as with SSH) replacement written in Ruby that accepts Ruby syntax to perform system operations. Consider these operations:</p>
<p></p>
<pre><span class="ident">processes</span><span class="punct">.</span><span class="ident">each</span> <span class="punct">{</span> <span class="punct">|</span><span class="ident">p</span><span class="punct">|</span> <span class="ident">p</span><span class="punct">.</span><span class="ident">kill</span> <span class="keyword">if</span> <span class="ident">p</span><span class="punct">.</span><span class="ident">command</span> <span class="punct">==</span> <span class="punct">"</span><span class="string">mongrel_rails</span><span class="punct">"</span> <span class="punct">}</span></pre>

<p>Or..</p>
<pre><span class="ident">local</span> <span class="punct">=</span> <span class="constant">Rush</span><span class="punct">::</span><span class="constant">Box</span><span class="punct">.</span><span class="ident">new</span><span class="punct">('</span><span class="string">localhost</span><span class="punct">')</span>
<span class="ident">remote</span> <span class="punct">=</span> <span class="constant">Rush</span><span class="punct">::</span><span class="constant">Box</span><span class="punct">.</span><span class="ident">new</span><span class="punct">('</span><span class="string">my.remote.server.com</span><span class="punct">')</span>
<span class="ident">local_dir</span> <span class="punct">=</span> <span class="ident">local</span><span class="punct">['</span><span class="string">/Users/adam/myproj/</span><span class="punct">']</span>
<span class="ident">remote_dir</span> <span class="punct">=</span> <span class="ident">remote</span><span class="punct">['</span><span class="string">/home/myproj/app/</span><span class="punct">']</span>
<span class="ident">local_dir</span><span class="punct">.</span><span class="ident">copy_to</span> <span class="ident">remote_dir</span>
<span class="ident">remote_dir</span><span class="punct">['</span><span class="string">**/.svn/</span><span class="punct">'].</span><span class="ident">each</span> <span class="punct">{</span> <span class="punct">|</span><span class="ident">d</span><span class="punct">|</span> <span class="ident">d</span><span class="punct">.</span><span class="ident">destroy</span> <span class="punct">}</span></pre>
<p>Instead of making you use the usual UNIX commands, Rush abstracts a collection of system related tasks and allows you to perform operations using the Ruby you know and love. I can't say I'm rushing to install this just yet, because I think there might be some security aspects that need to be figured out, but it's definitely a bold, interesting development and I'm keen to see where it goes next.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Alex Zavalny</strong> &middot; <time datetime="2008-02-22T22:37:00+00:00">February 22, 2008 at 10:37 pm</time></p>
      <p>Rush cannot be used on Windows, can it?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Arlen</strong> &middot; <time datetime="2008-02-23T00:01:00+00:00">February 23, 2008 at 12:01 am</time></p>
      <p>It's cool, but seems to be a rather elongated way of doing most tasks. I think with some shortcuts it could be cooler.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Robert Nasiadek</strong> &middot; <time datetime="2008-02-24T14:57:00+00:00">February 24, 2008 at 2:57 pm</time></p>
      <p>Looks pretty nice. I totally agree with Arlen, but once this is sorted out it would be much more powerful than regular bash scripts and probably a lot faster.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
