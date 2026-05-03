---
title: 'Fog: A Powerful “Cloud Services” Gem'
date: '2010-06-12'
author: Peter Cooper
author_slug: admin
post_id: 3375
slug: fog-a-powerful-cloud-services-gem-3375
url: "/fog-a-powerful-cloud-services-gem-3375.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><a href="http://github.com/geemus/fog">fog</a> is a Ruby gem by Wesley Beary to control a variety of cloud services through a unified <span class="caps">API</span>. It deals with both server cloud and storage based services and supports Amazon S3 and Rackspace Files; as well as servers and on Amazon <span class="caps">EC2</span>, Rackspace Servers, Terremark vCloud and Slicehost. Support is also available for Amazon <span class="caps">ELB</span> and SimpleDB.</p>
<p>The beauty of <em>fog</em> is how the same code interacts with different cloud services. It uses models, an idea familiar to anyone who has used an object mapper (like ActiveRecord), to abstract the common parts between cloud services. That leads to code that you can <strong>switch between cloud services easily.</strong> For handling features exclusive to a particular service, fog's Requests help you do just that. That means every cloud service has an internal <span class="caps">API</span> that you can use to utilize the uncommon feature of a particular service.</p>
<p>To give you a feel of its <span class="caps">API</span>, here is a command that creates an instance given the credentials are loaded up:</p>
<pre><code>AWS.servers.create(:image_id =&gt; 'ami-5ee70037')</code></pre>
<p>This one command actually sets up the whole instance and loads it up. The image architecture in Amazon <span class="caps">EC2</span> helps, but having to skip the whole wizard with a simple command can't be matched. Moreover, this has a possibility of being used programmatically to load up instances and do crazy automated stuff. The README on the Github is helpful, and there is also a <a href="http://wiki.github.com/geemus/fog/getting-started-with-fog">Getting Started</a> guide to get you rolling with both S3 and <span class="caps">EC2</span>. fog is safe for production use and if you're searching for a powerful, extensible and an active gem, look no further!</p>
<p class="s" style="padding: 10px; background-color: #ff9; font-size: 12px; font-style: italic">This post was written by Rizwan Reza, a passionate, self-taught developer and designer who's been working with Rails since early 2005. Rizwan focuses on the start-to-finish product experience, all the way from branding to the application backend. You can find him on Twitter <a href="http://twitter.com/rizwanreza">@rizwanreza</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Wayne E. Seguin</strong> &middot; <time datetime="2010-06-12T17:12:00+00:00">June 12, 2010 at 5:12 pm</time></p>
      <p>Wesley has done an awesome job on Fog, if you haven't tried it and you use cloud services,  definitely do so.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>anon</strong> &middot; <time datetime="2010-06-12T19:02:00+00:00">June 12, 2010 at 7:02 pm</time></p>
      <p>Anyone interested in this might also be interested in</p><p><a href="http://deltacloud.org/" rel="nofollow">http://deltacloud.org/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>宋</strong> &middot; <time datetime="2010-06-20T05:53:00+00:00">June 20, 2010 at 5:53 am</time></p>
      <p>noted.<br>
It's a better way to do cloud services.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
