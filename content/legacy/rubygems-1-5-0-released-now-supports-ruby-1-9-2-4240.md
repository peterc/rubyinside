---
title: 'RubyGems 1.5.0 Released: Now Supports Ruby 1.9.2'
date: '2011-02-01'
author: Peter Cooper
author_slug: admin
post_id: 4240
slug: rubygems-1-5-0-released-now-supports-ruby-1-9-2-4240
url: "/rubygems-1-5-0-released-now-supports-ruby-1-9-2-4240.html"
categories:
- news
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2011/02/rubygems.png" width="98" height="98" alt="rubygems.png" style="float:left; margin-right:12px; margin-bottom:12px;">Ryan Davis has <a href="http://blog.zenspider.com/2011/01/rubygems-update-150-released.html">announced the release of RubyGems 1.5.0</a>. It comes just a month after the <a href="http://blog.zenspider.com/2010/12/rubygems-version-140-has-been.html">release of 1.4</a> which, notoriously, didn't work with Ruby 1.9.2. These problems have now all been ironed out and Ruby 1.8 and 1.9 users alike can safely upgrade (fingers crossed).</p>
<p>RubyGems is the popular (and official - as of Ruby 1.9) Ruby package manager with which most significant Ruby libraries and tools are distributed. The 1.5 release sees it pick up a few bug fixes and some enhancements, including:</p>
<ul>
<li>Ruby 1.9 support</li>
<li>Post-build hooks that can cancel the gem install</li>
<li>
<code>Gem.find_files</code> is now 40% faster (on Ruby 1.9)</li>
<li>Better errors for corrupt Gem files, including paths</li>
<li>A new <a href="https://github.com/rubygems/rubygems/blob/master/UPGRADING.rdoc">UPGRADING documentation file</a> to help with Ruby 1.9-related issues</li>
<li>
<code>gem update</code> no longer erroneously tries to update RubyGems itself by default</li>
</ul>
<p>To upgrade to RubyGems 1.5.0, run:</p>
<pre><code>gem update --system</code></pre>
<p>Alternatively, you can learn more in the new <a href="https://github.com/rubygems/rubygems/blob/master/UPGRADING.rdoc">UPGRADING documentation</a>, or if you don't already have RubyGems for some reason, you can <a href="https://rubygems.org/pages/download">download it from RubyGems.org</a>.</p>
<p><em><strong>UPDATE:</strong> <strike>RubyGems 1.5.0 and Bundler are not the best of friends! If you're depending on Bundler tonight, don't install RubyGems 1.5.0 just yet. However, a 1.5 compatible version of Bundler is due within the next 24 hours.</strike> A new version of Bundler has been released, supporting RubyGems 1.5.0. Upgrade now :-)</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Ted McElwee</strong> &middot; <time datetime="2011-02-01T02:54:00+00:00">February 1, 2011 at 2:54 am</time></p>
      <p>Rubygems 1.5 with ruby 1.9.2p136 on osX renders the following error when I try to 'bundle install' on my rails app:</p><p>/gems/bundler-1.0.9/lib/bundler/ui.rb:56:in `': uninitialized constant Gem::SilentUI (NameError)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael Mc</strong> &middot; <time datetime="2011-02-01T03:26:00+00:00">February 1, 2011 at 3:26 am</time></p>
      <p>Thanks for the rubygems update. Unfortunately, after updating - bundler shows this error:</p><p>uninitialized constant Gem::SilentUI (NameError)</p><p>any thoughts?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sam</strong> &middot; <time datetime="2011-02-01T03:28:00+00:00">February 1, 2011 at 3:28 am</time></p>
      <p>Except bundler is currently broken...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andre Arko</strong> &middot; <time datetime="2011-02-01T04:55:00+00:00">February 1, 2011 at 4:55 am</time></p>
      <p>Unfortunately the 1.5 release makes breaking changes for Bundler. We'll try to release Bundler 1.0.10 with 1.5 compatability as soon as we possibly can -- hopefully February 1st.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kevin Sylvestre</strong> &middot; <time datetime="2011-02-01T05:50:00+00:00">February 1, 2011 at 5:50 am</time></p>
      <p>If you use bundler (and who doesn't) be careful! This update seems to break things:</p><p>/gems/bundler-1.0.9/lib/bundler/ui.rb:56:in `': uninitialized constant Gem::SilentUI (NameError)</p><p>Any links on how to revert back to 1.3?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jean-Baptiste Barth</strong> &middot; <time datetime="2011-02-01T05:57:00+00:00">February 1, 2011 at 5:57 am</time></p>
      <p>I'm pretty sure it's Ryan Davis, not Eric. Good news thought, waiting for bundler compatibility now :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-02-01T06:14:00+00:00">February 1, 2011 at 6:14 am</time></p>
      <p>Apologies to Ryan Davis - now fixed. Thanks JBB!</p><p>Also, thanks for the Bundler reports. This has now been confirmed and I've just seen this on IRC:</p><p><em>No worries, I tracked it down and it's a Bundler thing. I fixed a couple things and submitted a PR but they say they're gonna be working on getting a full 1.5 compatible fix in by tomorrow.</em></p><p>I also saw this on Twitter:</p><p><em>I guess it's only fair that rubygems would break bundler after all the damage bundler has done to rubygems</em></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-02-01T06:27:00+00:00">February 1, 2011 at 6:27 am</time></p>
      <p>@Kevin: I don't know if you're running RVM, but I've just found that <code>rvm rubygems 1.3.7</code> reverted it OK for me (and Bundler now works). It does come up with an error when you run that command but the downgrade itself seems to work (enough for Bundler to install new things and my specs to all run at least..)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Martijn</strong> &middot; <time datetime="2011-02-01T07:35:00+00:00">February 1, 2011 at 7:35 am</time></p>
      <p>How can they release this if it breaks Bundler? Someone must have noticed that. I thought Ruby was a community..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Adrian Perez</strong> &middot; <time datetime="2011-02-01T16:04:00+00:00">February 1, 2011 at 4:04 pm</time></p>
      <p>@Martijn: Bundler is a related, but not under-control project.</p><p>@everyone:<br>
I believe the new release of bundler -released just now- fixes the issues, as stated in the changelog. I'm about to test it.<br>
<a href="https://github.com/carlhuda/bundler/blob/1-0-stable/CHANGELOG.md" rel="nofollow">https://github.com/carlhuda/bundler/blob/1-0-stable/CHANGELOG.md</a><br>
Comments welcome. I'll get back to you guys.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Cedric</strong> &middot; <time datetime="2011-02-21T14:42:00+00:00">February 21, 2011 at 2:42 pm</time></p>
      <p>Unfortunately it is still a little buggy</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
