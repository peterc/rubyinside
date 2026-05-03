---
title: 'RedCloth 4.0 Released: 40x Faster Textile Rendering'
date: '2008-07-22'
author: Peter Cooper
author_slug: admin
post_id: 962
slug: redcloth-4-released-962
url: "/redcloth-4-released-962.html"
categories:
- miscellaneous
- news
- tools
---

{{< rawhtml >}}
<p><a href="http://redcloth.org/"><img src="/assets/2008/07/redcloth.jpg" width="307" height="113" alt="redcloth.png" style="border:1px #000000 solid;"></a></p>
<p><a href="http://redcloth.org/">RedCloth</a> is a popular Ruby library for converting <a href="http://www.textism.com/tools/textile/">Textile</a>-formatted text into HTML. Initially developed by <a href="http://whytheluckystiff.net/">WhyTheLuckyStiff</a>, it's now under the guardianship of Jason Garber, who has just released version 4 (<a href="http://rubyforge.org/frs/?group_id=216&amp;release_id=24093">RubyForge</a> or <a href="http://github.com/jgarber/redcloth/tree/master">Github</a>). This is a significant update, following on from 3.0.4 which was released almost <em>three years ago</em>, and features a <a href="http://github.com/jgarber/redcloth/tree/25f3bc3b7f4a67c1bc7d5920cdfd6482540a0108/CHANGELOG">handful</a> of significant improvements and changes:</p>
<blockquote>
<ul>
<li>New SuperRedCloth (RedCloth 4.0) is a total rewrite using Ragel for the parsing.</li>
<li>Markdown support has been removed.</li>
<li>Single newlines become &lt;br&gt; tags, just as in traditional RedCloth and other Textile parsers.</li>
<li>HTML special characters are automatically escaped inside code signatures, like Textile 2. This means you can simply write @&lt;br /&gt;@ and the symbols are escaped whereas in RedCloth 3 you had to write @&amp;lt;br /&amp;gt;@ to make the code fragment readable.</li>
<li>HTML embedded in the Textile input does not often need to be escaped from Textile parsing.</li>
<li>The parser will not wrap lines that begin with a space in paragraph tags.</li>
<li>Rudimentary support for LaTeX is built in.</li>
<li>RedCloth::VERSION on a line by itself inserts the version number into the output.</li>
<li>Output (less newlines and tabs) is identical to Textile 2 except a few cases where the RedCloth way was preferable.</li>
<li>Over 500 tests prevent regression</li>
<li>It's <strong>40 times faster than the previous version.</strong>
</li>
</ul>
</blockquote>
<p>Unless fiddling with the edge version on Github interests you, you can install or update with <em>gem</em> in the usual way - <em>gem install RedCloth</em>, etc.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jonathan George</strong> &middot; <time datetime="2008-07-22T18:32:00+00:00">July 22, 2008 at 6:32 pm</time></p>
      <p>Nice!  This is definitely long overdue.</p><p>Glad to see Jason picked the ball up and ran with it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Bates</strong> &middot; <time datetime="2008-07-22T20:52:00+00:00">July 22, 2008 at 8:52 pm</time></p>
      <p>You need to camel case "RedCloth" to install it. Lowercase doesn't work.</p><p>gem install RedCloth</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jason Garber</strong> &middot; <time datetime="2008-07-22T20:52:00+00:00">July 22, 2008 at 8:52 pm</time></p>
      <p>One correction, you have to gem install RedCloth with RedCloth in CamelCase.  We've been trying to get the RubyGems developers to make gem names case-insensitive, but it doesn't seem likely to change.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-07-22T21:16:00+00:00">July 22, 2008 at 9:16 pm</time></p>
      <p>Thanks for the fix!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John</strong> &middot; <time datetime="2008-07-22T23:33:00+00:00">July 22, 2008 at 11:33 pm</time></p>
      <p>This is great about the new improvements in the new version of RedCloth.</p><p>Unfortunately, it no longer supports Markdown.  </p><p>Does anyone know an alternative library to use with Ruby for Markdown?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-07-22T23:37:00+00:00">July 22, 2008 at 11:37 pm</time></p>
      <p>John: See <a href="http://tomayko.com/writings/ruby-markdown-libraries-real-cheap-for-you-two-for-price-of-one" rel="nofollow">http://tomayko.com/writings/ruby-markdown-libraries-real-cheap-for-you-two-for-price-of-one</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Everton J. Carpes</strong> &middot; <time datetime="2008-07-23T03:39:00+00:00">July 23, 2008 at 3:39 am</time></p>
      <p>Nice... yesterday i decide: "i will change my applications to use another textile gem"!</p><p>today i found this post - great!!! just in time :D</p><p>In true... "long, long overdue"!</p><p>But "40 times faster" is a really good news!<br>
