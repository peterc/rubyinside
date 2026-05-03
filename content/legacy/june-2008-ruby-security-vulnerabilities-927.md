---
title: 'June 2008 Ruby Security Advisory: A Summary'
date: '2008-06-22'
author: Peter Cooper
author_slug: admin
post_id: 927
slug: june-2008-ruby-security-vulnerabilities-927
url: "/june-2008-ruby-security-vulnerabilities-927.html"
categories:
- news
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2008/06/dontpanic.jpg" width="255" height="261" alt="dontpanic.jpg" style="border:1px #000000 solid;"><br>
<em>Photo by <a href="http://www.flickr.com/photos/brighton/2153602543/">JL2003</a> - CC 2.0 Attribution License</em></p>
<p>The official Ruby blog is <a href="http://www.ruby-lang.org/en/news/2008/06/20/arbitrary-code-execution-vulnerabilities/">reporting "multiple vulnerabilities"</a> in the official Ruby interpreter (MRI). A significant number of versions are affected:</p>
<ul>
<li>All versions <em>prior</em> to 1.8.5</li>
<li>All 1.8.5 versions prior to patch 231</li>
<li>All 1.8.6 versions prior to patch 230</li>
<li>All 1.8.7 versions prior to patch 22</li>
<li>All 1.9.0 versions prior to 1.9.0-2</li>
</ul>
<p>Jeremy Kemper, at the official <em>Rails</em> blog, advised upgrading immediately, but with the warning that Ruby 1.8.7 only works with Rails 2.1 and later. Numerous commenters, however, have noted significant issues with Rails applications once they've upgraded to Ruby 1.8.6p230 and 1.8.5p231. A poster on RubyFlow <a href="http://www.rubyflow.com/items/538">suggests</a> Ruby 1.8.6-p230 is not compatible with Rails at all, although others have reported success.</p>
<p><big><strong>What are the problems?</strong></big></p>
<p>*** **** has <a href="http://www.*******.com/rants/the_big_ruby_vulnerabilities.html">put together a pretty detailed look at what the actual defects are</a> (mostly "general buffer overflow defects, signed integer problems, and path traversal problems").</p>
<p>Eric Monti has posted <a href="http://www.matasano.com/log/1070/updates-on-drew-yaos-terrible-ruby-vulnerabilities/">code examples to demonstrate some issues</a>.</p>
<p><big><strong>Is it urgent?</strong></big></p>
<p>It appears that while this is a significant security advisory, and you should be paying attention, <strong>there's no 0-day urgency on this</strong> as <a href="http://weblog.rubyonrails.org/2008/6/21/multiple-ruby-security-vulnerabilities#comment-20967">Eric Wong highlights</a>. <strong>Walk, but don't run, to the exit. <span style="font-weight: normal;">Eric Monti, on the other hand, seems to be <a href="http://www.matasano.com/log/1070/updates-on-drew-yaos-terrible-ruby-vulnerabilities/">quite worried</a> by the security vulnerabilities.</span></strong></p>
<p>If you're only running your own scripts on your own local machine (that is, not a public-facing Web app), you <em>might</em> be better off waiting for your operating system's packaging system to update Ruby for you (whether on Linux or OS X). The security issues were discovered by Drew Yao of Apple who has suggested a OS X update for this will be going out soon, so it's reasonable to wait for that if you're on OS X.</p>
<p>My <em><strong>personal</strong></em> advice (which is, <a href="june-2008-ruby-security-vulnerabilities-927.html#comment-36449">as noted</a> by Thomas H. Ptacek, "<em>spectacularly bad</em>") is that unless you're already itching to upgrade out of panic, just make sure you're familiar with where all your Ruby deployments are, what versions they're running now, and that you have a good idea of how to upgrade them. Then unless you're confident about upgrading and running tests straight away, I'd wait until a lot more positive noises are coming out of Rails developers upgrading to the latest versions, especially surrounding Ruby 1.8.6p230.</p>
<p><strong>Update:</strong> <a href="june-2008-ruby-security-vulnerabilities-927.html#comment-36449">In comments</a>, Thomas H. Ptacek says:</p>
<blockquote><p>
  The “walk don’t run” sentiment is dead wrong. You do not need to handle multi-gigabyte strings to trip these vulnerabilities; you just need code that can be coerced into using broken indices. It’s spectacularly bad advice to suggest that people should continue to run code with known memory corruption vulnerabilities.
