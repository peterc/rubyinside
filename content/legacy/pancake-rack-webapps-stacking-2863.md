---
title: 'Pancake: How To Stack and Loosely Couple Rack-Based Webapps Together'
date: '2009-12-04'
author: grantmichaels
author_slug: grantmichaels
post_id: 2863
slug: pancake-rack-webapps-stacking-2863
url: "/pancake-rack-webapps-stacking-2863.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2009/12/stack-o-pancakes-150x150.png" alt="stack-o-pancakes" title="stack-o-pancakes" width="120" class="alignleft size-thumbnail wp-image-2880" style="margin-right: 12px; margin-bottom: 12px">Much of Merb's momentum has been merged into Rails 3, but one-time Engine Yard developer Daniel Neighman has found himself moving in a new direction, inspired by what they had once achieved with <a href="http://brainspl.at/articles/2008/05/21/merb-slices">Merb Slices.</a> Since then, he's taken fully-mountable Rack applications to the extreme in creating <a href="http://github.com/hassox/pancake">Pancake,</a> a tool &amp; framework to let you stack and loosely couple Rack-based webapps.</p>
<p>Daniel states that web <em>"applications should be self contained rack applications, able to function as gems, able to pick up an entire application and mount it inside another, able to inherit the whole application and take care of the low level plumbing,"</em> and also <em>"let you create your own type of application when required."</em> Pancake achieves this by building upon some excellent existing projects, including <a href="http://github.com/rtomayko/tilt">Tilt</a> for templating, <a href="http://github.com/joshbuddy/usher">Usher</a> for routing, and <a href="http://github.com/intridea/hashie">Hashie</a> to extend the features of Ruby's hashes and give them additional object-like functionality.</p>
<h3>Joining Apps With Rails (And Each Other..)</h3>
<p>Yehuda Katz was first seen using Usher in his blog entry <a href="http://yehudakatz.com/2009/08/26/how-to-build-sinatra-on-rails-3/">How to Build Sinatra in Rails 3</a> and it is being used for developing Pancake guaranteeing that anything you build with it is going to be mountable in Rails 3.  Pancake stacks can be used with the current versions of Rails via <a href="http://weblog.rubyonrails.org/2008/12/17/introducing-rails-metal">Metal</a>, and <a href="http://pancakestacks.wordpress.com/2009/11/23/mounted-web-apps-sites/">examples are given on Pancake's blog</a> for doing so.</p>
<p>Sinatra apps are mountable through Pancake, as are any other fully Rack-compliant parts, and Rack middleware can be applied to either the entire Pancake stack, or to individual stacks within the container app. One can first make gems of stacks, which can then be inherited by their containing app or stack.  While this sounds like it could become messy quickly, Pancake employs namespacing to keep everything distinct.</p>
<h3>Installation and Usage</h3>
<p>To get started with Pancake, I ended up installing via:</p>
<pre><code>sudo gem install usher rake pancake haml rcov rack-test rspec racksh</code></pre>
<p>I then created a stack by issuing:</p>
<pre><code>sudo pancake-gen short ri_example    ## pancake-gen {short || micro} </code></pre>
<p>To move further, check out two projects: <a href="http://github.com/jackdempsey/pancake-blog">Pancake Blog</a> (mountable basic blogging) and <a href="http://github.com/hassox/proxy_stack">CouchDB Proxy</a> (mountable couchdb proxy)</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Mat Schaffer</strong> &middot; <time datetime="2009-12-04T14:47:00+00:00">December 4, 2009 at 2:47 pm</time></p>
      <p>I think this makes <a href="http://www.nerdmeritbadges.com/products/06-full-stack-web-developer" rel="nofollow">http://www.nerdmeritbadges.com/products/06-full-stack-web-developer</a> all the more relevant.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Botanicus</strong> &middot; <time datetime="2009-12-05T12:32:00+00:00">December 5, 2009 at 12:32 pm</time></p>
      <p>BTW Rango has mentioned usher as a default router and mountable apps via pancake is coming in 0.3 release next January.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
