---
title: How to parse any RSS feed in seconds with Ruby
date: '2006-06-08'
author: Peter Cooper
author_slug: admin
post_id: 55
slug: how-to-parse-any-rss-feed-in-seconds-with-ruby-55
url: "/how-to-parse-any-rss-feed-in-seconds-with-ruby-55.html"
categories:
- cool
- ruby-tricks
- tutorials
---

{{< rawhtml >}}
<p>It's quick and easy (to do, not necessarily to parse!).</p>
<p><strong>Step one:</strong> Install the <a href="http://sporkmonger.com/projects/feedtools/">FeedTools</a> gem with <em>gem install feedtools</em></p>
<p><strong>Step two: </strong>Use the following code:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">rubygems</span><span class="punct">'</span>
<span class="ident">require_gem</span> <span class="punct">'</span><span class="string">feedtools</span><span class="punct">'</span>

<span class="ident">feed</span> <span class="punct">=</span> <span class="constant">FeedTools</span><span class="punct">::</span><span class="constant">Feed</span><span class="punct">.</span><span class="ident">open</span><span class="punct">('</span><span class="string">http://www.petercooper.co.uk/index.rdf</span><span class="punct">')</span>

<span class="ident">puts</span> <span class="punct">"</span><span class="string">Feed title is </span><span class="expr">#{feed.title}</span><span class="punct">"</span>

<span class="ident">feed</span><span class="punct">.</span><span class="ident">items</span><span class="punct">.</span><span class="ident">each</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">item</span><span class="punct">|</span>
  <span class="ident">puts</span> <span class="punct">"</span><span class="expr">#{item.title}</span> - <span class="expr">#{item.link}</span><span class="punct">"</span>
<span class="keyword">end</span>
</pre>
<p><strong>Step three: </strong>Learn more with <a href="http://sporkmonger.com/articles/2005/08/11/tutorial/">the official tutorial</a> and <a href="http://sporkmonger.com/projects/feedtools/api/">API documentation</a>.</p>
<p><strong>Step four: </strong>You are now the <em>King of all feeds</em>.</p>
{{< /rawhtml >}}
