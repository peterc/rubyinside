---
title: 'AutoAdmin: Auto-generated admin interface in a Rails plugin'
date: '2006-08-17'
author: Peter Cooper
author_slug: admin
post_id: 195
slug: autoadmin-auto-generated-admin-interface-in-a-rails-plugin-195
url: "/autoadmin-auto-generated-admin-interface-in-a-rails-plugin-195.html"
categories:
- cool
- elsewhere
- ruby-on-rails
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2006/08/autoadmin.jpg" height="200" width="295" border="1" hspace="4" vspace="4" alt="Autoadmin"></p>
<p><a href="http://code.trebex.net/auto-admin">AutoAdmin</a> is a new plugin for Rails that automatically generates an administration interface for your models. It's heavily inspired by Django, where meta-data relating to the administration interface is placed directly into the models. This goes directly against David Heinemeier Hansson's preferences, but might be perfect for your own systems.</p>
<p>Example model code:</p>
<pre><span class="keyword">class </span><span class="class">Customer</span> <span class="punct">&lt;</span> <span class="constant">ActiveRecord</span><span class="punct">::</span><span class="constant">Base</span>
  <span class="ident">belongs_to</span> <span class="symbol">:store</span>
  <span class="ident">has_many</span> <span class="symbol">:payments</span><span class="punct">,</span> <span class="symbol">:order</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">payment_date DESC</span><span class="punct">'</span>

  <span class="keyword">def </span><span class="method">name</span><span class="punct">;</span> <span class="ident">first_name</span> <span class="punct">+</span> <span class="punct">'</span><span class="string"> </span><span class="punct">'</span> <span class="punct">+</span> <span class="ident">last_name</span><span class="punct">;</span> <span class="keyword">end</span>

  <span class="ident">sort_by</span> <span class="symbol">:last_name</span>
  <span class="ident">search_by</span> <span class="symbol">:first_name</span><span class="punct">,</span> <span class="symbol">:last_name</span>
  <span class="ident">filter_by</span> <span class="symbol">:active</span><span class="punct">,</span> <span class="symbol">:store</span>
  <span class="ident">default_filter</span> <span class="symbol">:active</span> <span class="punct">=&gt;</span> <span class="constant">true</span>
  <span class="ident">list_columns</span> <span class="symbol">:store</span><span class="punct">,</span> <span class="symbol">:first_name</span><span class="punct">,</span> <span class="symbol">:last_name</span>

  <span class="ident">admin_fieldset</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">b</span><span class="punct">|</span>
    <span class="ident">b</span><span class="punct">.</span><span class="ident">text_field</span> <span class="symbol">:first_name</span>
    <span class="ident">b</span><span class="punct">.</span><span class="ident">text_field</span> <span class="symbol">:last_name</span>
    <span class="ident">b</span><span class="punct">.</span><span class="ident">select</span> <span class="symbol">:store</span>
  <span class="keyword">end</span>
  <span class="ident">admin_child_table</span> <span class="punct">'</span><span class="string">Payments</span><span class="punct">',</span> <span class="symbol">:payments</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">b</span><span class="punct">|</span>
    <span class="ident">b</span><span class="punct">.</span><span class="ident">static_text</span> <span class="symbol">:payment_date</span>
    <span class="ident">b</span><span class="punct">.</span><span class="ident">static_text</span> <span class="symbol">:amount</span>
  <span class="keyword">end</span>
<span class="keyword">end</span>
</pre>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Mike Blair</strong> &middot; <time datetime="2006-08-17T22:29:00+00:00">August 17, 2006 at 10:29 pm</time></p>
      <p>Cool, the admin interface was by far the best part of Django.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeff</strong> &middot; <time datetime="2006-08-18T00:04:00+00:00">August 18, 2006 at 12:04 am</time></p>
      <p>Thanks, I was looking for a write up of this earlier today, but couldn't find one.  Finding this in my feed agg hit the spot.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Christoffer Sawicki</strong> &middot; <time datetime="2006-08-18T20:42:00+00:00">August 18, 2006 at 8:42 pm</time></p>
      <p>Another project with similar scope: <a href="http://streamlined.relevancellc.com/" rel="nofollow">http://streamlined.relevancellc.com/</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
