---
title: 'Interesting Ruby Tidbits That Don’t Need Separate Posts #28'
date: '2009-09-09'
author: Peter Cooper
author_slug: admin
post_id: 2453
slug: interesting-ruby-tidbits-that-don’t-need-separate-posts-28-2453
url: "/interesting-ruby-tidbits-that-don’t-need-separate-posts-28-2453.html"
categories:
- compilations
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2009/09/lucky-dip-shoe-anim.gif" width="55" height="55" alt="lucky-dip-shoe-anim.gif" style="float:right; margin-bottom:12px; margin-left:12px;">Welcome to the latest in the series of random Ruby related links I've picked up over the past few weeks. It's a crazy grab-bag of links this time around! Whatever your job, interest, or fetish, there's bound to be something in here that tickles your fancy if you're a Rubyist. Enjoy!</p>
<p><i>Note: Don't forget that if you like quick-fire links like this, check out our sister site</i> <a href="http://www.rubyflow.com/"><i>RubyFlow</i></a><i>. There are usually anywhere between 3 and 15 Ruby and Rails related links each day coming from developers just like you :)</i></p>
<h3>eval Isn't Quite Pure Evil</h3>
<p>James Edward Gray II looks at <a href="http://blog.grayproductions.net/articles/eval_isnt_quite_pure_evil">a case where he used eval and got chastized for it</a>. He then notes that eval isn't necessarily always evil and that our reactions to seeing it in code might be a little quick off the mark.</p>
<h3>Sketches - Have Editor-Based Ruby Code Reloaded By IRB Automatically<img src="/assets/2009/09/sketches.png" width="116" height="55" alt="sketches.png" style="float:right; margin-bottom:12px; margin-left:12px;">
</h3>
<p><a href="http://sketches.rubyforge.org/">Sketches</a> is a Ruby tool (available as a gem - <i>gem install sketches</i>) that lets you create and edit Ruby code in your favorite text editor while having it safely reloaded in IRB whenever the code is saved/updated. If you're a bit braver, though, <a href="hijack-get-a-live-irb-prompt-for-any-existing-ruby-process-2232.html">check out Hijack</a>, which gets you a live IRB prompt for any <i>existing</i> Ruby process.</p>
<h3>Sumo - One-Off Amazon EC2 Instance Launcher<img src="/assets/2009/09/amazonec2.png" width="116" height="46" alt="amazonec2.png" style="float:right; margin-bottom:12px; margin-left:12px;">
</h3>
<p><a href="http://adam.blog.heroku.com/past/2009/8/28/sumo_oneoff_ec2_instance_lanching/">Sumo</a> (or <a href="http://github.com/adamwiggins/sumo">GitHub repo</a>) is a cute little Ruby-powered command line app to quickly launch and manage Amazon EC2 instances. As an aside, <a href="http://github.com/adamwiggins/sumo/tree/master">the code</a> provides a small and well formed example of building a command line app around Thor. (If you need something more intense, <a href="pool-party-poolparty-ruby-ec2-cloud-library-915.html">check out PoolParty</a>, which can manage whole clusters of EC2 instances for you.)</p>
<h3>On Rake</h3>
<p><a href="http://www.jbarnette.com/2009/08/27/on-rake.html">On Rake</a> is a perfectly formed blog post by John Barnette about <i><a href="http://rake.rubyforge.org/">rake</a></i> (Ruby's "make"). In it he claims most people use Rake simply as a tool to launch tasks (which is true, in my experience) but then quickly demonstrates how Rake's <i>dependency resolution</i> features can radically improve the code you use to define those tasks.</p>
<h3>FakeFS - Transparently Get A Fake Filesystem For Ruby</h3>
<p><a href="http://ozmm.org/posts/fakefs.html">FakeFS</a> is a Ruby library by GitHub extraordinaire Chris Wanstrath that transparently makes the File, Dir, and FileUtils class use an in-memory "virtual" file system. The main benefit of this is for speeding up (and simplifying) test environments.</p>
<h3>Getting Started with MacRuby</h3>
<p><a href="http://redartisan.com/2009/9/1/macruby-intro">Getting Started with MacRuby</a> is a great "walkthrough"-style blog post that explains what MacRuby is (an OS X-focused Ruby implementation), how to get it running and how to test it. This is a great guide. We've <a href="macruby-marches-onwards-1672.html">previously written about MacRuby</a> on Ruby Inside before, if you want to learn more.</p>
<h3>Ruby's Metaprogramming Toolbox</h3>
<p>Corban Brook has put together <a href="http://weare.buildingsky.net/2009/08/25/rubys-metaprogramming-toolbox">a comprehensive article on metaprogramming in Ruby</a>. The highlight is in its conclusion with the implementation of a "poor man's ActiveRecord" where he rolls an ActiveRecord-lite in less than 50 lines of code.</p>
<h3>A Native Callback Object for Ruby 1.8.6/7 (MRI) and Ruby 1.9.2</h3>
<p>The guys at MethodMissing have come up with <a href="http://blog.methodmissing.com/2009/08/22/native-mri-callback/">a clever Ruby library that provides a native callback system</a> that offers performance superior to lambdas (though not as fast as regular method dispatch). Some interesting "playing with Ruby's guts" work going on in here.</p>
<h3>P2P Using TCP &amp; Ruby</h3>
<p>Over two years ago on Ruby Inside, I demonstrated <a href="skype-style-firewall-busting-with-ruby-and-udp-399.html">how to "punch" a hole through your firewall using Ruby and UDP</a>. Now, Alex MacCaw demonstrates <a href="http://leadthinking.com/213-p2p-using-tcp-ruby">how to implement a P2P-style system in a similar way but using TCP!</a> This is an interesting tactic and works on the <i>majority</i> (though not all!) of routers. I was delighted to see Alex got the idea from <a href="http://nutss.gforge.cis.cornell.edu/pub/imc05-tcpnat.pdf">an academic paper</a> - there are some great ideas in papers you can pull across into your Ruby work (my library <a href="whatlanguage-ruby-language-detection-library-1085.html">WhatLanguage</a> was based on some ideas in a paper).</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Danny Tatom</strong> &middot; <time datetime="2009-09-09T21:53:00+00:00">September 9, 2009 at 9:53 pm</time></p>
      <p>Some neat ones in here, I really enjoyed reading "Ruby's Metaprogramming Toolbox." Keep it up, guy.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>raggi</strong> &middot; <time datetime="2009-09-10T08:35:00+00:00">September 10, 2009 at 8:35 am</time></p>
      <p>methodmissing is Lourens Naudés handle, although the callback idea was inspired (as with a few other things) by ideas we've been discussing at work. Lourens being the legend that he is went and implemented it as a native MRI extension for me :-)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
