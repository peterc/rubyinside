---
title: 'E-TextEditor: A Windows TextMate? (Or “Why Apple Should Buy TextMate”)'
date: '2007-03-04'
author: Peter Cooper
author_slug: admin
post_id: 413
slug: e-texteditor-a-windows-textmate-or-why-apple-should-buy-textmate-413
url: "/e-texteditor-a-windows-textmate-or-why-apple-should-buy-textmate-413.html"
categories:
- nonsense
- os-x-specific
- tools
- microsoft-windows
---

{{< rawhtml >}}
<p><img src="/assets/2007/03/etexteditor.jpg" height="305" width="283" border="1" hspace="4" vspace="4" alt="Etexteditor"></p>
<p>Over at the O'Reilly Ruby Blog, <a href="http://www.oreillynet.com/ruby/blog/2007/03/looking_for_a_new_rails_ide_fo_1.html">Jim Alateras laments the recent stalling</a> of development on RadRails, but suggests an alternative solution:  <a href="http://www.e-texteditor.com/index.html">E-TextEditor</a>, a "TextMate" alternative for Windows. The initial reports I've read about it are that it's rather good, and after watching the screencast I'd say it looks to be a pretty good editor and I'd give it a try if if used Windows. If you're a Windows user, give it a look.</p>
<p>Now for the editorial bit..</p>
<p><span id="more-413"></span><br>
I don't know Allan Odgaard, the developer of <a href="http://macromates.com/">TextMate</a>, at all, but I'm a happy user of the editor, despite not understanding almost any of the advanced features. I can't speak on his behalf, so just take the following as editorial waffle, but I think Apple should buy TextMate and release it for free or at low cost (as currently). If Allan isn't interested in selling it, then fine, but if he is, it could be a big win for both him and Apple.</p>
<p>So why? 1) The E-TextEditor homepage mentions TextMate <em>six</em> times. 2) A few people have <a href="http://drnicwilliams.com/2006/11/06/post-halloween-radrails-trick-all-textmate-snippets-available/">converted</a> TextMate's snippets to operate in other editors. 3) There's even a <a href="http://www.pragmaticprogrammer.com/titles/textmate/index.html">200 page book</a> about TextMate on the market. 4) If you've been floating around the various freenode Ruby and Rails related channels in the past couple of years, you'll have undoubtedly seen at least several Windows or Linux users drop by raving about TextMate and lamenting their inability to buy a Mac. Yet.. they've ended up actually buying a MacBook (or similar) after several months, and continue to rave about TextMate (<a href="http://www.fearoffish.co.uk/">Jamie van Dyke</a> is one example that sticks in my mind).</p>
<p>These points all demonstrate that TextMate has rapidly become a standard of its own in the text editor market, and it has undoubtedly help OS X become the <em>de facto</em> platform for Rails development. Apple has even acknowledged this and are including Rails with Leopard. People from all platforms have seen TextMate and been captivated by it enough to the point that they lament the lack of its existence on their platform. This doesn't happen with many Mac-only apps, and from what I've read, Allan isn't particularly interested in developing non-OSX versions of the software, so the developers of copycat editors like E-TextEditor are not to blame.</p>
<p>Apple tends to be very good at releasing products that people are afraid of copying too well. Even before iTunes was released on Windows, there was nothing as elegant and as usable. There's nothing quite as good as iMovie, Pages, or Aperture in their respective niches either (although Adobe is trying on the last one). Apple is a fierce defender of its trademarks, and with TextMate under the Apple wing, it could become an even bigger driver for the OS X platform since copycat behavior could be restricted.</p>
<p>I am no fan of trademarks or patents being fiercely defended, nor a fan of Apple owning all of the apples in the cart (pun not originally intended), but from a totally objective point of view, I think it'd make sense for Apple, and if Allan were to turn down, say, a million dollars from Apple, he's a far more principled man than I!</p>
<p>I'm now off to put my flamesuit on..</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Carlos</strong> &middot; <time datetime="2007-03-05T00:11:00+00:00">March 5, 2007 at 12:11 am</time></p>
      <p>Textmate and it's author really have little to gain from restricting Textmate to one (tiny) platform. They way for him to win big, would be to drop the "only Mac" mantra and his "Mac rulez" _friends_/fanboys (like DHH himself). It obviously isn''t preventing the spread of his idea to other platforms, so he should actually hire and pay someone to develop the official Textmate for Windows/Linux/Whatever, and then he'll be raking in the dough. There are far, far many more developers in non-Apple platforms clamoring for his product, begging to send him a check, and he's just seeing the opportunity go by.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Henrik N</strong> &middot; <time datetime="2007-03-05T00:21:00+00:00">March 5, 2007 at 12:21 am</time></p>
      <p>Allen -&gt; Allan.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-03-05T00:43:00+00:00">March 5, 2007 at 12:43 am</time></p>
      <p>Thanks Henrik. Now fixed :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-03-05T00:45:00+00:00">March 5, 2007 at 12:45 am</time></p>
      <p>Adding to all of the above.. if it were included in OS X, it'd mean you have a kickass Rails development system totally out of the box.. and.. a better text editor than the limp TextEdit.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James</strong> &middot; <time datetime="2007-03-05T02:06:00+00:00">March 5, 2007 at 2:06 am</time></p>
      <p>Allan has hinted that he may be toying with the idea of open source.  Porting TextMate to other platforms is rather tricky.  Although, Allan wrote his own text processing API as the built-in OS X one was inadequate;  the editor does lean very heavily on the Cocoa API's.  This means, it would be a tremendous amount of work to duplicate those API's under another operating system such as Windows or Linux.  To make things more complicated, Allan is working on TextMate 2.0 which will be Leopard only as he plans on using Leopards CoreText API to greatly improve TextMate along with other Leopard only API's.  </p><p>Just because Apple ported iTunes to Windows doesn't mean it was easy. iTunes looks, internally, unlike other native Mac OS X applications.  It may very well be written in AppleScript or something else, that's similar.  There appear to be many Mac OS X libraries all compiled into iTunes.  The executable is 22MB's!  Which is huge for a single executable.  And no, it's not a Universal Binary either.  Not sure what is going on internally inside iTunes but it's certainly not a native OS X application.  It's similar to what you get if you were to compile a Python script into an EXE on Windows.  It needs to include all the Python API's that are used inside the EXE along with a virtual machine to run the Python scripts.  So iTunes is a bad example of Apple porting anything as complex as TextMate.  </p><p>Apple had a code base in the early beta days of Mac OS X 10.0 called Yellow Box which was literally the Cocoa libraries that ran under Windows NT.  This meant you could run your Mac OS X application under Windows NT/2000/XP.  i.e. cross compile them and distribute them to run on Windows.  This is how NeXTStep/OpenStep did it and the Yellow Box technology came from NeXT.</p><p>Rather then badger Apple to buy TextMate, better to badger them to update and release Yellow Box which is no longer available.  So developers will be able to write once for Mac's and distribute to Windows.  Perhaps a Red Box could be made for Linux, etc.    There was a Blue Box which became Classic (Mac OS 9.x) under emulation.</p><p>Allan likes coding on Mac OS X.  Apple has ported over the famous NeXTStep/OpenStep development environment which was many years ahead of it's time and updated it to modern standards. They were the first to offer such a rich and powerful object based development environment.  Especially the graphical GUI builder (Interface Builder). Coding in Objective-C (like Smalltalk + C) using the fantastic Cocoa libraries is a dream come true for many developers.  There is nothing else like it on any platform.  .NET w/C# doesn't come close.  Java doesn't come close. C++ is supported for those old school applications to be ported using the Carbon API's but new applications really should be written Cocoa.  You can even mix Carbon and Cocoa within your application.</p><p>With all this? Why would Allan port TextMate to a platform that doesn't have any of the Cocoa goodness that he is used to?  I don't thin Allan's in it for the money, most of us would quickly pony up the cash for 2.0 but Allan's decided it will be no charge upgrade.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hendy Irawan</strong> &middot; <time datetime="2007-03-05T03:34:00+00:00">March 5, 2007 at 3:34 am</time></p>
      <p>Wow... It's 2007 already and we still have <strong>text editor</strong> "wars"... (or war of love :-)</p><p>Had Plato already invented the first text editor, I think we'd still be having this conversation by now. :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-03-05T04:43:00+00:00">March 5, 2007 at 4:43 am</time></p>
      <p>James: Good explanations! I pretty much agree with all of your points, except the porting of Cocoa to Windows part. I think Apple owning TextMate would be a good thing as it would keep it locked to OS X (OS protectionism, basically), and I think Apple should focus on its own operating system than offer up goodies for Windows users (although iTunes and QuickTime have very strong economic reasons for those ports).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paul McCann</strong> &middot; <time datetime="2007-03-05T04:50:00+00:00">March 5, 2007 at 4:50 am</time></p>
      <p>Wow, if Allan had a dollar for every time someone had given him the helpful advice to develop TextMate for Windows (etc, etc).... well, he'd be a little better off than he already is. We even had the "throw abuse" approach a couple of months back: "how can you be so lazy as to only develop your product for one platform". And on it goes... To cut to the chase: why on Earth should he? TextMate on the Mac sells *plenty* of copies, Allan gets to develop on and for the platform he enjoys best (obviously), he's not pulled in several different directions at every turn trying to somehow synchronise functionality across wildly differing API's/capabilities/etc. The list goes on an on and on...</p><p>As far as Apple buying TextMate: please, God, no. Development then either ceases altogether ("Grapher" anyone?) or goes behind closed doors, where user input disappears into a black hole, as per iTunes. </p><p>TextMate's fine as it is, thanks very much! Here's to Allan maintaining his interest in the editor as far as releasing 2.0 (which will only run on Leopard), and nursing that version into a state of excellence. If people want the bells and whistles on other platforms then they can do the "e" thing, for example, and tap into the themes and bundles that already exist for TextMate.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James Prudente</strong> &middot; <time datetime="2007-03-05T05:19:00+00:00">March 5, 2007 at 5:19 am</time></p>
      <p><a href="http://intype.info" rel="nofollow">http://intype.info</a></p><p>These guys are going after the TextMate for windows market as well.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Thijs van der Vossen</strong> &middot; <time datetime="2007-03-05T08:11:00+00:00">March 5, 2007 at 8:11 am</time></p>
      <p>Allan is actually working _with_ the E Text Editor author to make sure the two are compatible. Please read <a href="http://macromates.com/blog/archives/2006/11/21/textmate-homage/" rel="nofollow">http://macromates.com/blog/archives/2006/11/21/textmate-homage/</a> and <a href="http://e-texteditor.com/blog/2006/textmate_on_windows" rel="nofollow">http://e-texteditor.com/blog/2006/textmate_on_windows</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Senthil Nayagam</strong> &middot; <time datetime="2007-03-05T11:26:00+00:00">March 5, 2007 at 11:26 am</time></p>
      <p>atlast I have officially shifted to e-texteditor.</p><p> I had been longing for textmate for over a year, after seeing those screencasts from DHH and others</p><p>I primarily develop on my laptop, and could not leave windows.<br>
