---
title: 'resource_feeder: Easily generate RSS & Atom feeds in Rails'
date: '2006-09-14'
author: Peter Cooper
author_slug: admin
post_id: 237
slug: resource_feeder-easily-generate-rss-atom-feeds-in-rails-237
url: "/resource_feeder-easily-generate-rss-atom-feeds-in-rails-237.html"
categories:
- ruby-on-rails
- tools
---

{{< rawhtml >}}
<p>Ryan Daigle <a href="http://www.ryandaigle.com/articles/2006/09/14/whats-new-in-edge-rails-get-your-rss-atom-feeds-for-free">writes about resource_feeder</a>, a new plugin for Ruby on Rails that makes the generation of RSS and Atom feeds easy. Like so:</p>
<pre><span class="keyword">def </span><span class="method">rss</span>
  <span class="ident">render_rss_feed_for</span> <span class="constant">Post</span><span class="punct">.</span><span class="ident">find</span><span class="punct">(</span><span class="symbol">:all</span><span class="punct">,</span> <span class="symbol">:order</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">created_at DESC</span><span class="punct">',</span> <span class="symbol">:limit</span> <span class="punct">=&gt;</span> <span class="number">10</span><span class="punct">)</span>
<span class="keyword">end</span>
</pre>
<p>If you want to get playing straight away:</p>
<pre>script/plugin install simply_helpful
script/plugin install resource_feeder</pre>
{{< /rawhtml >}}
