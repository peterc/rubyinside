---
title: 'IRB: Let’s Bone Up On The Interactive Ruby Shell'
date: '2009-05-14'
author: Peter Cooper
author_slug: admin
post_id: 1771
slug: irb-lets-bone-up-on-the-interactive-ruby-shell-1771
url: "/irb-lets-bone-up-on-the-interactive-ruby-shell-1771.html"
categories:
- compilations
- elsewhere
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2009/05/irbism.png" width="94" height="99" alt="irbism.png" style="float:left; margin-right:12px; margin-bottom:12px;">The <a href="http://en.wikipedia.org/wiki/Interactive_Ruby_Shell">Interactive Ruby Shell</a>, more commonly known as IRB, is one of Ruby's most popular features, especially with new developers. You can bash out a one-liner, try a method you've just learned about, or even build a small algorithm or two without going the whole way to writing a complete program.</p>
<p>I've not posted much about IRB before and it doesn't tend to get a lot of love generally, so while I've been digging through some of the best content I can find on IRB learning all about its internals and ways to get more out of it, I thought I should share:</p>
<div style="margin-left: 1.5em">
<p><a href="http://tagaholic.me/2009/05/11/demystifying-irb-commands.html"><strong>Demystifying Irb's Commands</strong></a> - An awesome look at the hidden internals, special methods and features within IRB and the impetus for starting this post. Author Gabriel Horner looks at stuff like workspaces, subsessions, and IRB-specific loading methods.</p>
<p><a href="http://stackoverflow.com/questions/123494/whats-your-favourite-irb-trick"><strong>What's Your Favorite IRB Trick?</strong></a> - A list of community-provided IRB tricks and tips on Stack Overflow. Of particular note is the first answer that covers the basic subsession commands (jobs, fg #, and kill #). There are also suggestions for easier benchmarking, predefined data, and using Wirble (mentioned below).</p>
<p><a href="http://utilitybelt.rubyforge.org/"><strong>Utility Belt</strong></a> - A "grab-bag of tricks, tools, techniques, trifles, and toys for IRB." There's a ton of useful stuff in here for IRB power users and the feature list is longer than my arm: Amazon S3 support, "with" statement, history buffer, Pastie support, OS X clipboard support, external text editor support, auto-indentation, and more.</p>
<p><a href="http://giantrobots.thoughtbot.com/2008/12/23/script-console-tips"><strong>irb &amp; script/console tips</strong></a> - A few useful IRB tips and resources from Thoughtbot's Dan Croak. Very practical and code driven. Dan advises loading pp (pretty printer) by default from your <em>.irbrc</em> file.</p>
<p><a href="http://blog.s21g.com/articles/1284"><strong>irb_rocket: An irb plugin</strong></a> - irb_rocket is an add-on for IRB that presents the result of your expression at the <em>end of the current line</em> in a "hash rocket" style.</p>
<p><a href="http://railscasts.com/episodes/48-console-tricks"><strong>Rails Console Tricks (screencast)</strong></a> - A screencast by Ryan Bates on the Rails console (a cousin of IRB) featuring a ton of useful tips, some of which are useful to IRB users generally.</p>
<p><a href="wirble-tab-completion-and-syntax-coloring-for-irb-336.html"><strong><a title="Wirble: Tab-Completion and Syntax Coloring for irb" href="wirble-tab-completion-and-syntax-coloring-for-irb-336.html">Wirble: Tab-Completion and Syntax Coloring for irb</a></strong></a> - Wirble (<a href="http://pablotron.org/software/wirble/">homepage</a>) is a Ruby library that adds a number of features to IRB. Of particular interest is its addition of syntax coloring. Install the <em>wirble</em> gem, add a few lines to your .irbrc file, and you get colored results in the data structures coming back from your IRB commands.</p>
<p><a href="http://www.rubycentral.com/pickaxe/irb.html"><strong>IRB documentation from the old Pickaxe</strong></a> - A lengthy page about IRB from the first edition of Programming Ruby (the Pickaxe). Not very up to date but sufficient for Ruby 1.8. Covers command line options, configuration files, and some of the special variables are commands available when running IRB.</p>
<p><a href="http://tryruby.hobix.com/"><strong>Try Ruby</strong></a> - Not got Ruby installed or want to play in an IRB that's not your own? whytheluckystiff's Try Ruby is a great way to play with IRB through a Web browser. It includes an interactive tutorial, too.</p>
</div>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>IRB Enthusiast</strong> &middot; <time datetime="2009-05-14T18:08:00+00:00">May 14, 2009 at 6:08 pm</time></p>
      <p>Yeeeeah! It's time IRB got some love. It is, after all, the way most people get introduced to Ruby.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>AkitaOnRails</strong> &middot; <time datetime="2009-05-14T23:07:00+00:00">May 14, 2009 at 11:07 pm</time></p>
      <p>Try my Utility Belt fork. It has some added bits that you may like: <a href="http://github.com/akitaonrails/utility-belt/tree" rel="nofollow">http://github.com/akitaonrails/utility-belt/tree</a>.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Giles Bowkett</strong> &middot; <time datetime="2009-05-15T00:24:00+00:00">May 15, 2009 at 12:24 am</time></p>
      <p>What's funny is, I paged down to the comments area to leave a comment about Akita's Utility Belt fork myself. First comment I see is the comment I was going to make.</p><p>I've not been great about maintaining Utility Belt at all. Tim Connor also has a Utility Belt fork which I believe is superior to mine. ;-) I think the biggest improvement is that both these forks support Linux better than mine does.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>AkitaOnRails</strong> &middot; <time datetime="2009-05-15T02:48:00+00:00">May 15, 2009 at 2:48 am</time></p>
      <p>Just so people don't take it the wrong way. I just added minor bits. Giles utility belt is a great foundation to work in. I hope you have some more time to add even more :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Soleone</strong> &middot; <time datetime="2009-05-15T04:51:00+00:00">May 15, 2009 at 4:51 am</time></p>
      <p>Windows users of utility_belt or wirble need to install the gem "win32console" to get the irb coloring, or else any output will contain unevaluated color codes, which make it hard to read return values.</p><p>Just install the gem and require 'win32/console' in .irbrc. Unfortunately this causes issues when typing text anywhere but the end of the current line, but I can live with that. If anyone has a solution for this problem though I would be delighted to hear it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2009-05-21T12:23:00+00:00">May 21, 2009 at 12:23 pm</time></p>
      <p>I have really liked irb fastri before:</p><p><a href="http://eigenclass.org/hiki/irb+ri+completion" rel="nofollow">http://eigenclass.org/hiki/irb+ri+completion</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>cldwalker</strong> &middot; <time datetime="2009-06-02T23:35:00+00:00">June 2, 2009 at 11:35 pm</time></p>
      <p>Peter, glad to be an impetus for your irb explorations. I've written a second irb article in the same vein as the first which covers all of irb's configuration options: <a href="http://tagaholic.me/2009/05/29/exploring-how-to-configure-irb.html" rel="nofollow">http://tagaholic.me/2009/05/29/exploring-how-to-configure-irb.html</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
