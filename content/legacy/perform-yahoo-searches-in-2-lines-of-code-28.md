---
title: Perform Yahoo searches in 2 lines of code
date: '2006-06-02'
author: Peter Cooper
author_slug: admin
post_id: 28
slug: perform-yahoo-searches-in-2-lines-of-code-28
url: "/perform-yahoo-searches-in-2-lines-of-code-28.html"
categories:
- cool
- ruby-tricks
---

{{< rawhtml >}}
<p><strong>Step 1:</strong> Get the <a href="http://premshree.seacrow.com/code/ruby/yahoo-ruby">Yahoo-Ruby API</a>. It's only a small Ruby file. <em>Its only dependencies are net/http and REXML that come with Ruby anyway.</em></p>
<p><strong>Step 2:</strong> Make sure you have a Yahoo! API ID. If you don't, <a href="http://developer.yahoo.com/search/index.html">get one now.</a></p>
<p><strong>Step 3:</strong> Use a script like <a href="http://hacks.oreilly.com/pub/h/5083">this one</a> from O'Reilly's Yahoo! Hacks book. The code can be as simple as this:</p>
<pre><span class="ident">obj</span> <span class="punct">=</span> <span class="constant">WebSearch</span><span class="punct">.</span><span class="ident">new</span><span class="punct">('</span><span class="string">insert app ID</span><span class="punct">',</span> <span class="punct">'</span><span class="string">chunky bacon</span><span class="punct">',</span> <span class="punct">'</span><span class="string">phrase</span><span class="punct">',</span> <span class="number">10</span><span class="punct">)</span>
<span class="ident">results</span> <span class="punct">=</span> <span class="ident">obj</span><span class="punct">.</span><span class="ident">parse_results</span>
<span class="comment"># results now contains an array of hashes</span>
<span class="ident">puts</span> <span class="ident">results</span><span class="punct">.</span><span class="ident">inspect</span>
</pre>
{{< /rawhtml >}}
