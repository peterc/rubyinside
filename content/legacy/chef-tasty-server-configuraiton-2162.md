---
title: 'Chef: Quick and Tasty Ruby Powered Server Configuration'
date: '2009-08-05'
author: Ric Roberts
author_slug: ricroberts
post_id: 2162
slug: chef-tasty-server-configuraiton-2162
url: "/chef-tasty-server-configuraiton-2162.html"
categories:
- cool
- tools
---

{{< rawhtml >}}
<p><img style="float:left; margin-right:12px; margin-bottom:12px" src="/assets/2009/08/chef.jpg" alt="chef"><strong><a href="http://github.com/opscode/chef/tree/master">Chef</a></strong> isn't exactly new, but I've been looking into it recently after briefly talking to <a href="http://holmwood.id.au/~lindsay/">Lindsay Holmwood</a> at <a href="rails-underground-2009-2122.html">Rails Underground</a>.</p>
<p><strong>Basically, Chef is a Ruby-based configuration management engine.</strong> You set up <a href="http://wiki.opscode.com/display/chef/Recipes">recipes</a> for how you want your system configured, and then Chef will cook it up for you.  So, you can write lovely Ruby code to manage your servers, rather than running commands directly on your server.</p>
<p>With Chef, one of your systems is the server and all others are clients that communicate with the Chef "server" via <a href="http://en.wikipedia.org/wiki/Representational_State_Transfer">REST</a> over HTTPS. The server is a <a href="http://www.merbivore.com/">Merb</a> application that stores <a href="http://wiki.opscode.com/display/chef/Cookbooks">cookbooks</a> for your <a href="http://wiki.opscode.com/display/chef/Nodes">nodes</a> using <a href="http://couchdb.apache.org/">CouchDB</a>.</p>
<p>The work is done by the clients, running the recipes for one or many nodes thus configuring that particular machine. The Chef server is only there to provide information to the clients.  Once configured, you can access your Chef server and its cookbooks via a Web interface.  You can create your own cookbooks from scratch but it's worth checking to see if one already exists in the Chef <a href="http://github.com/opscode/chef/tree/master">repository</a> or one of its forks.</p>
<p><strong>Once you've got your recipes sorted out, Chef allows you to programatically set up and commission production-ready server instances in next to no time.</strong></p>
<p>Ezra's <a href="http://brainspl.at/articles/2009/01/31/cooking-with-chef-101">Cooking with Chef 101</a> blog post is a great place to get started, and there's a wealth of information in the Opscode <a href="http://wiki.opscode.com/display/chef/Home">Chef wiki</a>. The Superfeedr blog post, <a href="http://blog.superfeedr.com/chef/configuration/deployment/infrastructure/scale-with-chef/">Scale With Chef</a>, is also worth a read.</p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><img src="/assets/2009/07/jslab.png" width="32" height="35" alt="jslab.png" style="float:right; margin-left:12px; border:1px #000000 solid;"><em>Also..</em> <a href="http://jumpstartlab.com" rel="nofollow">Jumpstart Lab</a> is running  <a href="http://jumpstartlab.com/courses/rails/090815/" rel="nofollow"><strong>Rails Jumpstart</strong></a> - an intro to Rails - on August 15&amp;16  then <a href="http://jumpstartlab.com/courses/javascript/" rel="nofollow"><strong>JavaScript Jumpstart</strong></a> for intermediate Javascript &amp; UI programmers on 9/12.  All courses are in Washington, DC. Save 10% with code "rubyinside"!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Stephen Stillwater</strong> &middot; <time datetime="2009-08-05T03:05:00+00:00">August 5, 2009 at 3:05 am</time></p>
      <p>Chef is cool - but it's a pain in the butt to get set up on CentOS. Still pretty Ubuntu-centric, I believe.</p><p>I'd love to be proven wrong, mind you!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael D'Auria</strong> &middot; <time datetime="2009-08-05T15:43:00+00:00">August 5, 2009 at 3:43 pm</time></p>
      <p>I would have to agree with Stephen on this one.  We ended up going with Puppet, which seems to be more flexible and supports CentOS out of the box.</p><p>I would also love to be proven wrong.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-08-05T15:44:00+00:00">August 5, 2009 at 3:44 pm</time></p>
      <p>If anyone wants to do a hardcore Chef vs Puppet type post either here or on their own blog, I'm game (to link or to post). I'm pretty ignorant of this area, personally, though I think Ric did a reasonable job of summing up Chef on its own.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stephen Stillwater</strong> &middot; <time datetime="2009-08-06T17:37:00+00:00">August 6, 2009 at 5:37 pm</time></p>
      <p>@Peter: hype aside, I think the excitement around Chef is pretty well justified. Chef solves a slew of problems, and since it lets you drop in to "full on Ruby", it feels more flexible than Chef.</p><p>But...I guess Opscode is still "on the runway" in terms of getting started, so CentOS support is not at the top of the priority list, which is fine. On the Opscode wiki, there's a lot of folks working hard to get Chef up and running on CentOS, but it's still pretty tricky (at least last we tried).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matthijs Langenberg</strong> &middot; <time datetime="2009-08-11T09:22:00+00:00">August 11, 2009 at 9:22 am</time></p>
      <p>It's using CouchDB? Really? I can't believe that's really necessary, but maybe I'm missing some point.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
