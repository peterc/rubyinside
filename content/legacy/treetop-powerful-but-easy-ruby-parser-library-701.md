---
title: Treetop – Powerful But Easy Ruby Parser Library
date: '2008-01-25'
author: Peter Cooper
author_slug: admin
post_id: 701
slug: treetop-powerful-but-easy-ruby-parser-library-701
url: "/treetop-powerful-but-easy-ruby-parser-library-701.html"
categories:
- cool
- ruby-tricks
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2008/01/paren_language_output.png" width="298" height="223" alt="paren_language_output.png"></p>
<p><a href="http://treetop.rubyforge.org/">Treetop</a> is a very well put together Ruby library for building Ruby-powered parsers. Treetop makes it possible to rapidly put together parsers for your own mini languages (a basic "arithmetic" parser is the main demonstration used on the Treetop site) and relies on <a href="http://en.wikipedia.org/wiki/Parsing_expression_grammar">parsing expression grammars</a> to make it a pretty easy process.</p>
<p>Back in 2006 I <a href="recursive-descent-parser-for-ruby-300.html">posted about my own Ruby recursive descent parser</a> on Ruby Inside, but Treetop goes a lot further in making it developer friendly and more powerful overall, even going as far as making blending grammars together as easy as mixing Ruby modules! Another key difference between a raw recursive descent parser and Treetop is that Treetop actually generates Ruby code that works on your particular grammar, somewhat like <a href="http://en.wikipedia.org/wiki/Yacc">yacc</a> or <a href="http://en.wikipedia.org/wiki/Ragel">Ragel</a>.</p>
<p>This is a really exciting project if you're into parsing or need to build a parser, so check it out. The official site has <a href="http://treetop.rubyforge.org/syntactic_recognition.html">lots of useful documentation</a> (although not many particularly deep examples, but they are bound to come in time). If you end up using Treetop to produce something, make sure to let me know!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>RD</strong> &middot; <time datetime="2008-01-25T16:45:00+00:00">January 25, 2008 at 4:45 pm</time></p>
      <p>Have not gone through the whole documentation, but a quick question is it something which can help us write code reviews and if it is so then is there any project working on code review?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-25T17:05:00+00:00">January 25, 2008 at 5:05 pm</time></p>
      <p>I probably should add something saying that this isn't something that parses Ruby, but a "parser" library written in Ruby. So, no, unless you wrote a whole spec for Ruby in Treetop's syntax, I don't think code review would be a use case for this. That would be more a job for ParseTree and ruby2ruby.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rick Bradley</strong> &middot; <time datetime="2008-01-25T18:28:00+00:00">January 25, 2008 at 6:28 pm</time></p>
      <p>I saw this presented at RubyConf 2007 and have to say I was thoroughly impressed.  Very slick and well worth looking at.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rick Bradley</strong> &middot; <time datetime="2008-01-25T18:29:00+00:00">January 25, 2008 at 6:29 pm</time></p>
      <p>Sorry -- I meant to include the link to the rubyconf presentation video:</p><p><a href="http://rubyconf2007.confreaks.com/d1t1p5_treetop.html" rel="nofollow">http://rubyconf2007.confreaks.com/d1t1p5_treetop.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Geoffrey Grosenbach</strong> &middot; <time datetime="2008-01-25T19:32:00+00:00">January 25, 2008 at 7:32 pm</time></p>
      <p>I recorded and interview with Mr. Sobo last week in San Francisco. I hope to post it to the Rails Podcast within the next few weeks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>CptOatmeal</strong> &middot; <time datetime="2008-01-25T20:00:00+00:00">January 25, 2008 at 8:00 pm</time></p>
      <p>I've been using this fairly heavily since RubyConf to write a full grammar for IDL (the data processing language, not the interface description one.)  There are a few rough edges, but I've been able to develop a fully functional grammar in a remarkably short span of time.  Treetop is seriously useful.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-01-28T02:16:00+00:00">January 28, 2008 at 2:16 am</time></p>
      <p>Just testing something.. sorry!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
