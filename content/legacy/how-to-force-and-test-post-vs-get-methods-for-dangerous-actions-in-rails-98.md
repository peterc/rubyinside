---
title: How to force and test POST vs GET methods for dangerous actions in Rails
date: '2006-06-18'
author: Peter Cooper
author_slug: admin
post_id: 98
slug: how-to-force-and-test-post-vs-get-methods-for-dangerous-actions-in-rails-98
url: "/how-to-force-and-test-post-vs-get-methods-for-dangerous-actions-in-rails-98.html"
categories:
- elsewhere
- ruby-on-rails
---

{{< rawhtml >}}
<p>mly from caboo.se looks at <a href="http://www.caboo.se/articles/2006/06/18/assert_pedantic_semantic_thing">how to quickly protect certain controller actions from GET requests</a> in Rails, and presents a couple of useful test helpers to make testing for POST vs GET compliance simple. His code lets you then do a simple test like so:</p>
<pre><span class="keyword">def </span><span class="method">test_update__with_get</span>
  <span class="ident">assert_method_not_allowed</span><span class="punct">(</span><span class="symbol">:update</span><span class="punct">,</span> <span class="punct">{</span><span class="symbol">:good</span> <span class="punct">=&gt;</span> <span class="symbol">:post</span><span class="punct">,</span> <span class="symbol">:bad</span> <span class="punct">=&gt;</span> <span class="symbol">:get</span><span class="punct">})</span>
<span class="keyword">end</span>
</pre>
<p>This test ensures that 'update' will only accept a POST request and not a GET.</p>
{{< /rawhtml >}}
