---
title: Pre-processing / normalizing parameters in Rails
date: '2006-07-15'
author: Peter Cooper
author_slug: admin
post_id: 145
slug: pre-processing-normalizing-parameters-in-rails-145
url: "/pre-processing-normalizing-parameters-in-rails-145.html"
categories:
- elsewhere
- ruby-on-rails
---

{{< rawhtml >}}
<p>Bruce Williams tries to <a href="http://codefluency.com/articles/2006/07/13/rails-views-preprocessing-parameters/">solve the problem of multiple parameter types</a> in Rails. For example, an action may accept dates via a parameter, but dates may be supplied in many forms. A 'date' parameter might arrived as if from a date_select helper, or might even be typed in directly by a user, or be pulled from a database. Rather than use before_filters to check parameters and normalize them, Bruce suggests that it should be possible to add basic conversion tools to certain data types so that all data is normalized by the time it hits your controllers.</p>
<p>Bruce provides a simple example to demonstrate how two different types of date could be prenormalized:</p>
<pre><span class="constant">ActionController</span><span class="punct">::</span><span class="constant">Base</span><span class="punct">.</span><span class="ident">add_param_type</span> <span class="punct">'</span><span class="string">date</span><span class="punct">'</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">value</span><span class="punct">|</span>
  <span class="keyword">case</span> <span class="ident">value</span>
  <span class="keyword">when</span> <span class="constant">String</span>
    <span class="constant">Date</span><span class="punct">.</span><span class="ident">parse</span><span class="punct">(</span><span class="ident">value</span><span class="punct">)</span>
  <span class="keyword">when</span> <span class="constant">Hash</span>
    <span class="constant">Date</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="constant">Integer</span><span class="punct">(</span><span class="ident">value</span><span class="punct">['</span><span class="string">year</span><span class="punct">']),</span> <span class="constant">Integer</span><span class="punct">(</span><span class="ident">value</span><span class="punct">['</span><span class="string">month</span><span class="punct">']),</span> <span class="constant">Integer</span><span class="punct">(</span><span class="ident">value</span><span class="punct">['</span><span class="string">day</span><span class="punct">']))</span>
  <span class="keyword">end</span>
<span class="keyword">end</span>
</pre>
<p>His ideas are available in a plugin called param_types. Learn more about how to install and use it in <a href="http://codefluency.com/articles/2006/07/13/rails-views-preprocessing-parameters/">his blog post</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Gareth</strong> &middot; <time datetime="2006-07-16T23:19:00+00:00">July 16, 2006 at 11:19 pm</time></p>
      <p>I stopped reading the article as soon as he mentioned "AJAX calendar". Just because you're using Rails doesn't leave you free to use as many irrelevant buzzwords as you like. I really doubt that date selecct widget does use XmlHTTPRequest, and if it does then it's ridiculously overengineered</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bruce</strong> &middot; <time datetime="2006-07-17T06:15:00+00:00">July 17, 2006 at 6:15 am</time></p>
      <p>Gareth, the use of "AJAX" (even with "Calendar") hardly constitutes irrelevancy (or even full buzzword compliance, I think), and if you'd read a little further you'd notice the plugin has nothing whatsoever to do with AJAX-- or XmlHTTPRequest, if you prefer to be formal and pedantic.</p><p>And no, date select (and friends), are engineered *just right,* you'll be happy to know. Of course, the API documentation makes that pretty clear (watch out, though, they use that scary "AJAX" word in there, too).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-07-17T12:50:00+00:00">July 17, 2006 at 12:50 pm</time></p>
      <p>I'm sorry you seem to be getting a bit of flak in both the posts here, Bruce. I think your work is great (which is why I link to it :)).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bruce</strong> &middot; <time datetime="2006-07-18T02:09:00+00:00">July 18, 2006 at 2:09 am</time></p>
      <p>Thanks, Peter.  </p><p>It's no big deal, though; in this community we [generally] run across constructive criticism-- and that's something I enjoy receiving.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
