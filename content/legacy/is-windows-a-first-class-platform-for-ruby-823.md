---
title: Is Windows a First Class Platform for Ruby?
date: '2008-03-26'
author: Peter Cooper
author_slug: admin
post_id: 823
slug: is-windows-a-first-class-platform-for-ruby-823
url: "/is-windows-a-first-class-platform-for-ruby-823.html"
categories:
- controversy
- miscellaneous
- microsoft-windows
---

{{< rawhtml >}}
<p><img src="/assets/2008/03/windows-ruby.jpg" width="203" height="189" alt="windows_ruby.jpg"></p>
<p>Luis Lavena is the new maintainer of the popular <a href="http://rubyforge.org/projects/rubyinstaller/">Ruby "One-Click Installer"</a> for Microsoft Windows. As part of this new role, Luis has set a milestone of cutting the dependency on pre-built packages. He wants to move development from Visual C++ 6 to <a href="http://www.mingw.org/">MinGW</a>, so that Windows-based Ruby developers will, at least, be able to take advantage of a Linux-esque build system for Ruby libraries in future. Back in January, Luis wrote <a href="http://blog.mmediasys.com/2008/01/17/ruby-for-windows-part-1/">Ruby for Windows</a>, a post where he elaborated on these ideas and wrote candidly about the state of Ruby on Windows (inability to compile some gems without VC6, etc.)</p>
<p>Unfortunately, he didn't get much of a reaction, and was led to write <a href="http://blog.mmediasys.com/2008/03/06/is-windows-a-supported-platform-for-ruby-i-guess-not/">Is Windows a support platform for Ruby? I guess not</a>, a somewhat frustrated post where Luis asks whether he should continue with the OCI / VC6-&gt;MinGW work or not. He wants to know whether anyone is actually interested in Windows being a first class Ruby platform or not, or whether there are other alternatives.</p>
<p>As a non-Windows user, I don't have any opinions, but as a Ruby user, I share Luis's concerns that a poor Windows Ruby ecosystem could harm the growth and spread of the language. So, we'd really love to know if Windows is a platform that Ruby developers truly want to support, or whether there are other approaches that should be taken.</p>
<p><strong>Is Windows a first class platform for Ruby, or not?</strong></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-03-26T07:47:00+00:00">March 26, 2008 at 7:47 am</time></p>
      <p>Just need to note that the Ruby logo segment in the image above is derived from a Ruby logo contest entry by Alastair Dawson.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Yoga Blog</strong> &middot; <time datetime="2008-03-26T08:11:00+00:00">March 26, 2008 at 8:11 am</time></p>
      <p>&gt;&gt;&gt; Is Windows a first class platform for Ruby, or not?</p><p>Not.</p><p>I was going through so much trouble trying to deploy my rails apps that it was the final straw that made me switch to Mac.</p><p>Having been a Windows user for 20 years which was getting increasingly disgruntled, I'm gruntled again  :-)</p><p>&gt;&gt;&gt; ... concerns that a poor Windows Ruby ecosystem could harm the growth and spread of the language. </p><p>What should the growth of everything always be the goal. Ruby has reached critical mass already. Let it improve in quality. Not everyone need to switch to it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matthew Lang</strong> &middot; <time datetime="2008-03-26T08:23:00+00:00">March 26, 2008 at 8:23 am</time></p>
      <p>I don't feel that Windows is a first class platform for Ruby.  I have been using Windows as a Ruby platform for a year, but I find it somewhat lacking in some respects.  I would like to see Windows as a first class Ruby platform but I don't think that this is a priority in the community. </p><p>My comment may not seem fair if other projects like Rubinius are working towards integrating better windows support.  If they are, then I applaud them for the great work they are doing.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dr Nic</strong> &middot; <time datetime="2008-03-26T08:27:00+00:00">March 26, 2008 at 8:27 am</time></p>
      <p>It would be great if the gap between Ruby support on *nix/osx vs windows wasn't so large. But, as I personally became discriminating about my programming language I also started to become discriminating about my OS. Windows isn't a nice development OS imo. So, it was easier for me, and better value, to migrate to OS X than to "fix Windows + Ruby/Windows".</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Willem</strong> &middot; <time datetime="2008-03-26T08:30:00+00:00">March 26, 2008 at 8:30 am</time></p>
      <p>I use Ruby on Windows and I am very grateful for this!  I appreciate all the hard-work in ensuring that Ruby currently works well on Windows very much! (I come from a Microsoft C# .net environment and one of the things that really impresses me most in Ruby (and many other open source projects) is the cross platform support (as opposed to the very limited cross-platform support of the Microsoft development environments. I am becoming more and more reluctant to use these "one dimensional" platform environments provided by Microsoft, although I also have lots of respect for these environments :) )</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jorge L Cangas</strong> &middot; <time datetime="2008-03-26T09:06:00+00:00">March 26, 2008 at 9:06 am</time></p>
      <p>I already post a comment to Luis post, but I get surprised by the little reactions to this. I think the ruby community is missing the point here: Windows is a bad developer platform, maybe, but is a great market platform: good supporting of windows is a great opportunity to deploy our ruby applications. I can say this because I'm a newbie in ruby field and already get money for my ruby applications. I don't know what is the better path: MinGW, rubinius? this is to hard to me at this moment. Rubinius look great, sure, but I cannot get it installed on windows. Today I use rubyscrip2exe to distribute my apps: we need something so easy like that...<br>
Anyway, thanks all you for all these great tools</p>
    </li>
      <li>
      <p class="comment-meta"><strong>hk</strong> &middot; <time datetime="2008-03-26T09:06:00+00:00">March 26, 2008 at 9:06 am</time></p>
      <p>Er .. no, no it's not, and I don't see any need for it to be so.</p><p>Ruby is a very text-centric scripting language. It thrives on the command line, and in applications that are basically piped through command lines - that includes HTTP by the way, it's all just text over a port. It's practically made for UNIX-like operating systems.</p><p>Windows is a crappy language for command lines, and if you wanted to use them, one questions why you're on Windows in the first place. Add to that Windows' complete lack of necessities like package management, proper UNIX environment, sockets, proper process management, ssh, the list goes on and on.</p><p>I don't understand why anyone would try and shoehorn a language like Ruby into a completely alien Windows environment. Just use a Mac, and if you can't stomach that, use Linux. Even if you did manage to get it working - what's the point?</p><p>You don't use a Mac or Linux to develop games for Windows, and you wouldn't use Windows to write web applications (or anything else) using command-line open source tools. It's kind of a ridiculous question. And as for whether lacking Windows support will hurt the Ruby community? I sincerely doubt it, I don't know a single person who is trying to run Ruby on Windows today, and Ruby seems to be doing fine to me.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dr Nic</strong> &middot; <time datetime="2008-03-26T09:13:00+00:00">March 26, 2008 at 9:13 am</time></p>
      <p>As for the question: should someone work on making Windows a 1st class citizen - absolutely. People Use Windows Too.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Foo</strong> &middot; <time datetime="2008-03-26T09:23:00+00:00">March 26, 2008 at 9:23 am</time></p>
      <p>As someone who has had to use Windows to development almost exclusively in the workplace, I would have not been able to learn Ruby if there were no projects like One-Click Installer or InstantRails.</p><p>With that said the more I use Ruby on Rails in Windows the more fustrated I get with Windows.  Windows lacks a lot of the tools OS X and the *nixes have that makes ones life a lot easier.  I have never been able to deploy a rails app on Windows without it crashing within 5 hours.</p><p>I still need to use Windows to develop Ruby and Rails apps and appreciate how I can go between different platforms to develop.  But if I could I would just use OS X and Linux.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-03-26T09:45:00+00:00">March 26, 2008 at 9:45 am</time></p>
      <p>Thinking about it.. wouldn't a more mature Iron Ruby somewhat remove the problems behind this question? Okay, it doesn't resolve the library issue, but it'd be a "native" Windows Ruby at least :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonno</strong> &middot; <time datetime="2008-03-26T09:45:00+00:00">March 26, 2008 at 9:45 am</time></p>
      <p>Yes, it should. Are Mac and Linux users not pleased when open source windows software is ported to their platform?</p><p>There is no reason it shouldn't. On the other hand maybe ironruby (or whatever the .net version is called) will become the windows implementation.I like the idea of bundling MinGW.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stephan</strong> &middot; <time datetime="2008-03-26T09:49:00+00:00">March 26, 2008 at 9:49 am</time></p>
      <p>Being forced to working in a Windows environment nearly everywhere (even at places where systems are running under unixoid OSes!), I can only second Dr. Nic's response.<br>
Pleople do work in Windows environments and are using Ruby - at the same time. It's quite not as much fun as using, say, my Mac for the same job, though.<br>
The best Windows support we can get is certainly a goal to strive for, so plaes keep up the excellent work!<br>
I have the impression that there's *still* some kind of attitude (is that the right word?) in the 'Windows world' which keeps people from joining an effort to improve whatever situation (Ruby on Windows in this case). Could that be because software vendors trined us to behave this way?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nazar</strong> &middot; <time datetime="2008-03-26T10:30:00+00:00">March 26, 2008 at 10:30 am</time></p>
      <p>Windows is not a viable Ruby environment. Definitely not as a development environment and especially not a deployment environment. This is coming from a 20 years Microsoft user and 12 year Win32 software developer.</p><p>I have recently ditched Windows XP and installed Ubuntu on my development laptop and haven't looked back since. Ruby is much faster to develop in Linux and is very slow in Windows (article: <a href="http://panthersoftware.com/articles/view/2/rails-unit-testing-is-slow-under-cygwin-and-windows-solutions-alternatives" rel="nofollow">http://panthersoftware.com/articles/view/2/rails-unit-testing-is-slow-under-cygwin-and-windows-solutions-alternatives</a>)</p><p>As for hosting Ruby under Windows... lets not go there!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Myles Eftos</strong> &middot; <time datetime="2008-03-26T12:03:00+00:00">March 26, 2008 at 12:03 pm</time></p>
      <p>The advantage of cross platform scripting languages is having them cross platform. You can run Python, Perl and PHP on Windows - why not run Ruby?</p><p>ruby would be missing a huge segment of the market if it can't run on Windows - there are a large number of corporates, enterprise and goverment servers running on Windows.</p><p>Granted, IronRuby will bridge the gap some what, but it would still be good to have a native MRI on Windows.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>bob</strong> &middot; <time datetime="2008-03-26T12:07:00+00:00">March 26, 2008 at 12:07 pm</time></p>
      <p>It is kind of funny to see all the negative windows posts.  If you ignore windows, you do so at the peril of the future of the language.   Windows isn't going anywhere and it is a huge market opportunity for companies wishing to deploy their software.</p><p>Ruby isn't alone in the language echo system.  There are other scripting languages that work well on windows AND on nix systems.    If ruby won't continue too work on windows I'll just move to something else that does work.</p><p>When I see 'use nix or get out' I hear 'move to another, more widely supported tool because these guys are lazy and they lack vision'.   I don't feel this is the case with the wider ruby community, so I'd hate to see a few bad apples make their view prominent.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paul M. Watson</strong> &middot; <time datetime="2008-03-26T12:07:00+00:00">March 26, 2008 at 12:07 pm</time></p>
      <p>Two co-workers use Windows XP for their Ruby development but they find it frustrating and we have endless hassles. Gems don't work, deployments are a pain and the Windows command-line is so under-powered it is a joke compared to Linux or Mac OS X.  Sadly neither of them want to switch to Linux and our purchasing department won't approve them Macs.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ed p</strong> &middot; <time datetime="2008-03-26T12:11:00+00:00">March 26, 2008 at 12:11 pm</time></p>
      <p>Count this as one more vote for Windows. Not out of choice, but necessity. Without and easy binary install for Windows, I would not even be able to see what it's all about.</p><p>Thanks for the efforts!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2008-03-26T12:32:00+00:00">March 26, 2008 at 12:32 pm</time></p>
      <p>I think a lot of the comments miss the point. We are not looking for "hey, switch to mac" kind of answers.</p><p>Switch to mac is not an answer, is a escape pod of the reality. As other comments posted, lot of folks came to Ruby and Rails from .NET or Java backgrounds where they require work under Windows OS.</p><p>@Nazar: noone said we are looking for Rails hosting on Windows, we are talking about Ruby itself, and to reduce the problems we have with it as platform. Issues with gems and plugins will always exists, mostly due the lack of interest from developers to be polite in their code.</p><p>I've been doing some Rails work for the past 2 years on a Windows box, deployed to linux clusters, ssh into these system if required... all without a glitch.</p><p>When I found something that wasn't working, I sent patches to fix that, and these got merged. So, is possible make a better environment to work with.</p><p>@all: Please don't be close minded with your answers, is not a switch to linux/switch to mac question. Take as example Dr. Nic answer.</p><p>Regards,<br>
Luis Lavena</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Francois</strong> &middot; <time datetime="2008-03-26T12:36:00+00:00">March 26, 2008 at 12:36 pm</time></p>
      <p>JRuby should already works fine on java/windows (or mac), no? So why bother :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-03-26T12:39:00+00:00">March 26, 2008 at 12:39 pm</time></p>
      <p>@Francois: Good point! JRuby is also interesting because it seems to have some interest amongst developers as a target for gems. I think Mongrel and Hpricot are two good examples of this.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Will Green</strong> &middot; <time datetime="2008-03-26T12:51:00+00:00">March 26, 2008 at 12:51 pm</time></p>
      <p>I develop ruby (Rails, actually) apps on my Windows Vista notebook. I use Cygwin, because this provides me the closest environment that I am aware of to my production Linux box. For most Windows users, "simply" switching their dev OS to Linux or buying a Mac is neither simple nor realistic (lack of native tools like Photoshop on the former, $$$ for the latter).</p><p>Out of curiosity, has anyone looked in to Microsoft Windows Services for Unix? </p><p><a href="http://technet.microsoft.com/en-us/library/bb463212.aspx" rel="nofollow">http://technet.microsoft.com/en-us/library/bb463212.aspx</a></p><p>It purports to provide "a complete POSIX development environment tightly integrated with the Windows kernel"</p><p>I mean, if you're going to require someone to install MinGW to compile native gems, you could just as easily require SFU instead.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Will Green</strong> &middot; <time datetime="2008-03-26T12:53:00+00:00">March 26, 2008 at 12:53 pm</time></p>
      <p>Also, this site:</p><p><a href="http://www.interopsystems.com/community/default.htm" rel="nofollow">http://www.interopsystems.com/community/default.htm</a></p><p>Is linked to in the MS TechNet article above.</p><p>"Here you'll find several hundred additional tools (including popular open source utilities such as bash, OpenSSH and OpenSSL) plus recent updates to the utilities and SDK available from Microsoft."</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Guido</strong> &middot; <time datetime="2008-03-26T12:53:00+00:00">March 26, 2008 at 12:53 pm</time></p>
      <p>Gee, there I was, thinking the Ruby community was particularly open-minded. hk, you're a discredit to it. Of course Windows doesn't have a proper UNIX environment, just like no *nix has a proper Windows environment. Packet management is arbitrary for many Linux distros as well. Of course there are problems to be overcome when a language that originates in a *nix environment moves to Windows, but it certainly is possible to serve both platforms - just look at how C++ perfectly works on both; if an old language like that can do it why shouldn't a new one that's born into a multi-platform environment be able to?</p><p>Myself I only messed a bit with Ruby on Windows in a study project for a couple of weeks, and didn't have those huge problems people are reporting. I did have issues, but no unsolvable ones. There are nice GUIs out there as well, for people who don't like command lines at all. Still, better integration would be nice of course. Nevertheless, while the Windows command line is less powerful than ... pretty much any other, it still gets most jobs done, and it certainly is powerful enough to use scripts and parameters.</p><p>And HTTP processing is text processing indeed, but it has nothing to do with the command line itself, unless your web server is some hand coded thing, in shell scripts. I have no clue why you brought that up.</p><p>I developed under Linux in the past, with vim and Python, it's not alien to me. But it's a matter of fact that medium-sized corporations don't use UNIX all that often, and selling a Ruby on Rails application to a customer if you don't host it yourself is virtually impossible due to worse hoster support than, say, php. And no I do not particularly like php.</p><p>Sorry for venting, but I can't stand ignorance.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2008-03-26T12:58:00+00:00">March 26, 2008 at 12:58 pm</time></p>
      <p>@Francois: good point!. For those who came from Java or ned to do a lot of work on java platform, JRuby is a great thing.</p><p>I think the jRuby team is doing a great work brigding the gap between static and dynamic languages, also including cool tools like Hpricot and Mongrel on the mix looks great for a standard replacement... unless you don't want to be near of Java ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andy</strong> &middot; <time datetime="2008-03-26T13:03:00+00:00">March 26, 2008 at 1:03 pm</time></p>
      <p>Clients have windows infrastructures.  </p><p>Can you walk into a clients office with your cowboy hat on, crack ya whip and tell em 'were gonna install a linux server to run your web based app and screw your current mcse cetified IT Team'? </p><p>Wake up - ruby on windows is a must!!  Windows is a reality!!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2008-03-26T13:09:00+00:00">March 26, 2008 at 1:09 pm</time></p>
      <p>@Will: SFU only offers scripting, remote access to NFS shares and remote access to terminals, but not compilation.</p><p>We will still requires a compiler.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chee Yeo</strong> &middot; <time datetime="2008-03-26T13:13:00+00:00">March 26, 2008 at 1:13 pm</time></p>
      <p>I agree with Luis on the last point he made - this is not a debate on the preferred choice of OS for development although I have to agree with others in this forum that it is certainly easier to develop and deploy ruby apps on Linux than in Windows. </p><p>I like to regard Ruby as an extensible and robust language which is capable of working under different environments and if it can continue to do so, then it will be the making of the language itself. I have seen a similar scenario with the Linux camp whereby users tend to identify themselves with a particular brand of OS rather than the ideology of the movement as a whole. </p><p>The question we have to ask ourselves as developers is whether a particular language is suitable for the task at hand first rather than the OS it is suppose to be running on. </p><p>Regards</p><p>Chee</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2008-03-26T13:16:00+00:00">March 26, 2008 at 1:16 pm</time></p>
      <p>@Will about Interopsystems: The SUA and SFU will emulate a *nix environment on Windows, and it's aimed mostly to run on server than desktops.</p><p>Anyway, MinGW and MSYS can provide the same functionality these packages offer :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brandon Ferguson</strong> &middot; <time datetime="2008-03-26T13:32:00+00:00">March 26, 2008 at 1:32 pm</time></p>
      <p>It's very, very much not. </p><p>And I can't stand the horridly immature attitude out there of "Well just get a Mac! Or Linux!" Often that's just not an option. We have live windows deploys out there but the fact that we've had to patch ruby libraries to get it to work is just embarrassing. If anything it hammers home the level of professional Ruby consulting work being done in the community - seeing that a good deal of time you really don't have control over your client's infrastructure. </p><p>So far we've been fortunate to be able to deploy on Linux 95% of the time, but it's embarrassing having to tell a client "Oh I'm sorry, this programming language doesn't play well with Windows..." Yeah, that tends to make them feel great about us creating their website with it (and I work in the financial industry, they tend to get antsy about things like security and stability). </p><p>Anyway, done ranting... Luis, save us! I really, really appreciate the work you're doing. Keep it up, there's a lot of us out here who it will help considerably.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>David Mohundro</strong> &middot; <time datetime="2008-03-26T13:34:00+00:00">March 26, 2008 at 1:34 pm</time></p>
      <p>I'm a Windows developer by day and a Windows user by night, though I have recently installed the Hardy Heron beta on my laptop and I think it is great. I want to see more Ruby support in Windows. I would also like to see Windows offer better command line tools (I think Powershell is a step in the right direction, but on the other hand, it isn't directly compatible with *nix command line tools). </p><p>I think I'll have to wait for IronRuby to release before I'll be able to use it, but options are always good. For now though, I'd have to say it isn't yet a first class platform. I would certainly like it to be.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Will Green</strong> &middot; <time datetime="2008-03-26T13:34:00+00:00">March 26, 2008 at 1:34 pm</time></p>
      <p>@Luis: It also looks like MinGW and MSYS are available for all Windows platforms, whereas SUA is only avilable on Server 2008 and Vista Business and Ultimate.</p><p>Guess that answers *that* question...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ed Borasky</strong> &middot; <time datetime="2008-03-26T13:46:00+00:00">March 26, 2008 at 1:46 pm</time></p>
      <p>My opinions:</p><p>1. If Windows *isn't* a first-class platform for Ruby, it damn well should be!<br>
