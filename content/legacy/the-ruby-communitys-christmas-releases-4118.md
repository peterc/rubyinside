---
title: The Ruby Community’s Christmas Releases
date: '2010-12-27'
author: Peter Cooper
author_slug: admin
post_id: 4118
slug: the-ruby-communitys-christmas-releases-4118
url: "/the-ruby-communitys-christmas-releases-4118.html"
categories:
- news
---

{{< rawhtml >}}
<p><img src="/assets/2010/12/bauble.png" width="58" height="60" alt="bauble.png" style="float:left; margin-right:12px; margin-bottom:12px;">Christmas is a special time for Rubyists and not only for those of us taking the opportunity to get drunk and eat a lot. December 25 has been a popular release date since Ruby 1.0 was released on December 25, 1996 and several developers were preparing releases of their libraries and Ruby implementations this year too. So what December 25, 2010 bring?</p>
<h3>Ruby 1.8.7 patchlevel 330</h3>
<p>At 9am GMT on Christmas Day, Urabe Shyouhei posted <a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/375963">the release announcement</a> for the latest patchlevel version of Ruby 1.8.7 to the <a href="http://blade.nagaokaut.ac.jp/ruby/ruby-talk/index.shtml">ruby-talk</a> mailing list:</p>
<blockquote class="stylized"><p>If I were Takoyaki Mask I would have written a prose but sadly I am not, so let me tell in brief. Here you are the Ruby 1.8.7's most recent update. Mainly bugfixes.</p></blockquote>
<p><cite>Urabe Shyouhei</cite></p>
<p>Intriguingly, he also noted that Ruby has changed license recently and this is the first release since the switch:</p>
<blockquote class="stylized"><p>It is worth noting that, though Ruby project experienced license change recently (from GPLv2 to 2-clause BSDL) and this is the first time since then to release something, that change do not reach to already-released versions like 1.8.7, matz said to us. So you do not have to worry about it. If you are already using 1.8.7, you can continue using it.</p></blockquote>
<p><cite>Urabe Shyouhei</cite></p>
<h3>Ruby 1.9.2 patchlevel 136</h3>
<p>The latest version of the production-ready Ruby 1.9.2 <a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/375964">was announced</a> by Yuki (Yugui) Sonoda who notes it fixes "many bugs" found in 1.9.2-p0. The <a href="http://svn.ruby-lang.org/repos/ruby/tags/v1_9_2_136/ChangeLog">changelog</a> shows a lot of small "niggly" bugs rather than any showstoppers so this release is just a spit and polish of an already fine implementation.</p>
<h3>RubyInstaller Releases for Windows</h3>
<p><a href="http://rubyinstaller.org/">RubyInstaller</a> bills itself as "the easy way to install Ruby on Windows" and it's certainly what I'd advise you use if you're on that platform. It's primarily maintained by Luis Lavena. Luis made <a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/375990">the</a> <a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/375991">announcements</a> of <i>RubyInstaller 1.8.7-p330</i> and <i>RubyInstaller 1.9.2-p136</i> packages two days after Christmas, but since they tie so directly to the previous items, it only seemed fair to give him two days to prepare them ;-)</p>
<p>Separate to the general improvements in 1.8.7-p330 and 1.9.2-p136, Luis also notes that RubyInstaller is now based around an updated compiler toolchain (GCC 4.5.1) and there are now "friendlier Gem installation error messages" for those gems that require compilation.</p>
<h3>posix_mq 0.6.0 - POSIX message queues with new Rubinius support</h3>
<p>Eric Wong <a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/375961">announced</a> <a href="http://bogomips.org/ruby_posix_mq/">posix_mq 0.6.0</a>, an update of a library that makes it easy to use POSIX-compliant message queues from your Ruby apps. The key news with this update is all new Rubinius support.</p>
<h3>graph 2.0.0 - A super hash that outputs in Graphviz dot format</h3>
<p>Ryan Davis (a.k.a. <i>zenspider</i>) <a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/375957">announced</a> <a href="https://github.com/seattlerb/graph">graph 2.0.0</a> - a library to work with "graphs" which he describes as <i>"a type of hash that outputs in</i> <a href="http://www.graphviz.org/"><i>graphviz's</i></a> <i>dot format."</i> The big news for 2.0.0 is that it's a total rewrite without backwards compatibility but that it's now 147.3% more awesome and no longer a Hash sublcass.</p>
<p>OS X only tip: Want to give <i>graph</i> a quick try? <code>gem install graph</code>, <code>brew install graphviz</code>, copy and paste the example from GitHub, run it, then <code>open simple_example.png</code>. Tada - you've created a basic graph!</p>
<h3>Hackety Hack 1.0 - _why's Baby All Grown Up</h3>
<p>Despite losing <a href="why-the-lucky-stiff-is-missing-2278.html">Why The Lucky Stiff</a> over a year ago, Why's Shoes and <a href="http://hackety-hack.com/">Hackety Hack</a> projects have lived on under the care of <a href="http://steveklabnik.com/">Steve Klabnik</a> (amongst others). I'm going to write a separate, deeper post on this but it deserves to be in the list since Steve pushed out Hackety Hack 1.0 on Christmas Day along with <a href="http://hackety-hack.com/">an all-new Hackety Hack homepage</a>.</p>
<h3>Sinatra 1.1.1</h3>
<p>As noted by people in the comments, <a href="http://www.sinatrarb.com/">Sinatra</a> also had an update on Christmas Day, to <a href="http://groups.google.com/group/sinatrarb/browse_thread/thread/bc70273bf9b4c843/f79c7ac6f8c5a468?hide_quotes=no">version 1.1.1.</a> An incomplete but "rather stable" prerelease of Sinatra 1.2.0 also went out - it can be installed with <code>gem install sinatra --pre</code></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Konstantin Haase</strong> &middot; <time datetime="2010-12-27T15:57:00+00:00">December 27, 2010 at 3:57 pm</time></p>
      <p>Sinatra releases missing.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-27T17:15:00+00:00">December 27, 2010 at 5:15 pm</time></p>
      <p>I seem to miss a lot of Sinatra news. What's the best non-Twitter way of keeping up with it? (I use Twitter but don't read old entries.) I didn't see anything on RubyFlow, Reddit, ruby-talk (though I rarely monitor that), or even <a href="http://coder.io/tag/sinatra" rel="nofollow">Coder.io's Sinatra tag</a> (which monitors lots of feeds and social bookmarking systems).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Francisco Cabrita</strong> &middot; <time datetime="2010-12-27T17:27:00+00:00">December 27, 2010 at 5:27 pm</time></p>
      <p>Yep, Sinatra is missing here.</p><p><a href="http://groups.google.com/group/sinatrarb/browse_thread/thread/bc70273bf9b4c843/f79c7ac6f8c5a468?hide_quotes=no" rel="nofollow">http://groups.google.com/group/sinatrarb/browse_thread/thread/bc70273bf9b4c843/f79c7ac6f8c5a468?hide_quotes=no</a></p><p><a href="https://github.com/sinatra/sinatra/blob/master/CHANGES" rel="nofollow">https://github.com/sinatra/sinatra/blob/master/CHANGES</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-27T17:42:00+00:00">December 27, 2010 at 5:42 pm</time></p>
      <p>FWIW, I know at least several outlets use RubyFlow as a source of news now (including the main podcasts), so that's always a good place to start. Things spread from there pretty well.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris Lerum</strong> &middot; <time datetime="2010-12-27T18:47:00+00:00">December 27, 2010 at 6:47 pm</time></p>
      <p>wait... Yuki (Yugui) Sonoda is not a girl?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Priit Tamboom</strong> &middot; <time datetime="2010-12-27T23:34:00+00:00">December 27, 2010 at 11:34 pm</time></p>
      <p>Chris Lerum: Yeah I know, I was chatting a long time with Japanese at LRUG evening until they asked why I refer to Yuki as "her"? I was like... what? Anyhow, what an embarrassment from my side, I was speechless and could not believe I didn't know his real gender ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-28T00:47:00+00:00">December 28, 2010 at 12:47 am</time></p>
      <p>I've made it non gender specific as I've had a direct message on Twitter saying that Yugui <em>is</em> female. This seems a reasonable compromise until it is certain either way.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Lukas Oberhuber</strong> &middot; <time datetime="2010-12-28T14:18:00+00:00">December 28, 2010 at 2:18 pm</time></p>
      <p>Here's a link to a picture. Draw your own conclusions! :)<br>
<a href="http://www.bovensiepen.net/rubykaigi2009/images/prekaigi01.jpg.html" rel="nofollow">http://www.bovensiepen.net/rubykaigi2009/images/prekaigi01.jpg.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-28T15:19:00+00:00">December 28, 2010 at 3:19 pm</time></p>
      <p>Thanks Lukas.</p><p>OK, let's draw a line under this now ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="happy-18th-birthday-ruby-4416.html" rel="external nofollow" class="url">Happy 18th Birthday, Ruby!</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
