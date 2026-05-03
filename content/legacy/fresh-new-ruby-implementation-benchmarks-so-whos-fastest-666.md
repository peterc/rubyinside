---
title: 'Fresh New Ruby Implementation Benchmarks: So Who’s Fastest?'
date: '2007-12-03'
author: Peter Cooper
author_slug: admin
post_id: 666
slug: fresh-new-ruby-implementation-benchmarks-so-whos-fastest-666
url: "/fresh-new-ruby-implementation-benchmarks-so-whos-fastest-666.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2007/12/new-ruby-benchmarks.png" width="311" height="190"></p>
<p>Almost a year ago, Antonio Cangiano performed <a href="http://antoniocangiano.com/2007/02/19/ruby-implementations-shootout-ruby-vs-yarv-vs-jruby-vs-gardens-point-ruby-net-vs-rubinius-vs-cardinal/">some benchmarks</a> on the then present Ruby implementations: Ruby 1.8.5, YARV (now Ruby 1.9), JRuby, Ruby.NET, Rubinius and Cardinal. The results were that YARV, although nowhere near ready for production use, was streets ahead of Ruby 1.8, and the other implementations raised enough errors to still be considered 'experimental'.</p>
<p>Now Antonio has <a href="http://antoniocangiano.com/2007/12/03/the-great-ruby-shootout/">rerun the tests</a> on Ruby 1.8.6, <a href="how-to-start-playing-with-ruby-19-right-now-661.html">Ruby 1.9</a> (from trunk), <a href="http://jruby.codehaus.org/">JRuby</a> (from trunk), Rubinius (from trunk) and <a href="http://xruby.com/">XRuby</a> 0.3.2. Ruby 1.9 again takes the lead by quite a margin, but the best development is that instead of being a distant third (behind Ruby 1.8), JRuby has made significant improvements and is smack bang in between Ruby 1.8 and Ruby 1.9 in terms of performance (while offering, of course, the benefits of the Java ecosystem). JRuby now also passes all of the tests without error, a feat that even Ruby 1.9 doesn't yet achieve. The <a href="http://rubini.us/">Rubinius</a> team hasn't been slacking either. On the previous test, Rubinius was coming in miles behind the other implementations, but is now quicker than the stock Ruby 1.8.6 interpreter on a wide selection of the tests.</p>
<p>Antonio's post is blog pornography for those of us who are into benchmarks, comparisons, and graphs, so just <a href="http://antoniocangiano.com/2007/12/03/the-great-ruby-shootout/">go soak it all up now</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2007-12-04T00:50:00+00:00">December 4, 2007 at 12:50 am</time></p>
      <p>It seems Antonio's blog couldn't handle the load, was... Insided! ;-)</p><p>Will be great if the bench aren't those from ruby1.9 trunk since most of them tuned for it.</p><p>what a general sudoku solver or something like that? :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Francois G.</strong> &middot; <time datetime="2007-12-04T04:04:00+00:00">December 4, 2007 at 4:04 am</time></p>
      <p>From Antonio's blog: "None of the tests took startup times into consideration." May I ask why the startup time is not considered?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Adam Conroy</strong> &middot; <time datetime="2007-12-04T04:43:00+00:00">December 4, 2007 at 4:43 am</time></p>
      <p>Between the list of 1.9 changes (<a href="http://www.dzone.com/links/rss/changes_in_ruby_19.html" rel="nofollow">http://www.dzone.com/links/rss/changes_in_ruby_19.html</a>) and the blazing speed it has to offer I am chomping at the bit for it to drop.</p><p>I played with the trunk a little bit but the application I'm working on right now does the heavy lifting in C and 1.9 actually handled exceptional conditions in C poorly (read: felt like a fork bomb) whereas 1.8.x at least gives me a Bus Error + Abort Trap and saves my CPU from frying.</p><p>Also a little miffed at losing my inherited class variables but no biggie, just shows that I was using them outside the scope that Matz intended.</p><p>Bring on the 1.9!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-12-04T15:04:00+00:00">December 4, 2007 at 3:04 pm</time></p>
      <p>Francois G: One reason might be that JRuby has a glacial startup time compared to the regular Ruby interpreter (MRI) but its performance, once up, is good.</p><p>As many applications now run in a service like fashion (such as Rails apps), the speed of the interpreter, rather than its overheads, is more important.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
