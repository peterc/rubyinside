---
title: 'RubyGems 1.3.2: Now with Plugins'
date: '2009-04-22'
author: Peter Cooper
author_slug: admin
post_id: 1693
slug: rubygems-132-now-with-plugins-1693
url: "/rubygems-132-now-with-plugins-1693.html"
categories:
- news
- tools
---

{{< rawhtml >}}
<p>Last week, the latest version of Ruby packaging library/tool, RubyGems, was <a href="http://blog.segment7.net/articles/2009/04/15/rubygems-1-3-2">released</a>. <img src="/assets/2009/04/rubygems.png" width="74" height="71" alt="rubygems.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;">Version 1.3.2 not only has a bunch of bug fixes (including supporting https URLs for gem sources) and improvements, but a number of <a href="http://blog.segment7.net/articles/2009/04/15/rubygems-1-3-2">new features</a>. The biggest new feature is support for <em>plugins</em>. Plugins can be used to add commands to the gem command line tool or install/uninstall hooks. InfoQ's Mirko Stocker has put together <a href="http://www.infoq.com/news/2009/04/rubygems-plugins">a good summary of the new functionality</a> along with some comments directly from RubyGems maintainer Eric Hodel.</p>
<p>Ryan Davis has already released <a href="http://blog.zenspider.com/2009/04/rubygems-now-has-plugins.html">a plugin called graph</a> that produces a graph of your gems and their dependency states. Eric Hodel has produced <a href="http://blog.segment7.net/articles/2009/04/16/rubypan-1-0-released">rubypan</a>, a plugin that adds a handy "gem ferret" command that searches <a href="http://rubypan.org/">Rubypan</a> (a RubyGem metadata search site) - for example: <code>gem ferret Eric Hodel</code> will return a list of plugins by Eric.</p>
<p>I'd love to have a Ruby Inside post featuring a collection of RubyGems plugins in a month or two, so if you build one, let me know using the usual channels or leave a comment here.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>cldwalker</strong> &middot; <time datetime="2009-04-24T00:37:00+00:00">April 24, 2009 at 12:37 am</time></p>
      <p>I wrote up a howto on creating a gem command plugin based on writing a gem grep command: <a href="http://tagaholic.me/2009/04/23/how-to-write-a-rubygem-command-plugin.html" rel="nofollow">http://tagaholic.me/2009/04/23/how-to-write-a-rubygem-command-plugin.html</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
