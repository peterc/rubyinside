---
title: jEdit – Now A Solid, Cross Platform Ruby IDE Too
date: '2006-11-28'
author: Peter Cooper
author_slug: admin
post_id: 311
slug: jedit-now-a-solid-cross-platform-ruby-ide-too-311
url: "/jedit-now-a-solid-cross-platform-ruby-ide-too-311.html"
categories:
- cool
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2006/11/jedit.png" height="202" width="264" border="1" hspace="4" vspace="4" alt="Jedit"></p>
<p>Jim Morris declares that <a href="http://www.jedit.org/">jEdit</a> could be "<a href="http://blog.wolfman.com/articles/2006/11/21/jedit-textmate-for-the-rest-of-us">Textmate for the rest of us</a>".  jEdit will be familiar to many developers as a language agnostic IDE created with Java (though significantly less bulky than Eclipse!), but even I was surprised to hear this:</p>
<blockquote><p>Yes JEdit actually has intellisense-like completion for Ruby. A previous blog entry of mine explained how I tried Komodo to get this, but it was not very good, however the JEdit version found in the latest RubyPlugin, works pretty well, I think it uses parsing from the JRuby project, so no surprise it works.</p></blockquote>
<p>Morris <a href="http://blog.wolfman.com/articles/2006/11/21/jedit-textmate-for-the-rest-of-us">continues to explain</a> how he has developed macros for jEdit to replicate numerous TextMate features, such as expanding # to #{} when typing within a string and points to other macros to get a TextMate-like experience for free.</p>
<p>Quickly following up on that bumper post, just a few days ago Morris released <a href="http://blog.wolfman.com/articles/2006/11/24/jedit-ruby-rails-snippets-or-superabbrevs">a large collection of Ruby "Snippets"</a> that you can use easily from within jEdit. Sterling work, and yet another great option for Ruby developers looking for an IDE.</p>
<p><em>(Thanks to Charles Roper for the lead)</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Scott Becker</strong> &middot; <time datetime="2006-11-28T02:45:00+00:00">November 28, 2006 at 2:45 am</time></p>
      <p>Awesome. A little while back I created a bunch of Rails "Snippets' for jEdit / SuperAbbrevs as well.  You can still find them here: <a href="http://synthesis.sbecker.net/articles/2006/03/20/jedit-snippets-for-ruby-on-rails" rel="nofollow">http://synthesis.sbecker.net/articles/2006/03/20/jedit-snippets-for-ruby-on-rails</a></p><p>I've since defected to the Mac / Textmate world and no longer use them, but they should be handy for anyone doing Rails development with jEdit - the best editor besides Textmate, in my opinon.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stephan Tual</strong> &middot; <time datetime="2006-11-28T02:56:00+00:00">November 28, 2006 at 2:56 am</time></p>
      <p>RadRails does the trick for me, but I must admit I've always been jealous of the intellisense features in Textmate. I reckon it's a ploy to get us all buying Macbooks :D</p>
    </li>
      <li>
      <p class="comment-meta"><strong>jinah adam</strong> &middot; <time datetime="2006-11-28T06:21:00+00:00">November 28, 2006 at 6:21 am</time></p>
      <p>exactly what i was looking for.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charles Roper</strong> &middot; <time datetime="2006-11-28T12:26:00+00:00">November 28, 2006 at 12:26 pm</time></p>
      <p>jEdit is really becoming nicely mature for Ruby and Rails development now. A quick Google for "jedit rails" or "jedit ruby" will reveal lots of blog entries discussing jEdit as a Ruby/Rails editor. The many varied an excellent plugins, and the power of its Beanshell (essentially a script version of Java) scripting make it feel a bit like the Firefox of editors.</p><p>In the spirit of sharing stuff for jEdit, a couple of macros I've written for the excellent Cheat RubyGem can be found here:</p><p><a href="http://homepages.nildram.co.uk/~charlesr/jedit/cheat_macros.zip" rel="nofollow">http://homepages.nildram.co.uk/~charlesr/jedit/cheat_macros.zip</a></p><p>And the dark TextMate-esque colour scheme I use can be downloaded here:</p><p><a href="http://homepages.nildram.co.uk/~charlesr/jedit/DobDark.zip" rel="nofollow">http://homepages.nildram.co.uk/~charlesr/jedit/DobDark.zip</a></p><p>Drop the macros into your .jedit/macros directory and the colour scheme file into your .jedit/schemes directory (install the Editor Scheme plugin first).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alexander Lomakin</strong> &middot; <time datetime="2006-11-28T12:57:00+00:00">November 28, 2006 at 12:57 pm</time></p>
      <p>I think that better way to edit code of Ruby on Rails applications is to use Radrails.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charles Roper</strong> &middot; <time datetime="2006-11-28T13:46:00+00:00">November 28, 2006 at 1:46 pm</time></p>
      <p>I've uploaded a screenshot of my jEdit config as an example of what jEdit can look like when fully kitted out for editing Ruby (and Rails).</p><p><a href="http://www.flickr.com/photos/77224640@N00/308623286/" rel="nofollow">http://www.flickr.com/photos/77224640@N00/308623286/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Saimon Moore</strong> &middot; <time datetime="2006-11-28T18:10:00+00:00">November 28, 2006 at 6:10 pm</time></p>
      <p>Jim's article is great. I wrote  a similar article with I think is complementary and useful for anyone interested in jedit.</p><p><a href="http://saimonmoore.net/2006/1/24/jedit-for-ruby-rails-development" rel="nofollow">http://saimonmoore.net/2006/1/24/jedit-for-ruby-rails-development</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jim Morris</strong> &middot; <time datetime="2006-11-28T20:11:00+00:00">November 28, 2006 at 8:11 pm</time></p>
      <p>Thank you for the nice words, but I have to say I stood on the shoulders of giants to get there :) Most of what I did was heavily based on previous authors works, and blogs. So I have to thank everyone who has contributed to JEdit to make it a good tool for Ruby/Rails development. The snippets I added were extracted from the actual Textmate snippets bundles by a script written by the VIM folks to do the same thing, then another script written by myself to convert to SuperAbbrevs format, I'm hoping this will allow me to keep them in sync with Textmate, although I have yet to figure out how to convert the intelligent snippets from textmate format to SuperAbbrevs format. I also have tried to contact the SuperAbbrevs author with a few suggestions to make that job easier, but his email at sourceforge is bouncing.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gavin</strong> &middot; <time datetime="2006-11-29T15:26:00+00:00">November 29, 2006 at 3:26 pm</time></p>
      <p>SuperAbbrevs author: I think I met him on IRC the other day... ask around in #jedit on irc.freenode.org.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>piggybox</strong> &middot; <time datetime="2006-12-01T05:12:00+00:00">December 1, 2006 at 5:12 am</time></p>
      <p>I used to use jEdit for Rails development in the early time. I even made a color theme to mimic Textmate exactly. Now I use Vim, Rails plugin for Vim just rocks. jEdit is a bit slow on longer file, and pretty slow when auto-completing since it will search rdoc at the same time. jEdit also lacks many Rails support comparing to Vim Rails plugin and I couldn't find a SVN plugin for jEdit. But these things are OK. What I hate is the moment when jEdit  stops responding and hard driver keeps making noise, maybe my Thinkpad t42 is way too slow...</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
