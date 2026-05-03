---
title: How To Start Playing With Ruby 1.9 Right Now!
date: '2007-11-27'
author: Peter Cooper
author_slug: admin
post_id: 661
slug: how-to-start-playing-with-ruby-19-right-now-661
url: "/how-to-start-playing-with-ruby-19-right-now-661.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2007/11/ruby-logo.jpg" width="145" height="153"></p>
<p>Ruby 1.9 is almost upon us! With an expected release date around this Christmas, it won't be long until you can start to play with Ruby 1.9 and enjoy some of the much-hailed <a href="http://on-ruby.blogspot.com/2007/04/some-real-world-performance-notes-on.html">performance increases</a> (not to mention <a href="http://eigenclass.org/hiki.rb?Changes+in+Ruby+1.9">features</a>).</p>
<p>"But I want it now!" you say. Well, as an open source project with an active <a href="http://www.ruby-lang.org/en/community/ruby-core/">ruby-core community</a> working on a public code repository, it's totally possible to get yourself a copy of Ruby 1.9 and begin playing with it today. You can't expect to run production code on it and you shouldn't <span style="font-style: italic;">expect</span> any code to be rock solid, but with the release date such a short time away, you might find it feels "close enough" now for you to really get knee-deep in the new features, and you know how great it'll be to pull out some great new techniques later on when the rest of your co-workers are still upgrading..</p>
<p>I've just exported the latest version of Ruby 1.9 from the ruby-core trunk. If you have SVN and you're happy to do this too, follow the instructions given <a href="http://www.ruby-lang.org/en/community/ruby-core/">here</a>, otherwise follow the instructions below to use my "no SVN required" technique:</p>
<blockquote>
<p>Fire up your shell or terminal app.</p>
<p>Download and un-tar: <a href="http://s3.amazonaws.com/rubyinside/ruby1.9-trunk-2007-11-27.tar.gz">http://s3.amazonaws.com/rubyinside/ruby1.9-trunk-2007-11-27.tar.gz</a></p>
<p>On some operating systems this is as simple as:</p>
<p><code>wget http://s3.amazonaws.com/rubyinside/ruby1.9-trunk-2007-11-27.tar.gz<br>
  tar xzvf http://s3.amazonaws.com/rubyinside/ruby1.9-trunk-2007-11-27.tar.gz</code></p>
<p>Then get installing..</p>
<p><code>cd ruby1.9-trunk<br>
  autoconf<br>
  ./configure --prefix=/usr/local/ruby1.9<br>
  make<br>
  sudo make install</code></p>
