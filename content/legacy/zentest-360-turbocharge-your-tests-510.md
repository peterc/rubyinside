---
title: 'ZenTest 3.6.0: Turbocharge Your Tests'
date: '2007-05-29'
author: Hendy Irawan
author_slug: hendy-irawan
post_id: 510
slug: zentest-360-turbocharge-your-tests-510
url: "/zentest-360-turbocharge-your-tests-510.html"
categories:
- cool
- news
- ruby-on-rails
- ruby-tricks
- tools
---

{{< rawhtml >}}
<p><a href="http://www.robsanheim.com/2006/08/07/hacking-green-bar-color-output-into-autotest/"><img border="1" alt="Autotest_red_green" src="/assets/2007/05/autotest_red_green.jpg"></a></p>
<p><a href="http://www.zenspider.com/ZSS/Products/ZenTest/">ZenTest</a> is a bundle of useful time-saving tools created by <a href="http://www.zenspider.com/">Ryan Davis</a> to make the process of testing your applications faster and more effective:</p>
<ul>
<li>
<em>zentest </em>automatically writes your missing code based on simple naming rules.</li>
<li>
<em>unit_diff </em>compares expected results from actual results and allows you to quickly see exactly what is wrong.</li>
<li>
<em>autotest </em>continuously runs in the background, running relevant tests as soon as you modify a file. It’s probably the most popular component of the ZenTest package. With <a href="http://on-ruby.blogspot.com/2006/06/more-fun-with-redgreen.html">RedGreen</a>, you’ll even get colorized tests!</li>
<li>
<em>multiruby </em>runs anything you want on multiple versions of ruby. Great for compatibility checking!</li>
<li>
<em>Test::Rails </em>provides even more comprehensive testing support for your Rails projects.</li>
</ul>
<p><a href="http://blog.zenspider.com/archives/2007/05/zentest_version_360_has_been_released.html">Version 3.6.0</a> has improved support for RSpec, Camping, and Rails, including other enhancements and bug fixes.</p>
<p>To install the ZenTest gem:</p>
<pre>gem install ZenTest -y</pre>
<p>Head on to <a href="http://www.zenspider.com/ZSS/Products/ZenTest/">ZenTest web site</a>, <a href="http://blog.zenspider.com/archives/zentest/">ZenSpider’s ZenTest articles</a>, or <a href="http://rubyforge.org/projects/zentest/">ZenTest RubyForge project page</a> to know all about it.</p>
<p><em>Interesting articles:</em> <a href="http://bparanj.blogspot.com/2007/05/colorizing-zentest-output.html">Colorizing ZenTest by Bala Paranj</a>, <a href="http://nubyonrails.com/articles/2006/04/19/autotest-rails">autotest -rails</a> and <a href="http://nubyonrails.topfunky.com/articles/2006/08/24/ruby-rails-test-rails-cheat-sheet">Ruby, Rails, Test::Rails Cheat Sheet</a> by Geoffrey Grosenbach, <a href="http://blog.sourcecraft.net/2007/03/11/colored-autotest-with-notifications-on-windows/">Colored autotest with Notifications on Windows</a> by Chris Gaunt</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Sandro</strong> &middot; <time datetime="2007-05-30T16:22:00+00:00">May 30, 2007 at 4:22 pm</time></p>
      <p>Sound interesting :D<br>
I'm going to use it with RSpec in my next TDD project.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hendy Irawan</strong> &middot; <time datetime="2007-05-31T02:57:00+00:00">May 31, 2007 at 2:57 am</time></p>
      <p>Dear Sandro,</p><p>Good luck! I also love ZenTest, especially autotest.. It "just works" :-)</p><p>Coupled with <a href="cruisecontrolrb-continuous-integration-for-ruby-and-rails-436.html" rel="nofollow">CruiseControl.rb</a> these guys are killer tools :-)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
