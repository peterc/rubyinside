---
title: 'Heckle: Tortures Your Tests For Revealing Confessions'
date: '2006-12-21'
author: Peter Cooper
author_slug: admin
post_id: 339
slug: heckle-tortures-your-tests-for-revealing-confessions-339
url: "/heckle-tortures-your-tests-for-revealing-confessions-339.html"
categories:
- cool
- elsewhere
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2006/12/cmbiz041.jpg" height="200" width="177" border="1" hspace="4" vspace="4" alt="Cmbiz041"></p>
<p><a href="http://glu.ttono.us/articles/2006/12/19/tormenting-your-tests-with-heckle">Heckle</a> is a great new library from Kevin Clark (though <a href="http://blog.zenspider.com/">Ryan Davis</a> wrote a proof of concept at RubyConf) that 'torments your tests'. It uses ParseRuby and RubyToRuby to rip your code apart and forces random data into your code (currently it does this for strings, symbols, regexps, ranges, booleans, and numbers) to see how good your tests really are.</p>
<p>Simply, it's <a href="http://en.wikipedia.org/wiki/Fuzz_testing">fuzz testing</a> for your Ruby tests, and that's a good thing if you want your test suites to be strong and far-reaching.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>meekish</strong> &middot; <time datetime="2006-12-21T03:40:00+00:00">December 21, 2006 at 3:40 am</time></p>
      <p>Does Heckle have any usefulness if you don't strive for 100% testing coverage?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-12-21T05:53:00+00:00">December 21, 2006 at 5:53 am</time></p>
      <p>I dare say it'd be an interesting test of code robustness and/or ability to sanitize input. This could be important on, say, a library that interacts with remote services.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>matt</strong> &middot; <time datetime="2006-12-22T06:00:00+00:00">December 22, 2006 at 6:00 am</time></p>
      <p>If you don't strive for 100% testing coverage, then probably not.</p><p>If you even have to think about testing coverage as something you strive for, then probably not.</p><p>Heckle is designed for Agile shops, where testing coverage is a by-product of the test-first development process.  When TDD gets in your blood, you read comments like the one above and wonder how programmers can be writing code without first writing a test to prove that they need to fix something.</p><p>4gauge.blogspot.com</p>
    </li>
      <li>
      <p class="comment-meta"><strong>zenspider</strong> &middot; <time datetime="2006-12-28T19:50:00+00:00">December 28, 2006 at 7:50 pm</time></p>
      <p>Some corrections: It uses ParseTree, not ParseRuby; it is a tool, not a library (you invoke it on the command-line); more important (imo) than mutating literals, it also mutates all branching/looping logic; and while I wrote the proof of concept and Kevin did most of the work since then, I'm still working on it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>zenspider</strong> &middot; <time datetime="2006-12-28T19:51:00+00:00">December 28, 2006 at 7:51 pm</time></p>
      <p>I should add, YES, heckle is still useful when you're not pushing for 100% test coverage (although, I must ask--why not?). You can invoke heckle on a single method to make sure that it and only it are heckle-proof.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>meekish</strong> &middot; <time datetime="2006-12-29T01:40:00+00:00">December 29, 2006 at 1:40 am</time></p>
      <p>I brought up the testing coverage question on Aslak Hellesoy's blog as well: <a href="http://blog.aslakhellesoy.com/articles/2006/12/19/heckling-with-rspec" rel="nofollow">http://blog.aslakhellesoy.com/articles/2006/12/19/heckling-with-rspec</a></p><p>The question of 100% test coverage was first brought to my attention by Jonathan Conway <a href="http://www.noodlesinmysandals.com/2006/11/13/so-you-think-you-re-agile" rel="nofollow">http://www.noodlesinmysandals.com/2006/11/13/so-you-think-you-re-agile</a></p><p>But I have to agree, if coding with a BDD or TDD mentality, shouldn't 100% test coverage be built in? Perhaps Jonathan's argument implies that testing coverage drops below 100% after refactoring?</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