Thanks for RedCloth and for inhibit me to lose my time!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John</strong> &middot; <time datetime="2008-07-23T14:42:00+00:00">July 23, 2008 at 2:42 pm</time></p>
      <p>Peter: Thanks, the Markdown packages at that link are exactly what I was looking for.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2008-07-24T07:15:00+00:00">July 24, 2008 at 7:15 am</time></p>
      <p>@Jason Garber:</p><p>Can you point the exact version of ragel parser used? I'm trying to build a mswin32 and mingw32 gems for it and used 6.2 but it fails.</p><p>Thank you and great work (tested under linux, it not only solve lot of problems but is faster indeed!)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jason Garber</strong> &middot; <time datetime="2008-07-24T13:43:00+00:00">July 24, 2008 at 1:43 pm</time></p>
      <p>@Luis Lavena:</p><p>There was a problem with my cross-compiled win32 gems not getting picked up by RubyForge.  The file was there but it wasn't getting added to the gem index, so if you tried to install on Windows, it tried to install for the "ruby" platform, not "mswin32".  Give it another go and it should install the precompiled Windows binary.  There's no need for Ragel on Linux, either, unless you're compiling from source.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2008-07-25T00:13:00+00:00">July 25, 2008 at 12:13 am</time></p>
      <p>@Jason Garber:</p><p>Good to know, I'll like to build also the MinGW one (i386-mingw32 platform) since One-Click Installer is moving to it.</p><p>I tried to git clone your repo and found the Ragel output a bunch of errors trying to build on Windows (all the time).</p><p>Again, thanks for your time and hard work!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ericson Smith</strong> &middot; <time datetime="2008-07-27T07:39:00+00:00">July 27, 2008 at 7:39 am</time></p>
      <p>This is purely philosophical, but why the need for Textile? Seriously.</p><p>HTML is more widely known. Should not we focus on building a library that limits the HTML that someone can use, instead of getting them to learn another dialect?</p><p>This is why I stopped requiring my visitors to learn Textile in any of my projects and just did simple formatting, while allowing the simplest of HTML tags from users. The issue of formatting thus never comes up. People who want to format something invariable know a little bit of HTML. And if you make links and emails clickable, that solves most of the problem anyway.</p><p>Die RedCloth! Die.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bruce Williams</strong> &middot; <time datetime="2008-07-30T13:56:00+00:00">July 30, 2008 at 1:56 pm</time></p>
      <p>#12, Ericson:  Sounds like a nice idea, but completely unrealistic for people that have to cater to people who don't know HTML, or don't want to learn.  There's a lot of them, unfortunately. </p><p>One plus for Textile and formats like it, even in geek-circles, is the fact a block of text is a paragraph, and you can get away with writing fluidly without the need for paragraph tags.  Lists are another draw, considering the amount of markup required to make a simple list in HTML (18 additional characters for a simple one-item UL or OL).  Sometimes Textile is just more casual and easy to use, matching how people would type in plain text; saving keystrokes isn't philosophical.</p><p>Textile + HTML is my preferred approach.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ericson Smith</strong> &middot; <time datetime="2008-07-31T15:56:00+00:00">July 31, 2008 at 3:56 pm</time></p>
      <p>@bruce</p><p>Not unrealistic at all. Right now, people type naturally and you can use simple_format to deal with 90% of the use cases out there to format fluid paragraphs. No need for textile.</p><p>And, even better, there's 1,000,000 times more documentation for HTML than Textile out there as well.</p><p>Again, I don't recommend people using textile or other "variants" of HTML in their projects. I'd go so far to say its a waste of time.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
