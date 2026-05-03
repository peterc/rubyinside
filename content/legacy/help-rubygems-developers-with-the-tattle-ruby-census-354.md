---
title: Help RubyGem’s Developers With The Tattle Ruby Census
date: '2007-01-11'
author: Peter Cooper
author_slug: admin
post_id: 354
slug: help-rubygems-developers-with-the-tattle-ruby-census-354
url: "/help-rubygems-developers-with-the-tattle-ruby-census-354.html"
categories:
- cool
- news
- ruby-tricks
---

{{< rawhtml >}}
<p><a href="http://www.chadfowler.com/2007/1/8/tattle-the-ruby-census">Tattle</a> is a project from Chad Fowler, Jim Weirich, and Bruce Williams that allows you to submit information that would be useful to the RubyGem developers and, ultimately, developers of other Ruby gems. You can see charts showing the data submitted so far <a href="http://tattle.rubygarden.org/">here</a>.</p>
<p>You install Tattle with a simple <em>gem install tattle</em> and then run the <em>tattle</em> program provided. A few non-personal details are retrieved about your Ruby setup (you can preview the information that is sent with <em>tattle report</em>) and then sent to the Tattle team. This information will enable developers to improve the behavior and support of their gems, as well as RubyGems itself, across multiple platforms and architectures.</p>
<p>As a demonstration, here's the information Tattle retrieved from my machine:</p>
<blockquote><p>prefix, /usr/local<br>
ruby_version, 1.8.5<br>
host_vendor, apple<br>
ruby_install_name, ruby<br>
build, i686-apple-darwin8.8.1<br>
target_cpu, i686<br>
arch, i686-darwin8.8.1<br>
rubygems_version, 0.9.0<br>
SHELL, /bin/sh<br>
host_os, darwin8.8.1<br>
report_time, Thu Jan 11 15:10:08 +0000 2007<br>
host_cpu, i686<br>
key,<br>
LIBRUBY, libruby-static.a<br>
LIBRUBY_SO, libruby.so.1.8.5<br>
target, i686-apple-darwin8.8.1</p></blockquote>
<p>So, give it a try, it only takes half a minute to install the gem and send the information, and it will help other gem developers provide even better support for you in their libraries.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Raymond</strong> &middot; <time datetime="2007-01-13T18:22:00+00:00">January 13, 2007 at 6:22 pm</time></p>
      <p>Ray-MacPro:~ ray$ sudo gem install tattle<br>
Password:<br>
Bulk updating Gem source index for: <a href="http://gems.rubyforge.org" rel="nofollow">http://gems.rubyforge.org</a><br>
Install required dependency hoe? [Yn]<br>
Install required dependency rubyforge? [Yn]<br>
Install required dependency zentest? [Yn]<br>
Install required dependency hoe? [Yn]<br>
Install required dependency zentest? [Yn]<br>
Install required dependency hoe? [Yn]<br>
Install required dependency zentest? [Yn]<br>
Install required dependency hoe? [Yn]<br>
Install required dependency zentest? [Yn]<br>
Install required dependency hoe? [Yn]<br>
Install required dependency zentest? [Yn]<br>
Install required dependency hoe? [Yn]<br>
Install required dependency zentest? [Yn]<br>
Install required dependency hoe? [Yn]<br>
Install required dependency zentest? [Yn]<br>
Install required dependency hoe? [Yn]  ^CERROR:  Interrupted</p><p>:(</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Manfred</strong> &middot; <time datetime="2007-01-15T14:56:00+00:00">January 15, 2007 at 2:56 pm</time></p>
      <p>The circular dependency in Hoe was a fluke in Rubyforge, it should be fixed now.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
