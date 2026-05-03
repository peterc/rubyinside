---
title: 'Interesting Ruby Tidbits That Don’t Need Separate Posts #27'
date: '2009-08-03'
author: Peter Cooper
author_slug: admin
post_id: 2161
slug: interesting-ruby-tidbits-that-don’t-need-separate-posts-27-2161
url: "/interesting-ruby-tidbits-that-don’t-need-separate-posts-27-2161.html"
categories:
- compilations
- miscellaneous
- news
---

{{< rawhtml >}}
<p>Yep, it's the latest installment of the series of posts crammed with random Ruby links, articles, and resources:</p>
<h3><img src="/assets/2009/08/php-logo.png" width="68" height="35" alt="php-logo.png" style="float:right; margin-bottom:12px; margin-left:12px;"></h3>
<h3>Phuby - A PHP Runtime from within Ruby</h3>
<p><a href="http://twitter.com/tenderlove">Aaron Patterson</a> (a.k.a. <i>tenderlove</i>), creator of Nokogiri, has recently been working on <a href="http://github.com/tenderlove/phuby/tree/master"><b>Phuby</b></a> - a library that "wraps PHP in a loving embrace." In short, Phuby exposes a PHP runtime in Ruby so you can eval stuff in PHP from Ruby, etc.</p>
<p><img src="/assets/2009/08/hash.png" width="67" height="63" alt="hash.png" style="float:right; margin-bottom:12px; margin-left:12px;"></p>
<h3>Hash Mapper - A "Hash to Hash" Converter</h3>
<p>The guys over at New Bamboo (a UK Rails shop - <a href="http://new-bamboo.co.uk/jobs">looking for a new team member</a>, by the way..) have recently unveiled <a href="http://blog.new-bamboo.co.uk/2009/7/29/hash-mapper"><b>Hash Mapper</b></a>, a "hash to hash" converter. They describe it as a module that "gives you a little DSL to map which keys in an input hash should map to which keys" in an output hash. Their own use case was for "translating" a messed up response from a JSON API into something more sanitized.</p>
<h3>Sunspot - Solr-Powered Search for Ruby Objects</h3>
<p><a href="http://outoftime.github.com/sunspot/"><b>Sunspot</b></a> describes itself well without me messing it up, so... "<i>All the power of the <a href="http://en.wikipedia.org/wiki/Apache_Solr">Solr</a> search engine; all the beauty of Ruby. Sunspot exposes all of Solr's most powerful search features using an API of elegant DSLs. That means robust, flexible fulltext search with no boolean queries and no string programming.</i>" Sunspot's <a href="http://outoftime.github.com/sunspot/">homepage</a> has a couple of code snippets demonstrating the overall idea. If you're not familiar with Solr, it's a stand alone search server built upon Lucene (<i>Ferret</i> being a Ruby port of Lucene - so Ferret == library, Solr == stand alone server).</p>
<p><img src="/assets/2009/08/terminal-icon-512x512.png" width="67" height="67" alt="terminal-icon-512x512.png" style="float:right; margin-bottom:12px; margin-left:12px;"></p>
<h3>Mutter - A "Tiny" Ruby Command Line Interface Library</h3>
<p><a href="http://github.com/cloudhead/mutter/tree/master"><b>Mutter</b></a> is a "tiny command-line interface library" with, supposedly, <i>lots of style</i>. So far its primary function is to simply produce command line output with various styles (bold, underline, blinking) and ANSI colors - no input stuff or curses type interface doodads, but for what it is, it's cute.</p>
<h3>RubyConf 2009 Call For Proposals</h3>
<p><a href="http://rubyconf.org/">RubyConf 2009</a> is taking place in San Francisco in November and <a href="http://rubyconf.org/posts/1">the call for speaking proposals</a> is now out. You might want to be quick though; you have only until August 21 to get your proposal in.</p>
<h3>ODF-Report: Generate Open Document files with a template + data</h3>
<p><a href="http://github.com/sandrods/odf-report/tree/master"><b>ODF-Report</b></a> is a new Ruby library for generating <i>.odt</i> files (OpenDocument text files - should be familiar to <a href="http://www.openoffice.org/">OpenOffice</a> users) by substituting strings in a previously created template .<i>odt</i> file. The idea is that with this functionality you can use ODF-Report to automatically produce reports in an OpenDocument format.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jim Neath</strong> &middot; <time datetime="2009-08-04T08:55:00+00:00">August 4, 2009 at 8:55 am</time></p>
      <p>PHP in Ruby? Eurgh.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>cloudhead</strong> &middot; <time datetime="2009-08-04T09:40:00+00:00">August 4, 2009 at 9:40 am</time></p>
      <p>What I'm trying to do with mutter is a separation of style from content, ala html/css. You basically define your styles in .yml files (or inline), and then use them in various ways, like:</p><p>`mutter.warning "the dogs are out of their cages!"</p><p>which would be equivalent to:</p><p>the dogs are out of their cages!</p><p>and</p><p>`mutter.say "the #dogs# are out of their cages!"</p><p>would be equivalent to:</p><p>the dogs are out of their cages!</p><p>If you defined # as the glyph for that style.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sam Granieri</strong> &middot; <time datetime="2009-08-04T16:22:00+00:00">August 4, 2009 at 4:22 pm</time></p>
      <p>+1 Jim Neath</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ellen</strong> &middot; <time datetime="2009-08-04T16:38:00+00:00">August 4, 2009 at 4:38 pm</time></p>
      <p>The most interesting feature I've found in ODF-Report is that you can easily edit your .odt template, using just OpenOffice.</p><p>That way, you don't need to concern about layout and text formatting in your application. Just leave it to OpenOffice.</p><p>Great tool!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hubert Łępicki</strong> &middot; <time datetime="2009-08-04T16:53:00+00:00">August 4, 2009 at 4:53 pm</time></p>
      <p>Jim: this would probably made my life easier couple of months ago when I had to...</p><p>...execute some PHP scripts that generated PDF files from Ruby app. No, Prawn couldn't do what we needed.  ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brandon</strong> &middot; <time datetime="2009-08-04T18:10:00+00:00">August 4, 2009 at 6:10 pm</time></p>
      <p>Actually I think Phuby has the potential to be HUGE.  I was talking about this VERY thing (and suggested the same name, or Phruby, alternately) a couple of weeks ago at work.</p><p>The (sad?) reality is that there's a lot of software written in PHP that you might want or need to use, and there are times when you'd (or at least I'd) like to extend/test/interact with it from Ruby.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>farleyknight</strong> &middot; <time datetime="2009-08-06T14:11:00+00:00">August 6, 2009 at 2:11 pm</time></p>
      <p>That's funny because I was working on similar functionality back in June. I wonder why this thing is so popular?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-08-06T18:45:00+00:00">August 6, 2009 at 6:45 pm</time></p>
      <p>Please note cloudhead's post is missing some formatting that our sanitizer removes. I decided to approve the comment anyway as hopefully you'll get the idea of what he's saying even without some of the formatting.. :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
