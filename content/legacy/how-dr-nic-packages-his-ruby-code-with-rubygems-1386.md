---
title: How Dr Nic Packages His Ruby Code With RubyGems
date: '2008-12-05'
author: Peter Cooper
author_slug: admin
post_id: 1386
slug: how-dr-nic-packages-his-ruby-code-with-rubygems-1386
url: "/how-dr-nic-packages-his-ruby-code-with-rubygems-1386.html"
categories:
- elsewhere
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2008/12/picture-3.png" width="92" height="96" alt="Picture 3.png" style="float:left; margin-right:12px; margin-bottom:12px;">Everyone's favorite Australian Ruby developer, Dr. Nic Williams, has put together <a href="http://drnicwilliams.com/2008/12/05/my-rubygems-development-tools-and-workflow/">a handy slide presentation called How to Package Your Ruby Code</a> where he demonstrates how he packages his various bits of Ruby code using RubyGems. His process is backed by his own <a href="http://newgem.rubyforge.org/">NewGem</a>, a library that generates a framework for a new Ruby gem, and <a href="http://seattlerb.rubyforge.org/hoe/">Hoe</a> by Ryan Davis.</p>
<p>In his <a href="http://drnicwilliams.com/2008/12/05/my-rubygems-development-tools-and-workflow/">explanatory blog post</a>, Nic also ponders Perl's <a href="http://www.cpan.org/">CPAN</a> (a gigantic archive of Perl modules) and the module installation process it offers. When you install a module, the tests for the module are run in real time immediately. If they fail, the module isn't installed into its final location. Nic discovered you can do this with RubyGems by adding the <em>--test</em> option, but it would be nice if it were a standard operation as it could clear up ambiguity over whether a library is fully functioning or not before you try to use it.</p>
<p>If you want to see a different approach, Ryan Bates has recorded <a href="http://railscasts.com/episodes/135-making-a-gem">a "how to make a gem"</a> screencast.</p>
<p>Elsewhere, Dr Nic <a href="http://www.mobileorchard.com/iphone-development-podcast-2-dr-nic-williams/">was recently interviewed</a> on the <a href="http://www.mobileorchard.com/">Mobile Orchard</a> podcast. Mobile Orchard is essentially the Ruby Inside of the iPhone developer world, and Nic spoke about getting Ruby onto the iPhone, unit testing Objective C from Ruby, and other great stuff.</p>
<p class="s" style="font-family:verdana;font-style:italic;padding:8px;font-size: 12px">Supported by: <strong><a href="http://gearsquare.com/actiongear/">ActionGear</a> is a menu-bar app for task management on your Mac.</strong> It's lightweight, quick, and helps you get stuff done. <strong><a href="http://gearsquare.com/actiongear/">Try it out for free.</a></strong></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Joe Schmoe</strong> &middot; <time datetime="2008-12-05T09:08:00+00:00">December 5, 2008 at 9:08 am</time></p>
      <p>He's not *my* favourite Australian developer.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-12-05T10:06:00+00:00">December 5, 2008 at 10:06 am</time></p>
      <p>Who's yours? :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2008-12-05T16:33:00+00:00">December 5, 2008 at 4:33 pm</time></p>
      <p>Part of the reason rubygems doesn't force --test is the fact that Test::Unit 1.x doesn't support the ability to ignore or skip tests (thought version 2.x does). As a result, several developers don't worry if some of their tests fail, when they should just be ignored. The upshot is that developers will simply resort to --force installs because the test suites themselves aren't well handled.</p><p>The other part is that I don't think Eric wants it to be the default, but you'd have to ask him. I have a vague recollection of this coming up once before a long time ago.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2008-12-05T18:36:00+00:00">December 5, 2008 at 6:36 pm</time></p>
      <p>Another issue for users of test frameworks that aren't part of the stdlib (rspec, shoulda, etc) is that they may not have included them as a required dependency in their gemspec since successful test runs aren't required by default prior to installation anyway.</p><p>There will be some lag there as authors catch up.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gregory Brown</strong> &middot; <time datetime="2008-12-05T21:11:00+00:00">December 5, 2008 at 9:11 pm</time></p>
      <p>@Peter,</p><p>Dr. Nic is great, but my favorite Australian developer is James Healy.<br>
<a href="http://github.com/yob" rel="nofollow">http://github.com/yob</a></p><p>Since he is a Prawn / Ruport developer, I guess I have a strong bias. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>tuoker</strong> &middot; <time datetime="2008-12-06T09:34:00+00:00">December 6, 2008 at 9:34 am</time></p>
      <p>I like newgems very much</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
