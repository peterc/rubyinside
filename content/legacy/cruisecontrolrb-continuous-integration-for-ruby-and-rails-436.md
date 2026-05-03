---
title: 'CruiseControl.rb: Continuous Integration for Ruby (and Rails)'
date: '2007-03-26'
author: Peter Cooper
author_slug: admin
post_id: 436
slug: cruisecontrolrb-continuous-integration-for-ruby-and-rails-436
url: "/cruisecontrolrb-continuous-integration-for-ruby-and-rails-436.html"
categories:
- elsewhere
- news
- tools
---

{{< rawhtml >}}
<p><a href="/assets/2007/03/cruisecontrol.png" onclick="window.open('http://www.rubyinside.com/wp-content/uploads/2007/03/cruisecontrol.png','popup','width=345,height=108,scrollbars=no,resizable=yes,toolbar=no,directories=no,location=no,menubar=no,status=yes,left=0,top=0');return false"><img src="/assets/2007/03/cruisecontrol-tm.jpg" height="100" width="319" border="1" hspace="4" vspace="4" alt="Cruisecontrol"></a></p>
<p><a href="http://cruisecontrolrb.thoughtworks.com/">CruiseControl.rb</a> is a continuous integration tool written in, and for, Ruby. It makes it easy to set up automated builds of your software and to find out about tests that break on the fly. The <a href="http://cruisecontrolrb.thoughtworks.com/">official site</a> has downloads, a 5 minute screencast, and a working demo of the tool.</p>
<p>Alongside this, Bill Eisenhauer - the developer of <a href="geokit-geocoding-and-location-finder-plugin-for-rails-382.html">GeoKit</a>, the Rails geocoding plugin - has written <a href="http://blog.billeisenhauer.com/2007/03/19/deploying-cruisecontrolrb-with-custom-tasks/">an article talking about CruiseControl.rb and showing how to set up custom tasks to use CruiseControl with Capistrano</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Lyle</strong> &middot; <time datetime="2007-03-27T16:25:00+00:00">March 27, 2007 at 4:25 pm</time></p>
      <p>We just switched from CruiseControl.java (which is what I've decided to call the "old" version) to CruiseControl.rb and it really was as easy as it appears. It's monitoring the builds of seven of our Java projects and works like a charm. I strongly recommend it to anyone who's had to deal with the headaches that CC.java can cause.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
