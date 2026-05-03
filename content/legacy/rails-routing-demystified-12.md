---
title: Rails Routing Demystified
date: '2006-05-28'
author: Peter Cooper
author_slug: admin
post_id: 12
slug: rails-routing-demystified-12
url: "/rails-routing-demystified-12.html"
categories:
- elsewhere
- ruby-on-rails
---

{{< rawhtml >}}
<p>Rodney, the <a href="http://www.pinupgeek.com/">Pin Up Geek</a>, has set out to <a href="http://www.pinupgeek.com/articles/2006/05/24/rails-routing-demystified">demystify the routing system in Ruby on Rails</a>. He provides lots of basic code examples and shows you how to use most of the features of routes, like in this example of a requirements based route that only routes when a postal code is included in the URL:</p>
<pre><span class="ident">map</span><span class="punct">.</span><span class="ident">geocode</span> <span class="punct">'</span><span class="string">geocode/:postalcode</span><span class="punct">',</span> <span class="symbol">:controller</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">geocode</span><span class="punct">',</span>
                                    <span class="symbol">:action</span>        <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">show</span><span class="punct">',</span>
                                    <span class="symbol">:postalcode</span> <span class="punct">=&gt;</span> <span class="punct">/</span><span class="regex"></span><span class="escape">d</span>{5}(-<span class="escape">d</span>{4})?<span class="punct">/</span>
</pre>
<p>Excellent article for beginners and gurus alike (there's always something new to learn).</p>
{{< /rawhtml >}}
