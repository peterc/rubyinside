---
title: Writing Parsers in Ruby using Treetop
date: '2010-10-22'
author: Peter Cooper
author_slug: admin
post_id: 3911
slug: writing-parsers-in-ruby-using-treetop-3911
url: "/writing-parsers-in-ruby-using-treetop-3911.html"
categories:
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2010/10/treetop.png" width="112" height="100" alt="treetop.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"><a href="http://treetop.rubyforge.org/">Treetop</a> is one of the most underrated, yet powerful, Ruby libraries out there. If you want to write a parser, it kicks ass. The only problem is unless you're into reading up about and playing with parsers, it's not always obvious how to get going with them, or Treetop in particular. Luckily Aaron Gough,  Toronto-based Ruby developer, comes to our rescue with some great blog posts.</p>
<p>Aaron, who has a passion for messing around with parsers and language implementations, recently released <a href="http://thingsaaronmade.com/blog/introducing-koi.html">Koi</a> - a pure Ruby implementation of a language parser, compiler, and virtual machine. If you're ready to dive in at the deep end, the code for Koi makes for good reading.</p>
<p>Starting more simply, though, is Aaron's latest blog post: <a href="http://thingsaaronmade.com/blog/a-quick-intro-to-writing-a-parser-using-treetop.html"><b>A quick intro to writing a parser with Treetop</b></a>. In the post, he covers building a "parsing expression grammar" (PEG) for a basic Lisp-like language from start to finish - from installing the gem, through to building up a desired set of results. It's a great walkthrough and unless you're already <i>au fait</i> with parsers, you'll pick something up.</p>
<p>If thinking of "grammars" and Treetop is enough to make your ears itch, though, check out Aaron's sister article: <a href="http://thingsaaronmade.com/blog/writing-an-s-expression-parser-in-ruby.html"><b>Writing an S-Expression parser in Ruby</b></a>. On the surface, this sounds like the same thing as the other one, except that this is written in pure Ruby with no Treetop involvement. But while pure Ruby is always nice to see, it's a stark reminder of how much a library like Treetop offers us.</p>
<p>If you're interested in parsing merely as a road to creating your own programming language, though, check out <a href="http://8dc2fg6673tfx6f6ea1yt90uf1.hop.clickbank.net/">Create Your Own Programming Language</a> by Marc Andre Cournoyer. It's a good read and even inspired CoffeeScript!</p>
<p class="s" style="padding: 8px; background-color: #ff6"><em>[ad]</em> Check out <a href="http://www.joyent.com/lpages/rails-at-joyent/" rel="nofollow">Rails Cloud Hosting</a> from <a href="http://joyent.com/">Joyent</a>. You can get started from a mere 83 cents per day and you get free bandwidth and persistent local storage with a 100% SLA.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Mark Wilden</strong> &middot; <time datetime="2010-11-03T19:06:00+00:00">November 3, 2010 at 7:06 pm</time></p>
      <p>Treetop is great, but I've moved to Citrus. Citrus lets you use regular expressions in rules. Also, it doesn't require that the whole input match a rule.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike H</strong> &middot; <time datetime="2010-12-27T23:51:00+00:00">December 27, 2010 at 11:51 pm</time></p>
      <p>Treetop has an option setting whether input must match the whole rule or not, it just defaults to yes.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
