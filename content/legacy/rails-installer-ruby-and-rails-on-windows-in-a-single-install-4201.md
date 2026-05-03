---
title: 'Rails Installer: Ruby and Rails on Windows in a Single, Easy Install'
date: '2011-01-18'
author: Peter Cooper
author_slug: admin
post_id: 4201
slug: rails-installer-ruby-and-rails-on-windows-in-a-single-install-4201
url: "/rails-installer-ruby-and-rails-on-windows-in-a-single-install-4201.html"
categories:
- news
- microsoft-windows
---

{{< rawhtml >}}
<p><img src="/assets/2011/01/railsinstaller.png" width="93" height="98" alt="railsinstaller.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"><a href="http://railsinstaller.org/">RailsInstaller</a> is a new project from Wayne E Seguin (of <a href="http://rvm.beginrescueend.com/">RVM</a> fame) that brings <a href="http://rubyinstaller.org/">RubyInstaller</a>-style simplicity to getting Ruby <i>and</i> Rails set up on Microsoft Windows (XP, Vista, or 7). In a single wizard-driven installation you get Ruby 1.8.7-p330 (with <a href="https://github.com/oneclick/rubyinstaller/wiki/Development-Kit">DevKit</a>), Rails 3.0.3, Git, and SQLite 3.</p>
<p><i>Rails Installer</i> was developed with help from Luis Lavena (a Ruby on Windows expert) and Dr. Nic Williams (Engine Yard's resident Australian <a href="https://www.youtube.com/watch?v=2RM18SzE33M">comedian</a>) and its release comes just weeks after <a href="http://www.engineyard.com/blog/2010/honey-im-home/">Wayne was (re)hired by Engine Yard</a> to work on new open source initiatives.</p>
<p><strong>To get started, go to <a href="http://railsinstaller.org/">railsinstaller.org</a>, download the "Rails Welcome Kit" and run the installer.</strong> There's a <a href="http://vimeo.com/18787139">screencast</a> you can watch too. The process is as simple as it sounds and you can have a basic, empty Rails project running within minutes.</p>
<p><img src="/assets/2011/01/railsinstaller1.png" alt="" title="railsinstaller" width="528" height="410" class="alignnone size-full wp-image-4212"></p>
<p>If you want to follow along more, check out the <a href="http://twitter.com/railsinstaller">@RailsInstaller</a> Twitter account or the <a href="http://groups.google.com/group/railsinstaller/">Rails Installer Google Group / mailing list.</a></p>
<h3>Like RVM? Do Wayne a Favor..!</h3>
<p>I've been speaking to Wayne and in the long term he will extend the <i>RailsInstaller</i> site with more information on where to go next and links to tutorials, etc, but for now he wants RailsInstaller.org to be the #1 "go to" site for budding Windows-based Rails developers. To help with this, he's keen for people to link to <code>http://railsinstaller.org/</code> with the text <a href="http://railsinstaller.org/">Rails Windows Installer</a> - making it more likely to come up if people Google for <code>"rails windows"</code> and similar.</p>
<p>Wayne is also keen for you to share <i>Rails Installer</i> with any/all Windows-based developers you know who might be interested in trying out Rails. A one-file, wizard driven installation process makes it look a lot better than the previous <i>"download this, type that, download this, open that"</i> process.</p>
<p>If you're interested in the source code behind the project and helping out at that level, there's <a href="https://github.com/railsinstaller/railsinstaller-windows">the railsinstaller-windows project on GitHub</a> you can check out too.</p>
<h3>Ruby 1.9.2 Next, Please ;-)</h3>
<p>I have only one complaint about RailsInstaller; it's Ruby 1.8.7 only (for now) but 1.9 is where it's at in 2011, especially for Rails 3! Nonetheless, I suspect further and more varied packages will be coming in due course. If you care that much about it in the short term, of course, you can use <a href="http://rubyinstaller.org/">RubyInstaller</a> 1.9.2 and install Rails by yourself the long way ;-)</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Tots</strong> &middot; <time datetime="2011-01-18T14:14:00+00:00">January 18, 2011 at 2:14 pm</time></p>
      <p>If he could create an installation that would make configuring Rails to work with IIS7 simple, he would have a winner. I got a few clients that refuse to move from Windows server, who don't wish to use Apache, so IIS7 configuration would be killer.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2011-01-18T15:32:00+00:00">January 18, 2011 at 3:32 pm</time></p>
      <p>Hello Tots,</p><p>There was a FastCGI interface for IIS that allowed you run Rails applications using it, but seems that part has been dead for a bit.</p><p>I don't personally use IIS, but believe that for successful infiltration into these environments, getting seamless cooperation with IIS is a must.</p><p>I think this can be tested out with IIS Express, but I'm not sure.</p><p>Of course, research, help and test lab mice are welcome ;-)</p><p>Start the conversation at RailsInstaller group:</p><p><a href="http://groups.google.com/group/railsinstaller" rel="nofollow">http://groups.google.com/group/railsinstaller</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Drew</strong> &middot; <time datetime="2011-01-18T15:52:00+00:00">January 18, 2011 at 3:52 pm</time></p>
      <p>I recently got a new computer at work (upgrade from win vista 32bit to win 7 64bit) and after installing the newest patch level of 1.8.7 (330), I was having issues with the rails logging giving me ERRNO out of memory errors where the previous patch level (302) had no difficulty. So it would be great, if he is watching this thread, if he could package 302 instead of 330. This looks like a great tool for getting up and running on windows quickly!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2011-01-18T15:57:00+00:00">January 18, 2011 at 3:57 pm</time></p>
      <p>@Drew,</p><p>Can you please provide more details about your issue? Getting ERRNO errors might be associated with something else, not the patchlevel.</p><p>I've been using p330 without any issue with Rails 3.0.3 and other projects on Windows, so wonder when and how these things are showing in your front.</p><p>Can you please comment further on either RubyInstaler group (which I guess you used RubyInstaller package) or RailsInstaller package once you try it?</p><p>Thank you.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bryan</strong> &middot; <time datetime="2011-01-18T16:02:00+00:00">January 18, 2011 at 4:02 pm</time></p>
      <p>Ruby 1.8.7?</p><p>Why not Ruby 1.9.2? People need to be moving forward. Especially on Windows...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-01-18T17:04:00+00:00">January 18, 2011 at 5:04 pm</time></p>
      <p>On the #rvm Brian Hogan pointed out to be that a <em>lot</em> of stuff is broken on Windows with 1.9.2 library-wise, alas. He mentioned things like installing ImageMagick. I've not tested this myself but if true, that sucks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2011-01-18T18:29:00+00:00">January 18, 2011 at 6:29 pm</time></p>
      <p>@Bryan and @Peter,</p><p>Yeah, a few things are broken with Ruby 1.9.2, specially the lack of binary gems for Windows.</p><p>There is another point nobody mention, but Ruby 1.9.2 is slower than 1.8.7 on IO:</p><p><a href="http://stackoverflow.com/questions/4627888/rails-on-windows-is-so-slow-rails-v-takes-4-seconds/4634725#4634725" rel="nofollow">http://stackoverflow.com/questions/4627888/rails-on-windows-is-so-slow-rails-v-takes-4-seconds/4634725#4634725</a></p><p>Which has been fixed in trunk (1.9.3)</p><p>While I understand the reason of move to next generation Ruby, there are a few pebbles in the shoe :P</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Patrick Ma</strong> &middot; <time datetime="2011-01-19T07:47:00+00:00">January 19, 2011 at 7:47 am</time></p>
      <p>It's great that it's getting easier to install Rails on a Windows environment, but that's only half the battle, and I'm curious to know why this installer doesn't include RVM, one of the core applications of a Rails development stack.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-01-19T23:04:00+00:00">January 19, 2011 at 11:04 pm</time></p>
      <p>Patrick: I don't think RVM works natively on Windows..? (But there is Pik which does similar.)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matt Slay</strong> &middot; <time datetime="2011-01-20T17:29:00+00:00">January 20, 2011 at 5:29 pm</time></p>
      <p>I think that the Windows folks (like me), need some guidance on choosing an IDE to edit that first "rails new" sample app that the video guides them through. Leaving a Windows developer sitting at a terminal windows after creating their first app will surely have them scratching their head as to what the need to do next. Windows devs love IDEs. They will want that to take a peek at the code files that make up the Rails app, and they'll be lost. They are not terminal junkies like Linux and Mac devs. (By the way, I strongly recommend RubyMine. It's a GREATE IDE, in my opinion).</p><p>I'm going to guess thay many Rails-on-Windows devs may have used Visual Studio (or the Express edition), and they will want that UI experience.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-01-21T10:00:00+00:00">January 21, 2011 at 10:00 am</time></p>
      <p>@Matt Slay: I made a video for my Ruby course that covers the basics of that: <a href="https://www.youtube.com/watch?v=CEpeyu-sisI" rel="nofollow">https://www.youtube.com/watch?v=CEpeyu-sisI</a> - totally for newbies though and not ones who want a full-scale IDE (which I think is too intimidating for newcomers and, well, most experienced Ruby developers don't use them anyway).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="rails-ready-ruby-and-rails-on-ubuntu-in-one-line-4214.html" rel="external nofollow" class="url">Rails Ready: Ruby and Rails on Ubuntu in One Line</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Owen</strong> &middot; <time datetime="2011-01-24T01:39:00+00:00">January 24, 2011 at 1:39 am</time></p>
      <p>This is a great initiative, Windows is still the primary OS in The Enterprise.</p><p>One small issue: If you don't select the default directory, you get this error in Windows 7:</p><p><a href="http://screencast.com/t/yS0dC5nLYUE" rel="nofollow">http://screencast.com/t/yS0dC5nLYUE</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://www.lamolabs.org/blog/4928/delicious-bookmarks-for-february-7th-from-2121-to-2359/" rel="external nofollow" class="url">Delicious Bookmarks for February 7th from 21:21 to 23:59 « Lâmôlabs</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://betterlogic.com/roger/2011/02/windows-rails-installer/" rel="external nofollow" class="url">windows rails installer « Roger's woze</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://toptech.michaeltarrell.com/2011/03/08/language-war-php-vs-ruby/" rel="external nofollow" class="url">Language War: PHP vs. Ruby | Top Tech</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
