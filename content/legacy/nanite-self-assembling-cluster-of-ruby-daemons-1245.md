---
title: 'Nanite: Self Assembling Cluster of Ruby Daemons'
date: '2008-10-12'
author: Peter Cooper
author_slug: admin
post_id: 1245
slug: nanite-self-assembling-cluster-of-ruby-daemons-1245
url: "/nanite-self-assembling-cluster-of-ruby-daemons-1245.html"
categories:
- cool
- miscellaneous
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2008/10/nanite.png" width="161" height="159" alt="nanite.png" style="float:left; margin-right:12px; margin-bottom:12px;">It was with much excitement that <a href="http://www.merbcamp.com/">Merbcamp</a> started yesterday with a keynote from Ezra Zygmuntowicz, initial creator of the <a href="http://www.merbivore.com/">Merb</a> Web application framework. Aside from covering Merb-related news, Ezra revealed a project called <a href="http://github.com/ezmobius/nanite/tree/master/README">Nanite</a> - a "self assembling cluster of Ruby daemons."</p>
<p>A Nanite installation is based around a "mapper exchange" with which Ruby daemons (called Nanite "agents") register. Nanite mappers (running in, say, Rails or Merb applications, or even command line apps) can then call the exchange and gain access to the functionality of the agents. The mapper exchange makes it possible for daemons / agents to start, stop and die while allowing the whole cluster to be self-healing.</p>
<p>Ezra says:</p>
<blockquote>
<p>Nanite is a new way of thinking about building cloud ready web applications. Having a scalable message queueing backend with all the discovery and dynamic load based dispatch that Nanite has is a very scalable way to construct web application backends.</p>
</blockquote>
<p>It's still early days, but Nanite could become a key part of the back end of Ruby-developed Web applications in the future. Nanite offers some key benefits (scalability, reliability) on the cheap - it's worth investigating if these traits sound useful for your own projects.</p>
<p class="s"><cite>Post supported by RichAppsConsulting:</cite> Are you looking for an Agile web 2.0 company to develop your company's website quickly and professionally? At <a href="http://www.richappsconsulting.com">RAC</a>, we have a highly trained staff of developers who are experts in Rails, Flex and PHP development. We can develop solutions for your company with your budget and timeline in mind. We pride ourselves on having superior Rails programming skills the and striving for continuous improvement. For more information, call our office at 202.470.6683 or email us at <a href="mailto:contact@richappsconsulting.com">contact@<!--*-->richappsconsulting.com</a>. Please visit our website at <a href="http://www.richappsconsulting.com">http://www.richappsconsulting.com</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jean</strong> &middot; <time datetime="2008-10-13T08:23:00+00:00">October 13, 2008 at 8:23 am</time></p>
      <p>This sounds a lot like an early ad-hoc implementation of OSGi<br>
<a href="http://www.osgi.org/About/WhatIsOSGi" rel="nofollow">http://www.osgi.org/About/WhatIsOSGi</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dr Nic</strong> &middot; <time datetime="2008-10-13T13:54:00+00:00">October 13, 2008 at 1:54 pm</time></p>
      <p>Yay for Ezra.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Preston Lee</strong> &middot; <time datetime="2008-10-13T22:43:00+00:00">October 13, 2008 at 10:43 pm</time></p>
      <p>You should really check out Journeta. (<a href="http://journeta.rubyforge.org/" rel="nofollow">http://journeta.rubyforge.org/</a>) It supports similar use cases at a very generic level. OpenRain developed it for similar purposes.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>filterfish</strong> &middot; <time datetime="2008-10-15T23:35:00+00:00">October 15, 2008 at 11:35 pm</time></p>
      <p>Preston, the difference is that nanites is based on ampq which is highly scable and *very* fast. The potential for nanites is huge.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sho</strong> &middot; <time datetime="2008-10-31T07:32:00+00:00">October 31, 2008 at 7:32 am</time></p>
      <p>@filterfish</p><p>yes, but the thing is, AMQP can suck my balls.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