</blockquote>
<p>By now you should have Ruby 1.9 installed in its own directory (so it won't mess up your existing Ruby 1.8 install). Don't worry if an error crops up during documentation generation (I get a "Bus Error") as the key items are already installed and ready to use like so:</p>
<blockquote>
<p><code>/usr/local/ruby1.9/ruby -v</code></p>
<p><code>/usr/local/ruby1.9/irb</code></p>
</blockquote>
<p>Double check that you're running the right version when you're in IRB and try out a new feature:</p>
<blockquote>
<p><code>iMac2007:ruby19 peter$ /usr/local/ruby1.9/bin/irb<br>
  irb(main):001:0&gt; Time.now.to_s<br>
  =&gt; "2007-11-27 20:15:44 +0000"<br>
  irb(main):002:0&gt; Time.now.tuesday?<br>
  =&gt; true</code></p>
</blockquote>
<p>Enjoy! Give some of your usual Ruby apps a try if you like, run some performance tests, or check out <a href="http://eigenclass.org/hiki.rb?Changes+in+Ruby+1.9">this insanely detailed list of changes and new features in Ruby 1.9</a>. Have a play, and if you find anything other readers might find interesting, leave a comment here at Ruby Inside!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Michiel de Mare</strong> &middot; <time datetime="2007-11-27T22:28:00+00:00">November 27, 2007 at 10:28 pm</time></p>
      <p>I get this error: parse.y:580: unrecognized: %parse_param</p><p>I guess I'll have to wait till Christmas...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-11-27T23:19:00+00:00">November 27, 2007 at 11:19 pm</time></p>
      <p>Which architecture and operating system? If there's a pattern, then people will probably want to know :)</p><p>FWIW, my instructions above are fine on OS X Leopard on x86. Haven't tried on Linux yet.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-11-28T00:27:00+00:00">November 28, 2007 at 12:27 am</time></p>
      <p>For what it's worth, I ran a basic test using the same code to do a fib(30) in both Ruby 1.8.6 and Ruby 1.9, and it takes 5.5 seconds to calculate in 1.8.6 and 0.4 seconds in 1.9. It's not really a particularly wide ranging test, but that result says a lot about method invocation speed in 1.9.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James Healy</strong> &middot; <time datetime="2007-11-28T01:14:00+00:00">November 28, 2007 at 1:14 am</time></p>
      <p>Debian and Ubuntu already have a ruby1.9 package if people want to  try it, although the same packaging packaging style is used as that for 1.8, so it's a little kooky....</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brian Broom</strong> &middot; <time datetime="2007-11-28T01:15:00+00:00">November 28, 2007 at 1:15 am</time></p>
      <p>Mine blows up here (OS X 10.4.10)</p><p>bison  -o y.tab.c parse.y<br>
parse.y:580: unrecognized: %parse_param<br>
parse.y:580:    Skipping to next %<br>
make: *** [parse.c] Error 1</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michiel de Mare</strong> &middot; <time datetime="2007-11-28T01:30:00+00:00">November 28, 2007 at 1:30 am</time></p>
      <p>OSX Tiger on PPC. Did some research and found this thread: <a href="http://www.nabble.com/trunk's-parse.c-fails-to-compile-t4798113.html" rel="nofollow">http://www.nabble.com/trunk's-parse.c-fails-to-compile-t4798113.html</a></p><p>Apparently a newer version of Bison is required, so Ruby 1.9 won't compile out of the box on Tiger at all.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chu Yeow</strong> &middot; <time datetime="2007-11-28T02:17:00+00:00">November 28, 2007 at 2:17 am</time></p>
      <p>I ran into the same problem Michiel. Googling led me to <a href="http://www.ruby-forum.com/topic/131439" rel="nofollow">http://www.ruby-forum.com/topic/131439</a> and installing the latest bison (I read you need 2.2+) worked.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chu Yeow</strong> &middot; <time datetime="2007-11-28T02:21:00+00:00">November 28, 2007 at 2:21 am</time></p>
      <p>Ah it appears I was on an older version of this page for too long. Glad you found the solution already Michiel :)</p><p>Brian: you need to install Bison version 2.2+ (I just used the MacPorts one, sudo port install bison).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2007-11-28T02:50:00+00:00">November 28, 2007 at 2:50 am</time></p>
      <p>So can you run Rails on 1.9 yet?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Anko</strong> &middot; <time datetime="2007-11-28T02:54:00+00:00">November 28, 2007 at 2:54 am</time></p>
      <p>Umm.. Those performance increases seem to be from April.  Anyone got any newer figures?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-11-28T03:02:00+00:00">November 28, 2007 at 3:02 am</time></p>
      <p>I've yielded a 13x speedup on a fib(30) from 1.8.6 to 1.9. If you get it installed then it's worth running some tests on your own code or algorithms, or just copy the code from someplace else (such as <a href="http://shootout.alioth.debian.org/gp4/ruby.php" rel="nofollow">these</a>). I'm sure people will start to post more figures as the releases seep out.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brian Broom</strong> &middot; <time datetime="2007-11-28T05:53:00+00:00">November 28, 2007 at 5:53 am</time></p>
      <p>Thanks for the Bison tip. Works fine now.</p><p>I just ran a simple floating point calculation (ran for about a minute) with a 1.7x speedup (100 sec vs. 60 sec).  From all of the tests I've run, converting floating point ruby code to C gives about a 10-15x speedup, so to get 2x for nothing is very nice.</p><p>I've posted the code I ran at <a href="http://numericalruby.com/2007/11/28/quick-numerical-benchmark-of-ruby-19/" rel="nofollow">http://numericalruby.com/2007/11/28/quick-numerical-benchmark-of-ruby-19/</a> if any of you are interested.  Feel free to poke holes in my code...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sean O'Neil</strong> &middot; <time datetime="2007-11-28T15:33:00+00:00">November 28, 2007 at 3:33 pm</time></p>
      <p>If anyone is interested in Ruby for Windows, I've tried 1.9 on Windows. It is faster than 1.8 in Windows, but it still runs a lot slower in Windows than in other OS's. I'm not sure, but I suspect it has something to do with the stack checks that were added to stop Windows developers from calling it from multiple threads (which really sucks because synchronization is not that hard).</p><p>Also, if you try to embed it into C or C++, it crashes. I posted it as a bug, and it's been assigned to Matz, so hopefully it won't be a bug for much longer.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tom</strong> &middot; <time datetime="2007-11-28T21:58:00+00:00">November 28, 2007 at 9:58 pm</time></p>
      <p>Ugh, seeing that new Ruby logo again is so depressing. :(</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Pywtorak</strong> &middot; <time datetime="2007-11-30T07:00:00+00:00">November 30, 2007 at 7:00 am</time></p>
      <p>Watch out for this error if your have a GEM_HOME defined in your environment.<br>
gem_prelude.rb:134:in `block (2 levels) in push_all_highest_version_gems_on_load_path': bad value for range (ArgumentError)<br>
        from gem_prelude.rb:131:in `each'<br>
        from gem_prelude.rb:131:in `block in push_all_highest_version_gems_on_load_path'<br>
        from gem_prelude.rb:128:in `each'<br>
        from gem_prelude.rb:128:in `push_all_highest_version_gems_on_load_path'<br>
        from gem_prelude.rb:178:in `'</p><p>Fix is to clear it, export GEM_HOME=, or unset GEM_HOME, etc.  re-run make install, irb, etc.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Joyce</strong> &middot; <time datetime="2007-12-08T13:42:00+00:00">December 8, 2007 at 1:42 pm</time></p>
      <p>13x on a fib(30) is pretty decent.<br>
I can't wait to try it, I'm just a hair concerned about the pitfalls of 1.9 changes.<br>
I wonder if I'm going to feel all green again...?<br>
Any word yet on Ruby 1.9 Vs. Rails 2.0?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ob</strong> &middot; <time datetime="2007-12-10T18:36:00+00:00">December 10, 2007 at 6:36 pm</time></p>
      <p>The logo is sooo wrong.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Eric O'Connell</strong> &middot; <time datetime="2007-12-14T23:42:00+00:00">December 14, 2007 at 11:42 pm</time></p>
      <p>Just as a note, I got the same bus error you did (on 10.5 / Core 2 Duo MacBook Pro). Then I realized that I built ruby without readline support.. Adding that in fixed the bus error on doc generation. And boy, does rdoc generate faster than it used to!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
