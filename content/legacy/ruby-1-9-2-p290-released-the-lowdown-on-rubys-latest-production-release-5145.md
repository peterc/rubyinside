---
title: 'Ruby 1.9.2-p290 Released: The Lowdown on Ruby’s Latest Production Release'
date: '2011-07-16'
author: Peter Cooper
author_slug: admin
post_id: 5145
slug: ruby-1-9-2-p290-released-the-lowdown-on-rubys-latest-production-release-5145
url: "/ruby-1-9-2-p290-released-the-lowdown-on-rubys-latest-production-release-5145.html"
categories:
- news
---

{{< rawhtml >}}
<p><img src="/assets/2011/07/ruby-patchlevels.jpg" alt="" title="ruby-patchlevels" width="120" height="120" class="alignnone size-full wp-image-5147" style="float: right; margin-left: 18px; margin-bottom: 18px; border: 1px solid #666">Over at the always-riveting official Ruby blog, Shota Fukumori <a href="http://www.ruby-lang.org/en/news/2011/07/15/ruby-1-9-2-p290-is-released/">has announced the release of Ruby 1.9.2-p290</a>, the latest 'patchlevel' release of the current production release of Ruby MRI.</p>
<p>If you're still on 1.8, check out <a href="http://rubyinside.com/19walkthrough/">The Ruby 1.9 Walkthrough</a>, a mega screencast aimed at Ruby 1.8.7 developers who want to learn all about what's new, what's gone, and what's different in Ruby 1.9.2 and 1.9.3.</p>
<p>Patchlevel 290 is the first production-level patchlevel release of MRI since patchlevel 180 back in February so it's worth upgrading if you're on 1.9.2. The release post duly notes:</p>
<blockquote class="stylized"><p>This release doesn't include any security fixes, but many bugs are fixed in this release.</p></blockquote>
<p><cite>Shota Fukumori</cite></p>
<p>So what changed? And how can you upgrade? Let me spill the beans.</p>
<h3>What's Changed From p180 to p290?</h3>
<p>Quite a lot got changed in terms of the numbers. 132 files were tweaked with a total of 3505 lines added and 788 taken away.</p>
<p>A selection of the fixes:</p>
<ul>
<li>
<code>require 'date'; Date.new === nil</code> throws an undefined method error for coerce on p180 - this has now been fixed</li>
<li>The <a href="http://redmine.ruby-lang.org/issues/4367">Thread.kill segfaults when the object to be killed isn't a thread</a> bug has been resolved.</li>
<li>Tweaks to reduce segmentation faults when using zlib on x86-64 Darwin (OS X) - always good</li>
<li>Modification to prevent random number sequence repetition on forked child processes in SecureRandom</li>
<li>Fix to io system to resolve <a href="http://redmine.ruby-lang.org/issues/4557">a Windows-only bug</a> where characters are being read incorrectly due to ASCII not being treated as 7 bit</li>
<li>A tweak to Psych (the YAML parser) to plug a memory leak</li>
<li>Load paths are now always expanded by rb_et_expanded_load_path (I think this might yield a performance gain?)</li>
<li>Fixes to Psych's treatment and testing of string taint</li>
<li>Prevention of temporary objects being garbage collected in some cases</li>
<li>Fixes to resolve compilation problems with Visual C++ 2010</li>
<li>A fix so that Tk's extconf.rb would run successfully</li>
<li>Lots of <a href="http://en.wikipedia.org/wiki/Tk_(framework)">Tk</a> related fixes generally - I'm guessing Tk is very popular amongst the core team, particularly in Japan, because it seems to be a common release blocker.</li>
<li>A fix to string parsing to resolve an obscure symbol-containing-newlines <a href="http://redmine.ruby-lang.org/issues/4544">parsing bug</a>
</li>
</ul>
<h3>How To Upgrade to Ruby 1.9.2-p290</h3>
<p>If you're on Windows, <a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/385362">RubyInstaller 1.9.2-p290 has been released.</a></p>
<p>If you compile your own version of Ruby, just grab <a href="http://www.ruby-lang.org/en/news/2011/07/15/ruby-1-9-2-p290-is-released/">one of the archive files</a> listed in the official post and do your usual compilation shuffle. Nothing new there.</p>
<p>If you're an <a href="https://rvm.beginrescueend.com/">RVM</a> user, you'll be glad to know the RVM team were on the ball and released an update within hours to support p290. Your upgrade steps are:</p>
<pre>rvm get head
rvm reload</pre>
<p>At this stage, you can either run <code>rvm install ruby-1.9.2-p290</code> to install p290 from scratch, or if you're already running p180 and wish to upgrade your existing environment, run <code>rvm upgrade ruby-1.9.2-p180 ruby-1.9.2-p290</code> and you're cooking with gas.</p>
<p>Some users have noticed that running <code>rvm upgrade</code> as above got an error where the wrong RVM executable was being run, but it seems to resolve itself if you open a fresh shell (despite running <code>rvm reload</code>) so try that out if you hit the <em>"Unable to install"</em> error.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Taybin</strong> &middot; <time datetime="2011-07-16T02:09:00+00:00">July 16, 2011 at 2:09 am</time></p>
      <p>Do I need to walk over to Japan and hammer the semantic versioning doc on someone's door Luther-style?</p><p>When will this craziness end?</p><p>Production release of the ruby language? Then make it 1.9.3.  It *should* be 2.0.3, but I'll let that slide for now.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-07-16T02:27:00+00:00">July 16, 2011 at 2:27 am</time></p>
      <p>Heh, yeah, we're kinda nested down about 4 levels here, aren't we?</p><p>Next step.. Ruby 1.9.2p400-release-candidate-3-nightly</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Fernando</strong> &middot; <time datetime="2011-07-17T15:25:00+00:00">July 17, 2011 at 3:25 pm</time></p>
      <p>So this release does not include the "require patch", does it?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Olivier Lacan</strong> &middot; <time datetime="2011-07-17T20:50:00+00:00">July 17, 2011 at 8:50 pm</time></p>
      <p>Opening a new shell window does fix the issue with upgrade but there's another issue later on (after compile and install):</p><p>ERROR: Error running 'rvm gemset pristine' under ,<br>
