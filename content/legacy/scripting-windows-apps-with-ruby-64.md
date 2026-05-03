---
title: Scripting Windows Apps with Ruby
date: '2006-06-09'
author: Peter Cooper
author_slug: admin
post_id: 64
slug: scripting-windows-apps-with-ruby-64
url: "/scripting-windows-apps-with-ruby-64.html"
categories:
- cool
- ruby-tricks
- microsoft-windows
---

{{< rawhtml >}}
<p>Steve Yegge explains <a href="http://www.cabochon.com/~stevey/blog-rants/win32-ruby-scripting.html">how to use Ruby to script your Windows applications</a>. His first example demonstrates how to load Internet Explorer, get it to navigate to a certain Web page, and scrape the content in just five lines of code, like so:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">win32ole</span><span class="punct">'</span>
<span class="ident">ie</span> <span class="punct">=</span> <span class="constant">WIN32OLE</span><span class="punct">.</span><span class="ident">new</span><span class="punct">('</span><span class="string">InternetExplorer.Application</span><span class="punct">')</span>
<span class="ident">ie</span><span class="punct">.</span><span class="ident">navigate</span><span class="punct">("</span><span class="string">http://{internal-website}/your-desired-url</span><span class="punct">")</span>
<span class="ident">sleep</span> <span class="number">1</span> <span class="keyword">while</span> <span class="ident">ie</span><span class="punct">.</span><span class="ident">readyState</span><span class="punct">()</span> <span class="punct">!=</span> <span class="number">4</span>
<span class="ident">html</span> <span class="punct">=</span> <span class="ident">ie</span><span class="punct">.</span><span class="ident">document</span><span class="punct">().</span><span class="ident">documentElement</span><span class="punct">.</span><span class="ident">outerHTML</span>
<span class="ident">ie</span><span class="punct">.</span><span class="ident">quit</span><span class="punct">()</span>
</pre>
<p>Excellent! This makes me wonder if there's a similar mechanism (not AppleScript) for OS X. Anyway, learn more, including more complex demonstrations, <a href="http://www.cabochon.com/~stevey/blog-rants/win32-ruby-scripting.html">at Steve's post.</a></p>
{{< /rawhtml >}}
