---
title: Clever Find Conditions in Rails without SQL
date: '2006-06-08'
author: Peter Cooper
author_slug: admin
post_id: 56
slug: clever-find-conditions-in-rails-without-sql-56
url: "/clever-find-conditions-in-rails-without-sql-56.html"
categories:
- cool
- ruby-on-rails
---

{{< rawhtml >}}
<p>Ryan Daigle <a href="http://www.ryandaigle.com/articles/2006/06/06/whats-new-in-edge-rails-convenient-finder-parameter-hashes">reports that the latest 'edge Rails' has a cool new feature</a> that lets you specify find conditions more logically. For example:</p>
<pre><span class="constant">Post</span><span class="punct">.</span><span class="ident">find</span><span class="punct">(</span><span class="symbol">:first</span><span class="punct">,</span> <span class="symbol">:conditions</span> <span class="punct">=&gt;</span> <span class="punct">['</span><span class="string">status = ? and active = ?</span><span class="punct">',</span> <span class="number">1</span><span class="punct">,</span> <span class="number">1</span><span class="punct">])</span>
</pre>
<p>.. becomes:</p>
<pre><span class="constant">Post</span><span class="punct">.</span><span class="ident">find</span><span class="punct">(</span><span class="symbol">:first</span><span class="punct">,</span> <span class="symbol">:conditions</span> <span class="punct">=&gt;</span> <span class="punct">{</span> <span class="symbol">:status</span> <span class="punct">=&gt;</span> <span class="number">1</span><span class="punct">,</span> <span class="symbol">:active</span> <span class="punct">=&gt;</span> <span class="number">1</span> <span class="punct">})</span>
</pre>
<p>I've accidentally tried to use this style before, and am glad it's now an approved part of Rails. If you're running edge Rails, you should have access to it as soon as you update, otherwise wait for Rails 1.2 :)</p>
<p>If this tickles your fancy, you might also want to check out <a href="http://brainspl.at/articles/2006/01/30/i-have-been-busy">ez_where</a> by Ezra Zygmuntowicz that lets you do insanely cool stuff like:</p>
<pre><span class="ident">articles</span> <span class="punct">=</span> <span class="constant">Article</span><span class="punct">.</span><span class="ident">ez_find</span><span class="punct">(</span><span class="symbol">:all</span><span class="punct">,</span> <span class="symbol">:include</span> <span class="punct">=&gt;</span> <span class="symbol">:author</span><span class="punct">)</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">article</span><span class="punct">,</span> <span class="ident">author</span><span class="punct">|</span>
  <span class="ident">article</span><span class="punct">.</span><span class="ident">title</span> <span class="punct">=~</span> <span class="punct">"</span><span class="string">%Foo Title%</span><span class="punct">"</span>
  <span class="ident">author</span><span class="punct">.</span><span class="ident">any</span> <span class="keyword">do</span>
    <span class="ident">name</span> <span class="punct">==</span> <span class="punct">'</span><span class="string">Ezra</span><span class="punct">'</span>
    <span class="ident">name</span> <span class="punct">==</span> <span class="punct">'</span><span class="string">Fab</span><span class="punct">'</span>
  <span class="keyword">end</span>
<span class="keyword">end</span>
</pre>
<p>Yes, abstraction rules.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Michael Gorsuch</strong> &middot; <time datetime="2006-06-09T13:11:00+00:00">June 9, 2006 at 1:11 pm</time></p>
      <p>This RULES.  Now (if I'm thinking about this correctly), I can pass a simple hash that I build from parameters of a form.  </p><p>For example, a search form.  I no longer have to think out all of the cases of what combinations of form fields a user may or may not populate.  I can simply take what he or she does, transform that into a hash, and pass it.</p><p>Brilliant.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mr eel</strong> &middot; <time datetime="2006-06-28T03:48:00+00:00">June 28, 2006 at 3:48 am</time></p>
      <p>Well, if you wanted to something like that, you still need to be aware of users putting SQL statements into an input.</p><p>I wonder if conditions passed in via a hash are getting sanitised? If they are, it removes the danger from doing what you suggest.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
