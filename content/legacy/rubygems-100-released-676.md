---
title: RubyGems 1.0.0 Released
date: '2007-12-20'
author: Peter Cooper
author_slug: admin
post_id: 676
slug: rubygems-100-released-676
url: "/rubygems-100-released-676.html"
categories:
- news
- tools
---

{{< rawhtml >}}
<p>Eric Hodel has just <a href="http://blog.segment7.net/articles/2007/12/20/rubygems-1-0-0">announced the release of RubyGems 1.0.0</a>. As you probably already know, <a href="http://rubyforge.org/projects/rubygems">RubyGems</a> is the de-facto package / library manager for Ruby applications and libraries, and almost every Ruby developer will have a version installed. There aren't many new features with this major version release, but lots of fixes, tweaks, and stability and usability enhancements. One key thing to note, however, is that <span style="font-style: italic;">require_gem</span> is no longer supported, so if you have code that depends on that, you will have a little work to do before upgrading.</p>
<p>If you're on RubyGems 0.8.5 or later, then you can upgrade easily with: <span style="font-style: italic;">gem update --system</span> .. for older versions or people with no RubyGems installation so far, follow the instructions in <a href="http://blog.segment7.net/articles/2007/12/20/rubygems-1-0-0">the announcement</a>.</p>
<p>Congratulations are due to Eric and everyone else who's worked on RubyGems so far for producing what is, in my opinion, one of the most essential Ruby tools out there.</p>
<p><span style="font-style: italic;">(Update: I have seen some reports of problems regarding upgrading on Leopard and Ubuntu - 64 bit. You might want to read the comments on this post first and/or do some non-production testing to clarify issues on your own kit.)</span></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Carl Mercier</strong> &middot; <time datetime="2007-12-20T16:05:00+00:00">December 20, 2007 at 4:05 pm</time></p>
      <p>I had problems after updating RubyGems on Leopard.  If anybody runs into the same problems, here's what I did to fix it: <a href="http://blog.carlmercier.com/2007/12/14/how-to-fix-that-rubygems-mess-on-leopard/" rel="nofollow">http://blog.carlmercier.com/2007/12/14/how-to-fix-that-rubygems-mess-on-leopard/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nathan</strong> &middot; <time datetime="2007-12-20T16:52:00+00:00">December 20, 2007 at 4:52 pm</time></p>
      <p>I was coming here to say that you shouldn't update rubygems on leopard. I did once and used time machine to get back to where I was.</p><p>I don't like macports, so sorry. I like dtrace. Also, removing the built in ruby may break some applications that rely on it.</p><p>I wish you the best, but for now I am sticking with what came with the system.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nathan</strong> &middot; <time datetime="2007-12-20T16:57:00+00:00">December 20, 2007 at 4:57 pm</time></p>
      <p>A quick look on my system made me think you might be able to do:</p><p>gem update --system --install-dir /Library/Ruby/Gems/1.8</p><p>I havn't tried it (I need to check my backups first), but it should work.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kevin Ballard</strong> &middot; <time datetime="2007-12-20T17:06:00+00:00">December 20, 2007 at 5:06 pm</time></p>
      <p>A simple `sudo gem update --system` worked fine on my Leopard system.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nick</strong> &middot; <time datetime="2007-12-20T18:52:00+00:00">December 20, 2007 at 6:52 pm</time></p>
      <p>Here's my error output:</p><p> sudo gem update --system<br>
Updating RubyGems...<br>
Attempting remote update of rubygems-update<br>
Successfully installed rubygems-update-1.0.0<br>
1 gem installed<br>
Updating version of RubyGems to 1.0.0<br>
Installing RubyGems 1.0.0<br>
./lib/rubygems.rb:77: uninitialized constant Gem::RbConfig (NameError)<br>
        from setup.rb:19</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2007-12-20T19:47:00+00:00">December 20, 2007 at 7:47 pm</time></p>
      <p>Peter, for the record I have added some comments in my last post about RubyGems and Rails 2.0.x:</p><p><a href="http://blog.mmediasys.com/2007/12/19/latest-rubygems-and-rails-is-a-deadly-combo" rel="nofollow">http://blog.mmediasys.com/2007/12/19/latest-rubygems-and-rails-is-a-deadly-combo</a></p><p>There is a small issue with gem_plugin (used by mongrel) and mongrel_service. All on Windows, so average *nix user won't be affected.</p><p>Regards,<br>
Luis</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Yen-Ju Chen</strong> &middot; <time datetime="2007-12-20T21:09:00+00:00">December 20, 2007 at 9:09 pm</time></p>
      <p>Here is my solution:</p><p><a href="http://blog.reciprocallattice.com/2007/12/fix-rubygem-in-leopard-mac-os-x-105.html" rel="nofollow">http://blog.reciprocallattice.com/2007/12/fix-rubygem-in-leopard-mac-os-x-105.html</a></p><p>I use this solution to install Rails 2.0 with built-in Gem 0.8.5 on Leopard and everything works fine. Then I run the command 'sudo gem update --system' and it goes smooth. It shows '1.0.0' with 'gem -v'. After that, my Rails application still works and the installed gem seems fine. I haven't tried to install new gem with RubyGems 1.0 though.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dejan Dimic</strong> &middot; <time datetime="2007-12-20T21:15:00+00:00">December 20, 2007 at 9:15 pm</time></p>
      <p>I am always thrilled when new RubyGems version arrived.<br>
My XP and Ubuntu are updated with no problems what so ever.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Joyce</strong> &middot; <time datetime="2007-12-21T14:26:00+00:00">December 21, 2007 at 2:26 pm</time></p>
      <p>Make that 1.0.1 as of this morning, fixes issue with older versions of Ruby1.8<br>
Just installed it since I'm still running 1.8.4 on my OS X 10.4<br>
Takes a while to install, but no problem thus far.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Laurent Sansonetti</strong> &middot; <time datetime="2007-12-21T16:33:00+00:00">December 21, 2007 at 4:33 pm</time></p>
      <p>FYI, RubyGems supports Leopard since 0.9.5. You can therefore safely gem update --system and it will not break Leopard's Ruby configuration.</p><p>The same goes for RubyGems 1.0.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joshua SIerles</strong> &middot; <time datetime="2007-12-27T20:33:00+00:00">December 27, 2007 at 8:33 pm</time></p>
      <p>Be aware that Rubygems deprecates require_gem which is still in use in some older gems and may render them unusable.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
