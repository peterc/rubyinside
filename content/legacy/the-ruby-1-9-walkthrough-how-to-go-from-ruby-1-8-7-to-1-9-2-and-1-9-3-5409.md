---
title: 'The Ruby 1.9 Walkthrough: The Ultimate Ruby 1.9 Primer for 1.8 Developers'
date: '2011-09-20'
author: Peter Cooper
author_slug: admin
post_id: 5409
slug: the-ruby-1-9-walkthrough-how-to-go-from-ruby-1-8-7-to-1-9-2-and-1-9-3-5409
url: "/the-ruby-1-9-walkthrough-how-to-go-from-ruby-1-8-7-to-1-9-2-and-1-9-3-5409.html"
categories:
- miscellaneous
- news
---

{{< rawhtml >}}
<p><a href="http://www.rubyinside.com/19walkthrough/"><img src="/assets/2011/09/vid1.png" alt="" title="vid1" width="200" height="123" class="alignnone size-full wp-image-5411" style="float: right; margin-left: 18px; margin-bottom: 18px"></a>In a <a href="http://www.slideshare.net/yugui/ruby-193-and-development-of-ruby">presentation about Ruby 1.9.3</a>, Yuki Sonoda notes that Ruby 1.8 has "no future" and its "end of life" is being <a href="http://redmine.ruby-lang.org/issues/4996">discussed pretty seriously.</a> Ruby 1.8 is becoming history, but what's the alternative? Why, Ruby 1.9! :-)</p>
<p>Even amongst the groups I'm involved with, I've seen a lot of resistance to Ruby 1.9. Sometimes it's because of deployment or library concerns, but often there's a hesitancy over what's changed, what's new, or what has been flat out <em>removed</em> from 1.9. So I've been working on something to help out.. because I think Ruby 1.9 is awesome and everyone should be taking it seriously ASAP.</p>
<h3>Presenting.. the Ruby 1.9 Walkthrough</h3>
<p><strong><a href="http://rubyinside.com/19walkthrough/">The Ruby 1.9 Walkthrough</a> is an extended-length screencast that walks you through what's new, gone, or plain different in Ruby 1.9.2 and 1.9.3 vs 1.8.</strong> It's everything you wanted to know about 1.9 but were afraid to ask :-) <em>(There's a short sample there too if you want to get a feel for it.)</em></p>
<p>It's only $24 and you get a 3 hour video organized into logical sections which you can either watch straight through or jump around at your pleasure. In due course, I'll also be wrapping up my notes with more sample code into a PDF version to send to everyone, but that's still a little ways off (though you can enjoy my <a href="http://rubyinside.com/19.txt">rather scrappy notes</a> if you like).</p>
<h3>Some of What You'll Learn</h3>
<p>My notes came to almost 500 lines in all but here's a snapshot of what's covered:</p>
<ul>
<li>How proc and lambda behavior differs significantly from 1.8</li>
<li>How to wrestle with character encodings like UTF-8 (and issues to be aware of when upgrading old apps)</li>
<li>The new and differing ways to check range membership</li>
<li>How old Ruby 1.9 is and where it has descended from</li>
<li>New tricks and techniques opened up by the awesome new Oniguruma-based regular expression engine</li>
<li>The new MiniTest::Unit and MiniTest::Spec libraries</li>
<li>Quickly calling system library functions with Fiddle</li>
<li>Code coverage utilities right in the stdlib</li>
<li>Extensions to splat (*) behavior in 1.9</li>
<li>New hash syntax and key changes to hash methods</li>
<li>The 3 different encoding types in 1.9 and why each is important</li>
<li>What fibers are, how they compare to threads, and how threads have changed</li>
<li>Why Proc#=== makes sense as a way to call procs.. sometimes</li>
<li>1.9.3 specific updates (stuff that's not even in 1.9.2!)</li>
<li>How to tweak the garbage collector in 1.9.3</li>
<li>.. and I've barely scratched the surface!</li>
</ul>
<h3>The Full Contents</h3>
<p>Here are the main sections of the video (along with their starting time):</p>
<ul>
<li>
<span class="time">00h 00m</span> — Introduction from Peter Cooper</li>
<li>
<span class="time">00h 04m</span> — Ruby 1.9's history</li>
<li>
<span class="time">00h 11m</span> — Alternative 1.9 Implementations</li>
<li>
<span class="time">00h 13m</span> — Key Changes (Overview)</li>
<li>
<span class="time">00h 19m</span> — Getting Ruby 1.9</li>
<li>
<span class="time">00h 21m</span> — Strings</li>
<li>
<span class="time">00h 30m</span> — Character Encoding</li>
<li>
<span class="time">00h 49m</span> — Hashes</li>
<li>
<span class="time">00h 56m</span> — Arrays</li>
<li>
<span class="time">01h 02m</span> — Procs and Lambdas</li>
<li>
<span class="time">01h 16m</span> — Blocks</li>
<li>
<span class="time">01h 20m</span> — Enumerators and Enumerable</li>
<li>
<span class="time">01h 24m</span> — Regular Expressions</li>
<li>
<span class="time">01h 35m</span> — Threads</li>
<li>
<span class="time">01h 38m</span> — Fibers</li>
<li>
<span class="time">01h 42m</span> — Time</li>
<li>
<span class="time">01h 46m</span> — Standard Library (New and Gone)</li>
<li>
<span class="time">02h 05m</span> — New Syntax and Miscellaneous Elements</li>
<li>
<span class="time">02h 45m</span> — Garbage Collection</li>
<li>
<span class="time">02h 50m</span> — Ruby 1.9.3 Specifics</li>
</ul>
<p><strong>So check out <a href="http://rubyinside.com/19walkthrough/">The Ruby 1.9 Walkthrough</a>.</strong> There's a 5 minute sample MPEG 4 file you can download if you want to get a feel for it or check that the video format/codec suits you. (If you have problems though, you can always e-mail me. I have a special Apple TV version available on request too.)</p>
<p>This post also kicks off a short season of Ruby 1.9 related blog posts. I'm going to be going over specific elements of Ruby 1.9 syntax, changes, or additions here on Ruby Inside over the coming weeks. Ruby 1.9 is important and I'd love to see more people using it :-)</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Murray Bozinsky</strong> &middot; <time datetime="2011-09-20T16:29:00+00:00">September 20, 2011 at 4:29 pm</time></p>
      <p>I like 1.9 a lot, it is moving the language in the right direction. </p><p>A problem is that until REE starts supporting 1.9, making 1.8 pretty much the defacto version which is quite sad.</p><p>When is Ruby going to get versioned docs?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-09-20T18:17:00+00:00">September 20, 2011 at 6:17 pm</time></p>
      <p>Ahh, but the cool thing about 1.9.3 (out soon) is that it has a better garbage collector anyway AND it supports command line GC tweaking.. so you can do REE style tweaks on the fly :-) I'll write more about this soon.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ochronsu</strong> &middot; <time datetime="2011-09-23T04:44:00+00:00">September 23, 2011 at 4:44 am</time></p>
      <p>Nice, thanks!</p><p>Readers might also find my related blog post <a href="http://blog.mostof.it/ruby-1-9-changes-cherry-picked/" rel="nofollow">Ruby 1.9 changes, cherry picked</a> interesting.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://blog.newrelic.com/2011/09/28/state-of-the-stack-a-ruby-on-rails-benchmarking-report-sept-2011/" rel="external nofollow" class="url">State of the Stack – A Ruby on Rails Benchmarking Report – Sept. 2011 | New Relic blog</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mykola Kyryk</strong> &middot; <time datetime="2011-11-03T12:48:00+00:00">November 3, 2011 at 12:48 pm</time></p>
      <p>Peter, great video. One question: can you share your tweaked IRB with output from all the ruby implementations. It would be great to do some experiments by myself :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