e-texteditor was the best possible option for me, also one month trial and textmate bundle support were good reasons for me try it.</p><p>also it has cygwin support, have tested cygwin after many years, and find linux text utils(grep/tail/head/cut) very useful for log processing</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charles Roper</strong> &middot; <time datetime="2007-03-05T17:49:00+00:00">March 5, 2007 at 5:49 pm</time></p>
      <p>I've never understood why jEdit doesn't get more attention, but as far as pure text editing power goes, it does just as much, if not more than TextMate. Not only that, but it's also cross platform and free. I guess the barriers are that it looks ugly out-of-the-box (but can be very comfortable and attractive when setup right - <a href="http://www.flickr.com/photos/sxbrc_charles/308623286/" rel="nofollow">http://www.flickr.com/photos/sxbrc_charles/308623286/</a>). The main issue, though, is speed: it feels slow to load. This has been overcome to a certain degree by the fact that you can daemonize it so that it stays in memory all the time, making it as nimble as any other lightweight text editor. So jEdit remains an excellent cross-platform choice but, admittedly, that feeling of non-nativeness will always remain too hard to get over for some.</p><p>I think part of the attraction of TextMate is that it a) looks dark and sexy and exotic and b) makes the user (as seen in those now famous screencasts) look like a ninja. And we all want to be a bit more sexy and a bit more Bruce Lee now, don't we.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew</strong> &middot; <time datetime="2007-03-05T22:38:00+00:00">March 5, 2007 at 10:38 pm</time></p>
      <p>I never had the impression that Allan was out to "win big" as one commenter above suggests. I'm not sure that dominating the text editor market is really his goal. </p><p>It would be neat if Apple bought TM, I guess, but coders' text editors are a tiny tiny market. I mean, talk about a niche product with entrenched users.  How would they market it alongside Xcode? I just can't see how it would be worth it for Apple. They're probably better off giving him Apple Developers awards year after year and using TM as a great piece of public relations about developing for the Mac. </p><p>Charles wrote: "And we all want to be a bit more sexy and a bit more Bruce Lee now, don't we."</p><p>Hell yes! This is what Kathy Sierra calls "creating passionate users." It means making the user feel like they are kicking ass as they work. And, yes, wiring up custom two-letter tab completions or custom macros in TM does indeed feel pretty ninja. :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-03-06T05:01:00+00:00">March 6, 2007 at 5:01 am</time></p>
      <p>Heh, I totally forgot about XCode!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rimantas</strong> &middot; <time datetime="2007-03-06T10:08:00+00:00">March 6, 2007 at 10:08 am</time></p>
      <p>Textmate clone on windows is tricky because some nice features depend on the execution of the command line scripts - perl, php, ruby or plain old unix utils. That's<br>
