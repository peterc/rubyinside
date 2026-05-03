---
title: Applying conditions to attribute setters
date: '2006-05-26'
author: Peter Cooper
author_slug: admin
post_id: 6
slug: applying-conditions-to-attribute-setters-6
url: "/applying-conditions-to-attribute-setters-6.html"
categories:
- cool
- ruby-tricks
---

{{< rawhtml >}}
<p>An anonymous commenter contributed a cute Ruby example on <a href="http://ex-mentis.blogspot.com/2006/05/are-paul-graham-and-joel-spolsky-right.html">this post talking about Java's verbosity</a>. The original poster lamented on how much code you have to write to create some basic accessors on a Java class.</p>
<p>With Ruby you can simply use attr, attr_accessor, attr_reader and attr_writer to create various types of accessors with a single line of code. They lack logic though, and you need to write your own accessors from scratch if you want even basic logic included. Mr. Anonymous came up with a solution, which I've slightly changed to produce this:</p>
<pre><span class="keyword">class </span><span class="class">Class</span>
        <span class="keyword">def </span><span class="method">attr</span><span class="punct">(</span><span class="ident">name</span><span class="punct">,</span> <span class="punct">&amp;</span><span class="ident">conditions</span><span class="punct">)</span>
                <span class="ident">varname</span> <span class="punct">=</span> <span class="punct">'</span><span class="string">@</span><span class="punct">'</span> <span class="punct">+</span> <span class="ident">name</span><span class="punct">.</span><span class="ident">to_s</span>
                <span class="ident">conditions</span> <span class="punct">||=</span> <span class="ident">lambda</span> <span class="punct">{</span><span class="constant">true</span><span class="punct">}</span>
                <span class="ident">define_method</span><span class="punct">(</span><span class="ident">name</span><span class="punct">)</span> <span class="keyword">do</span>
                        <span class="ident">instance_variable_get</span><span class="punct">(</span><span class="ident">varname</span><span class="punct">)</span>
                <span class="keyword">end</span>

                <span class="ident">define_method</span><span class="punct">(</span><span class="ident">name</span><span class="punct">.</span><span class="ident">to_s</span> <span class="punct">+</span> <span class="punct">'</span><span class="string">=</span><span class="punct">')</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">val</span><span class="punct">|</span>
                        <span class="keyword">raise</span> <span class="constant">ArgumentError</span><span class="punct">,</span> <span class="punct">"</span><span class="string"></span><span class="expr">#{name}</span> can't be <span class="expr">#{val}</span><span class="punct">"</span> <span class="keyword">unless</span> <span class="ident">conditions</span><span class="punct">.</span><span class="ident">call</span><span class="punct">(</span><span class="ident">val</span><span class="punct">)</span>
                        <span class="ident">instance_variable_set</span><span class="punct">(</span><span class="ident">varname</span><span class="punct">,</span> <span class="ident">val</span><span class="punct">)</span>
                <span class="keyword">end</span>
        <span class="keyword">end</span>
<span class="keyword">end</span>

<span class="keyword">class </span><span class="class">AClass</span>
        <span class="ident">attr</span><span class="punct">(</span><span class="symbol">:my_int</span><span class="punct">)</span> <span class="punct">{</span> <span class="punct">|</span><span class="ident">i</span><span class="punct">|</span> <span class="ident">i</span> <span class="punct">&gt;=</span> <span class="number">0</span> <span class="punct">}</span>
        <span class="ident">attr</span><span class="punct">(</span><span class="symbol">:my_string</span><span class="punct">)</span>
<span class="keyword">end</span>
</pre>
<p>With this code, 'attr' has been extended to support accepting a code block as a parameter. When you try to set my_int on an AClass object, if <em>i &gt;= 0 </em>is true, <em>my_int</em> is set. If it's under zero, Ruby throws an exception. This is great if you need to make sure the data is totally safe.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jonathan Conway</strong> &middot; <time datetime="2006-05-28T22:22:00+00:00">May 28, 2006 at 10:22 pm</time></p>
      <p>Cool piece of code, though I think people should be warned about the dangers of accessors/mutators as far as encapsulation is concerned. </p><p>When I left the land of Java and it was no longer expected of me to write code that needed to be a "bean" I found it a joyful day. Exposing the interals of an objects state via accessors and mutators leads to bad OO design and not to mention an extremely unhealthy amount of coupling. Its a dark path I tell thee!! *runs off jibbering like a mad man*</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
