---
title: 'Textpow + Ultraviolet: TextMate Powered Syntax Highlighting for Everyone!'
date: '2007-06-06'
author: Peter Cooper
author_slug: admin
post_id: 516
slug: textpow-ultraviolet-textmate-powered-syntax-highlighting-for-everyone-516
url: "/textpow-ultraviolet-textmate-powered-syntax-highlighting-for-everyone-516.html"
categories:
- cool
- elsewhere
- ruby-tricks
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2007/06/textpow.jpg" height="64" width="203" border="1" hspace="4" vspace="4" alt="Textpow"> <img src="/assets/2007/06/ultraviolet.jpg" height="64" width="203" border="1" hspace="4" vspace="4" alt="Ultraviolet"></p>
<p><a href="http://textpow.rubyforge.org/">Textpow</a> and <a href="http://ultraviolet.rubyforge.org/">Ultraviolet</a> are a pair of interesting, new(ish) Ruby libraries that co-operate together to parse <a href="http://macromates.com/">TextMate</a> bundles and perform syntax highlighting. Textpow is a library that parses and processes the TextMate bundles (special files included with the TextMate text editor that specify how different types of plain text content should be delimited and colored). Ultraviolet then uses Textpow and performs syntax highlighting either as a standalone application or as a Ruby library.</p>
<p>Currently, Textpow can process syntax (tmLanguage and tmSyntax) and theme (tmTheme) files.. and you can obtain these from the free trial download of TextMate if you don't have them already (although, I imagine, non OS X users might be able to find other TextMate bundles and themes elsewhere, such as the <a href="http://encytemedia.com/blog/articles/2006/01/03/textmate-vibrant-ink-theme-and-prototype-bundle">Vibrant Ink</a> theme downloadable from <a href="http://yehudakatz.com/2007/05/26/vibrant-ink-theme-for-textmate/">here</a>).</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Thomas Aylott</strong> &middot; <time datetime="2007-06-07T01:24:00+00:00">June 7, 2007 at 1:24 am</time></p>
      <p>Too awesome!</p><p>Here are some handle links that could help</p><p>Official TextMate SVN Repo themes:<br>
<a href="http://macromates.com/svn/Bundles/trunk/Themes/" rel="nofollow">http://macromates.com/svn/Bundles/trunk/Themes/</a></p><p>UnOfficial User SUbmitted Themes<br>
<a href="http://macromates.com/wiki/Themes/UserSubmittedThemes" rel="nofollow">http://macromates.com/wiki/Themes/UserSubmittedThemes</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Thomas Aylott</strong> &middot; <time datetime="2007-06-07T01:27:00+00:00">June 7, 2007 at 1:27 am</time></p>
      <p>oh, please note: TextMate themes can't be expressed in HTML. Themes like Brilliance Black (by me) will look like total carp in HTML but still be way totally awesome in TextMate.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael Donaghy</strong> &middot; <time datetime="2007-06-07T02:54:00+00:00">June 7, 2007 at 2:54 am</time></p>
      <p>So , does this mean that us poor windows users still have some hope of finally one day achieving the greatness of (something like) textmate</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Allen</strong> &middot; <time datetime="2007-06-07T04:02:00+00:00">June 7, 2007 at 4:02 am</time></p>
      <p>Ooh ! OoOoOH! Awesome!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charles Roper</strong> &middot; <time datetime="2007-06-07T15:36:00+00:00">June 7, 2007 at 3:36 pm</time></p>
      <p>For Windows users - there are a few of us still out there ;) - you can theoretically (I haven't tried it yet) use E-TextEditor bundles/themes which are TextMate compatible.</p><p><a href="http://www.e-texteditor.com/" rel="nofollow">http://www.e-texteditor.com/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeremy McAnally</strong> &middot; <time datetime="2007-06-07T16:27:00+00:00">June 7, 2007 at 4:27 pm</time></p>
      <p>Those libraries are stinkin' cool!  Thanks for pointing them out, Peter.  </p><p>I whipped up a Rails plugin that exposes Ultraviolet to Rails views through some convenience methods.  You can grab it from SVN at <a href="http://code.jeremymcanally.com/radiograph/" rel="nofollow">http://code.jeremymcanally.com/radiograph/</a> or it's in the plugin index at <a href="http://agilewebdevelopment.com/plugins/radiograph" rel="nofollow">http://agilewebdevelopment.com/plugins/radiograph</a> .</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dizan Vasquez</strong> &middot; <time datetime="2007-06-18T17:13:00+00:00">June 18, 2007 at 5:13 pm</time></p>
      <p>Hello, I am ultraviolet's developer. Thanks for the post! please, take a look to the latest version, which provides better rendering of the brilliance themes (it tries to emulate alpha blending) and and includes latex rendering (still in alpha, though).</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
