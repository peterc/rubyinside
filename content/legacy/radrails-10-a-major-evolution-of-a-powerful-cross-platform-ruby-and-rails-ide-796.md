---
title: 'RadRails 1.0: A Major Evolution of a Powerful, Cross Platform Ruby and Rails
  IDE'
date: '2008-03-12'
author: Peter Cooper
author_slug: admin
post_id: 796
slug: radrails-10-a-major-evolution-of-a-powerful-cross-platform-ruby-and-rails-ide-796
url: "/radrails-10-a-major-evolution-of-a-powerful-cross-platform-ruby-and-rails-ide-796.html"
categories:
- miscellaneous
- news
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2008/03/radrailsview1.jpg" width="424" height="319" alt="radrailsview1.png"></p>
<p>Long-time Rails developers will remember <a href="http://www.aptana.com/rails">RadRails</a>, a cross-platform, Eclipse-based Rails IDE that became quite popular in 2006, before being adopted by <a href="http://www.aptana.com/">Aptana</a> in 2007. After that, it kinda fell off the radar, but it turns out Aptana has been working hard on it all along and RadRails 1.0 has been <a href="http://www.aptana.com/view/blog_front_page#/node/320">released</a> today (an <a href="http://www.aptana.tv/movies/aptana_radrails_intro/aptana_radrails_intro.html">introduction screencast</a> is available for those who'd rather watch than read!)</p>
<p>RadRails is still a Rails-focused product, but with significant improvements that make it an easy-to-use, powerful regular Ruby development environment too. As a general Web developer tools / IDE company, Aptana has integrated RadRails into its <a href="http://www.aptana.com/studio">Aptana Studio</a> suite which, like the pre-Aptana versions of RadRails, is an open source, Eclipse-based IDE and toolkit, tailored specifically towards Web developers.</p>
<p>The integration with Aptana Studio means that extra tools and functionality are available to Rails developers from within the IDE. Features include:</p>
<ul>
<li>Adobe AIR and iPhone development plugins</li>
<li>Firefox-based JavaScript debugging</li>
<li>regular expression tester</li>
<li>spell checking</li>
<li>automation tools (using Ruby)</li>
<li>RHTML, YML, HTML, JS and CSS editors with code assist</li>
<li>unit testing integration</li>
</ul>
<p>All the above features are available for free, though Aptana does offer a commercial version that costs $99 (a promotional rate, at present) that provides Ruby profiling (shown below) and secure FTPS uploading capabilities, along with a JSON editor, IE-based JavaScript debugging, extra product support, a visual XML editor, and more.</p>
<p><img src="/assets/2008/03/hot-spots.jpg" width="426" height="126" alt="hot_spots.png"></p>
<p>RadRails 1.0 supports the regular Ruby interprter MRI (Matz's Ruby Interpreter), JRuby <em>and</em> Rubinius, with JRuby coming included, so even if you're installing on a fresh machine, you can be up and running within ten minutes or so (it takes a while to install all of the gems from fresh.) All of the features are compared with NetBeans and 3rdRail <a href="http://www.aptana.com/rails#features">here</a>.</p>
<p><img src="/assets/2008/03/railsshell.jpg" width="304" height="145" alt="railsshell.png"></p>
<p>One particularly interesting new feature is the "<a href="http://www.aptana.tv/movies/aptana_radrails_rails_shell/aptana_radrails_rails_shell.html">Rails Shell,</a>" a new console option that lets you use the familiar Rails scripts without being forced into using a GUI or plain console. It also features text expansion, tab-completion and tooltips. Here's a <a href="http://www.aptana.tv/movies/aptana_radrails_rails_shell/aptana_radrails_rails_shell.html">screencast tour</a> of the feature. This feature could be particularly useful for experienced Rails developers who don't want to feel constricted by the GUI.</p>
<p>Aptana Studio, coupled with RadRails 1.0, is an impressive development environment for Ruby and Rails applications, and I'd certainly recommend all Ruby developers to give it a try. It looks slick (as slick as Eclipse can, anyway), feels solid, and could make life a lot easier for Rails and Ruby developers alike. Creating a Rails project is close to a one-click process; your app is up and running within ten seconds. Handy tabs for access to specially-tweaked consoles, Rake commands, and the command prompt are easy to find and use, and you get all of the usual IDE benefits in your usual development mode.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>EricB</strong> &middot; <time datetime="2008-03-12T14:50:00+00:00">March 12, 2008 at 2:50 pm</time></p>
      <p>Hi Peter,</p><p>Did you happen to try out the debugging in radrails 1.0?  I remember it being painful to set up and unpleasant overall as of a few versions of radrails ago.  If it's better, I might switch from Netbeans, which is slicker in terms of debugging, but slower overall.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris Williams</strong> &middot; <time datetime="2008-03-12T16:01:00+00:00">March 12, 2008 at 4:01 pm</time></p>
      <p>We now include ruby-debug pre-installed in the included JRuby and ask the user if we can install it for them on standard Ruby (if it's not there). If that gem is installed we'll use that instead of the pure ruby based debugger - which as you said is rather slow and cumbersome. So the experience should be nice and easy.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ade</strong> &middot; <time datetime="2008-03-12T17:08:00+00:00">March 12, 2008 at 5:08 pm</time></p>
      <p>What is RadRails' performance like compared to NetBeans?  My development machine here at work is a Mac Mini Core Duo 1.66 GHZ with 2 GB RAM and I found NetBeans to be noticeably slow while developing, particularly with dragging and docking windows, and in general even coding itself felt sluggish.  On my home computer, a Dual Core 2.6 GHZ, it was much snappier.  Here at work, I had to drop back to jEdit (a more-or-less standard text editor that I like, which works a lot like Textmate and also has Ruby syntax highlighting).</p><p>If RadRails is faster than NetBeans I'd like to give it a try.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Raphaël Valyi</strong> &middot; <time datetime="2008-03-12T17:39:00+00:00">March 12, 2008 at 5:39 pm</time></p>
      <p>Hi,</p><p>I'll definitely give a try to that new Radrails. Recently I started using RadRails some 2 years ago, but then switched to Netbeans as it had way more features and was usable earlier with JRuby. Still as Ade said, Netabeans6 is fucking damn slow. It's even barely usable on my Linux box, especially due to this bug: <a href="http://www.netbeans.org/issues/show_bug.cgi?id=119617" rel="nofollow">http://www.netbeans.org/issues/show_bug.cgi?id=119617</a>  loosing the cursor while editing (disabling automatic autocompletion makes it okay). Sad because it was all good in theory. BTW, I think the feature matrix comparison provided by Aptana here <a href="http://www.aptana.com/rails/#features" rel="nofollow">http://www.aptana.com/rails/#features</a>  is not correct: Netbeans does have RHTML + ERB editing support.</p><p>Ok, let's give a try, at least untill Sun guys fix the Netbeans performance issues.</p><p>Regards.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2008-03-12T20:47:00+00:00">March 12, 2008 at 8:47 pm</time></p>
      <p>Is Aptana still the RAM sucking pig it used to be? I uninstalled Aptana in the past because opening a single Ruby file in Eclipse was consuming over 300 MB.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Carl Youngblood</strong> &middot; <time datetime="2008-03-12T21:03:00+00:00">March 12, 2008 at 9:03 pm</time></p>
      <p>I thought rails wasn't yet runnable on rubinius.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-03-12T21:40:00+00:00">March 12, 2008 at 9:40 pm</time></p>
      <p>As far as I'm aware, it still isn't, but RadRails can be used for a lot more than just Rails development, so being able to run regular Ruby apps on Rubinius would still be useful (in certain edge cases.)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>addam</strong> &middot; <time datetime="2008-03-12T22:01:00+00:00">March 12, 2008 at 10:01 pm</time></p>
      <p>I just installed radrails1.0 and it doesn't took me long to feel short :-(<br>
Even if the rails shell is new compared to netbeans (not to 3rdRails), the code completion is just not as I expected it to be.<br>
In fact, when I tried to see methods of a string newly created<br>
s = String.new<br>
only few methods are proposed .. no sub, no scan .... is it just not as good as netbeans code completion </p><p>May be it's just due to some bugs ... but for now I don't feel the real need to switch over to radrails....and I hope the guys in netbeans will soon make an other huge step by by-passing all new features that are in radrails, 3rdrails and not in netbeans yet.</p><p>Does anyone else here tries radrails 1 ? </p><p>cheers,</p><p>Addam</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jelen</strong> &middot; <time datetime="2008-03-13T09:07:00+00:00">March 13, 2008 at 9:07 am</time></p>
      <p>Okay, downloaded Aptana, and the start screen shows me some Ajax loading indicators but nothing about how I "add Rails" to it. After clicking around a little bit, it crashed with an exception.</p><p>Netbeans 6 might be slow, but at least it's stable and usable, so right now I am not considering RadRails / Aptana when they cannot even get the basic user experience right.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Uri Sharf</strong> &middot; <time datetime="2008-03-13T12:08:00+00:00">March 13, 2008 at 12:08 pm</time></p>
      <p>It is still a memory hog, unfortunately, like anything based on Eclipse. Kind of slows you down on OS X and 1 giga only machine... but it does look like it is doing just fine on Vista judging by the screencast.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ronald de Gunst</strong> &middot; <time datetime="2008-03-13T13:03:00+00:00">March 13, 2008 at 1:03 pm</time></p>
      <p>I used Radrails for a few years. Since 2 months I switched to Netbeans 6.<br>
After 4 hours working with Radrails 1.0 it was clear for me. Netbeans is my choice.</p><p>It is mainly personal taste, both IDE's do their job well. (almost)<br>
To get more productive I decided to switch from Wintel to a Mac, this will make a bigger difference.</p><p>Good to see there is competition on the Ruby/Ruby on Rails IDE's. This will work out well for both.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-03-13T13:19:00+00:00">March 13, 2008 at 1:19 pm</time></p>
      <p>@Jelen: I'd say that's the biggest weak point I've noticed with RadRails so far. If you watch the screencast, you'll see how to get the Rails section working quite easily, but it's not the easiest process to figure out on your own (when you start up, there's a list of technologies in HTML type format in the middle, go down to Rails then click the link to install the Rails plugins.)</p><p>Once you get a project set up, it's all pretty good, but getting to that stage is not as obvious as it should be.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan</strong> &middot; <time datetime="2008-03-14T02:14:00+00:00">March 14, 2008 at 2:14 am</time></p>
      <p>I'm still going to continue using Netbeans. It's still the best RoR and Ruby IDE that's available. I used to use RadRails but the last time I installed it, I remember encountering lots of issues. I also didn't like the fact that you had to pay to get certain features to install.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luke Pearce</strong> &middot; <time datetime="2008-03-14T14:09:00+00:00">March 14, 2008 at 2:09 pm</time></p>
      <p>I still prefer Aptana RadRails to Netbeans.</p><p>I really want to like Netbeans it has a lot going for it feature-wise, however the aptana ide is so much snappier (at least on windows).  </p><p>Also the RadRails maintainer is awesome - You only need to ask something on the forum; if its a reasonable request it seems to get added and support-wise questions are answered really quickly.</p><p>I certainly agree the initial setting up has much to be desired, once you know though its pretty easy - just click install rad rails plugin from the start page.  Once installed click Window, Open Perspective, Other..., and select RadRails.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tom Agnew</strong> &middot; <time datetime="2008-03-14T20:30:00+00:00">March 14, 2008 at 8:30 pm</time></p>
      <p>I'm sold on RadRails.  This version is much faster than the version I tested a year ago.  For me, both the editor and debugger are very comfortable.  I use it on both Windows XP and Fedora Core 7.</p><p>Thanks guys for a job well done!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jamal</strong> &middot; <time datetime="2008-03-21T14:38:00+00:00">March 21, 2008 at 2:38 pm</time></p>
      <p>This one stinks, full of error, I cannot manage to install anything on this version.</p><p>Every plugin gives another new error.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
