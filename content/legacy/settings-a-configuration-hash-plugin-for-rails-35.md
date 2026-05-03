---
title: Settings – a configuration hash plugin for Rails
date: '2006-06-04'
author: Peter Cooper
author_slug: admin
post_id: 35
slug: settings-a-configuration-hash-plugin-for-rails-35
url: "/settings-a-configuration-hash-plugin-for-rails-35.html"
categories:
- ruby-on-rails
---

{{< rawhtml >}}
<p><a href="http://agilewebdevelopment.com/plugins/settings">Settings</a> is a new plugin for Rails that lets you have a basic hash of 'settings' or configurations for your application without having everything hardcoded. Example:</p>
<pre><span class="constant">Settings</span><span class="punct">.</span><span class="ident">admin_password</span> <span class="punct">=</span> <span class="punct">'</span><span class="string">supersecret</span><span class="punct">'</span>
<span class="constant">Settings</span><span class="punct">.</span><span class="ident">date_format</span>    <span class="punct">=</span> <span class="punct">'</span><span class="string">%m %d, %Y</span><span class="punct">'</span>
<span class="constant">Settings</span><span class="punct">.</span><span class="ident">cocktails</span>      <span class="punct">=</span> <span class="punct">['</span><span class="string">Martini</span><span class="punct">',</span> <span class="punct">'</span><span class="string">Screwdriver</span><span class="punct">',</span> <span class="punct">'</span><span class="string">White Russian</span><span class="punct">']</span>
<span class="constant">Settings</span><span class="punct">.</span><span class="ident">foo</span>            <span class="punct">=</span> <span class="number">123</span>
</pre>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Chad Humphries</strong> &middot; <time datetime="2006-06-04T19:30:00+00:00">June 4, 2006 at 7:30 pm</time></p>
      <p>I've been using this for a while in an application I'm developing.  It does exactly what it's supposed to and no more.  Just perfect.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
