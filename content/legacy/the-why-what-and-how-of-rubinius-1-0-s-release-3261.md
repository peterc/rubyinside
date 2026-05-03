---
title: The Why, What, and How of Rubinius 1.0′s Release
date: '2010-05-18'
author: Peter Cooper
author_slug: admin
post_id: 3261
slug: the-why-what-and-how-of-rubinius-1-0-s-release-3261
url: "/the-why-what-and-how-of-rubinius-1-0-s-release-3261.html"
categories:
- cool
- news
---

{{< rawhtml >}}
<p><img src="/assets/2010/05/rubinius.png" class="alignleft size-thumbnail bordered"><a href="http://rubini.us/">Rubinius</a> <sup>or <a href="http://github.com/evanphx/rubinius">GitHub repo</a></sup>, an alternative Ruby implementation that's built in Ruby itself - as much as possible, has this last weekend hit the coding equivalent of a Bar Mitzvah.. its <a href="http://rubini.us/about/one_point_oh">1.0 release!</a> Congratulations to the Rubinius team, past and present, and everyone who has helped with its release - I didn't know if you were going to make it for a moment there..</p>
<h3>The Why: The History</h3>
<p>Back in 2006, Geoffrey Grosenbach (of <a href="http://peepcode.com/">PeepCode</a>) claimed to have <a href="http://nubyonrails.com/articles/peepcode-screencasts-places-a-1-000-bet-on-rubinius">made a bet</a> by donating $1,000 to the then-new <em>Rubinius</em> Ruby implementation project founded by <a href="http://blog.fallingsnow.net/">Evan Phoenix</a>. It seemed more like an act of <em>charity</em> at the time, but Geoffrey had the last laugh in securing the naming rights to Rubinius 1.0, also known as <strong>Fabius</strong>.</p>
<p>Rubinius' goal was inspired by <span class="caps">LISP</span> and Smalltalk compilers/interpreters where all (or as much as practically possible) of the implementation was written in the language it aimed to support. The benefits of this are clear; you wouldn't need to be a wizened-old C guru to make significant improvements or changes to the interpreter.. you could just write Ruby.</p>
<p>By the end of 2007, and thanks to a lot of help from <a href="http://engineyard.com/">Engine Yard</a>, there were 5 full-time staff "solely" working on Rubinius and progress was thick and fast, with Rubinius becoming only the <a href="rubinius-rails-897.html">third Ruby implementation to run Rails</a> in May 2008.</p>
<p>In November 2008, disaster struck. Not only was the world plunged into a financial crisis, but Evan had to <a href="http://blog.fallingsnow.net/2008/11/18/a-sad-day/">lay off most of his Rubinius team</a>, leaving just two in-house Rubinius developers. The goal, now, was to get more people involved with Rubinius from the traditional open source world, donating their time for free. Regardless, the future didn't seem <em>particularly</em> bright, and in May 2009, Evan <a href="http://blog.fallingsnow.net/2009/05/28/rumors-of-our-demise-are-greatly-exaggerated/">announced</a> that "the rumors of our demise are greatly exaggerated" (in reference to Mark Twain) and that development was continuing (though seemingly at a less industrious pace).</p>
<h3>The What: What's It Got?</h3>
<p>It's great, then, that Rubinius has made it to the hallowed "version 1.0." Evan's a straight-up guy, and if he's putting the 1.0 seal on it, it must be pretty good to go. Want some bulletpoints on what it's got?</p>
<ul>
<li>Works with both <a href="http://www.railsinside.com/">Rails</a> 3.x and 2.3.5</li>
<li>Works with <a href="http://www.sinatrarb.com/">Sinatra</a>
</li>
<li>It has a <a href="http://en.wikipedia.org/wiki/Garbage_collection_(computer_science)#Generational_GC_.28aka_Ephemeral_GC.29">generational garbage collector</a>
</li>
<li>Support for popular extensions including sqlite3-ruby, mysql, Nokogiri, yajl-ruby (and the obligatory "much, much more.")</li>
<li>Integrated profiler</li>
<li>
<span class="caps">JIT</span> compilation (a la JRuby) for über-performance</li>
<li>It doesn't work on Windows (yet)</li>
</ul>
<h3>The How: Getting Rubinius 1.0 Running</h3>
<p>Sorry to sound like a broken record but.. the best way to get Rubinius 1.0 running is to use Wayne E Seguin's <a href="http://rvm.beginrescueend.com/"><span class="caps">RVM</span> (Ruby Version Manager)!</a> <span class="caps">RVM</span> has already been updated to support Rubinius 1.0, so it's very easy to get up and running if you're on OS X or Linux (though you need to make sure you get <span class="caps">HEAD</span> first):</p>
<pre><code># rvm update --head
.. time passes, then you close your terminal and open a new one ..
# rvm install rbx
.. time passes, Rubinius 1.0 gets installed ..
# rvm rbx
# ruby -v
rubinius 1.0.0 (1.8.7 release 2010-05-14 JI) [x86_64-apple-darwin10.3.0]</code></pre>
<p>If you prefer to live life on the wild side, you can hit up the <a href="http://github.com/evanphx/rubinius">Rubinius GitHub repository</a>, check out the code and perform a manual install (by following the instructions in the <span class="caps">README</span>). If you're interested in <em>tinkering</em>, rather than just trying your code on Rubinius, this is the route I'd advise, since you can more easily dig into Rubinius's source code and see just how it's implemented (or, of course, you could just browse the source on GitHub, as I tend to do).</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>francescoagati</strong> &middot; <time datetime="2010-05-18T21:36:00+00:00">May 18, 2010 at 9:36 pm</time></p>
      <p>really compliments. With rubinius will be possible make something similar at the macro in lisp?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Robert</strong> &middot; <time datetime="2010-05-19T04:02:00+00:00">May 19, 2010 at 4:02 am</time></p>
      <p>I still don't get the why.  Could someone please explain the benefits of a language written in a slow language over the same language written in C?  Other than the possibility of extending Ruby using Ruby I don't see the point in this at all.  Learn C...its not that difficult</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-05-19T04:10:00+00:00">May 19, 2010 at 4:10 am</time></p>
      <p>Here's why: <a href="http://alexgaynor.net/2010/may/15/pypy-future-python/" rel="nofollow">http://alexgaynor.net/2010/may/15/pypy-future-python/</a>. Just mentally switch Python to Ruby and PyPy to Rubinius. It's one argument, at least.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Shadowfiend</strong> &middot; <time datetime="2010-05-20T18:38:00+00:00">May 20, 2010 at 6:38 pm</time></p>
      <p>I also don't know what you're thinking saying that C isn't difficult. Learning it might not be. Programming it correctly and with minimal bug infestation is quite tough, though.</p><p>Most importantly, as pointed out in the article, you broaden the pool of potential contributors to the language. More people can fork on github and play with new syntax additions or new internal features or what have you and contribute that back to the community.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan Wedekind</strong> &middot; <time datetime="2010-05-21T18:27:00+00:00">May 21, 2010 at 6:27 pm</time></p>
      <p>That's great. I hope the Ruby extension API [1] works to some extent. It's always a problem especially since the Ruby native interface exposes too much for most garbage collectors.</p><p>[1] <a href="http://www.rubyist.net/~nobu/ruby/Ruby_Extension_Manual.html" rel="nofollow">http://www.rubyist.net/~nobu/ruby/Ruby_Extension_Manual.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Beatriz A. Arnaez</strong> &middot; <time datetime="2010-06-08T08:11:00+00:00">June 8, 2010 at 8:11 am</time></p>
      <p>Could someone please explain the benefits of a language written in a slow language over the same language written in C? Other than the possibility of extending Ruby using Ruby I don't see the point in this at all. Learn C...its not that difficult</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
