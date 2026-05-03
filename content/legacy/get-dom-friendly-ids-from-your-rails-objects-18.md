---
title: Get DOM-friendly IDs from your Rails objects
date: '2006-05-31'
author: Peter Cooper
author_slug: admin
post_id: 18
slug: get-dom-friendly-ids-from-your-rails-objects-18
url: "/get-dom-friendly-ids-from-your-rails-objects-18.html"
categories:
- cool
- elsewhere
- ruby-on-rails
---

{{< rawhtml >}}
<p>Another new article in Bruce's series shows you how to get <a href="http://codefluency.com/articles/2006/05/30/rails-views-dom-id-scheme">DOM-friendly IDs from ActiveRecord</a>. This is a solution nearly all Rails developers have implemented at some time or another:</p>
<pre><span class="punct">&lt;</span><span class="ident">ul</span><span class="punct">&gt;</span>
<span class="punct">&lt;%</span> <span class="attribute">@entries</span><span class="punct">.</span><span class="ident">each</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">entry</span><span class="punct">|</span> <span class="punct">%&gt;</span><span class="string">
  &lt;li id='journal-entry-&lt;%= entry.id %</span><span class="punct">&gt;'</span><span class="string">&gt;
    &lt;%= entry.body %&gt;
  &lt;/li&gt;
&lt;% end %&gt;
&lt;/ul&gt;</span><span class="normal">
</span></pre>
<p>But Bruce demonstrates <a href="http://codefluency.com/articles/2006/05/30/rails-views-dom-id-scheme">a cleaner way</a>..</p>
{{< /rawhtml >}}
