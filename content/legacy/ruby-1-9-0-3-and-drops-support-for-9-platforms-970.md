---
title: Ruby 1.9 Drops Support For 9 Platforms (Ruby 1.9.0-3′s Release Bombshell)
date: '2008-07-28'
author: Peter Cooper
author_slug: admin
post_id: 970
slug: ruby-1-9-0-3-and-drops-support-for-9-platforms-970
url: "/ruby-1-9-0-3-and-drops-support-for-9-platforms-970.html"
categories:
- controversy
- news
---

{{< rawhtml >}}
<p><img src="/assets/2008/07/norubyforyou.jpg" width="276" height="206" alt="norubyforyou.jpg" style="border:1px #000000 solid;"><br>
<small><em>Photo credit: <a href="http://flickr.com/photos/blakespot/2444037775/">Blakespot.</a> License: CC 2.0 Attribution</em></small></p>
<p>Yuki Sonoda has <a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/309172">announced the release of Ruby 1.9.0-3</a>, a snapshot release of the still-experimental Ruby 1.9 (<a href="rubykaigi-news-2008-191-and-ruby-standardization-943.html">wait until Christmas</a> for the production ready 1.9.1). Minor releases aren't typically covered here on Ruby Inside, but the dropping of support for nine platforms in Ruby 1.9 might be of significant interest to some:</p>
<blockquote>
<p>Ruby 1.9 no longer supports the following platforms because they have no active maintainer.</p>
<ul>
<li>BeOS</li>
<li>WinCE</li>
<li>OS/2</li>
<li>Interix</li>
<li>bcc32</li>
<li>Classic MacOS</li>
<li>djgpp</li>
<li>VMS</li>
<li>human68k</li>
</ul>
<p>I will remove platform-specific codes for them from Ruby, unless someone become a maintainer by 25 Sep.</p>
</blockquote>
<p>It seems unlikely anyone will be too bothered about losing Ruby on Mac OS 9, DOS, BeOS or WinCE, but if you <em>are</em> bothered, get on to <em>ruby-talk</em> right away. Even if you don't think you could maintain it yourself, renewed interest in your platform might encourage others to get involved.</p>
<p>Further to the above, <a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-core/17644">Ruby 1.9.0-4 is due</a> on August 25, 1.9.0-5 on September 25, 1.9.1 RC1 on October 25 (this will be quite a significant test - put it in your calendar), 1.9.1 RC2 on November 25, and 1.9.1 proper on December 20, 2008.</p>
<p><em><strong>This post supported by</strong></em> <a href="http://railskits.com/recurring_billing"><em><strong>Rails Kits</strong></em></a><em><strong>:</strong> Get billing and subscription code "to go" with <a href="http://railskits.com/recurring_billing">the SaaS Rails Kit.</a> Quickly add credit card and PayPal payments to your Rails app. Now supports Authorize.net and other payment processors.</em> <em>Get 10% off by using the discount code "rubyinside" at checkout before August 1st.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Edward Boteler</strong> &middot; <time datetime="2008-07-28T20:08:00+00:00">July 28, 2008 at 8:08 pm</time></p>
      <p>Yeah, but the platforms are: * BeOS * WinCE * OS/2 * Interix * bcc32 * Classic MacOS * djgpp * VMS * human68k Not a huge loss, especially when coupled with the fact that they're waiting until 25 September to see if someone will step up as maintainer.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Marcel Molina</strong> &middot; <time datetime="2008-07-28T22:29:00+00:00">July 28, 2008 at 10:29 pm</time></p>
      <p>Why are you calling it a bombshell if you also acknowledge that it's unlikely anyone would care about these now largely obscure or obsolete operating systems? Saying it's a bombshell is misleading and sensationalist. I'd claim that it's an improvement to rip out all the preprocessor cruft required to support these operating systems.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-07-28T22:45:00+00:00">July 28, 2008 at 10:45 pm</time></p>
      <p>It's sensationalist.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>TomG</strong> &middot; <time datetime="2008-07-29T11:33:00+00:00">July 29, 2008 at 11:33 am</time></p>
      <p>You can't please everybody.  Isn't one of the strengths of Ruby that a few smart people are leading the way?  </p><p>Maybe we should have a Ruby Community Process (RCP) that can help inject some confusion, obfuscation and disempowerment (COD) into the community.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2008-07-29T11:49:00+00:00">July 29, 2008 at 11:49 am</time></p>
      <p>VMS and WinCE might survive. The rest should have been dropped years ago from 1.8. They should drop Windows 95/98/ME, too, if they haven't already.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-07-29T11:56:00+00:00">July 29, 2008 at 11:56 am</time></p>
      <p>djgpp would cover all DOS-based Windows versions. djgpp was insanely clever for its time and most djgpp-compiled code can span from a 386 running DOS 5 right up to a modern machine running 98 or ME, with the latter receiving long filename support and some other minor benefits.</p><p>Unfortunately djgpp development seems to have stopped as of 2003, so the dropping of support for it is, perhaps, overdue. There were plans to make it a lot more suitable for compilation on Windows 2000 and XP too, but since Cygwin makes it rudimentary to run regular gcc on those platforms now, I guess it was time to abandon it. It's still sad though. djgpp brought us most of the best games of the 1990s such as Quake and Syndicate.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-07-29T11:57:00+00:00">July 29, 2008 at 11:57 am</time></p>
      <p>* Narrowly walks away from writing a rant about how back in the 90s we were real programmers who had to wrangle every bit by hand.. lol *</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeremey Barrett</strong> &middot; <time datetime="2008-07-29T15:52:00+00:00">July 29, 2008 at 3:52 pm</time></p>
      <p>Hardly a bombshell, come on. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>biffuz</strong> &middot; <time datetime="2008-07-29T16:25:00+00:00">July 29, 2008 at 4:25 pm</time></p>
      <p>BeOS may be dead, but its open source replacement Haiku ( <a href="http://www.haiku-os.org/" rel="nofollow">http://www.haiku-os.org/</a> ) is being actively developed.</p><p>No, I don't offer myself as the maintainer :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>mmu_man</strong> &middot; <time datetime="2008-07-29T16:34:00+00:00">July 29, 2008 at 4:34 pm</time></p>
      <p>I don't use ruby (yet?) but I do use BeOS, and I do know at least 1 person using ruby on it. Olivier Coursière (FreePascal porter) might be interested.<br>
And yes, Haiku is becoming usable, and will soon need to reuse (parts of) the BeOS port.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>gaiusparx</strong> &middot; <time datetime="2008-07-29T18:50:00+00:00">July 29, 2008 at 6:50 pm</time></p>
      <p>I am surprised about WinCE, seems like no one is keen to run ruby on Windows Mobile devices :-) I agreed with Daniel that should drop Windows 95/98/ME as well.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>umccullough</strong> &middot; <time datetime="2008-07-29T18:53:00+00:00">July 29, 2008 at 6:53 pm</time></p>
      <p>While I'm not currently a Ruby developer, it's on my "list of things to learn".</p><p>I'm an avid Haiku supporter, tester, and evangelist - and while I don't care as much about Ruby for BeOS, the port is probably a worthwhile starting point for Ruby on Haiku. (Haiku will have better POSIX compliance, but otherwise uses the same high-level API as BeOS).</p><p>I'd also love to see native Haiku bindings for Ruby like exists for Python already.</p><p>So, another vote for keeping the BeOS port alive :)</p><p>btw, where is "ruby-talk"?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-07-29T20:16:00+00:00">July 29, 2008 at 8:16 pm</time></p>
      <p>ruby-talk: <a href="http://blade.nagaokaut.ac.jp/ruby/ruby-talk/index.shtml" rel="nofollow">http://blade.nagaokaut.ac.jp/ruby/ruby-talk/index.shtml</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-07-29T20:17:00+00:00">July 29, 2008 at 8:17 pm</time></p>
      <p>A single post on ruby-talk about this would probably bring a few of the Ruby diehards out of the woodwork who would be more than happy to discuss this and probably help with the effort. I say this because the die-hard coders digging around with Ruby's insides every single day don't tend to read Ruby Inside which has a more generalist audience.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Scott Schram</strong> &middot; <time datetime="2008-07-29T23:09:00+00:00">July 29, 2008 at 11:09 pm</time></p>
      <p>Support is also being dropped for Babbage's Analytical Engine.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-07-29T23:20:00+00:00">July 29, 2008 at 11:20 pm</time></p>
      <p><a href="http://twitter.com/hissohathair/statuses/871359215" rel="nofollow">http://twitter.com/hissohathair/statuses/871359215</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Yuki Sonoda (Yugui)</strong> &middot; <time datetime="2008-07-30T05:59:00+00:00">July 30, 2008 at 5:59 am</time></p>
      <p>I'm sad to drop support for these platforms. I really want someone to become a maintainer, especially for WinCE, BeOS, OS/2 and VMS.</p><p>I think Ruby 1.9 will easily work on these 4 platforms. Mainly, the required task is to port thread_*.c to them.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paul Smedley</strong> &middot; <time datetime="2008-07-30T09:10:00+00:00">July 30, 2008 at 9:10 am</time></p>
      <p>If other OS/2 users speak up, I'll volunteer to maintain Ruby/2 - I maintain plenty of other OS/2 ports.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2008-07-31T18:34:00+00:00">July 31, 2008 at 6:34 pm</time></p>
      <p>@Yugui, it's more than just dealing with thread.c. On BeOS, for example, there was a serious problem with loading shared objects. I had a partial fix at one point (based on a Python patch, which had the same bug). But the sad reality is that BeOS is dead, and Haiku has no penetration at the moment.</p><p>Also keep in mind that, even with maintainers, you're still talking about littering the source code with a bunch of #ifdef macros for the sake of platforms that are, except for VMS, virtually dead outside of home hobbyists. Is it worth it to maintain that code? I say no.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mat Nieuwenhoven</strong> &middot; <time datetime="2008-08-04T09:49:00+00:00">August 4, 2008 at 9:49 am</time></p>
      <p>I'm just starting on Ruby, and I'd be interested in an OS/2 port. So please Paul, yes.</p><p>Mat</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Finnbarr P. Murphy</strong> &middot; <time datetime="2008-08-05T13:50:00+00:00">August 5, 2008 at 1:50 pm</time></p>
      <p>I use Ruby under Interix (Microsoft SUA)  I am willing to step up to the plate and maintain the Interix port/code if nobody else is wants to.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stan Pokorney</strong> &middot; <time datetime="2008-08-08T15:01:00+00:00">August 8, 2008 at 3:01 pm</time></p>
      <p>Paul,  First of all, thank you for all your current ports of software.<br>
If you could add Ruby to your list of ports, this would be great for OS/2.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
