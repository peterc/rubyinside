---
title: 'GeoKit: Geocoding and Location Finder Plugin for Rails'
date: '2007-02-10'
author: Peter Cooper
author_slug: admin
post_id: 382
slug: geokit-geocoding-and-location-finder-plugin-for-rails-382
url: "/geokit-geocoding-and-location-finder-plugin-for-rails-382.html"
categories:
- cool
- ruby-on-rails
---

{{< rawhtml >}}
<p><img width="328" vspace="4" hspace="4" height="187" border="1" alt="World" src="/assets/2007/02/world.jpg"><br>
<a href="http://geokit.rubyforge.org/">GeoKit</a> is a new Rails plugin developed by Bill Eisenhauer and Andre Lewis that provides several powerful geocoding related features:</p>
<ul>
<li>Location and distance finders for ActveRecord models.</li>
<li>Distance calculations between any points on the earth.</li>
<li>Multiple provider geocoding (Google, Yahoo, Geocoder.us/ca) with fallback support.</li>
<li>IP-based location lookup.</li>
</ul>
<p>The ActiveRecord finders are really slick, check out this example:</p>
<pre>Location.find(:all, :origin =&gt; 'Irving, TX', :conditions =&gt; ["distance &lt; ? and city = ?", 5, 'Coppell'])</pre>
<p>The developers have blogged about their new creation <a href="http://blog.billeisenhauer.com/2007/02/09/geokit-my-first-rails-plug-in/">here</a> and <a href="http://earthcode.com/blog/2007/02/geokit_map_plugin.html">here</a>.
</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Sandro Paganotti</strong> &middot; <time datetime="2007-02-12T09:34:00+00:00">February 12, 2007 at 9:34 am</time></p>
      <p>I've been looking for it for months !!<br>
Thank you !</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
