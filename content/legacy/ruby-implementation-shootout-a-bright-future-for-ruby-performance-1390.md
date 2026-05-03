---
title: 'Ruby Implementation Shootout: A Bright Future for Ruby Performance!'
date: '2008-12-09'
author: Peter Cooper
author_slug: admin
post_id: 1390
slug: ruby-implementation-shootout-a-bright-future-for-ruby-performance-1390
url: "/ruby-implementation-shootout-a-bright-future-for-ruby-performance-1390.html"
categories:
- cool
- enterprise
- jruby
- news
- reference
---

{{< rawhtml >}}
<p><a href="http://antoniocangiano.com/2008/12/09/the-great-ruby-shootout-december-2008/"><img src="/assets/2008/12/ruby-shootout-dec.png" width="380" height="322" alt="ruby-shootout-dec.png"></a></p>
<p>Back in December 2007, Antonio Cangiano presented <a href="http://antoniocangiano.com/2007/12/03/the-great-ruby-shootout/">The Great Ruby Shootout</a>, a large set of benchmarks of then-current Ruby implementations (Ruby 1.8.5, YARV - early Ruby 1.9, JRuby, Ruby.NET, Rubinius, XRuby, and Cardinal). Even then, despite Ruby 1.9's infancy and experimental nature, Ruby 1.9 came out as about three times faster than Ruby 1.8.5 - while other implementations were barely faster than 1.8.5.</p>
<h3>Now.. for 2008: Ruby 1.9.1 is the winner..!</h3>
<p>Now Antonio has put together <a href="http://antoniocangiano.com/2008/12/09/the-great-ruby-shootout-december-2008/">an all new December 2008 Great Ruby Shootout!</a> There's a lot of reading to do but the results are very exciting. JRuby's performance has come along in leaps and bounds and Ruby 1.9.1 is around <em>five</em> times faster than Ruby 1.8.7. Phusion's <a href="http://www.rubyenterpriseedition.com/">Ruby Enterprise Edition</a> (basically an amended fork of 1.8.6) also comes in at a surprising two-times faster than 1.8.7! Remember that Antonio's benchmarks are by no means representative of how <em>your</em> application might be using Ruby, but these numbers are extremely encouraging.</p>
<p>As well as comparing JRuby, Ruby 1.8.7, Ruby 1.9.1, Rubinius and REE, separate benchmarks were run for Maglev, MacRuby and IronRuby - all still reasonably experimental implementations. Maglev worked out at about twice the speed of 1.8 (though some operations were <em>far</em> slower), MacRuby offered performance equivalent to 1.8 (at this point), and IronRuby was a little slower due to its focus on .NET integration and matching the Ruby spec more closely (versus working on performance and optimizations). Make sure to <a href="http://antoniocangiano.com/2008/12/09/the-great-ruby-shootout-december-2008/">head over to the article for the full results</a>.</p>
<p>Antonio sums it up pretty well:</p>
<blockquote>
<p>Overall I think these are great results. Ruby 1.8 (MRI), with its slowness and memory leaks, belongs to the past. It’s time for the community to move forward and on to something better and faster - and we don’t lack interesting alternatives to do so at this stage.</p>
</blockquote>
<h3>Could Ruby 1.9.1 be about to beat Python, Perl or PHP?</h3>
<p>Now all we need is for Ruby 1.9.1 to reach final release and to see how it stacks up on the Alioth Shootout. Currently Ruby 1.8 is at the very bottom and an earlyish build of Ruby 1.9 is 9th from bottom just below Python, Perl and PHP. If the performance of Ruby 1.9 can go from 28 times slower than compiled C++ to just 18 times slower, Ruby will leapfrog these three strong competitors and one of the biggest criticisms of Ruby will become extinct.</p>
<p><em>(As an aside - is anyone familiar enough with the Alioth Shootout to run the benchmarks for the latest Ruby 1.9.1 build to see how it compares so far?)</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2008-12-10T02:08:00+00:00">December 10, 2008 at 2:08 am</time></p>
      <p>I was pretty surprised at the REE results. It has proven to be 25% faster on average at serving Rails apps so seeing that it scored 2x higher than MRI on this benchmark is surprising. But I guess this also means that one should always take benchmarks with a grain of salt. :)</p><p>I'm really interested in a new Alioth shootout. In my experience, Ruby 1.9 is indeed *much* faster than 1.8. I'd also like to see Alioth's shootout being updated for the latest JRuby release. The JRuby guys have been consistently improving their performance for the past few releases.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>dmpk2k</strong> &middot; <time datetime="2008-12-11T02:30:00+00:00">December 11, 2008 at 2:30 am</time></p>
      <p>It's not surprising that a Rails app sees less of a performance improvement -- it does a lot of I/O too. The benchmarks used were CPU-bound while Rails isn't.</p><p>What you see with these benchmarks is the upper bound on improvement you'll see in the "real world". In practice it'll be a lot lower.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Radarek</strong> &middot; <time datetime="2008-12-11T09:12:00+00:00">December 11, 2008 at 9:12 am</time></p>
      <p>Antonio updated results (<a href="http://antoniocangiano.com/2008/12/10/reflections-on-the-ruby-shootout/" rel="nofollow">http://antoniocangiano.com/2008/12/10/reflections-on-the-ruby-shootout/</a>). He did mistake installing it by apt-get which is known to be a lot slower that compiling ruby from source. REE is on an equal footing with 1.8.7.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2008-12-11T16:38:00+00:00">December 11, 2008 at 4:38 pm</time></p>
      <p>I wonder if REE applied Darryl Gove's patch for Solaris, too:</p><p><a href="http://www.opensparc.net/blogs/2008-03/darryl-gove-ruby-performance-gains-on-sparc.html" rel="nofollow">http://www.opensparc.net/blogs/2008-03/darryl-gove-ruby-performance-gains-on-sparc.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>George McGrumble</strong> &middot; <time datetime="2008-12-15T21:21:00+00:00">December 15, 2008 at 9:21 pm</time></p>
      <p>As fast, not faster.  Saying something is, for example, five times faster doesn't make logical sense, in that if you carry it to its conclusion then something that is equally fast is also one times faster.</p><p>And if not, then five times faster ought to parse to six times as fast, but obviously nobody uses it that way.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Isaac Gouy</strong> &middot; <time datetime="2008-12-22T17:55:00+00:00">December 22, 2008 at 5:55 pm</time></p>
      <p>&gt; Ruby 1.9.1 is around five times faster than Ruby 1.8.7</p><p>With Antonio's corrected measurements Ruby 1.9.1 is around 2.5 times faster than Ruby 1.8.7</p><p>&gt; As an aside - is anyone familiar enough with the Alioth Shootout to run the benchmarks for the latest Ruby 1.9.1 build to see how it compares so far?</p><p>The six month old measurements show Ruby 1.9.0 is around 2.25 faster than Ruby 1.8.6</p><p><a href="http://shootout.alioth.debian.org/gp4/benchmark.php?test=all&amp;lang=yarv" rel="nofollow">http://shootout.alioth.debian.org/gp4/benchmark.php?test=all&amp;lang=yarv</a></p><p>A JRuby comparison is shown in the current benchmarks game -</p><p><a href="http://shootout.alioth.debian.org/u32q/benchmark.php?test=all&amp;lang=jruby" rel="nofollow">http://shootout.alioth.debian.org/u32q/benchmark.php?test=all&amp;lang=jruby</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
