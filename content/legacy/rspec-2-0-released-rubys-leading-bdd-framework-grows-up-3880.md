---
title: 'RSpec 2.0 Released: Ruby’s Leading BDD Framework Grows Up'
date: '2010-10-10'
author: Peter Cooper
author_slug: admin
post_id: 3880
slug: rspec-2-0-released-rubys-leading-bdd-framework-grows-up-3880
url: "/rspec-2-0-released-rubys-leading-bdd-framework-grows-up-3880.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2010/10/rspec2.gif" alt="" title="rspec2" width="100" height="105" class="alignnone size-full wp-image-3881" style="float: left; margin-right: 12px; margin-bottom: 12px">9 months in the making <a href="http://blog.davidchelimsky.net/2010/10/10/rspec-200-is-released/">comes RSpec 2.0</a>, the latest major version of Ruby's most popular behavior driven development (BDD) framework (now at a <code>gem install rspec</code> near you). Kudos to the 82 contributors and RSpec's team lead, David Chelimsky.</p>
<p>What has RSpec 2.0 got that RSpec 1.x doesn't?</p>
<ul>
<li>
<strong>Modularity.</strong> RSpec has been split up into multiple gems each with a particular focus like mocks, core, and "expectations." The theory behind this is that you could pick and choose parts from <em>other</em> frameworks, though I suspect most users will not benefit from this.</li>
<li>
<strong>Totally new runner.</strong> RSpec 2.0 has borrowed heavily from the <a href="http://thinkrelevance.com/blog/2009/04/01/micronaut-innovation-under-the-hood.html">Micronaut</a>, a BDD framework that adds more metadata and more structure to test suites. Taking on Micronaut's ideas makes RSpec significantly more flexible and open to manipulation and we're bound to see a lot of blog posts in the next few months about how to take advantage of this. One immediate benefit is "filters" which lets you run different tests under different circumstances, such as for different Ruby versions or implementations.</li>
<li>
<strong>Better Rails 3 integration.</strong> RSpec 2.0 was originally intended to release <em>before</em> Rails 3.0 but now that Rails 3.0 has been in the wild a while, RSpec's integration with it is top notch.</li>
</ul>
<p>If you want to learn more and dig around, it's worth seeing <a href="http://github.com/rspec/rspec">RSpec's GitHub page</a> and then following the links to the components that take your interest.</p>
<p>If you're a hardcore RSpec 1.x user and want to know the changes behind the scenes and how best to upgrade, check out the <a href="http://github.com/rspec/rspec-core/blob/master/Upgrade.markdown">RSpec 2.0 upgrade documentation.</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Chuck</strong> &middot; <time datetime="2010-11-03T14:05:00+00:00">November 3, 2010 at 2:05 pm</time></p>
      <p>re modularity, I can think of situations where mocks could be very handy outside of specs.  Cool.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
