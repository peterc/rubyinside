---
title: 'Interesting Ruby Tidbits That Don’t Need Separate Posts #20'
date: '2008-03-28'
author: Peter Cooper
author_slug: admin
post_id: 829
slug: interesting-ruby-tidbits-20-829
url: "/interesting-ruby-tidbits-20-829.html"
categories:
- compilations
- miscellaneous
- ruby-tricks
- tools
---

{{< rawhtml >}}
<p><big><strong>Ruby 1.9 Coming To Symbian OS</strong></big></p>
<p>David Wood <a href="http://nseries.com/index.html#l=workshop,articles,408">talks about the development of a port of Ruby 1.9 for Symbian OS</a> (as used in many portable devices). The port includes TCP/IP and filesystem access, although GUI-level features are expected to be implemented by third party developers if the interest is there. An initial release is scheduled for April 2008. <span style="font-style: italic;">(Thanks to Jose Marinez for the lead.)</span></p>
<p><big><strong>Rubyizumi - Open Source Ruby-Powered RMTP Server</strong></big></p>
<p>The official site says it best: "<span style="font-style: italic;"><a href="http://code.google.com/p/rubyizumi/">RubyIZUMI</a> is an open source RTMP Server for Flash Video/Audio Streaming. It is written in (Pure) Ruby and it supports to broadcast MP4(H.264 + AAC)."</span></p>
<p><big><strong>Ruby Inside in Indonesian!</strong></big></p>
<p>The <a href="http://www.ruby-lang.org/id/">Indonesian version of the official Ruby homepage</a> is now live, and features translations of Ruby Inside posts! If anyone else is interested in doing the same for their own language, feel free. Good work guys.</p>
<p><big><strong>Ruby-Processing Continues to Evolve</strong></big></p>
<p><img src="/assets/2008/03/worm.jpg" width="226" height="224" alt="worm.png" style="border:1px #000000 solid;"></p>
<p>Just a month ago I posted "<a href="using-the-processing-graphics-system-from-ruby-780.html">Using the Processing Graphics System for Ruby</a>" and I've had news that thanks to the interest produced by that post, the <a href="http://the-shoebox.org/apps/44/">Ruby-Processing</a> project is progressing by leaps and bounds. Jeremy Ashkenas writes:</p>
<blockquote>
<p>The cross-platform issues were hammered out in short order, support for native libraries was added (so now you can use Ruby to write OpenGL visualizations), fullscreen support has been added, and now, today, there's a new script to export your sketch to an applet. So you can now check out Ruby-Processing sketches in your browser without having to download a thing.</p>
<p>Exhibit A: <a href="http://fiercefrontiers.com/applets/jwishy/">The WishyWorm demo</a>. Click to toggle translucent backgrounds.</p>
<p>Exhibit B: <a href="http://fiercefrontiers.com/applets/contextual_tree/">The Contextual Tree</a>. This one shows off Ruby metaprogramming — it uses a context-free drawing DSL that I've been working on. (Which isn't quite ready for prime time, and so will bork out on you now and again.) Click to generate new trees.</p>
<p>Exhibits C, D, and E: I've also exported the <a href="http://fiercefrontiers.com/applets/tree/">other</a> <a href="http://fiercefrontiers.com/applets/circle_collision/">three</a> <a href="http://fiercefrontiers.com/applets/reflection/">demos</a> from the Ruby-Processing download.</p>
</blockquote>
<p>This is great news for those who want to play with Ruby, generate graphics, and share the results on the Web.</p>
<p><big><strong>Sun and University of Tokyo Developing Multiple Virtual Machine Environment for Ruby and JRuby</strong></big></p>
<p>Sun and the University of Tokyo <a href="http://www.sun.com/aboutsun/pr/2008-02/sunflash.20080227.5.xml">have announced</a> that they're going to work on developing a "multiple virtual machine environment" for both Ruby and JRuby, enabling multiple programs to run at the same time within the same process. <a href="http://www.sun.com/aboutsun/pr/2008-02/sunflash.20080227.5.xml">The press release</a> is a month old but skipped my attention as I haven't found any significant mentions of it anywhere else. Verbatim:</p>
<blockquote>
<p>A group led by Professor Ikuo Takeuchi at the Graduate School of Information Science and Technology, the University of Tokyo will collaborate with Sun's Tim Bray (Director of Web Technologies) and the members of the JRuby team to implement a multiple virtual machine (MVM) environment on both Ruby and JRuby. The MVM environment is expected to make Ruby programs run more efficiently than was previously possible. The results of the research are scheduled to be open sourced via the broader community of Ruby developers, which could inspire further innovations.</p>
<p>Previously, running more than one application simultaneously on Ruby required multiple interpreters, leading to excessive memory consumption. The proposed MVM environment could generate multiple VM instances on a single interpreter, allowing applications to run more efficiently. The collaborative research aims to clarify such technical issues as the definition of common interfaces for using MVM, parallelization of VM instances and memory sharing, and then to implement technologies that can be used on Ruby and JRuby. While Ruby has already been widely in use in commercial and other environments, the research on MVM will further enhance the performance and utility of Ruby.</p>
<p>The collaborative research is scheduled to continue until the end of September 2009. For the first year, Sun will contribute funding to the research. In addition to the principal researchers from Sun's JRuby team and Professor Takeuchi's group, various other researchers and programmers will be invited to join in this research.</p>
</blockquote>
<p>I suspect Rubinius will be a production-ready option by September 2009, but it'll be interesting to see what Sun and the University of Tokyo come up with.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>murphee (Werner Schuster)</strong> &middot; <time datetime="2008-03-28T23:27:00+00:00">March 28, 2008 at 11:27 pm</time></p>
      <p>@MVM:<br>
We did story on the Ruby MVM topic over at InfoQ:<br>
<a href="http://www.infoq.com/news/2008/02/ruby-mvm-research" rel="nofollow">http://www.infoq.com/news/2008/02/ruby-mvm-research</a></p><p>Rubinius also added MVM support:<br>
<a href="http://www.infoq.com/news/2008/01/rubinius-multi-vm" rel="nofollow">http://www.infoq.com/news/2008/01/rubinius-multi-vm</a></p><p>I guess the research project is mostly about the API and how to communicate between VMs. Rubinius' implementation uses message passing (copying) between VMs for communications - each VM is a native (OS) thread.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Justin</strong> &middot; <time datetime="2008-03-29T00:00:00+00:00">March 29, 2008 at 12:00 am</time></p>
      <p>Yeah, I was going to say... isn't that what Rubinus is doing already?</p><p>Granted, its never bad to have others working on the same tech.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>SoftMind</strong> &middot; <time datetime="2008-03-29T05:19:00+00:00">March 29, 2008 at 5:19 am</time></p>
      <p>Hi,</p><p>You mean to say that Rubinius will not be ready till september 2009.</p><p>Is this Rubunius project going dead slow...?</p><p>Thanks</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alan Brown</strong> &middot; <time datetime="2008-04-04T09:15:00+00:00">April 4, 2008 at 9:15 am</time></p>
      <p>How about calling these posts "Posts  which don't need to be a specific size to be enjoyed and do  not need to be grouped with other such posts, especially when they get so big one cannot understand why they would be thought of a small"?</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
