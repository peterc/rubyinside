---
title: HTTP Authentication plugin for Rails
date: '2006-05-28'
author: Peter Cooper
author_slug: admin
post_id: 13
slug: http-authentication-plugin-for-rails-13
url: "/http-authentication-plugin-for-rails-13.html"
categories:
- cool
- ruby-on-rails
---

{{< rawhtml >}}
<p>People who are considering Rails as a platform often ask what it's integration with tools like HTTP authentication are like, often because that's the way they're currently solving certain problems. Up till now HTTP authentication has been something you've had to implement yourself, but <a href="http://blog.caboo.se/articles/2006/05/28/htpasswd-plugin">now there's a plugin</a>. Install it like so:</p>
<pre><span class="ident">ruby</span> <span class="ident">script</span><span class="punct">/</span><span class="ident">plugin</span> <span class="ident">install</span> <span class="ident">http</span><span class="punct">:/</span><span class="regex"></span><span class="punct">/</span><span class="ident">wota</span><span class="punct">.</span><span class="ident">jp</span><span class="punct">/</span><span class="ident">svn</span><span class="punct">/</span><span class="ident">rails</span><span class="punct">/</span><span class="ident">plugins</span><span class="punct">/</span><span class="ident">branches</span><span class="punct">/</span><span class="ident">stable</span><span class="punct">/</span><span class="ident">htpasswd</span>
</pre>
<p>And use code like this in your controllers:</p>
<pre><span class="keyword">class </span><span class="class">AdminController</span> <span class="punct">&lt;</span> <span class="constant">ApplicationController</span>
  <span class="ident">htpasswd</span> <span class="symbol">:user=</span><span class="punct">&gt;"</span><span class="string">maiha</span><span class="punct">",</span> <span class="symbol">:pass=</span><span class="punct">&gt;"</span><span class="string">berryz</span><span class="punct">"</span>
  <span class="ident">htpasswd</span> <span class="symbol">:user=</span><span class="punct">&gt;"</span><span class="string">maiha</span><span class="punct">",</span> <span class="symbol">:pass=</span><span class="punct">&gt;"</span><span class="string">7Et1Y7tCawx32</span><span class="punct">",</span> <span class="symbol">:type=</span><span class="punct">&gt;</span><span class="symbol">:crypted</span>
  <span class="ident">htpasswd</span> <span class="symbol">:user=</span><span class="punct">&gt;"</span><span class="string">maiha</span><span class="punct">",</span> <span class="symbol">:pass=</span><span class="punct">&gt;"</span><span class="string">berryz</span><span class="punct">",</span> <span class="symbol">:realm=</span><span class="punct">&gt;"</span><span class="string">Member Only</span><span class="punct">"</span>
  <span class="ident">htpasswd</span> <span class="symbol">:file=</span><span class="punct">&gt;"</span><span class="string">/usr/local/apache/passwd/.htpasswd</span><span class="punct">"</span>
<span class="keyword">end</span>
</pre>
<p>Neat, huh? Learn more in this <a href="http://blog.caboo.se/articles/2006/05/28/htpasswd-plugin">interesting blog post about the plugin</a>. Congratulations to maiha for such a useful plugin.</p>
{{< /rawhtml >}}