why e-texteditor wants cygwin and that's why I don't want e-texteditor.</p><p>@Charles:  have you used textmate, or the only familiarity comes from screencasts?<br>
I do use jEdit now and then, but I am not by any means power user of it. It may have<br>
the power of TM once you have collected and installed numerous plugins to replicate<br>
the behavior Textmate has out of the box. No, thanks. And yes, it's ugly :(</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Thomas Aylott</strong> &middot; <time datetime="2007-03-06T12:10:00+00:00">March 6, 2007 at 12:10 pm</time></p>
      <p>If TextMate loses Allan before 3.0, it will die.</p><p>He's already made enough money to last years, and with TextMate 2.0, he's in for another win. He certainly has no need to develop it on any other platforms.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nathan Garza</strong> &middot; <time datetime="2007-03-07T17:09:00+00:00">March 7, 2007 at 5:09 pm</time></p>
      <p>The big deal with jEdit, for me, is that it is ugly.  Seriously, humans are visual beings.  The way we feel effects our productivity and motivation.  Visual stimuli effects the way we feel.  Bottom line.  No matter how powerful it is, I don't like the way jEdit makes me <em>feel</em>.  I don't feel productive.  I don't feel creative.  If you prefer, you can replace the "I don't"s above with "it doesn't"s, same difference to me.</p><p>Add that to the fact (already mentioned) that it absolutely doesn't have anything that I need out of the box (no joke there either), and that even afterwards it's dog slow... Well, for me, what's the point?</p><p>Sure I could partially beat the slowness issue by deamonizing it, but why do I want ONE MORE THING running in the background?  I don't want something that has to be always on (whether I'm using it or not) in order to get decent performance. </p><p>I suppose I can configure it to be less ugly even.  But even then, it's a question of slowness.  Slowness of configuration.  Every time I install it I have to go to all to work of remembering how to get it to work the way I want it to. </p><p>Compare that to TextMate.  Install.  Open.  Use.  That's it.  It's beautiful, easy to use intuitively (at least to me), and it's reasonably fast.  All out of the Box. No contest in my book.  Granted this is one man's opinion, and I know that.  I'm sure jEdit is wonderful, and it <em>is</em> really extensible, but... Well, you get the point.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ben Kittrell</strong> &middot; <time datetime="2007-03-07T20:42:00+00:00">March 7, 2007 at 8:42 pm</time></p>
      <p>The idea has entered my head more than once that Apple is paying Allan to not port TextMate to windows.   :)  </p><p>But as Dr. Nic said, $2000 is a lot to pay for a text editor.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Doh</strong> &middot; <time datetime="2007-03-08T05:11:00+00:00">March 8, 2007 at 5:11 am</time></p>
      <p>People would do so many thing to avoid learning VIM.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://justaddwater.dk/2007/04/28/e-texteditor-for-windows/" rel="external nofollow" class="url">justaddwater.dk</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
