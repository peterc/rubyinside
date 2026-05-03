---
title: Using Rake as a File-Finding Library
date: '2006-08-29'
author: Peter Cooper
author_slug: admin
post_id: 212
slug: using-rake-as-a-file-finding-library-212
url: "/using-rake-as-a-file-finding-library-212.html"
categories:
- cool
- elsewhere
- ruby-tricks
---

{{< rawhtml >}}
<pre><span class="constant">FileList</span><span class="punct">["</span><span class="string">**/*.rb</span><span class="punct">"].</span><span class="ident">egrep</span><span class="punct">(</span><span class="constant">Regexp</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="constant">ARGV</span><span class="punct">.</span><span class="ident">first</span><span class="punct">))</span>
</pre>
<p>Jim Weirich has an interesting blog post about <a href="http://onestepback.org/index.cgi/Tech/Rake/FindInCode.red">using Rake's 'FileList' class to find files</a> on your hard drive. I've already started to use the example he gives here.. good find!</p>
{{< /rawhtml >}}
