---
title: DebGem – Ruby Libraries Packaged for Debian and Ubuntu
date: '2009-01-06'
author: Peter Cooper
author_slug: admin
post_id: 1436
slug: debgem-ruby-libraries-packaged-for-debian-and-ubuntu-1436
url: "/debgem-ruby-libraries-packaged-for-debian-and-ubuntu-1436.html"
categories:
- enterprise
- linux-specific
- tools
---

{{< rawhtml >}}
<p><a href="http://www.debgem.com/"><img src="/assets/2009/01/debgem.png" width="162" height="49" alt="debgem.png" style="float:left; margin-right:12px; margin-bottom:12px;"></a> <a href="http://www.phusion.nl/">Phusion</a>, the company responsible for <a href="http://www.modrails.com/">Passenger</a> - the Rails deployment system, has today <a href="http://blog.phusion.nl/2009/01/06/announcing-debgem-beta-the-rubygem-to-apt-conversion-service/">announced</a> <a href="http://www.debgem.com/">DebGem</a>, a "RubyGem to APT conversion service."</p>
<p>Many Debian (and Ubuntu, which is compatible) sysadmins and users prefer to use the <a href="http://en.wikipedia.org/wiki/Advanced_Packaging_Tool">APT</a> (as in <em>apt-get</em>) package management system for handling the installation of everything on their system. With its separate RubyGems packaging system, however, Ruby can cause a dilemma. While some Ruby stuff is available through the regular repositories, it can be out of date and unreliable. No longer.. DebGem provides an APT repository with Debian and Ubuntu packages for "virtually all gems" available on RubyForge and <a href="http://www.github.com/">Github</a>. For example, installing Hpricot is as easy as:</p>
<pre>
apt-get install libhpricot-ruby
</pre>
<p>Or how about Rails?</p>
<pre>
apt-get install rails
</pre>
<p>All you need to do is add the DebGem repository to your APT sources list (often /etc/apt/sources.list) and you're ready to go! There are just two "catches":</p>
<ol>
<li>Currently gems with native extensions are only supported on Ubuntu 8.04 (Hardy) x86.</li>
<li>DebGem is only free to use during the beta period - see the <a href="http://www.debgem.com/pricing_signup">pricing</a> for future options.</li>
</ol>
<p>Ultimately, even if you need the "Premium" level of service, it's only going to cost $350 a year and it could be worth it for the piece of mind. Not only that, but you're probably already using Phusion Passenger and this is a great way to support the Phusion guys with their ongoing work.</p>
<p class="s" style="font-family:verdana;font-style:italic;padding:8px;font-size: 12px"><strong>Support from: <a href="http://www.actsasconference.com/">acts_as_conference</a></strong> - A <em>two day Rails conference</em> in Orlando, Florida on February 6 and 7. Only $125, free food, a great venue, and lots of top Rails speakers including DHH. <a href="http://www.actsasconference.com/">Click here to learn more.</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Christoph Olszowka</strong> &middot; <time datetime="2009-01-06T18:33:00+00:00">January 6, 2009 at 6:33 pm</time></p>
      <p>Great thing! Trying it out right away</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Christoph Olszowka</strong> &middot; <time datetime="2009-01-06T19:58:00+00:00">January 6, 2009 at 7:58 pm</time></p>
      <p>Well, I did check it out, and it did not deliver. If anyone is interested, check out my post on it at <a href="http://blog.olszowka.de/2009/01/06/phusion-releases-debgemcom-into-beta/" rel="nofollow">http://blog.olszowka.de/2009/01/06/phusion-releases-debgemcom-into-beta/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Eric Anderson</strong> &middot; <time datetime="2009-01-06T20:14:00+00:00">January 6, 2009 at 8:14 pm</time></p>
      <p>While interesting I just don't see the benefit.</p><p>Is it really that hard to have two package systems managing your installed apps/libs? Yes it is a little redundant/inconsistent/mismatched. But it works and works fairly well. And if your job is to maintain servers with Ruby applications on it that depend on RubyGems then is it too much to ask you to spend 30 minutes reading the RubyGems manual to figure out how to install/uninstall gems?</p><p>Maybe one day there will be a great way to have "one unified package" for all distributions/operating systems/languages that integrate perfectly with all tools. I doubt it but maybe one day it will happen. Until then I am fairly happy with the "good enough" solution that exists and don't see the value of the service.</p><p>It is interesting from a "that is kinda neat" standpoint and is nice to see someone thinking outside the box on possible methods to work towards a more unified system. But you won't see me paying a monthly subscription fee to access something I can already get for free.</p><p>Just my two cents.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeremy</strong> &middot; <time datetime="2009-01-06T22:07:00+00:00">January 6, 2009 at 10:07 pm</time></p>
      <p>@Eric: Apparently you've never tried to use Ruby on a Debian-based install.  Try it sometime.  You'll be unpleasantly annoyed to your core.</p><p>If you install Ruby from Debian's packages, then (a) gem will not install the way you think it will install and (b) no you can not install your own.  I installed the whole Rails stack from package and that was one huge lump of fail (e.g., they rewrote the Rails bin script IN BASH).  So, yes it's a hassle, and yes I think this is neat, but honestly I just switched distro's rather than wrestling with this crap. :P</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2009-01-06T22:22:00+00:00">January 6, 2009 at 10:22 pm</time></p>
      <p>@Christoph Olszowka:</p><p>Thank you for your useful criticism. There about 25000 gems and naturally, we haven't been able to test them all, but we're continuously working on improving things and solving problems. This is why the service is in public beta right now. We'll take a look at our Datamapper packages. Please keep the feedback coming!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rob Hunter</strong> &middot; <time datetime="2009-01-06T23:01:00+00:00">January 6, 2009 at 11:01 pm</time></p>
      <p>How does this impact on the Debian Position on Ruby Gems ?</p><p>By the way, a minor correction on the sales pitch: "piece of mind" -&gt; "peace of mind"</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Markus Jais</strong> &middot; <time datetime="2009-01-07T07:57:00+00:00">January 7, 2009 at 7:57 am</time></p>
      <p>This is a great idea. It's sometimes hard to convince system administrators to use gems. If they already use a packaging system like the one from Debian or Ubuntu, they are reluctant to use another one just for Ruby libraries. I can understand that.</p><p>DebGem should help reduce conflicts and make both Ruby developers and system administrators happy.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gregory Brown</strong> &middot; <time datetime="2009-01-07T17:54:00+00:00">January 7, 2009 at 5:54 pm</time></p>
      <p>From the FAQ:</p><p>"The problem of (recent versions of) Ruby software not being available as Debian packages has been around for years. Creating a gem-to-apt gateway such as DebGem is by no means trivial: DebGem provides Debian packages for over 20000 Ruby gems, each package fine-tuned for multiple distribution versions and platforms. This requires a lot of hard work and constant maintenance. Futhermore, the required servers are not free, and neither is the required bandwidth. It is for these reasons why we cannot offer this service for free."</p><p>Okay, all of this is true, and I totally bought it on a first read.  Then I re-thought it.  This is like saying RubyForge should cost a monthly fee, or the debian repositories already available for free should cost a fee.  (Probably closer to the latter)</p><p>The truth of the matter is, with Phusion maintaining the system, and holding onto the source of DebGem, yes... there are costs associated that need to be dealt with.  But if these are really the reasons they want to charge a fee (and not to make a profit), then they should release the source and let the community attempt to run their own debgem services.   Now, in the situation where there isn't sufficient man-power, interest, or reliability from the 'community' version of Debgem, that's fine.  Then Phusion can and still will make money from their service (as they should).  If a community repos took off, then they could offer what they intended to for free, without it costing them.</p><p>But not to dissuade those who say "There's nothing wrong with for profit software, especially when a valuable service is offered".   I agree (to an extent), but guilting me into paying for Debgem isn't the way to go about it.</p><p>Take all of this with a shaker of salt, because I'm not a Debian user.  But what I'm saying is the reasons for *forcing* people to pay are bunk.  Release the source, then keep the service up and running.   If you're providing something that stands out above and beyond what the community can offer, more power to you.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2009-01-07T18:07:00+00:00">January 7, 2009 at 6:07 pm</time></p>
      <p>Gregory: It is true that we are out to make a profit. After all we are a company. If the FAQ entry came over as "you must feel guilty about wanting this service for free" then I apologize, because that isn't the intention.</p><p>However, the problem has existed for years, and so far nobody has really tried to solve the problem. We are the first ones to even try to offer Debian packages for all gems. So far the community has already shown very little interest in tackling the problem. Furthermore, we spent a lot of time developing our conversion tool, time which isn't free.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gregory Brown</strong> &middot; <time datetime="2009-01-07T18:38:00+00:00">January 7, 2009 at 6:38 pm</time></p>
      <p>@Hongli,</p><p>And I spent a lot of time developing a lot of open source software and that's also not free time.  People have different motivations for different things.   Again, if you simply drop the bunk arguments, I'd be fine with you making money.  You guys have done some great work, and I really appreciate it.</p><p>Just if you want to offer a commercial product / service, let it be a commercial product / service.</p><p>If you change that FAQ to read "This didn't exist before, we worked hard on it, and we want to make some money as a result of that", I think I'd respect and understand that.  But keep in mind the *only* thing that gives your product value is the '25000' or so projects which were made available to you *for free*</p><p>I'm not saying that you can't choose to profit from your work in a direct way.  I'm asking you to be up front about it, as it only shows respect to the developers who have made it possible for you to make money off of this new tool.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2009-01-07T18:41:00+00:00">January 7, 2009 at 6:41 pm</time></p>
      <p>@Gregory: We've already updated the website. Is the new wording better?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gregory Brown</strong> &middot; <time datetime="2009-01-07T18:47:00+00:00">January 7, 2009 at 6:47 pm</time></p>
      <p>@Hongli,</p><p>Yes, thank you for responding so quickly to my ranting.</p><p>Though some are extremist about this sort of thing and will likely hassle you about how something like this *should* be free and this and that, I'm definitely not the one to say that.</p><p>I appreciate you rewording things to reflect a bit more openly the intentions behind charging people.   You might consider open-sourcing the tool down the line, but then again, you might not.   The fact that the service is available to people is better than it not existing at all, IMO, and if you need to charge for that, so be it.</p><p>Keep up with the cool stuff, I'm impressed with how much Phusion has done already.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James Robertson</strong> &middot; <time datetime="2009-01-07T22:01:00+00:00">January 7, 2009 at 10:01 pm</time></p>
      <p>I would like to be aply to play with Ruby gems without even having to install them on my machine perhaps through a Virtual Machine.  How about using something like Amazon's EC2 service to provide curious programmers like myself a way to try out gems from the cloud.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2009-01-07T22:44:00+00:00">January 7, 2009 at 10:44 pm</time></p>
      <p>@James: You can install DebGem packages in a VM if you want to. You can use VMWare, VirtualBox, EC2 or any other virtualization software/service. We do not restrict you in any way.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2009-01-07T23:36:00+00:00">January 7, 2009 at 11:36 pm</time></p>
      <p>As of today, DebGem also supports gems with native extensions on x86 Debian 4.0 (Etch). :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Shong</strong> &middot; <time datetime="2009-01-08T08:21:00+00:00">January 8, 2009 at 8:21 am</time></p>
      <p>$350 for an apt repository that contains software which wasn't even written by that company but just automatically converted from free resources? Lol, if that's going to work out, I'll nominate that company for this years fraud idea #1 ;-D</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Christoph Olszowka</strong> &middot; <time datetime="2009-01-09T10:18:00+00:00">January 9, 2009 at 10:18 am</time></p>
      <p>Hey folks, I gave it another spin, this time in a fresh VM. You can read on that over at <a href="http://blog.olszowka.de/2009/01/09/debgem-test-run-on-a-vanilla-ubuntu/" rel="nofollow">http://blog.olszowka.de/2009/01/09/debgem-test-run-on-a-vanilla-ubuntu/</a></p><p>Greetings, Christoph</p>
    </li>
      <li>
      <p class="comment-meta"><strong>bbnnt</strong> &middot; <time datetime="2009-01-09T11:07:00+00:00">January 9, 2009 at 11:07 am</time></p>
      <p>The approach is great, but still it's a pain to think about paying for it, mainly i think because it is kind of a "core" problem and that it would have to be totally integrated by the people working in rails and ruby development instead of being an offer from you guys at phusion. but as hong li said, "very little interest in tackling the problem", wich is just sad.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dick Davies</strong> &middot; <time datetime="2009-01-09T11:35:00+00:00">January 9, 2009 at 11:35 am</time></p>
      <p>I've never understood what was so bad about providing a Deb pkg for rubygems (base) and then using the gem commands for everything else. </p><p>When Debian tried to do this, they made a lot of work for themselves without any obvious user demand, inevitably lagged behind the latest gems and flamed any Rubyists who asked what their reason for bothering was.</p><p>In the end it was less hassle to stop using their OS and switch to a less opinioned Linux variant.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dick Davies</strong> &middot; <time datetime="2009-01-09T11:36:00+00:00">January 9, 2009 at 11:36 am</time></p>
      <p>by 'Debian tried to do this' above, by 'this' I  mean 'package gems as debian packages', in case that's unclear.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nikolay Kolev</strong> &middot; <time datetime="2009-01-09T19:44:00+00:00">January 9, 2009 at 7:44 pm</time></p>
      <p>I think this will bring bad karma to Phusion in general. There's nothing wrong with making money in general, we all need money at the end, but this is not the right approach! Automattic, JBoss, Canonical, and so many others are good examples of how you can make money (lots of it) and still offer free software. RubyForge and GitHub repositories have a lot more traffic (i.e. expenses) than DebGem and are still free.</p><p>Hongli, please, don't tell the open-source community that time means money, because imagine if they start charging for their time spent developing all those products you build your business around - RubyForge, Rails, Apache, Linux, Debian, Ubuntu, etc.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-01-09T20:06:00+00:00">January 9, 2009 at 8:06 pm</time></p>
      <p>Automattic, JBoss, Canonical, etc, all have/had funding - a lot of it - and had so at the time they went truly commercial. Phusion is instead bootstrapping its way into business - the time tested, traditional way.</p><p>No-one else has done this job properly yet. If they couldn't charge for it, Phusion would be doing something else, so DebGen would not exist. Therefore, is it better to have an option that costs money or no option at all?</p><p>Offering a service is quite different to working on software that scratches your own itch. Phusion already did that with REE and Passenger. It's crazy to dissuade them from making money with a service that, hopefully, people are willing to pay for.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2009-01-09T20:16:00+00:00">January 9, 2009 at 8:16 pm</time></p>
      <p>Nikolay Kolev: time equals money to *us*. I'm not claiming anything more than that.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nikolay Kolev</strong> &middot; <time datetime="2009-01-09T20:23:00+00:00">January 9, 2009 at 8:23 pm</time></p>
      <p>Correct me if I'm wrong, but except Ubuntu, all mentioned companies started with no money in the bank.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nikolay Kolev</strong> &middot; <time datetime="2009-01-09T20:28:00+00:00">January 9, 2009 at 8:28 pm</time></p>
      <p>@Hongli Lai: Time means money to just everybody on this planet. For example, instead of contributing to an open-source project, one can make $10/hour at Mickey D's or deliver pizza. :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-01-09T20:30:00+00:00">January 9, 2009 at 8:30 pm</time></p>
      <p>Almost no companies have funding when they're "started" because investments are typically made once a corporation has been established. In any case, Automattic had $1.1m in funding several months after it was founded, Canonical had Shuttleworth's billions behind it, but no, JBoss <a href="http://www.entrepreneurship.org/Resources/Detail/Default.aspx?id=10620" rel="nofollow">didn't have funding</a>, although the guy behind JBoss took in $60k for one weeks' worth of training at the start of the corporation ;-) That said, JBoss did not incorporate fully until 2004 and had the assets of the prior LLC to lean on.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-01-09T20:32:00+00:00">January 9, 2009 at 8:32 pm</time></p>
      <p>In any case, what does it all matter? If Phusion didn't make money one way, they'd need to make it another way. Should they charge for Passenger instead? Or should they go work at McDonalds and not do any of the cool stuff they already do? They can charge for what they like and make free whatever they like.</p><p>I think having Passenger free to use is absolutely awesome, and if I were the target market for DebGem, I'd be glad to pay because I've had $300 or whatever of value out of Passenger as it is. Instead, though, I just write about their projects, lol :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nikolay Kolev</strong> &middot; <time datetime="2009-01-09T20:58:00+00:00">January 9, 2009 at 8:58 pm</time></p>
      <p>@Peter Cooper: There are things you can charge for and things you can't in practice. If Phusion starts to charge for Passenger or puts limitations using the Freemium model, people will start switching back to Thin, Mongrel, Ebb. It's not about the money, it's about the principle - people don't like to pay if there are similar free alternatives. That's why JBoss, SpringSource, Terracotta, Automattic and others have figured out clever ways to make money without limiting in any way the wide adoption of their products. Once you have wide adoption and big install base, then you have a lot more options as a business.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-01-09T21:20:00+00:00">January 9, 2009 at 9:20 pm</time></p>
      <p>Nikolay: I appreciate your sentiment, but I think the Ruby sector is probably too small to do that in. The Java sector is gigantic, as is the blogging sector, but there aren't enough ancillary ways to make money in the Ruby world due to its relatively small size. That's why Ruby Inside is also commercial, for example. If I ran Ruby Inside without advertising and just sold, say, PDFs or screencasts, it wouldn't make enough money that way.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2009-01-09T21:54:00+00:00">January 9, 2009 at 9:54 pm</time></p>
      <p>Nikolay, commercial Linux distributors have charged for distributing open source software for years. Richard Stallman of the Free Software Foundation specifically says that Free Software is about freedom, not about price. What we're doing is not fundamentally different from what commercial Linux distributors do.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nikolay Kolev</strong> &middot; <time datetime="2009-01-09T22:26:00+00:00">January 9, 2009 at 10:26 pm</time></p>
      <p>@Hongli Lai: Fair enough. Hope you luck!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Louis-Pierre Dahito</strong> &middot; <time datetime="2009-01-10T20:37:00+00:00">January 10, 2009 at 8:37 pm</time></p>
      <p>Once again, great stuff from Phusion...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gregory Brow</strong> &middot; <time datetime="2009-01-11T16:32:00+00:00">January 11, 2009 at 4:32 pm</time></p>
      <p>@Hongli(#30),</p><p>That's right.  Free software is not necessarily free as in beer.<br>
But DebGem is not even free-as-in-freedom.  Your comment would only be relevant if you were using an open source license.</p><p>Again, it's not what you are doing, it's the way you are marketing it, that is dead wrong.  Do project maintainers even have an option to not have their projects distributed by DebGem?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Allen</strong> &middot; <time datetime="2009-01-11T21:05:00+00:00">January 11, 2009 at 9:05 pm</time></p>
      <p>Very... interesting. It annoys me that Debian prevents you from using RubyGems and etc, and Debian furthermore annoys the crap out of me by not actually installing default 'ruby' when I ask for it with apt-get install ruby!</p><p>The solution to my mind is to install the source packages for openssl, readline, zlib and I think a couple of other things a source build requires, then I compile ruby from source and install it. Then I move on to RubyGems and I have a complete, working up to date source build of Ruby alongside using apt-get for everything else.</p><p>The only thing is if you need to say install sqlite3-ruby gem, anything that requires to build native extentions usually requires the lib#{library_name}-dev or similar package (in this case libsqlite3-dev). It's to my mind a good compromise between a nice distro and an annoyingly opinionated package management tool :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Allen</strong> &middot; <time datetime="2009-01-11T21:09:00+00:00">January 11, 2009 at 9:09 pm</time></p>
      <p>P.S. RE: The above. I use this method for production environments, so it works a charm for me. If you want to see how this is done, a mate of mine has a sprinkle script for setting up an ubuntu box for a Rails environment building Ruby from source and etc: <a href="http://github.com/benschwarz/passenger-stack/tree/master" rel="nofollow">http://github.com/benschwarz/passenger-stack/tree/master</a></p><p>While I wouldn't pay Phusion for this offering, I would happily pay them for mod_passenger as that is the absolute bomb (even though they don't ask you to)!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gregory Brown</strong> &middot; <time datetime="2009-01-11T21:54:00+00:00">January 11, 2009 at 9:54 pm</time></p>
      <p>@Peter,</p><p>Why was my last comment dropped?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-01-12T01:21:00+00:00">January 12, 2009 at 1:21 am</time></p>
      <p>Gregory posted: "@Hongli(#30), That's right. Free software is not necessarily free as in beer. But DebGem is not even free-as-in-freedom. Your comment would only be relevant if you were using an open source license. Again, it's not what you are doing, it's the way you are marketing it, that is dead wrong. Do project maintainers even have an option to not have their projects distributed by DebGem?"</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-01-12T01:24:00+00:00">January 12, 2009 at 1:24 am</time></p>
      <p>Gregory: Don't know. I approved it twice - no dice. I can't see anything in it that's in the blacklist here, but it's getting the same symptoms as if you said something in the blacklist.. yet I could repost it. Must be a random gremlin.</p><p>Separate to that, while they could offer a removal option as a courtesy, they don't have to. If someone licensed their code with the MIT or BSD license, I believe they have no right to revoke it selectively? With the GPL you could argue that Phusion would need to release any changes they made, but it wouldn't need to be via an apt repository necessarily.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-01-12T01:25:00+00:00">January 12, 2009 at 1:25 am</time></p>
      <p>Haha, turns out your post *did* get through. I didn't realize it was way up there. I had to moderate it. I guess you used "free" too much.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gregory Brown</strong> &middot; <time datetime="2009-01-12T02:17:00+00:00">January 12, 2009 at 2:17 am</time></p>
      <p>@Peter,</p><p>Of course they don't have to.  But I think they should offer it.<br>
It's not like I'd even use it right away, if all goes well, if there's just yet another way to get at my code, all the better.</p><p>Still, it's going to be really annoying if users start reporting false issues to my projects due to problems with DebGem.  So hopefully, they'll provide an easy way to unlist gems.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2009-01-12T14:08:00+00:00">January 12, 2009 at 2:08 pm</time></p>
      <p>@Gregory: We didn't modify the gems' source code in any way. The raw gem is directly packaged with no source modifications. You are also free to redistribute the packages as soon as you've downloaded them. I can't see how we can possibly make the packages any more libre than they already are.</p><p>If your users are experiencing problems with DebGem, and you know that it's our fault, please direct them to us. We don't want you to get blamed for our problems of course.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2009-01-12T14:11:00+00:00">January 12, 2009 at 2:11 pm</time></p>
      <p>Unless of course you are arguing that DebGem isn't free-as-in-freedom unless we open source the conversion program that we've written. Indeed, our conversion program isn't open source, but I don't think it has to be. That would be like saying that Ruby on Rails isn't open source if its source code is hosted on a proprietary web server. The packages themselves are fully open source and you are free to redistribute and to modify them.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tom von Schwerdtner</strong> &middot; <time datetime="2009-01-12T16:05:00+00:00">January 12, 2009 at 4:05 pm</time></p>
      <p>Great work, is this something that can be sent upstream for the official repositories?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gregory Brow</strong> &middot; <time datetime="2009-01-12T18:28:00+00:00">January 12, 2009 at 6:28 pm</time></p>
      <p>@Hongli,</p><p>No, it's not like saying that.  It's closer to saying that a project wouldn't be meaningfully open-source if you could only compile it using Visual Studio (Though that's not quite right, either.) You know, and I know, that you are operating in a gray area.  My only request has been for you to stop pretending you're doing a service to the free software community, and pitch yourself more towards what you're really doing a service for:  System administrators.</p><p>I was at first satisfied by the same change to the FAQ, but now you're mentioning Richard Stallman as if you've done something in the name of freedom.  Give me a break.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gregory Brow</strong> &middot; <time datetime="2009-01-12T18:28:00+00:00">January 12, 2009 at 6:28 pm</time></p>
      <p>s/same/small</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2009-01-12T22:12:00+00:00">January 12, 2009 at 10:12 pm</time></p>
      <p>@Gregory, I'm sorry but I don't see where we're pretending to be doing a service for the free software community. We've advertised this as "a service", nothing more and nothing less. The reason I mentioned Richard Stallman is to make it clear that we're allowed to charge money for Free Software, nothing more. I thought that you were arguing that we shouldn't charge money for distributing Free Software.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2009-01-12T22:27:00+00:00">January 12, 2009 at 10:27 pm</time></p>
      <p>Gregory, this thread now has almost 50 comments. If you have a problem with DebGem, or with the way we advertise it, please email me privately. I don't think it's polite to spam Peter Cooper's website with more of our discussions.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gregory Brow</strong> &middot; <time datetime="2009-01-12T23:02:00+00:00">January 12, 2009 at 11:02 pm</time></p>
      <p>@Hongli,</p><p>Your mention of Stallman was in reference another poster, not me.</p><p>I'll catch up with you privately.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tomash</strong> &middot; <time datetime="2009-01-19T11:07:00+00:00">January 19, 2009 at 11:07 am</time></p>
      <p>Come on, guys. Some people don't feel comfortable with having to pay for correcting Debian/Ubuntu shortcomings and some other people don't have a problem for paying for service like that. It's still not a reason to fight.</p><p>Phusion is a company with people working there and thus has to make money from something. I definitely prefer them making money with such a service than charging for downloading/using Passenger ;)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
