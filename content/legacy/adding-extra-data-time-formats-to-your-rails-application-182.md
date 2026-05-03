---
title: Adding extra data / time formats to your Rails application
date: '2006-08-11'
author: Peter Cooper
author_slug: admin
post_id: 182
slug: adding-extra-data-time-formats-to-your-rails-application-182
url: "/adding-extra-data-time-formats-to-your-rails-application-182.html"
categories:
- elsewhere
- ruby-on-rails
---

{{< rawhtml >}}
<pre><span class="constant">ActiveSupport</span><span class="punct">::</span><span class="constant">CoreExtensions</span><span class="punct">::</span><span class="constant">Time</span><span class="punct">::</span><span class="constant">Conversions</span><span class="punct">::</span><span class="constant">DATE_FORMATS</span><span class="punct">.</span><span class="ident">merge!</span><span class="punct">(</span>
  <span class="symbol">:default</span> <span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">%m/%d/%Y</span><span class="punct">",</span>
  <span class="symbol">:date_time12</span> <span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">%m/%d/%Y %I:%M%p</span><span class="punct">",</span>
  <span class="symbol">:date_time24</span> <span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">%m/%d/%Y %H:%M</span><span class="punct">"</span>
<span class="punct">)</span>
</pre>
<p>Richard Leonard demonstrates <a href="http://hittingthebuffers.com/2006/08/11/date-formats/">how to use the date formats that come with Rails</a>, as well as how to override or add some of your own directly into Rails' helpers on the fly.</p>
{{< /rawhtml >}}