please read /Users/olivier/.rvm/log//gemset.pristine.log</p><p>Anyone running into the same issue with existing gemsets?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Olivier Lacan</strong> &middot; <time datetime="2011-07-17T21:35:00+00:00">July 17, 2011 at 9:35 pm</time></p>
      <p>Other issue, once I upgraded my ~/.rvmrc file was botched, the last two lines were concatenated on one line.</p><p>This solution fixed it: <a href="https://gist.github.com/891155#gistcomment-35080" rel="nofollow">https://gist.github.com/891155#gistcomment-35080</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ruby Noob</strong> &middot; <time datetime="2011-07-18T00:54:00+00:00">July 18, 2011 at 12:54 am</time></p>
      <p>Very very very rookie here. I would like to upgrade my environment on my mac (OS X snow leopard) but no clue how to do that. I'm pretty sure I'm not using RVM since I've no idea what that is... so I'm guessing I need to do so with a compile since I just followed the steps from Hivelogic for p180 on my first install?</p><p>Any links or advice you could provide would be awesome.  :)</p><p>Here is a link to the page I followed for my first install in case the obscure reference to Hivelogic is not sufficient: <a href="http://hivelogic.com/articles/compiling-ruby-rubygems-and-rails-on-snow-leopard/" rel="nofollow">http://hivelogic.com/articles/compiling-ruby-rubygems-and-rails-on-snow-leopard/</a></p><p>Thnx,</p><p>Embarrassed Noob</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sandeep Kumar</strong> &middot; <time datetime="2011-07-18T05:25:00+00:00">July 18, 2011 at 5:25 am</time></p>
      <p>Hi,</p><p>Nice article. Only one thing is missing there,</p><p>On RVM, if want to upgrade a ruby patch/version the syntax should be:<br>
rvm upgrade ruby-version-[patch] (to) ruby-version[path] (from). </p><p>So it should be,<br>
 rvm upgrade ruby-1.9.2-p290 ruby-1.9.2-p0/ruby-1.9.2-p180</p><p>Thanks,<br>
--S</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gravis</strong> &middot; <time datetime="2011-07-18T07:41:00+00:00">July 18, 2011 at 7:41 am</time></p>
      <p>I must say, it's pretty confusing for new comers to ruby. They can't figure out easily what's the current stable release. +1 on "1.9.3".<br>
Also, great thanks to all teams, inclusing rvm, the upgrade process has never been so easy.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-07-18T12:16:00+00:00">July 18, 2011 at 12:16 pm</time></p>
      <p>@Sandeep: At least on mine it's rvm upgrade FROM TO.. not the other way around. I even copied and pasted the working line from my terminal to this article :-) I don't know if they changed it or if it was different in other versions of RVM though.</p><p>@Ruby Noob: You need to start using RVM. It's really the best way forward here and will give you the least headaches (once it's installed) especially if you want to upgrade in future or even try out other Ruby implementations.</p><p>@Oliver: Yes, I had exactly the same problem but it appeared not to be of significant effect since all my gems still run fine. I *suspect* the problem is that we're running older version of RubyGems. Given all the problems with newer versions, I haven't bothered upgraded from 1.6.2 and I don't think that version supports pristine anyway ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ruby Noob</strong> &middot; <time datetime="2011-07-18T18:31:00+00:00">July 18, 2011 at 6:31 pm</time></p>
      <p>Hrm I know this isn't a RVM tech support forum so if you can't answer no biggie, but for some reason after installing RVM and performing the<br>
