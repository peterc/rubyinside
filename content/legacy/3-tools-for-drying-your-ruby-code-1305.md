---
title: 3 Tools for DRYing Your Ruby Code
date: '2008-11-07'
author: Mike Gunderloy
author_slug: mikeg1
post_id: 1305
slug: 3-tools-for-drying-your-ruby-code-1305
url: "/3-tools-for-drying-your-ruby-code-1305.html"
categories:
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2008/11/hercules-and-atlas.gif" width="137" height="143" alt="hercules-and-atlas.gif" style="float:left; margin-right:12px; margin-bottom:12px;"> We've all heard the admonitions: "Don't Repeat Yourself!" But how do you avoid this if you're working on a Ruby codebase that stretches to thousands of lines, maintained by multiple developers? One answer is to run a tool that looks for duplicate code. This is an area where good tools are tantalizingly close - there are at least three out there that are worth checking out:</p>
<h3>Towelie</h3>
<p>The first contender is Giles Bowkett's <a href="http://github.com/gilesbowkett/towelie/tree">Towelie</a>, which uses <a href="http://rubyforge.org/projects/parsetree/">parsetree</a> and ruby2ruby to look through a set of files searching for duplicates. Unfortunately, Towelie in its current state was unable to handle my test case (the Active Record subtree of Rails), persistently erroring somewhere in parsetree. Admittedly, ActiveRecord is an extremely large and often arcane code base - though yours may be also.</p>
<p>Giles has written <a href="http://gilesbowkett.blogspot.com/2008/10/verbatim-how-to-find-patterns-in-code.html">an extensive blog post on Towelie</a>, which includes a screenshot of a successful output. Clean and to the point. Give it a try and see if it works on your code base - there's a lot of potential here.</p>
<h3>Flay</h3>
<p>Next I looked at <a href="http://ruby.sadi.st/Flay.html">Flay</a>, which just showed up (instantly at version 1.0.0) on <a href="http://rubyforge.org/frs/?group_id=1513&amp;release_id=28021">RubyForge</a>. From Ryan Davis, Flay uses <a href="http://rubyforge.org/forum/forum.php?forum_id=27971">sexp_processor</a> and ruby_parser to examine the structure of Ruby code. It's capable of detecting both exact and close matches, and did in fact find some spots in Active Record where patterns repeat. In its current state, Flay's output is very primitive: a list of repeated code nodes, together with a weight to rank them by and line numbers and file names where they show up.</p>
<p>Just <code>gem install flay</code>, and then <code>flay *.rb</code> to get playing with Flay.</p>
<h3>Simian - A more general approach</h3>
<p>Turning away from pure Ruby tools, I grabbed a copy of <a href="http://www.redhillconsulting.com.au/products/simian/">Simian</a>, a code similarity analyzer that's been around for quite a while. Written in Java, Simian can handle Ruby source code just fine - and indeed, it very quickly found a number of duplicate lines in the source I was looking at. For open source projects, Simian is free; others will pay $99 or more to license. This is definitely a more mature and faster tool than either Towelie or Flay; the drawback is that <strong>it has no knowledge of Ruby code structures</strong>, and so can't do the sort of logical looking for duplicate intent that the native tools promise.</p>
<h3>Conclusion</h3>
<p>The verdict? If I were coming into a new codebase with suspicious provenance, <strong>I'd run all three tools against it to get a sense of how bad the situation is</strong>. But I'd love to see the Ruby community push along the two native tools to a point where they have better output and can actually be used in a nightly build to watch for problems. We're not there yet, but could be reasonably soon - thoughts?</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Eric Davis</strong> &middot; <time datetime="2008-11-07T21:58:00+00:00">November 7, 2008 at 9:58 pm</time></p>
      <p>These should make finding refactorings a lot easier.  I'm going to have to take some time to use them against some Open Source projects and send in some patches.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Simon Harris</strong> &middot; <time datetime="2008-11-07T21:59:00+00:00">November 7, 2008 at 9:59 pm</time></p>
      <p>Mike,</p><p>Simian has limited knowledge of Ruby--it ignores comments and noisy keywords such as def and end, etc. but yes, unfortunately at present it has no real knowledge of structures per-se. What kinds of features would you imagine it needing?</p><p>Cheers,</p><p>Simon</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Giles Bowkett</strong> &middot; <time datetime="2008-11-07T22:21:00+00:00">November 7, 2008 at 10:21 pm</time></p>
      <p>There's also a great project called reek. It's not a repetition detector but a code smell finder. Then again I might have first seen it on here.</p><p>The ParseTree errors - a lot of ParseTree's in C, iirc, so avoiding those errors is kind of a pain. I'm going to look at Flay's code and see if I can steal the sexp stuff.</p><p>The example stuff in the blog post you mention is models and controllers from Rails apps. I think I've got a decent hack to make it possible to throw Towelie at Rails views as well, but I haven't had time to find out for sure.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Gunderloy</strong> &middot; <time datetime="2008-11-07T22:54:00+00:00">November 7, 2008 at 10:54 pm</time></p>
      <p>Simon:</p><p>The seductive promise of Towelie and Flay is that the can find code that is duplicate in intent rather than just duplicate in syntax. For example, they should be able to spot two code sections that differ only in the name of an identifier used throughout the code, as long as the underlying structure is the same. That requires some knowledge of Ruby internals - as well as, I expect in the end, the ability to dial the similarity detector up or down.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jens Himmelreich</strong> &middot; <time datetime="2008-11-10T10:58:00+00:00">November 10, 2008 at 10:58 am</time></p>
      <p>The CopyPasteDetector of the PMD-Suite, is a mature java-tool.<br>
It is able to 'understand' different languages: java, php, cpp and also ruby:</p><p><a href="http://pmd.sourceforge.net/cpd.html" rel="nofollow">http://pmd.sourceforge.net/cpd.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tom Copeland</strong> &middot; <time datetime="2008-11-11T05:07:00+00:00">November 11, 2008 at 5:07 am</time></p>
      <p>I've worked on CPD a bit and unfortunately it's got a weak Ruby tokenizer.  I've tried to write a JavaCC-based tokenizer for Ruby but have not yet succeeded... someday, perhaps.  For Java source, CPD does have the capabilities that Mike mentions - that is, it can ignore identifiers and literals.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jean-Michel Garnier</strong> &middot; <time datetime="2008-11-11T09:56:00+00:00">November 11, 2008 at 9:56 am</time></p>
      <p>I have written an html report generator which is using Simian and also  integrates with Textmate and Netbeans</p><p><a href="http://github.com/garnierjm/dry-report/wikis/home" rel="nofollow">http://github.com/garnierjm/dry-report/wikis/home</a></p><p>I haven't tried Towelie and Flay but I guess I could also use their data to generate the reports</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