</p></blockquote>
<p>Quite why anyone would have code that relies on <em>any</em> unchecked / unsanitized data is beyond me, but it's worth keeping in mind if you do. So, panic if you want, but even if you don't, you'll probably still be alive and this news will be forgotten within a week or two.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Thomas H. Ptacek</strong> &middot; <time datetime="2008-06-22T05:43:00+00:00">June 22, 2008 at 5:43 am</time></p>
      <p>I'm not sure you should be citing *** here. Much of his explanation appears to be wrong.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Thomas H. Ptacek</strong> &middot; <time datetime="2008-06-22T05:45:00+00:00">June 22, 2008 at 5:45 am</time></p>
      <p>The "walk don't run" sentiment is dead wrong. You do not need to handle multi-gigabyte strings to trip these vulnerabilities; you just need code that can be coerced into using broken indices. It's spectacularly bad advice to suggest that people should continue to run code with known memory corruption vulnerabilities.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-06-22T05:46:00+00:00">June 22, 2008 at 5:46 am</time></p>
      <p>I still stand by it, but I'll update the post to share your concerns.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Thomas H. Ptacek</strong> &middot; <time datetime="2008-06-22T06:24:00+00:00">June 22, 2008 at 6:24 am</time></p>
      <p>Peter --- Ruby devs don't check integer indices because Ruby is an EAFP language (ask forgiveness, not permission) --- it throws exceptions or returns "nil" when you get things like array indexes wrong. Lots of Ruby code is written to handle errors, instead of checking for them.</p><p>You really don't want to be in a position of vouching for every dependent line of code in your project to get this right to ensure that someone can't run native code on your servers. It would be a hard thing to explain to your users, your customers, or your PCI auditors.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-06-22T06:29:00+00:00">June 22, 2008 at 6:29 am</time></p>
      <p>It's not necessarily a case of checking the indices, but more that you shouldn't allow unsanitized data to have any direct effect on low level (as low level as Ruby gets anyway) operations within code (unless you're running within some sort of sandbox, in which case the advisory would be even less significant).</p><p>Of course, a database entry (assuming it was put there by a third party or you weren't using validations), an erroneous response from a search/indexing library, or the like, /could/ trigger large string indices like this, so there are no hard and fast rules and if you're in a big budget production environment, upgrading is clearly a good idea.</p><p>If you were using fuzz testing (or even good unit testing) on your application, this particular part of the advisory would almost be a non issue since such you'd already be familiar with what your application does when given such crazy data.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Thomas H. Ptacek</strong> &middot; <time datetime="2008-06-22T07:27:00+00:00">June 22, 2008 at 7:27 am</time></p>
      <p>Doubt that fuzz testing will catch these. For instance, to trip the Bignum integer overflow, you need an integer whose backing store is many hundreds of megabytes long.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew</strong> &middot; <time datetime="2008-06-22T08:57:00+00:00">June 22, 2008 at 8:57 am</time></p>
      <p>Is JRuby affected, too?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-06-22T09:26:00+00:00">June 22, 2008 at 9:26 am</time></p>
      <p>Without giving a definitive answer, on the array index issue in particular, it doesn't appear so. I get a "ArgumentError: index too big" exception, rather than either a hang (as I get on my older Ruby 1.8.6) or a segfault (as some users are getting).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Breen (hardbap)</strong> &middot; <time datetime="2008-06-22T10:36:00+00:00">June 22, 2008 at 10:36 am</time></p>
      <p>My suggestion that Ruby 1.8.6-p230 is incompatible with Rails was based only on the comments in Jeremy's post (including his own). I haven't upgraded or done any testing of my own as of yet to confirm this. My posting on RubyFlow should have explained this, sorry about that.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-06-22T11:32:00+00:00">June 22, 2008 at 11:32 am</time></p>
      <p>The varying results seem to indicate that perhaps a certain plugin or specific technique used by some Rails developers can cause issues on p230, but not Rails per-se (unless it's a version specific issue). Still worth keeping in mind though.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ezra</strong> &middot; <time datetime="2008-06-22T18:20:00+00:00">June 22, 2008 at 6:20 pm</time></p>
      <p>It is pretty lame IMHO that the ruby core developers pushed out this 'security' patch that also includes breaking feature changes in a minor patch level release. This puts folks between a rock and a hard place. Either you risk it and keep running the old version, or you upgrade to p230 and break your apps with segfaults. Neither of these is a fun option. Where is the patch for 1.8.6p114 that *only* fixes the security bugs?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>J B</strong> &middot; <time datetime="2008-06-22T19:36:00+00:00">June 22, 2008 at 7:36 pm</time></p>
      <p>@ezra you're exactly right. ruby has become mainstream, yet it seems the ruby maintainers are still stuck with a hobbyist mentality...sad. they should be more thoughtful.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>aimee.mychores.co.uk</strong> &middot; <time datetime="2008-06-22T21:36:00+00:00">June 22, 2008 at 9:36 pm</time></p>
      <p>We can has a good build now please?! :)</p><p>I did a brand new Rails 2.1 scaffold and Ruby 1.8.6 patch 230 broke at the first page i tried to load. There was no specific plugin to speak of. Maybe it's an incompatibility with the operating system (Debian Etch?) or the way i linked the dependencies ...?</p><p>I'm surprised there is no update from Ruby yet.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Robin Kaarsgaard</strong> &middot; <time datetime="2008-06-22T21:59:00+00:00">June 22, 2008 at 9:59 pm</time></p>
      <p>To be completely honest, I don't see much of a choice in this issue, and being paranoid about it is being too anal for your own good. It sucks for sure to know that evil hacker people have an easy and well documented shot at bringing your applications to their knees, but what is the alternative?</p><p>No matter what you do, chances are it will end in misery and segfaults. If you don't upgrade, it might if you're unlucky and get attacked - and if you do upgrade, it probably will.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Robin Kaarsgaard</strong> &middot; <time datetime="2008-06-23T02:00:00+00:00">June 23, 2008 at 2:00 am</time></p>
      <p>Another thing is that it seems that the Phusion guys <a href="http://blog.phusion.nl/2008/06/22/ruby-enterprise-edition-186-20080621-released/" rel="nofollow">already managed to integrate 1.8.6p230</a> into Ruby Enterprise Edition. One must assume that it works with Rails (although there is one report of segfaults with Rails 1.2.6), but they haven't published anything official about which version(s) it supports.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Igal Koshevoy</strong> &middot; <time datetime="2008-06-23T02:03:00+00:00">June 23, 2008 at 2:03 am</time></p>
      <p>There's a thread on ruby-talk for this topic, which may be a better place to discuss this: <a href="http://www.ruby-forum.com/topic/157034" rel="nofollow">http://www.ruby-forum.com/topic/157034</a></p><p>Here's a copy of my post from that thread regarding this topic:</p><p>All versions of MRI Ruby that claim to fix the vulnerabilities are either failing with segmentation faults or change the API in ways that make it impossible to run vital libraries such as Rails 2.0.x and RSpec. These broken versions include: 1.8.5p231, 1.8.6p230, 1.8.7p22, and 1.9.0-2. Unfortunately, the source code describing some of the proposed fixes has been publicly available now for four days for crackers to write their attacks, so we're in a race with the bad guys to deliver a solution.</p><p>Is anyone working on fixing these bugs? If not, can we rally the community to get a bounty and/or code sprint going?</p><p>Is there a way to convince the Ruby maintainers to run new code against the publicly-available test suites provided by RubySpec, Rails and Rspec before they ship a new version to avoid these problems in the future?</p><p>Is there anything else that those of us which lack the necessary C expertise to fix these problems can do to help with this effort?</p><p>Thank you.</p><p>-igal</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Senthil Nayagam</strong> &middot; <time datetime="2008-06-23T03:35:00+00:00">June 23, 2008 at 3:35 am</time></p>
      <p>I also want answers to Andrew's question, are other Ruby distributions affected?,I hope they are not, but  a definitive answer would be very nice, it will be kind of  continuity planning measure</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ezra</strong> &middot; <time datetime="2008-06-23T06:00:00+00:00">June 23, 2008 at 6:00 am</time></p>
      <p>@Senthil  rubinius is not affected by any of these overflows. I'd assume jruby is fine as well but haven't verified.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2008-06-23T11:44:00+00:00">June 23, 2008 at 11:44 am</time></p>
      <p>@Igal Koshevoy: Phusion has just released a new version of Ruby Enterprise Edition, which is based on Ruby 1.8.6-p111, with the security patches backported. This version should be compatible with all your apps.</p><p>See <a href="http://blog.phusion.nl/2008/06/23/ruby-186-p230187-broke-your-app-ruby-enterprise-edition-to-the-rescue/" rel="nofollow">http://blog.phusion.nl/2008/06/23/ruby-186-p230187-broke-your-app-ruby-enterprise-edition-to-the-rescue/</a> for details.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Igal Koshevoy</strong> &middot; <time datetime="2008-06-23T12:03:00+00:00">June 23, 2008 at 12:03 pm</time></p>
      <p>@Hongli Lai: Thanks for comment, I've replied on your blog. Here's a copy of the relevant portion of my reply for everyone else's sake:</p><p>I cannot figure out how to get a diff of the changes you’ve made between [your two recent Ruby Enterprise] releases because your download.php program makes it impossible to access old versions of your code.</p><p>Can you please publish a diff of your backport against p111 [without the Ruby Enterprise changes]?</p><p>Thank you.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>zerohalo</strong> &middot; <time datetime="2008-06-24T14:50:00+00:00">June 24, 2008 at 2:50 pm</time></p>
      <p>Those of us on FreeBSD are fine thanks to Stanislav, but does anyone know whether the Ruby team is planning to release a version with the security patches that runs with Rails?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dave</strong> &middot; <time datetime="2008-06-27T12:09:00+00:00">June 27, 2008 at 12:09 pm</time></p>
      <p>How long do we have to see this "Don't Panic" image! It feels up half of the browser screen and it requires me to scroll. </p><p>Cheers</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-06-27T12:12:00+00:00">June 27, 2008 at 12:12 pm</time></p>
      <p>Dave: If you can see that image, you don't need to scroll, as new items appear on top, so if you've already read what's below it, no need to scroll :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
