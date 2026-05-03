---
title: Streaming programmatically generated content from Rails
date: '2006-06-09'
author: Peter Cooper
author_slug: admin
post_id: 62
slug: streaming-programmatically-generated-content-from-rails-62
url: "/streaming-programmatically-generated-content-from-rails-62.html"
categories:
- elsewhere
- ruby-on-rails
---

{{< rawhtml >}}
<p>Rather than use the send_file or send_data methods to send an entire, completed bulk of information back to the client, David N. Welton wanted to, effectively, print stuff to the client bit by bit. He worked out <a href="http://journal.dedasys.com/articles/2006/06/08/streaming-programmatically-generated-content-from-rails">how to do it and presents his findings and sample code</a> here. </p>
<p>A preview of his 'output data to CSV line by line' method:</p>
<pre><span class="keyword">def </span><span class="method">generate_file</span>
  <span class="attribute">@headers</span><span class="punct">["</span><span class="string">Content-Type</span><span class="punct">"]</span> <span class="punct">=</span> <span class="punct">"</span><span class="string">text/comma-separated-values;</span><span class="punct">"</span>
  <span class="attribute">@headers</span><span class="punct">["</span><span class="string">Content-Disposition</span><span class="punct">"]</span> <span class="punct">=</span> <span class="punct">"</span><span class="string">filename=</span><span class="escape">"</span>some.file.txt<span class="escape">"</span>;<span class="punct">"</span>

  <span class="ident">i</span> <span class="punct">=</span> <span class="number">0</span>

  <span class="ident">render</span> <span class="symbol">:text</span> <span class="punct">=&gt;</span> <span class="constant">Proc</span><span class="punct">.</span><span class="ident">new</span> <span class="punct">{</span> <span class="punct">|</span><span class="ident">response</span><span class="punct">,</span> <span class="ident">output</span><span class="punct">|</span>
    <span class="punct">...</span>
    <span class="ident">output</span><span class="punct">.</span><span class="ident">write</span><span class="punct">("</span><span class="string">some generated text...</span><span class="punct">")</span>
    <span class="punct">...</span>
  <span class="punct">},</span> <span class="symbol">:layout</span> <span class="punct">=&gt;</span> <span class="constant">false</span>
<span class="keyword">end</span>
</pre>
{{< /rawhtml >}}