<code>rvm upgrade ruby-1.9.2-p180 ruby-1.9.2-p290</code><br>
step it tells me I don't have the p180 version installed.<br>
<code>$ which ruby</code><br>
tells me the p180 version is located in /usr/bin/ruby</p><p>Again I apologize for clogging up your blog with "how to" questions... I'll keep plugging away and try to figure it out. No worries if you'd rather not answer in this post.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-07-18T20:17:00+00:00">July 18, 2011 at 8:17 pm</time></p>
      <p>@Ruby Noob: Ah, if you're just installed RVM, you just want to do a regular install, like <code>rvm install ruby-1.9.2-p290</code> - give that a try! :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>RubyUser4543</strong> &middot; <time datetime="2011-07-18T23:12:00+00:00">July 18, 2011 at 11:12 pm</time></p>
      <p>@Ruby Noob,</p><p>Just follow this guide to isntall rvm:<br>
<a href="https://rvm.beginrescueend.com/rvm/install/" rel="nofollow">https://rvm.beginrescueend.com/rvm/install/</a></p><p>Using rvm is becoming the standard way to install Ruby on *nix systems.<br>
Once you have rvm installed, installing/uninstalling any ruby versions will be a piece of cake.</p><p>Don't be lazy, read up on rvm! :-)<br>
<a href="https://rvm.beginrescueend.com/rubies/installing/" rel="nofollow">https://rvm.beginrescueend.com/rubies/installing/</a><br>
And enjoy Ruby, an amazing language!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dan</strong> &middot; <time datetime="2011-07-18T23:17:00+00:00">July 18, 2011 at 11:17 pm</time></p>
      <p>I have 2 rubies, now after upgrade, 'rvm gem list' and 'rvm gem help' spit out the same output twice. I wonder why.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>The Arcadian</strong> &middot; <time datetime="2011-07-19T01:37:00+00:00">July 19, 2011 at 1:37 am</time></p>
      <p>Wow I haven't touched tk since 94 (tcl/tk)...  Had no idea there was an active Ruby/TK community out there, never even seen a code sample.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dewayne</strong> &middot; <time datetime="2011-07-19T17:03:00+00:00">July 19, 2011 at 5:03 pm</time></p>
      <p>I ran into a shebang problem with the rvm upgrade that even rvm reset would not fix.  Had to go into each of the bin wrapper files and change the shebang from pointing to p180 to p290.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Murray Bozinsky</strong> &middot; <time datetime="2011-07-26T00:41:00+00:00">July 26, 2011 at 12:41 am</time></p>
      <p>I highly recommend you that you NOT use RVM. </p><p>There are so many bugs and gotchas that I found every upgrade time, be it Ruby, JRuby, or some gem to be an exercise in frustration and RVM was always the culprit.</p><p>I have no issues running 1.8.7, 1.9.2 and JRuby without RVM. A few .profile tweaks is all it takes and I don't have to worry about all the problems RVM causes.</p><p>The first thing you need to learn when becoming a programmer is to not blindly accept idioms and standards the community developed. 99% of the time you will want to use them, but blindly doing so can lead to multiple issues that only cause problems. In short, break the rules when there is a good reason to do so, despite what the anal-retentives say. And that includes not mindlessly jumping on the RVM bandwagon.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ed Jones</strong> &middot; <time datetime="2011-07-26T14:55:00+00:00">July 26, 2011 at 2:55 pm</time></p>
      <p>For those of us insane enough to use Windows, pik seems not to like this patch.</p><p>I tried both the pik install command and also using the ruby installer to install it in my .pik&gt;rubies directory, followed by pik add. </p><p>(yes in admin mode, and also pik 0.2.8)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Claudio Poli</strong> &middot; <time datetime="2011-07-28T00:03:00+00:00">July 28, 2011 at 12:03 am</time></p>
      <p>Ruby version numbers has always been fascinating to the most, remove patchlevels already :p</p><p>@Peter Cooper<br>
"Load paths are now always expanded by rb_et_expanded_load_path (I think this might yield a performance gain?)"</p><p>If you are referring to the somewhat recent discussions about Ruby performance in loading files I'm not seeing any improvements, I only got a slight gain (1s/2s over 25s+) with both patches I've seen around here.<br>
However I think I saw some related commit in head, haven't tried yet because a complex rails app bombs in few places on 1.9.3 so I have to stick to 1.9.2 for now.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="official-ruby-site-not-so-good-5248.html" rel="external nofollow" class="url">The Official Ruby Site Is Proudly Maintained by No-One</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="ruby-1-9-3-preview-1-released-5229.html" rel="external nofollow" class="url">Ruby 1.9.3 Preview 1 Released – What’s New?</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
