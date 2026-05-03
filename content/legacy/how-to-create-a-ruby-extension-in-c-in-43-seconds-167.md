---
title: How to create a Ruby extension in C in 43 seconds
date: '2006-08-01'
author: Peter Cooper
author_slug: admin
post_id: 167
slug: how-to-create-a-ruby-extension-in-c-in-43-seconds-167
url: "/how-to-create-a-ruby-extension-in-c-in-43-seconds-167.html"
categories:
- cool
- ruby-tricks
---

{{< rawhtml >}}
<p>Two months ago, I wrote <a href="how-to-create-a-ruby-extension-in-c-in-under-5-minutes-100.html">How to Create a Ruby Extension in C in under 5 minutes</a>. But times have changed!</p>
<p><em>2012 update: Just tested and this all works in Ruby 1.9.3 almost six years later!</em></p>
<p>Zenspider, master of all things "Ruby + C", picked up the gauntlet and used RubyInline (previously <a href="using-rubyinline-to-speed-up-code-by-10x-159.html">covered here</a>) to <a href="http://blog.zenspider.com/blog/2006/08/writing-c-extensions-improved.html">hand my proverbial ass back to me on a platter</a>. All you have to have is <code>gem install RubyInline</code> and.. in just 43 seconds, you too could launch an editor, paste in this code, and check it out:</p>
<pre><span class="comment">#!/usr/local/bin/ruby -w</span>

<span class="ident">require</span> <span class="punct">'</span><span class="string">rubygems</span><span class="punct">'</span>
<span class="ident">require</span> <span class="punct">'</span><span class="string">inline</span><span class="punct">'</span>

<span class="keyword">class </span><span class="class">Example</span>
  <span class="ident">inline</span><span class="punct">(</span><span class="symbol">:C</span><span class="punct">)</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">builder</span><span class="punct">|</span>
    <span class="ident">builder</span><span class="punct">.</span><span class="ident">c</span> <span class="punct">"</span><span class="string">int test1() {
                 int x = 10;
                 return x;
               }</span><span class="punct">"</span>
  <span class="keyword">end</span>
<span class="keyword">end</span>

<span class="ident">p</span> <span class="constant">Example</span><span class="punct">.</span><span class="ident">new</span><span class="punct">.</span><span class="ident">test1</span>
</pre>
<p>No ruby.h? What ruby.h!? It's as easy <a href="http://blog.zenspider.com/blog/2006/08/writing-c-extensions-improved.html">as that.</a></p>
<p><em>2012 update: I think calling this a "Ruby extension" is a bit of a stretch. But that's six years of hindsight for you ;-)</em></p>
{{< /rawhtml >}}
