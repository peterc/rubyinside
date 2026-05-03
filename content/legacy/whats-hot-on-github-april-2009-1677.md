---
title: What’s Hot on GitHub – April 2009
date: '2009-04-05'
author: Peter Cooper
author_slug: admin
post_id: 1677
slug: whats-hot-on-github-april-2009-1677
url: "/whats-hot-on-github-april-2009-1677.html"
categories:
- cool
- elsewhere
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2009/04/octacat.png" width="72" height="66" alt="octacat.png" style="float:left; margin-right:12px; margin-bottom:12px;"><em><strong>What's Hot on <a href="http://www.github.com">Github</a></strong></em> is a monthly(ish) post highlighting interesting GitHub-hosted Ruby-related projects that are new or updated within the past month.</p>
<p>Github has become an extremely popular place for Ruby and Rails developers to congregate in the last year, so we want to raise awareness of some of the new projects, and some of the updated ones, that we have found interesting.</p>
<h3>This month's picks:</h3>
<div style="margin-left: 1.5em">
<p><strong>Haddock (</strong><a href="http://github.com/stephencelis/haddock/tree/master"><strong>github.com/stephencelis/haddock</strong></a><strong>):</strong> A "more memorable password generator." Basically require in Haddock and use the <code>Haddock::Password</code> class to generate passwords with the length that you want. You end up with some gems like <code>ghost85.Etta</code>, <code>barse4%atlas</code> and <code>Hussitism3(sweet</code>. No, I'm not currently using any of those..</p>
<p><strong>BDoc (</strong><a href="http://github.com/manalang/bdoc/tree/master"><strong>github.com/manalang/bdoc</strong></a><strong>):</strong> A simple replacement for "gem server" allowing you to look at the documentation for your installed RubyGems. You can see a live demo <a href="http://manalang.com/bdoc/">here</a>.</p>
<p><strong>E-Text Editor (<a href="http://github.com/etexteditor/e/tree/master">github.com/etexteditor</a>):</strong> <a href="http://e-texteditor.com/">E-Text Editor</a> is a text / code editor <a href="e-texteditor-a-windows-textmate-or-why-apple-should-buy-textmate-413.html">we've mentioned before</a>. It's a Windows alternative to Textmate. Usually retailing for $34.95, the <a href="http://github.com/etexteditor/e/tree/master">source</a> is now up on Github. It's not exactly "open source" though, but you can read more about that <a href="http://e-texteditor.com/blog/2009/releasing-the-source">here</a>.</p>
<p><strong>MQ (</strong><a href="http://github.com/mdarby/mq/tree/master"><strong>github.com/mdarby/mq</strong></a><strong>):</strong> A Rails generator that generates an MVC stack that does email queueing. Includes RSpec specs.</p>
<p><strong>Proxen (</strong><a href="http://github.com/nakajima/proxen/tree/master"><strong>github.com/nakajima/proxen</strong></a><strong>):</strong> A Ruby library by Pat Nakajima that provides "easy method_missing proxying." It's like ActiveSupport's Module#delegate but for proxying. Conditional proxying is also supported.</p>
<p><strong>App_Lego (</strong><a href="http://github.com/lackac/app_lego/tree/master"><strong>github.com/lackac/app_lego</strong></a><strong>):</strong> Modularized Rails application templates (yes, using Rails 2.3's <a href="http://www.railsinside.com/tips/212-rails-templates-pumped-full-of-caffeine.html">new template features</a>). Includes templates for Haml, authentication, CouchDB, RSpec, and other portions, which can then be combined using the app_lego.rb template.</p>
<p><strong>BrowserCMS (</strong><a href="http://github.com/browsermedia/browsercms/tree/master"><strong>github.com/browsermedia/browsercms</strong></a><strong>):</strong> A content management system for Rails. It's a pretty big piece of work so if you want more of a guide to it, <a href="http://aac2009.confreaks.com/07-feb-2009-10-00-browsercms-patrick-peak-and-paul-barry.html">check out this presentation</a> by its creators at acts_as_conference 2009.</p>
<p><strong>RSmaz (</strong><a href="http://github.com/peterc/rsmaz/tree/master"><strong>github.com/peterc/rsmaz</strong></a><strong>):</strong> Yes, yes, I'm posting something of my own - sorry! - mostly because it doesn't deserve a separate post of its own. It's a (pure) Ruby port of <a href="http://github.com/antirez/smaz/tree/master">smaz</a>, a C library that compresses "very small strings" efficiently. Naturally, it's a lot slower in pure Ruby but it works. Comes with some basic specs and tested on Ruby 1.8.6, 1.9.1 and JRuby. If you want to compress small strings (think Twitter messages) for some reason, check it out.</p>
</div>
<p><em>Note: The What's Hot on GitHub series is usually presented by</em> <a href="http://zachinglis.com/"><em>Zach Inglis</em></a> <em>but I'm making a guest appearance this time ;-)</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Julien</strong> &middot; <time datetime="2009-04-05T23:42:00+00:00">April 5, 2009 at 11:42 pm</time></p>
      <p>You should also check Babylon :) <a href="http://github.com/julien51/babylon/tree/master" rel="nofollow">http://github.com/julien51/babylon/tree/master</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tj</strong> &middot; <time datetime="2009-04-06T01:03:00+00:00">April 6, 2009 at 1:03 am</time></p>
      <p>Or commander :) its becoming quite popular <a href="http://github.com/visionmedia/commander/tree/master" rel="nofollow">http://github.com/visionmedia/commander/tree/master</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tj</strong> &middot; <time datetime="2009-04-06T01:06:00+00:00">April 6, 2009 at 1:06 am</time></p>
      <p>Oh and Proxen is a cool idea but the "blank slate" functionality wont really work as-is ... when methods are added after they will still not be proxied since its not a proper blank slate implementation</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pat Nakajima</strong> &middot; <time datetime="2009-04-06T02:15:00+00:00">April 6, 2009 at 2:15 am</time></p>
      <p>Tj,</p><p>You're right about Proxen's blank slate implementation. If I get a chance soon, I'll fix it, otherwise, patches are welcome :)</p><p>Pat</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jesse Newland</strong> &middot; <time datetime="2009-04-06T13:25:00+00:00">April 6, 2009 at 1:25 pm</time></p>
      <p>Check out Moonshine too: released this past month, it's a great tool for automating deployment of Rails applications to Ubuntu servers.</p><p><a href="http://github.com/railsmachine/moonshine" rel="nofollow">http://github.com/railsmachine/moonshine</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charles Roper</strong> &middot; <time datetime="2009-04-08T11:59:00+00:00">April 8, 2009 at 11:59 am</time></p>
      <p>Note, that E Text Editor will also be available on Linux (soon) and will be free. From the "Releasing the Source" article:</p><p>"There has been many questions about whether the release of the source would make it possible to build a Linux version. The answer is yes. The source does build under Linux, it just needs a Linux version of the ecore library which will be released shortly.</p><p>The editor could not have been build without the support of a lot of open source projects (most notably wxWidgets). So to give back, the Linux version will be totally free (as in beer)."</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-04-08T12:05:00+00:00">April 8, 2009 at 12:05 pm</time></p>
      <p>Good news, but the term "totally free" isn't typically used to mean free as in beer in this environment. "Totally" would imply free as in speech too.</p><p>However, the licence used is a BSD license with the registration portion maintained.. so if registration isn't necessary (since it's gratis) surely that means the Linux version is entirely BSD? But.. if that's true, then there's nothing to stop that code being used to release a free Windows version too. (Unless, of course, it's still necessary to register.)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charles Roper</strong> &middot; <time datetime="2009-04-08T12:42:00+00:00">April 8, 2009 at 12:42 pm</time></p>
      <p>Yeah, English isn't Alexander's native tongue, so we can probably forgive the subtle wording issues there. :)</p><p>As I understand it, the licence is the BSD licence with an extra clause:</p><p>* Any redistribution, in whole or in part, must retain full licensing functionality, without any attempt to change, obscure or in other ways circumvent its intent.</p><p>The "licensing functionality" is the "ecore" stuff (have a look in the repo - the Linux components are .so files). It breaks the terms of the licence if this pre-compiled stuff is removed so, no, in terms of licensing you can't release a completely free version.</p><p>Of course, there's nothing to stop bad people from removing the licensing and releasing illegal versions, but that's something that's just not worth expending the effort trying to fight these days.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hubert Łępicki</strong> &middot; <time datetime="2009-04-09T22:34:00+00:00">April 9, 2009 at 10:34 pm</time></p>
      <p>Ugh, that's a lot of restrictions for a text editor. Get a Vim. Or Emacs. Or Netbeans (as a full IDE+text editor) and forget about "E Text Editor".</p><p>Createors of this monster won't ever:<br>
- be as famous as RMS (creator of Emacs)<br>
- be as rich as... well Bill Gates, creator of Notepad :P<br>
- be such rock stars as *** (noo, I don't believe he ever wrote a text editor, but who cares).</p><p>Doomed to die, E Text Editor won't get my interest until it's truly Free Software, sorry guys.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charles Roper</strong> &middot; <time datetime="2009-04-10T12:25:00+00:00">April 10, 2009 at 12:25 pm</time></p>
      <p>It's not a problem if you're not interested; there are plenty of people who are.</p><p>I don't believe Alexander is interested in being famous, or as rich as Bill Gates, or a rock star. He's just trying something new. I believe people used to say Open Source was a crazy idea and that it would never survive as a movement. New ideas are definitely something to be encouraged.</p><p>It's unlikely to die easily as it's already a very successful product.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brandon</strong> &middot; <time datetime="2009-04-21T19:19:00+00:00">April 21, 2009 at 7:19 pm</time></p>
      <p>Hubert your reasons for dismissing E Text Editor are narrow-minded and your attack of the software as a "monster" is exceptionally rude.</p><p>You quite clearly have not given the editor a careful and thoughtful examination.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
