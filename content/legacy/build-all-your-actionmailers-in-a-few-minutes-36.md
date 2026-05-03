---
title: Generic ActionMailers make Rails e-mails easy
date: '2006-06-04'
author: Peter Cooper
author_slug: admin
post_id: 36
slug: build-all-your-actionmailers-in-a-few-minutes-36
url: "/build-all-your-actionmailers-in-a-few-minutes-36.html"
categories:
- ruby-on-rails
- tutorials
---

{{< rawhtml >}}
<p>A few months ago I was getting fed up of having to create new ActionMailers from scratch on my Rails applications, so I decided to come up with a 'generic' way to cover all the bases. Instead of creating multiple mailers, you create a single mailer and append generic methods. The content goes to the regular RHTML files and you send through whatever you want from your controllers. See <a href="http://www.bigbold.com/snippets/posts/show/1338">Simplifying ActionMailer development</a> in Ruby on Rails. There's probably a lot that could be done to it now, but it works great for me.</p>
<p>An example ActionMailer class:</p>
<pre><span class="keyword">class </span><span class="class">Mailer</span> <span class="punct">&lt;</span> <span class="constant">ActionMailer</span><span class="punct">::</span><span class="constant">Base</span>

  <span class="ident">helper</span> <span class="constant">ActionView</span><span class="punct">::</span><span class="constant">Helpers</span><span class="punct">::</span><span class="constant">UrlHelper</span>

  <span class="keyword">def </span><span class="method">generic_mailer</span><span class="punct">(</span><span class="ident">options</span><span class="punct">)</span>

    <span class="attribute">@recipients</span> <span class="punct">=</span> <span class="ident">options</span><span class="punct">[</span><span class="symbol">:recipients</span><span class="punct">]</span> <span class="punct">||</span> <span class="punct">"</span><span class="string">me@<!--*-->privacy.net</span><span class="punct">"</span>
    <span class="attribute">@from</span> <span class="punct">=</span> <span class="ident">options</span><span class="punct">[</span><span class="symbol">:from</span><span class="punct">]</span> <span class="punct">||</span> <span class="punct">"</span><span class="string">me@<!--*-->privacy.net</span><span class="punct">"</span>

    <span class="attribute">@cc</span> <span class="punct">=</span> <span class="ident">options</span><span class="punct">[</span><span class="symbol">:cc</span><span class="punct">]</span> <span class="punct">||</span> <span class="punct">""</span>
    <span class="attribute">@bcc</span> <span class="punct">=</span> <span class="ident">options</span><span class="punct">[</span><span class="symbol">:bcc</span><span class="punct">]</span> <span class="punct">||</span> <span class="punct">""</span>

    <span class="attribute">@subject</span> <span class="punct">=</span> <span class="ident">options</span><span class="punct">[</span><span class="symbol">:subject</span><span class="punct">]</span> <span class="punct">||</span> <span class="punct">""</span>
    <span class="attribute">@body</span> <span class="punct">=</span> <span class="ident">options</span><span class="punct">[</span><span class="symbol">:body</span><span class="punct">]</span> <span class="punct">||</span> <span class="punct">{}</span>

    <span class="attribute">@headers</span> <span class="punct">=</span> <span class="ident">options</span><span class="punct">[</span><span class="symbol">:headers</span><span class="punct">]</span> <span class="punct">||</span> <span class="punct">{}</span>
    <span class="attribute">@charset</span> <span class="punct">=</span> <span class="ident">options</span><span class="punct">[</span><span class="symbol">:charset</span><span class="punct">]</span> <span class="punct">||</span> <span class="punct">"</span><span class="string">utf-8</span><span class="punct">"</span>

  <span class="keyword">end</span>

  <span class="comment"># Create placeholders for whichever e-mails you need to deal with.</span>
  <span class="comment"># Override mail elements where necessary</span>

  <span class="keyword">def </span><span class="method">contact_us</span><span class="punct">(</span><span class="ident">options</span><span class="punct">)</span>
    <span class="constant">self</span><span class="punct">.</span><span class="ident">generic_mailer</span><span class="punct">(</span><span class="ident">options</span><span class="punct">)</span>
  <span class="keyword">end</span>
  <span class="punct">...</span>
<span class="keyword">end</span>
</pre>
<p>An example delivery call from a controller:</p>
<pre><span class="constant">Mailer</span><span class="punct">.</span><span class="ident">deliver_contact_us</span><span class="punct">(</span>
   <span class="symbol">:recipients</span> <span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">x@<!--*-->x.com</span><span class="punct">",</span>
   <span class="symbol">:body</span> <span class="punct">=&gt;</span> <span class="punct">{</span>
               <span class="symbol">:name</span> <span class="punct">=&gt;</span> <span class="ident">params</span><span class="punct">[</span><span class="symbol">:name</span><span class="punct">],</span>

               <span class="symbol">:phone</span> <span class="punct">=&gt;</span> <span class="ident">params</span><span class="punct">[</span><span class="symbol">:phone</span><span class="punct">],</span>
               <span class="symbol">:email</span> <span class="punct">=&gt;</span> <span class="ident">params</span><span class="punct">[</span><span class="symbol">:email</span><span class="punct">],</span>

               <span class="symbol">:message</span> <span class="punct">=&gt;</span> <span class="ident">params</span><span class="punct">[</span><span class="symbol">:message</span><span class="punct">]</span>
             <span class="punct">},</span>
   <span class="symbol">:from</span> <span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">y@<!--*-->y.com</span><span class="punct">"</span>
<span class="punct">)</span>
</pre>
{{< /rawhtml >}}