2. Right now, the viable alternatives are the aging existing One-Click, Cygwin and jRuby.<br>
3. At some point, IronRuby *should* be the Ruby of choice for Windows, but it has proved to be more complex to implement than most of us expected, and even if that were not the case, there is enough suspicion in the community about Microsoft open source contributions that it might not become what it should be.<br>
4. One-Click, unless gems can be built from source, will wither away, because the gem providers don't have time to pre-build Windows binaries.<br>
5. There is no reason a "Windows Ruby" can't be as good as, say, the Windows port of R. Although the R package developers do pre-build binaries of their packages for Windows, you can install a package building environment on a Windows system and can also build Windows R from source on a Windows machine. And I personally think the Windows R UI is *better* than the "traditional" Linux one.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>François Beausoleil</strong> &middot; <time datetime="2008-03-26T13:54:00+00:00">March 26, 2008 at 1:54 pm</time></p>
      <p>I was going to comment here, but it ended up too long:  <a href="http://blog.teksol.info/2008/3/26/is-windows-a-good-environment-for-ruby-rails-it-certainly-should" rel="nofollow">http://blog.teksol.info/2008/3/26/is-windows-a-good-environment-for-ruby-rails-it-certainly-should</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brandon</strong> &middot; <time datetime="2008-03-26T13:59:00+00:00">March 26, 2008 at 1:59 pm</time></p>
      <p>I use Windows to develop Ruby on Rails apps.  I deploy to Linux machines with Capistrano and SSH.  The main problem area I have is with GEMS that can't compile to native code.  If this issue could be fixed by moving to MinGW I am all for that.</p><p>The company I work for is a Windows company, but we do have some Linux servers I deploy to.  But my development is done in Windows.  I think it is important to support Windows.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Lam</strong> &middot; <time datetime="2008-03-26T14:11:00+00:00">March 26, 2008 at 2:11 pm</time></p>
      <p>I applaud Luis for his efforts to get MRI running on Windows and breaking the dependencies on the 20th century VC++6 compiler. I just wanted to point out a few things after a quick read of the comments:</p><p>1) IronRuby *is* cross-platform already. Today it runs on Windows via the desktop CLR, on Windows + Mac via the Silverlight CLR, and Windows + Mac + *nix via Mono.</p><p>2) IronRuby is licensed via the Microsoft Public License, which is an OSI-approved Open Source license. Please stop the fud about 'suspicion' etc. The source is yours to do with as you please (as well as the source for the DLR which is a key dependency).</p><p>3) As for gems not working under Windows, I suspect it's a case of 'if you don't test it it doesn't work'. If you care about cross-platform please test your gems on other platforms (or find someone else who wants to do this). Don't assume that simply because your code is written in Ruby that it will simply run everywhere (it won't).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jorge L Cangas</strong> &middot; <time datetime="2008-03-26T14:19:00+00:00">March 26, 2008 at 2:19 pm</time></p>
      <p>Nice this question get attention... Some aditional points and expereinces:<br>
1. Most of us don't want complie or extend ruby from our Windows platform, only want an easy way to deploy our ruby application in corporate environments. More easy to deploy, more easy customer acceptance. Today I use the simple rubyscript2exe to 'compile' my apps.<br>
2. Ruby is a lot more than rails: I use it to activex automation, parsing text/xml and integrate customer apps.  Ole automation is a pain in traditional compliers (interfaces, typelibraries, etc), with Ruby it is fun.<br>
3. Developing Ruby apps iin Windows is posible: I use OnClick to instal ruby in my notebook, and ActiveKomodo + Netbeans to develop and debug apps. I had very little problems. Only has problems with som gems tha are very 'system oriented' (eventmachine and the like)<br>
4. I want to switch to develop in a linux (or mac if get the money), but 95% of my customer are in Windows and 80% don't know what it is OpenOffice or Firefox. I need to deploy in windows, connect to MSSql, integrate with office, and outlook...<br>
5. IE is not a true web navigator, but all developers supports it to deploy  webs they build in yours Macs/Ubuntus, isn't it? So, is the same.<br>
question: develop anywhere but deploy in windows (also).<br>
6 If customer see good Ruby results, then I can tell abou Ruby, Linux and opensource. Then I can say her. "Why not try a Linux server in next upgrade?"...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>AkitaOnRails</strong> &middot; <time datetime="2008-03-26T14:29:00+00:00">March 26, 2008 at 2:29 pm</time></p>
      <p>Last year I was forced to implement a Windows deployed Rails app. I will tell you: it was a nightmare.</p><p>The installation part doesn't bother me that much. Most of the time it's just a matter of having a good c:\ruby and copy that if you want it somethere else, and remember to point your PATH to it.</p><p>Somethings that hurts: Gems that doesn't work. Libraries that makes system calls to underlying command liners like ipconfig (in the case of UUID). That one pops up a windows command prompt every time it runs, which was a hassle to figure out. </p><p>Things like system, popen, fork and such that doen't work properly (or at all).</p><p>It would be really great to have a 100% perfect Ruby distro for Windows, but I think it's much more than installation, it's all about environment. As someone pointed out Ruby was built around the assumption of having a Posix (which WinNT is) and *nix environment (which WinNT isn't). Lot's of libraries wraps around command line commands from the outside. Not all Gem with C-based extensions have Windows binaries.</p><p>I think that the reasonable thing to do would first open up a Wiki of some sort so people could list all the tricks they use to survive on a Windows environment. Then prioritize everything and decide from there if the amount of work involved is worth the effort. I say this because some people would assume that it's only a matter of distribution. But I think there's a lot of underlying stuff hidden that only those who had to develop on Windows have ever stumble across.</p><p>Just my 2 cents.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2008-03-26T14:38:00+00:00">March 26, 2008 at 2:38 pm</time></p>
      <p>I must agree with Fabio (Akita) on some points.</p><p>It not a matter of distribution or build facilities. Is a problem with the way some stuff is coded (and it's coded by ruby developers).</p><p>Take for example ParseTree, which is used for things like Ambition, some Merb and Sequel. Get it working on Windows wasn't complex, got it merged into the codebase was (took *too much time*).</p><p>For a new project I tried to go for DataMapper (instead of AR) and found that the build procedures where too *nix centric (man, you shouldn't rely on 'uname -a' answer to determine the platform you're running into). That stop me to continue with the fixes since couldn't have enough spare time to test in the 3 platforms I use: Windows, Linux and FreeBSD.</p><p>Anyway, the wiki idea is good, I'll point that for the new One-Click Installer site :-)</p><p>Please note that is not the same "deploy rails on Windows" that "make rails work under IIS"... Those are quite different scenarios, each one which is own complexity.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Warren W.</strong> &middot; <time datetime="2008-03-26T14:40:00+00:00">March 26, 2008 at 2:40 pm</time></p>
      <p>Another two cents for the pot: At my employer, MSFT systems are the defacto standard for all development and deployment (IIS, SQLServer, .NET). Having Ruby available on the Windows platform means that I have been able to slip Ruby (and Rails using FastCGI) projects into our collection of systems without too much hassle.  </p><p>Yes, support is not first class yet, and things like forking make work-around necessary, but without Ruby-on-Windows, none of these projects would happen.  </p><p>Just wanted to say a huge 'Thank you!' to Luis (and all the others) who make the platform even an option for those of us who are bound to Windows for corporate projects.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James Adam</strong> &middot; <time datetime="2008-03-26T14:45:00+00:00">March 26, 2008 at 2:45 pm</time></p>
      <p>I think it's crucially important to make the distinction between "development platform" and "deployment platform". A lot of the pain expressed in the comments here is about how windows is crappy to write software with, it's not a command-line platform, it's difficult to deploy rails apps using windows and so on.</p><p>All that is fine. Developers should certainly be discerning about the tools that they use.</p><p>But this question isn't really about developers. It's about the platforms on which Ruby can *run*. </p><p>If you're a Ruby application developer, looking to distribute your application to users, you almost certainly *do* want Ruby to be available on the Windows platform. And if your application has dependencies on Ruby libraries, then you definitely want *them* to be available for Windows too! </p><p>Jorge (comment #6) has it right. hk (comment #7) couldn't be more wrong.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ralph</strong> &middot; <time datetime="2008-03-26T14:46:00+00:00">March 26, 2008 at 2:46 pm</time></p>
      <p>Yes, Windows should be a first class platform for Ruby(/Rails).  I prefer Development on my Ubuntu Box, but at work I have to use a Windows box...granted, I've been doing everything remotely on a Red Hat server.  I don't like Windows, but for when I (or other people) have to use it, it would be nice for everything to work without much trouble.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rob Funk</strong> &middot; <time datetime="2008-03-26T15:19:00+00:00">March 26, 2008 at 3:19 pm</time></p>
      <p>Wow, Ed Borasky just said what I was about to say!  So at the risk of being repetitive....</p><p>I hate Windows, but every language must support Windows to be viable beyond a small niche.</p><p>If you want a Unix/Linux environment in Windows, go for Cygwin.</p><p>JRuby and IronRuby are alternatives to native-Windows builds.  If I need to deploy ruby on Windows right now, I'll use JRuby.    But there still needs to be native support.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>cag</strong> &middot; <time datetime="2008-03-26T15:24:00+00:00">March 26, 2008 at 3:24 pm</time></p>
      <p>I do use Ruby on Windows for enterprise glue and it works extremely well for that. I don't use it for Wed Development and most of the complaints seem to be concerned with deploying Rails. </p><p>I use NetBeans as an IDE and someday I will probably switch to JRuby but for now I use standard Ruby with Netbeans and I use the one-click-installer to set up standard Ruby.</p><p>So Luis please keep up the good work and hk please quit being a discredit to the Ruby community.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>SoliS</strong> &middot; <time datetime="2008-03-26T15:31:00+00:00">March 26, 2008 at 3:31 pm</time></p>
      <p>Maybe i completely misunderstand or maybe i just miss the point.<br>
Big question that remains for me is this summary only about the development of ruby script or also about the support for running them ?</p><p>The main reason i have intrests in ruby is because it advocates to be widely supported i.e. a script i run on os x and or linux should run just as well on windows.<br>
In case windows gets dropped as a dev platform what will become of this ruby platform compatabilety and  independancy  ?</p><p>imho ruby wont need windows as a dev platform ... though to grow ruby scripts need to be capable of running on windows and in the long run maybe thats enough of a reason to keep supporting windows as a dev platform.</p><p>Sorry for my terrible english,</p><p>taloxanura at g mail dot com</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Berrow</strong> &middot; <time datetime="2008-03-26T15:34:00+00:00">March 26, 2008 at 3:34 pm</time></p>
      <p>I switch continually between the linux and windows environments in the course of the development work I have to do. I need to be able to reach for Ruby  as tool whatever environment I am in. I absolutely could not have taken Ruby seriously as a language unless it was 'multi-platform'. In my view it would not qualify as multi-platform without including Windows. I greatly appreciate the work done by Luis and others on this. It irritates me when the Mac devotees get so snobbish about this. Come on!! Ruby needs to be kept as a serious, *broad-based* platform.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>David Parker</strong> &middot; <time datetime="2008-03-26T15:51:00+00:00">March 26, 2008 at 3:51 pm</time></p>
      <p>I have pretty much the same opinion as Dr. Nic.  At work, I work from a Windows machine (required), though most of the day is doing Java.  While I work on Ruby stuff, I generally have a few problems.</p><p>At home, I run Linux, but I only permanently made the switch after getting fed-up with so many developing problems.  Like Dr. Nic said above, it was easier to just switch OSes instead of attempting to fix the OS/Ruby problem.</p><p>Additionally, as stated above, as JRuby/IronRuby/Rubinius make further strides, I think that a lot of development problems will disappear.  So we can only wait and see.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chuck</strong> &middot; <time datetime="2008-03-26T16:13:00+00:00">March 26, 2008 at 4:13 pm</time></p>
      <p>Perhaps the question should be restated "Is Windows a platform of interest"? Given the deep penetration of Windows in the market, I'd have to say that it is. While most (90% or better) of my work is on some form of Unix, I would suggest that the actual targets of any application are the end users. </p><p>It is relatively easy for a developer from a Unix background to retort that it is simple to install Cygwin. However, most Windows developers and certainly most Windows users are fairly unfamiliar with command line operations. I'd dare say that most Mac users, with the exception of developers, fall into the same category.</p><p>The cross-platform capabilities of a scripting language, not just Ruby, seem to mandate a Windows version. That said, it appears that the problem is more around the packaging mechanism, i.e., the requirement for VC6 vs. MinGW to compile libraries for gems. Perhaps there should be some thought given to having Rubygems attempt to detect whether or not there is a compiler available and if not, then attempt to download a precompiled library from some repository.</p><p>Just my tuppence......</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Earl</strong> &middot; <time datetime="2008-03-26T16:55:00+00:00">March 26, 2008 at 4:55 pm</time></p>
      <p>I'd say yes, Ruby itself is.  Binaries are available which works to the best of my knowledge.  If someone writes software using Ruby that is incompatible with Windows, then it's not Ruby's fault.  It's certainly possible for a Windows developer to write Ruby code that's incompatible with Linux, BSD, Mac OS X, etc.</p><p>Windows users may need to get actively involved, helping developers make their code more portable by submitting patches.  This can be seen in other projects.  For example, GNOME and KDE, where people who need/want the apps to run on Windows are the ones who do the work and make it happen.  The Windows developers are also the ones with the Windows development expertise.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sunny</strong> &middot; <time datetime="2008-03-26T17:09:00+00:00">March 26, 2008 at 5:09 pm</time></p>
      <p>It is very important to keep Ruby on Windows because a lot of people will start using Instant Rails.<br>
Linux is not so easy , apache2, mongrel, Ruby, rails can be quite complex to set up, so Instant Rails on windows is a great way to spread Ruby (even if I still prefer PERL ;-).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Geoffrey Grosenbach</strong> &middot; <time datetime="2008-03-26T17:17:00+00:00">March 26, 2008 at 5:17 pm</time></p>
      <p>RubyForge stats show that the Windows One-Click Installer is the most popular download by a huge margin. I think it's very important to maintain Windows compatibility.</p><p><a href="http://rubyforge.org/top/toplist.php?type=downloads" rel="nofollow">http://rubyforge.org/top/toplist.php?type=downloads</a></p><p>Fortunately, more projects are starting to understand this. Eric Hodel has a new, faster release of RubyGems ready, but is holding back until it is fully Windows compatible. It would be great to have a Windows-based committer on the major projects such as RubyGems, Rails, Merb, etc.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark</strong> &middot; <time datetime="2008-03-26T17:30:00+00:00">March 26, 2008 at 5:30 pm</time></p>
      <p>if your doing dev, then your dev env should match your deployment env.</p><p>For linux deployments, I recommend setting up a linux server (w/ samba) to develop against. you can code on windows and save to the linux server over the share and control the server via putty/ssh.  the server should behave the same as production and you can have other term windows open for your automated tests, log tailing, etc.</p><p>If you can't get another machine for that purpose, then install colinux or andLinux (colinux w/ ubuntu) and configure networking for a pcap-bridge. you should be able to have the same workflow as a real linux server with this.</p><p>i still think that windows should not be ignored as a platform tho as you can achieve some fun stuff with ruby on windows.  besides many of us have to have windows for outlook/exchange.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dennis Yarborough</strong> &middot; <time datetime="2008-03-26T17:31:00+00:00">March 26, 2008 at 5:31 pm</time></p>
      <p>Though (IMO) most Ruby development is on the OSX platform, the Windows environment is where many future Ruby converts will first be introduced to the language. If there's not a path for easy entry to the language for the masses then Ruby's growth will certainly slow significantly.  </p><p>I made the switch from Windows to the Mac last year and haven't looked back since. However, I like most who have made the switch came from a Windows development environment.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2008-03-26T18:33:00+00:00">March 26, 2008 at 6:33 pm</time></p>
      <p>@John Lam: Maybe I should put a kind of manifesto. But with MRI I'm tryingot break the dependency on VC6, but with OCI I'm looking to open the field for IronRuby, JRuby or even Rubinius Installers using MSI tools.</p><p>@Geoffrey Grosenbach: I thank you Eric for opening the RubyGems repository to my contributions. Also X and Ezra, for being open-minded guys who want their work interoperate the smoother as possible between platforms.</p><p>Is almost impossible run all the shown being just one person. At least I try to make Ruby and the most commonly used tools (alsot he same I use) work with less problems under Windows.</p><p>@Mark (#50): Getting you a platform that match your server environment not always work, take as example EY setup... I wish I could spent 6K on a hardware based load balancer to try the load of my nginx setups.</p><p>@all: the overall idea is get a more simpler way to get "put-the-name-of-any-extension-or-gem-here" work better on Windows. Part of that break is move away from VC6 and switch to something freely available and that developers are more familiar with (name it GNU toolchain).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2008-03-26T18:53:00+00:00">March 26, 2008 at 6:53 pm</time></p>
      <p>I echo some previous sentiments in that had Ruby not been working in some form on Windows I would not have been able to flip the company I work at from a Microsoft shop to now doing Ruby on Rails. Ruby *must* become first class on Windows if you want the language to spread and grow. If support for it on Windows dies, so does any leverage we have to get this technologies into the corp environment (for many of us in Ms land), and Ruby will be relegated to a niche language and wither away like Smalltalk.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dejan Dimic</strong> &middot; <time datetime="2008-03-26T19:33:00+00:00">March 26, 2008 at 7:33 pm</time></p>
      <p>IMHO the key issue is where your clients are?</p><p>Whatever I develop on my XP or Ubuntu is eventually deploy on customer desired OS. Unfortunately for me, most of them are on windows but as they become more educated about alternatives things are moving in right direction.</p><p>Most of “big” applications are already present in all the worlds but the “little” tailored ones, that are essential for driving or supporting the business of our customers, are the ones most important at decision making, in front of total cost of ownership, when switching to other OS.</p><p>Developing such application that can be easily deployed on all major platforms and can be integrated with present infrastructure is the only way to success. If development of such application can be on my preferable OS, better for me.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bill Carpenter</strong> &middot; <time datetime="2008-03-26T20:06:00+00:00">March 26, 2008 at 8:06 pm</time></p>
      <p>Yes I think Windows should be considered a good platform for Ruby and Rails.  I do not think it is currently.  </p><p>I am at a job where I do programming in , .NET (3 different versions in both C# and VB.NET), old asp (yuck) , PHP, and Ruby on Rails.  I would not have been able to use Ruby in the workplace if I could not at least do development on a windows box (which I have to do).    We have since at least got some Redhat servers but I am not going to be able to get a Mac since I split my work between .NET and rails and we are a non-profit so I can't justify getting a mac.</p><p>I think if you ignore windows you risk the language losing a lot of potential converts.  You may hate windows but it owns a majority of the desktops and a LOT of servers are windows.  Developing on windows hasn't been too bad (YES I would prefer a mac but it isn't gonna happen) but deploying to production on a windows box ...that just blows (hence the RedHat server).  If you had easy windows server deployments you would win over a lot of new converts.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sean O'Neil</strong> &middot; <time datetime="2008-03-26T20:47:00+00:00">March 26, 2008 at 8:47 pm</time></p>
      <p>As a Windows developer who has done quite a bit with Ruby (including creating my own extensions like RubySFML, embedding it into a C++ app, and being forced to change the Ruby source a bit to get that to work), I think you're going in the wrong direction with MinGW. I understand the reason behind it, but I've never actually seen a Windows developer use MinGW. I've seen Unix developers who were forced to work in Windows use it, but not native Windows developers.</p><p>As a long-time Windows developer, I want the one-click installer to have VS 2005 and 2008 project files for ALL of its dependencies so I can download and build the whole thing myself. I want it to be easy to create and test my extensions in the Visual Studio debugger. If I'm embedding Ruby in another project, I need clean integration in the Visual Studio debugger even more strongly.</p><p>If I'm going to distribute a Windows product that uses Ruby, I'm going to want to embed it because I don't want to have to worry about whether my customers have Ruby installed, whether it's the right version, whether it was built with the right version of the compiler, whether the customer's machine has DLL's on it with conflicting names, etc. One time I ran into a customer with a different version of zlib1.dll on his system, and it was causing Ruby to crash. The easiest way to fix it was to rebuild the zlib extension to link zlib as a static library.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Martyn Garcia</strong> &middot; <time datetime="2008-03-26T21:17:00+00:00">March 26, 2008 at 9:17 pm</time></p>
      <p>There is life outside of web development.  Sure, if you are doing a web app, it's nice to be able to write an application and deploy an application in linux/osx.  But what if you are writing a UI application?  A graphics utility?</p><p>Windows, like it or not, is the most used consumer platform, and will be for some time.  To ignore it would be detrimental to all of us.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2008-03-26T21:46:00+00:00">March 26, 2008 at 9:46 pm</time></p>
      <p>@Sean: your points are valid, but please take a look (search maybe) to the long list of post related to the VC8/9 and MSVCRT versions issues discussed all over the years.</p><p>Also take in consideration the pain is getting the GNU and other dependencies ruby has work properly under VC8.</p><p>"As a long-time Windows developer, I want the one-click installer to have VS 2005 and 2008 project files for ALL of its dependencies so I can download and build the whole thing myself. I want it to be easy to create and test my extensions in the Visual Studio debugger. If I’m embedding Ruby in another project, I need clean integration in the Visual Studio debugger even more strongly."</p><p>Please, you're welcome to hack into the recipes the needed code to get Readline, OpenSSL and Zlib working with VC8. Or provide the Patches to these projects to get VS project files included, whatever you feel will be the proper thing to do.</p><p>But please, search all the related post, or take a look at my posts about this:</p><p><a href="http://blog.mmediasys.com/2008/01/17/ruby-for-windows-part-1/" rel="nofollow">http://blog.mmediasys.com/2008/01/17/ruby-for-windows-part-1/</a></p><p><a href="http://rubyforge.org/pipermail/rubyinstaller-devel/2008-January/000230.html" rel="nofollow">http://rubyforge.org/pipermail/rubyinstaller-devel/2008-January/000230.html</a></p><p>Check the footnotes on my blog post.</p><p>Regards,<br>
Luis</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dave Nolan</strong> &middot; <time datetime="2008-03-26T21:54:00+00:00">March 26, 2008 at 9:54 pm</time></p>
      <p>Yes - Windows should be a first-class platform for Ruby. Not IronRuby, please, but genunine bona fide MRI 1.8/1.9.</p><p>Ruby, and all who sail in her, can only benefit from being available on Windows platforms. I speak as someone who has to deploy RoR in to a variety of Windows environments run by IT managers who won't wipe their butts unless Bullmer tells them to. It's not overstating it to say that their eyes are being opened to OSM as whole.</p><p>So, please, yes.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Adam</strong> &middot; <time datetime="2008-03-26T22:16:00+00:00">March 26, 2008 at 10:16 pm</time></p>
      <p>I started with Ruby and Rails on Windows a couple of years ago and it worked well enough to get me very interested. But thanks to Luis and his work on mongrel Windows support I was able to continue with Rails and not get stuck at the deployment hurdle. </p><p>I am now writing this from Ubuntu after switching to explore and enjoy the rewards of a true POSIX environment. I won't go back, but without Luis and Daniel Berger et al (win32 gems) I would have stumbled much earlier and not enjoyed the true joy of Ruby and Rails while learning better development practices that have come along with them.</p><p>But I am not pushing the "build it and they will migrate" argument but merely saying there are a lot of folk like me who can/could contribute and improve Ruby and themselves while staying on the Windows platform. This also has the benefit furthering the adoption of open source and its philosophy which the Ruby community engender the best qualities of.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sean O'Neil</strong> &middot; <time datetime="2008-03-27T03:21:00+00:00">March 27, 2008 at 3:21 am</time></p>
      <p>@Luis - Thanks for replying. I've read your posts, I understand the problems inherent in using Visual Studio, and I realize that Visual Studio does not optimize as well as gcc. However, I still feel that most "traditional" Windows developers, who have very little open source experience, would feel that it is indeed still worth the trouble.</p><p>In the projects where I needed it, I have already created my own Visual Studio projects for the libraries I needed. I was forced to abandon the one-click installer because I had to patch the Ruby source, and trying to download the source for the one-click installer was a nightmare because the source code for dependencies were not included. It was much easier to simply build Ruby and the extensions I needed from scratch. I don't need someone else to do that for me, but I'm stubborn. Other developers do need someone else to do it for them, and this is where I feel the one-click installer fails them.</p><p>I feel that going to MinGW will fail them even worse if they need something even a little different than what you've given them. They're not used to MinGW, and it will make it harder for them to fix something when they need it.</p><p>To illustrate, I had to apply a patch to the Ruby source to fix a memory leak in Win32OLE for one project. The problem was found a bit late in my project's development cycle, and it was a show-stopper. It was pretty painful for me at the time because that was when I realized I had to abandon the one-click installer. Having the one-click installer done in this fashion would've made it pretty painless for anyone to fix:</p><p>1) Create Visual Studio 2005 and 2008 projects. (Create the 2005 workspace first and let 2008 convert it to create the 2008 project files.)<br>
2) Create one large workspace with a project for each library you're including in the one-click installer.<br>
3) Create separate build configurations for dynamic and static libraries for all of them (in case someone needs to customize their Ruby install).<br>
4) Make the installer a Visual Studio Setup Project if possible. It should automatically install the Visual Studio runtime libraries for you, and it should upgrade smoothly from 2005 to 2008.<br>
5) Make ALL the source you use for ALL projects available in one monolithic zip file.<br>
6) You (the person maintaining the one-click installer) should not worry the tiniest bit about extensions you're not including. Let someone else worry about them. However, if you include the SQLite Ruby extension, you should include SQLite itself (and it should be built from a source project which is included in the monolithic zip). Don't include the extension if you're not including the software it needs. If you make your Windows users download/install it, they'll probably end up with the wrong version.<br>
7) Oh yeah, try not to include anything that is strict GPL. Or if you do, clearly mark those projects in some way, perhaps with a "(GPL)" in the project names themselves.<br>
8) I don't feel the Gem system is sufficient for C/C++ extensions in Windows, especially for extensions that rely on other open-source software to be installed, like Apache, MySQL, etc. The more different things Windows developers have to try to put together, the more likely they'll end up with the wrong version of something. It would be better for someone to create special LAMP-like software suites to install for Ruby+Windows.<br>
9) This doesn't have anything to do with the one-click installer, but Rails on Windows should be down-played until Ruby supports native threads. Any way you try to deploy Rails on Windows is going to be painful until threads are supported. We should all be telling Windows developers who want to use Rails to use JRuby or to wait for Ruby 2.0. Forking, pipes, LWP, and IPC just aren't that great on Windows, which is why Windows servers like IIS and SQL Server rely on being able to have hundreds of threads.</p><p>Peter asked, so these are my thoughts on Ruby for Windows. Feel free to take it however you want. ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alastair</strong> &middot; <time datetime="2008-03-27T04:22:00+00:00">March 27, 2008 at 4:22 am</time></p>
      <p>Thanks for the logo plug Peter. I'll echo many of the above comments you can't just write off Windows. I recently started working in a mixed environment (you get to pick your poison, Mac, Linux, or Windows) - it's Java or PHP on the backend - and if I wanted to push Ruby as a potential solution for a project it would have play nice across the board.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2008-03-27T04:49:00+00:00">March 27, 2008 at 4:49 am</time></p>
      <p>@Sean: I have mixed feelings with M$ development tools. Being a MSDN subscriber for so many years, just dumped it completely and switched to a more clean and healthy environment.</p><p>In any case, I'm trying to make OCI more slim, more maintainable. Let the users choose what they want to install.</p><p>regarding WIN32OLE, I think a good patch to ruby-core will be really appreciated.</p><p>What you proposed not only takes a huge amount of time, but also requires higher knowledge on MS tools that I currently have or want to have.</p><p>There is also the situation with GNU libraries and the lack of the Windows patches in the source that make them work. </p><p>Since you saw all my posts, then you're aware that I took 3 days to get Readline, OpenSSL and Zlib build with VC8 last time, and a bit more tweaking ruby to get it correctly use the hacked makefiles. (since most of the OSS  projects out there lack vsproj files to be used).</p><p>So, if you already took that path, hope you're not bound to some NDA or something and you will love to share your creation with us.</p><p>I'm dumping VC not because I don't want it, I'm dumping it since VC6 is too old, cross compiling with newer VC versions is almost impossible and most of the gem/libraries developers are more aware/familiar with GNU toolchain that VS tools.</p><p>Also because noone showed interest on this, and I've been commenting, asking and exposing the situation since November.</p><p>Maybe I'm too geek or something, but I don't find troublesome the GNU toolchain, it only takes time to get used. And if you want a IDE, get Code::Blocks or something similar (even Komodo Edit can handle it).</p><p>In any case, I like the discussion you opened, and even some points are valid, the move of OCI to MinGW was the need to move to something more "maintainable" than was before.</p><p>Take in consideration that right now, OCI don't have control of the ruby compilation it uses. It also need to get 3rd party downloads to fulfill dependencies that we don't know which version were used to build those extensions that are part of Ruby repository.</p><p>So at the end of each release, we need to cross fingers that nothing got broken due that. I don't like living with that level of stress :-P</p><p>OCI will no longer include extensions outside the ones Ruby repository build. Extension developers will need to move to gems so we can have a grainer control over the deployment and accurate testing (like I'm doing right now with rubygems).</p><p>Please, feel free to join us at rubyinstaller-devel mailing list, you're welcome and your ideas can be integrated too. If we can make ruby build itself and pass all the tests without issues, then we can consider that as the best platform candidate.</p><p>(Readline was driving me crazy for months, you're welcome to make it work with VC8 or VC9, surprise me).</p><p>Regards,<br>
Luis</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Frank Davis</strong> &middot; <time datetime="2008-03-27T05:32:00+00:00">March 27, 2008 at 5:32 am</time></p>
      <p>I am just really puzzled by the number of people that seem to be saying it's not even a good idea to attempt to write a Ruby application for Windows.</p><p>Windows has a huge market share both in the home PC market and in the small-to-medium business market. Why would you want to ignore that whole segment? Even if you strongly believe that they *shouldn't* be running Windows, the fact is that they are.</p><p>Yes, not all code is 100% portable between Windows and "not-windows" platforms, due to posix and other issues. I understand why it happens and accept that, and try to take that into account in my designs. If I'm doing a Rails app that will run on a Linux box, I generally use Linux as my development platform. If I occasionally need to write a Rails app for a Windows server, I use Windows as my dev platform. Yes, I miss some of my tools, but I experience less pain than if I were to try to develop on Linux and Deploy on Windows. And don't suggest that I should be convincing these companies to switch to Linux servers; it's not gonna happen. There's still a sizable segment off the small business world that sees Linux as a strange and mysterious voodoo that they would be better off avoiding. There's a certain elitism in the Linux community that almost seems to encourage this reaction.</p><p>Obviously, if I'm developing a web application and have any choice at all about the OS of the web server, there's no reason to try to use Windows. But there are times when I don't have that option, and I've deployed plenty of perfectly stable Rails apps on Windows (as internal business applications), and Ruby-based desktop applications using a variety of GUI libraries.</p><p>There are a lot of people that seem to be saying that Ruby is a great and wonderful development tool, but it's not good enough to develop Windows applications. Or am I misinterpreting this?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brian M</strong> &middot; <time datetime="2008-03-27T07:30:00+00:00">March 27, 2008 at 7:30 am</time></p>
      <p>I can't be the only one who thinks it's pretty funny that people keep touting the command line as one of the advantages of using a Mac.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>SoliS</strong> &middot; <time datetime="2008-03-27T10:11:00+00:00">March 27, 2008 at 10:11 am</time></p>
      <p>question remains ... is this just about development on windows or also about development FOR windows ? ... imho there is a huge difference.<br>
i try really hard to learn how to script nice tools though since i am a newb i kinda would like to know if the platform i need to be scripting for is going to be dropped ... its never to late to learn something new on the other hand i prefer to be able to use the knowledge i hope to gain in the next few weeks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dr Nic</strong> &middot; <time datetime="2008-03-27T11:58:00+00:00">March 27, 2008 at 11:58 am</time></p>
      <p>@sean + @luis - I've never looked in VS project files, but could a (simple) helper script/sake task be developed to generate a VS2005/08 project file for a given folder hierarchy? If it could, this would make ruby project development instantly more fun for VS users. I used to use VS, I think i would have appreciated such a cool tool.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>sgwong</strong> &middot; <time datetime="2008-03-27T13:37:00+00:00">March 27, 2008 at 1:37 pm</time></p>
      <p>I am thinking making a first class Ruby on Windows is a must. I am using windows platform at work and home also.(May be all the user wonder why I don't use *nix at home) I have to say that I already used to windows and I use it for more than 15 years.<br>
At work, I also use ruby as a scripting language to complete some of my work. We cannot simple switch the environment to *nix because most of the other user is not familiar with *nix. I had been using *nix for months and actually I like it. But there are still some blocking issue that I still NEED windows, for some sepecific applications and gaming!!!</p><p>I would really appreciate the work for OCI for windows. Without it, I couldn't simple pass my ruby script around to my colleague on work.</p><p>I also tried to compile ruby with VS2005 and it is a nightmare. And Like Luis said, the readline is the main issue where I can't get it compile with VS2005. I had compile other extension like n-curse, open-ssl, blah blah and so on. In the end, I give up on the work. I would really really like to make it work with VS environment.</p><p>For minGW, I never work on it before. I hope it is easy to use and it will be the main solver for compiling ruby on windows. I had made c-extension for ruby on windows also, but I compile with VS2005(though the ruby I use is OCI compile with VC6 and it require some hack to make it compile) and it still work. I do hope minGW and made the compiling process much easier.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2008-03-27T13:43:00+00:00">March 27, 2008 at 1:43 pm</time></p>
      <p>@Dr Nic: I can no longer answer that question since left VS realms quite long ago. Don't know if it puts stuff like UUID or similar things into the XML files (vsproj were XML files last time I checked).</p><p>But maybe Sean can confirm this. Will be really cool if there is something like Heat (from WiX toolset) that can output custom generated XML for fragments of code hierarchy.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Eddie</strong> &middot; <time datetime="2008-03-27T13:46:00+00:00">March 27, 2008 at 1:46 pm</time></p>
      <p>I develop on windows - all the software that I need to run my web development business is on Windows. I suspect that I'm part of the (silent)  majority of RoR developers/hobbyists, etc, etc. Porting to another OS is not economic/too disruptive at this time. 99% of my business clients are windows users, even if their websites/online apps probably run on unix, &amp; won't be changing anytime soon either.</p><p>So, I want Ruby on windows to be a great at it can be. I want the option to develop ROR apps that run on either windows or unix or whatever. I want the choice to use windows as my development platform. I don't want windows to be a poor Ruby relation, not least since the windows market share is soooo huge.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ben</strong> &middot; <time datetime="2008-03-27T16:19:00+00:00">March 27, 2008 at 4:19 pm</time></p>
      <p>NOT</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ken Robertson</strong> &middot; <time datetime="2008-03-27T16:48:00+00:00">March 27, 2008 at 4:48 pm</time></p>
      <p>Statements like "Windows is a poor developer platform" always sound ignorant to me.  Windows is a poor platform *for Ruby development*.  Development in .NET is a joy.  In terms of the environment, VS has its problems, but is a nice IDE overall, and a great debugger and tools for it.  The language itself is another thing.</p><p>Ruby development on Windows?  The environment sucks (the language rocks though).  Is that Windows fault?  No.  The community overall is very *nix based, so development focuses on that environment, and very anti-Windows as is.</p><p>IMO, Ruby on Windows is and always be an uphill battle.  Should Ruby have a good development story on Windows?  Yes, but I think Ruby on Windows should invest more in coLinux and andLinux.  That way, you could get a true *nix environment within Windows and avoid all the idiosyncrasies.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sean O'Neil</strong> &middot; <time datetime="2008-03-27T21:19:00+00:00">March 27, 2008 at 9:19 pm</time></p>
      <p>@Luis - Regarding the WIN32OLE patch, it wasn't mine. It was already checked into the HEAD branch of Ruby core. It just wasn't part of the OCI at the time. (I believe it is now.)</p><p>I don't mind sharing what I came up with, but unfortunately it's not much at the moment. I only built the extensions I needed, which did not include tough ones like readline or openssl. They included zlib, OpenGL, SFML, and a few others, but none of the extensions that are a real pain to build in Windows.</p><p>Under normal circumstances I wouldn't mind donating time to a project like this, but I recently started a part-time contract in addition to my full-time job, and it's taking up all of my spare time (and then some). Maybe in a few months if that contract is finished. What's your time frame for this?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rob</strong> &middot; <time datetime="2008-03-27T23:58:00+00:00">March 27, 2008 at 11:58 pm</time></p>
      <p>Just because I haven't seen it mentioned so far: Windows users should check out Rubystack by Bitnami: <a href="http://bitnami.org/stack/rubystack" rel="nofollow">http://bitnami.org/stack/rubystack</a></p><p>I've been using it on Windows (and Mac) for Rails development and it's great.</p><p>If you're on windows and you're waiting for *something* before you try ruby: dont!  Or at least tell us why/what.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2008-03-28T13:52:00+00:00">March 28, 2008 at 1:52 pm</time></p>
      <p>Hey Rob,</p><p>What is good from Bitnami if that they simplified the deployment of Rails applications on windows using Apache+Mysql+Mongrel.</p><p>But Bitnami stack faces the same situation One-Click Installer faces: depend on Ruby builds from external sources.</p><p>Also, it doesn't solve the situation with gems that bundle extensions which requires you have a compiler to make them work. (since it depends on you having VC6).</p><p>So you still will be stuck with gems that require building or have a compiler handy like ImageScience or RubyInline.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Robert Sheehan</strong> &middot; <time datetime="2008-03-28T17:15:00+00:00">March 28, 2008 at 5:15 pm</time></p>
      <p>It seems obvious to me that we still need an up to date OCI for Windows. It would be great if it could handle gems that needed extensions compiled. I am very grateful for the work that Luis has already put in on the MinGW version. I recently had to use it to compile the Chipmunk (<a href="http://wiki.slembcke.net/main/published/Chipmunk" rel="nofollow">http://wiki.slembcke.net/main/published/Chipmunk</a>) 2D physics extension to work on Windows. I really needed that for a program to be used with kids where the machines run Windows.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sean O'Neil</strong> &middot; <time datetime="2008-03-28T18:26:00+00:00">March 28, 2008 at 6:26 pm</time></p>
      <p>@Dr Nik - It shouldn't be hard to create Visual Studio project files in Ruby, but I've never tried it. If you need GUID's, you can use this code in Windows to get them. (Sorry if the formatting messes up.)</p><p>require 'Win32API'<br>
# Return a new GUID in this format: {1661044D-7B96-474B-9056-C856307F63CD}<br>
def new_guid()<br>
  coCreateGuid = Win32API.new("ole32", "CoCreateGuid", ['P'], 'L')<br>
  guid = Array.new(16, 0).pack("c*")<br>
  coCreateGuid.call(guid)<br>
  bytes = guid.unpack("c*")</p><p>format("{%02X%02X%02X%02X-%02X%02X-%02X%02X-%02X%02X-%02X%02X%02X%02X%02X%02X}",<br>
  bytes[0]&amp;0xFF, bytes[1]&amp;0xFF, bytes[2]&amp;0xFF, bytes[3]&amp;0xFF,<br>
  bytes[4]&amp;0xFF, bytes[5]&amp;0xFF, bytes[6]&amp;0xFF, bytes[7]&amp;0xFF,<br>
  bytes[8]&amp;0xFF, bytes[9]&amp;0xFF, bytes[10]&amp;0xFF, bytes[11]&amp;0xFF,<br>
  bytes[12]&amp;0xFF, bytes[13]&amp;0xFF, bytes[14]&amp;0xFF, bytes[15]&amp;0xFF)<br>
end</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chuck</strong> &middot; <time datetime="2008-03-28T18:55:00+00:00">March 28, 2008 at 6:55 pm</time></p>
      <p>I would like to thank anyone and everyone who has contributed to the development of Ruby.  It truly has made programming fun again!!</p><p>I use Windows at work and linux at home.  I have limited time to learn new languages and technologies thus I look for ones that are cross platform.   If they aren't then I don't bother spending time on them.  </p><p>I would guess that Ruby would lose a huge amount of traction if support for Windows is abandoned or allowed to languish.</p><p>I have had little problem with gems, maybe I'm too limited on what I work on ... :-)</p><p>The only real gotcha that I currently struggle with is building cross platform GUI's.   The choices are limited and limiting.  It would be awesome to have a VB like GUI builder that generated Ruby code.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>remi</strong> &middot; <time datetime="2008-03-29T04:55:00+00:00">March 29, 2008 at 4:55 am</time></p>
      <p>what Dr. Nic said.</p><p>When I started with Ruby, I was using Windows.  At that time, I had almost no trouble, though.  Just installed Ruby ... Rubygems ... and everything that I used worked.</p><p>That said, there are far more gems that I use now and far more that require compilation ... I'm not sure how well my current development setup might run in Windows.</p><p>I wouldn't want other Windows users to not get the great Ruby experience that I once had ... Windows should absolutely be a first class platform for Ruby and people should work on that.</p><p>Honestly ... I've had more trouble getting Ruby to work on OSX (10.4 and 10.5) than I've had getting it to work on Linux or Windows!!!  ( but that's generally because I need to install Xcode and Darwin Ports and ... whatever else ... to get many of the libraries I need )</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Phil</strong> &middot; <time datetime="2008-03-29T12:25:00+00:00">March 29, 2008 at 12:25 pm</time></p>
      <p>I am here learning Ruby today due to the One-Click-Installer.  I use the Ruby installed by OCI, with SQLlite and Notepad++.</p><p>(I've toyed with Netbeans 6.1 and found it works great when pointed at files installed by OCI and SQLlite.  When NB is pointed at Jruby and other DBs, it runs satisfactory, but not as good as my OCI stack.)</p><p>Due to constraints beyond my control (at work and home), I'll need to work in Windows for the next year or two.  Please keep the Windows Ruby eco-system viable.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Roller8</strong> &middot; <time datetime="2008-03-31T00:33:00+00:00">March 31, 2008 at 12:33 am</time></p>
      <p>I think Ruby on Windows should definitely become a 1st class platform. At least for development purposes and, if possible, for desktop apps. As a former systems admin I feel that Windows will remain a popular enterprise OS for many important administrative reasons and as such, a robust and mature language such as Ruby would make the developer world a better place. I think some of our .NET developers could agree on this.</p><p>In any case, I'll be making the move to Mac any day now.  And most importantly, with the Rails framework I CAN develop cross platform applications in Ruby and not worry about it all. For the enterprise world there is an intense joy when you don't have to manage deploying an application to hundreds or thousands of desktops and upgrading the app is just as simple. Web based apps for all says I! Aye!</p><p>Now if Rails deployment could just simplify even further the web world would definitely be a better place!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nadav</strong> &middot; <time datetime="2008-03-31T06:58:00+00:00">March 31, 2008 at 6:58 am</time></p>
      <p>Windows is so popular. It is practically the only available os for desktops in many organizations (like the one I work for).<br>
So regardless of being good or bad operating system, there is a need for easy installation, and good development environments for windows.<br>
I find the one-click ruby installer truly great. I appreciate the work done on it, and I hope it will continue and Windows indeed becoming a first class citizen in the ruby world.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charles</strong> &middot; <time datetime="2008-03-31T12:46:00+00:00">March 31, 2008 at 12:46 pm</time></p>
      <p>I use Ruby on Windows to develop and host corporate apps at the 5000+ employee company I work for.  I am often frustrated with the difficulty of building gems.  I am very grateful for the Ruby for Windows one-click installer and the other community contributions to support Ruby on Windows.  It is a lot easier to sell Ruby on Windows than Ruby on Linux to the pointy haired management.  I have to run Ruby on Windows to accomplish loginless pass-through authentication of AD credentials.  With Ruby on Windows my users can access Rails apps using their AD credentials and never have to log in.  Having users have to log in instead of passing their AD credentials is a deal breaker for in-house apps.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>danimata</strong> &middot; <time datetime="2008-04-01T09:50:00+00:00">April 1, 2008 at 9:50 am</time></p>
      <p>In my opinion, we should be able to develop and run Rails applications on Windows as easily as on other platforms. It may not be the 'developers dreamt' platform but it has been adopted by many potential clients. Not supporting the same features for Windows than for Lynux or Mac may end in projects not done and potential clients not gained.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Phani</strong> &middot; <time datetime="2008-04-02T05:14:00+00:00">April 2, 2008 at 5:14 am</time></p>
      <p>+1 for a first class Ruby support on Windows eco system. Keep going Luis and thanks for all the good work.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael</strong> &middot; <time datetime="2008-04-04T05:41:00+00:00">April 4, 2008 at 5:41 am</time></p>
      <p>Is Windows a good environment for Ruby? Not currently. Should it be? Absolutely.</p><p>Need a good command line for Windows? Go with Cygwin. I've been using it for years and am very happy with it, a complete Unix environment on Windows, and its free, stable and well supported.</p><p>I haven't experienced any of the problems that others seem to have, but with Cygwin, if I have problems installing a gem due to compiling issues, I've got mingw and gcc so I'm good to go.</p><p>I wish it were as easy as switching to Linux or Mac, but I'm stuck on Windows out of necessity. I can't afford a Mac, though I used one for over a year and now I miss it. I miss my Linux box too, but haven't run Linux since Red Hat 8. I can't afford to have two machines, and let's face it, Adobe's got the best Graphics Apps out there. So I make do with what I've got to work with.</p><p>Should Louis move to Mingw? I'd love it if he did, it might make my life even easier.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>David Leal</strong> &middot; <time datetime="2008-04-07T15:02:00+00:00">April 7, 2008 at 3:02 pm</time></p>
      <p>Stop assuming that everybody has money to migrate to a Mac. </p><p>Stop assuming that Linux works on all computers.</p><p>I just went back to Windows after a frustrating period using Linux where 1) my headphones don't work, 2) I must make the pc hibernate from the command-line, 3) the pc doesn't restart because of the ATI driver, 4) the ATI driver works terribly, 5) kernel 2.6.24 freezes the built-in wifi card.</p><p>This is the laptop I have and I can't afford to buy another one, or a Mac. Some of us can't (or won't) use anything else. Ruby should be as well supported on Windows as it is on the other platforms.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-04-08T17:52:00+00:00">April 8, 2008 at 5:52 pm</time></p>
      <p>Just testing after a WordPress upgrade..</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
