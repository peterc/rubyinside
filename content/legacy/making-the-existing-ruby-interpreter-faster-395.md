---
title: Making The Existing Ruby Interpreter Faster
date: '2007-02-22'
author: Peter Cooper
author_slug: admin
post_id: 395
slug: making-the-existing-ruby-interpreter-faster-395
url: "/making-the-existing-ruby-interpreter-faster-395.html"
categories:
- cool
- ruby-tricks
---

{{< rawhtml >}}
<p>A lot of people seem to want to reinvent the wheel where Ruby is concerned, and I wish them all luck, but Tomasz Węgrzanowski has taken the unique step of <a href="http://t-a-w.blogspot.com/2007/02/making-ruby-faster.html">trying to make the existing C-based Ruby interpreter faster instead</a>, with intriguing results.. He even goes as far as to hack Ruby's source code to remove inefficiencies in how Fixnum objects are compared. I totally dig this and would love to support further efforts to implement non-damaging optimizations to the existing interpreter.</p>
<p>Could someone intimately familiar with the construction of the current interpreter comment on whether these techniques en masse could yield significant benefits at little re-implementation cost?</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>M. Edward (Ed) Borasky</strong> &middot; <time datetime="2007-02-22T14:48:00+00:00">February 22, 2007 at 2:48 pm</time></p>
      <p>I'll make a few more general comments. I've posted a benchmark I use to compare Ruby implementations on RubyForge at <a href="http://rubyforge.org/viewvc/MatrixBenchmark/?root=cougar" rel="nofollow">http://rubyforge.org/viewvc/MatrixBenchmark/?root=cougar</a>. Included is a script that recompiles Ruby with "gprof" profiling, and profiling results are there for "stocK" Ruby 1.8.5 and YARV. I haven't profiled any of the other implementations.</p><p>I just ran this on the upcoming 1.8.6 and it runs about 11 percent faster than 1.8.5. If you look at my YARV results, YARV ran 4 times as fast! 4X is the kind of speed improvement people are looking for. Tomasz' 3 percent, the 11 percent from 1.8.6, and some other potential 10 - 30 percent savings I've seen are nice, but what we really want and need is the kind of things the YARV team is doing to get that 4X!</p><p>In any event, by playing around with the (gcc!!) compiler settings, I'm guessing the total speedup available is about 10 - 30 percent, with the bulk of that coming (on x86 family machines) by using the "-march" flag to pick your chip. My 11 percent is for *both* 1.8.5 and 1.8.6 compiled "-march pentium3" on a Pentium III. See <a href="http://www.jhaampe.org/software/ruby-gcc" rel="nofollow">http://www.jhaampe.org/software/ruby-gcc</a> for some other tests.</p><p>Finally, let me encourage those people who want to work on this stuff to</p><p>1. Learn how to use "gprof" to profile the Ruby interpreter itself. I've done it for "Matrix" because that's the kind of code I write, but I'd like to see someone profile the Ruby interpreter running Rails.</p><p>2. Learn how to optimize for the two most common chips, Intel and AMD (64-bit dual core). That's our future, at least in the near term. There's a wonderful resource on exactly that subject at <a href="http://www.agner.org/optimize/" rel="nofollow">http://www.agner.org/optimize/</a>. A couple of assembly language tweaks could easily put a mostly GCC-compiled Ruby 1.8.6 up into the YARV range.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brian</strong> &middot; <time datetime="2007-02-23T22:26:00+00:00">February 23, 2007 at 10:26 pm</time></p>
      <p>As one of the folks working on reinventing the wheel, I want to quibble with the phrase. Most alternative implementation projects are not necessarily reinventing the wheel. I think it is more accurate to say that we're intent on making a better wheel.</p><p>Also, speed is not the only, and perhaps not even the most significant, limitation with Ruby presently. So, while speed of execution is one of the most common measures used to compare the alternative implementations, I think that is too narrow and misses the point.</p><p>For example, with the new dual-core CPU's, speed improvements could come from being thread-safe. Something that will be challenging to do with the current interpreter implementation. There are also the issues of deployment, compiled code, intellectual property protection, etc. that alternative implementations are variously addressing.</p><p>BTW, I should include the disclaimer that I am a contributor to the Rubinius project--http://rubini.us.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-02-24T07:56:00+00:00">February 24, 2007 at 7:56 am</time></p>
      <p>Yes, you are right. The current C Ruby wheel is like a wagon wheel.. it works, but it's not exactly modern. Inventing more modern wheels for Ruby is certain a noble task, but one whose difficulty is easy to underestimate.</p><p>I would be interested in seeing more of the points you raised in the interviews Pat Eyler does with various members of the Ruby reimplementation community, as there tends to be a lot of focus on performance and structure rather than these.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tomasz Wegrzanowski</strong> &middot; <time datetime="2007-02-28T17:52:00+00:00">February 28, 2007 at 5:52 pm</time></p>
      <p>M. Edward (Ed) Borasky: You're right that people really want x4 speed-up, not my 4-5%. But this 4-5% took me just 3 evenings and can be used right now, while YARV is in development by multiple people for almost two years now, and is still far from being fully functional.</p><p>The real question is whether it's possible to speed-up Ruby a lot by a series of small backwards-compatible steps. I'm actually convinced that it is, and that it would be a better way than a rewrite - <a href="http://www.joelonsoftware.com/articles/fog0000000069.html" rel="nofollow">total rewrites</a> like Perl 6 failed completely, limited rewrites like YARV are slowly progressing, and small refactorings are being done all the time to every program, and they all just work.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
