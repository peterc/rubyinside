---
title: Glyph – A Ruby-Powered Document Authoring Framework
date: '2010-06-19'
author: Peter Cooper
author_slug: admin
post_id: 3438
slug: glyph-a-ruby-powered-document-authoring-framework-3438
url: "/glyph-a-ruby-powered-document-authoring-framework-3438.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<blockquote class="stylized">
<p>I’ve been writing technical documents for a living for the past four years, and I can tell you: there is no easy way to go about it. I love Textile and Markdown. When people aren’t looking, I even use them at work to generate HTML code, because it’s just so much faster.</p>
<p>For things like &lt;div&gt; tags and &lt;tables&gt; though, Textile is not the best thing in the world, so you end up falling back to HTML. Moreover, if you are producing a book, Textile can’t help you if you want to generate things like a Table of Contents automatically or validate links: those things are simply not part of Textile’s job.</p>
<p><a href="http://www.h3rald.com/articles/introducing-glyph/">Glyph</a> follows a much more radical approach, which consists in using a macro language on top of Textile or Markdown. The good thing about it is that this macro language is very simple to learn and — most importantly — very easy to extend.</p>
</blockquote>
<p><cite>Fabio Cevasco</cite></p>
<p><a href="http://www.h3rald.com/articles/introducing-glyph/">Glyph</a><sup>(<a href="http://github.com/h3rald/glyph/">GitHub repo</a>)</sup> is an interesting looking "document authoring framework" built in Ruby by Fabio Cevasco. Glyph is both a tool chain and a macro language that's parsed by <a href="http://treetop.rubyforge.org/">Treetop</a> into XHTML (which can then be transformed into PDF).</p>
<p><a href="http://github.com/h3rald/glyph/raw/master/book/output/pdf/glyph.pdf"><img src="/assets/2010/06/00016.png" alt="" title="0001" width="460" height="326" class="alignnone size-full wp-image-3439"></a></p>
<p>Fabio has clearly put a <em>ton</em> of work into this and has been eating a lot of his own dogfood, as <a href="http://github.com/h3rald/glyph/raw/master/book/output/pdf/glyph.pdf">this 72 page PDF manual for Glyph</a> (produced by Glyph itself) demonstrates. In an e-mail to me, Fabio stressed that "he could really use some help" from people interested in document authoring and building in the form of code contributions and testing, and he's ready to help people get started with that.</p>
<p>Glyph looks great, but I'm not entirely convinced that implementing a sort of "XML lite" that uses square brackets is the right way to go when using regular XML would add little overhead and already be more familiar to most developers.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Fabio Cevasco</strong> &middot; <time datetime="2010-06-19T17:48:00+00:00">June 19, 2010 at 5:48 pm</time></p>
      <p>Thanks for the post Peter!</p><p>One small note: I no longer rely on Treetop for parsing, as for 0.3.0 release I introduced my own, StringScanner-based parser for both performance and practical reasons (more control over the AST and diagnostics etc.).</p><p>Regarding the "XML lite" syntax I agree it's not the best in the world, but at least it should be less verbose than raw XML and LaTeX... Also Glyph is meant to be extended easily, so if you create your own macro or rewrites you can dramatically decrease the verbosity of your code. </p><p>At any rate, I'm very open to any suggestion as long as it's constructive: I can even change syntax tomorrow if anybody can come up with something less verbose but equally powerful (and not to difficult to parse) :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dave</strong> &middot; <time datetime="2010-06-20T12:59:00+00:00">June 20, 2010 at 12:59 pm</time></p>
      <p>It's not really "XML lite" syntax, though; it's light-weight inter-text markup in the spirit of wiki formatting. I don't see any reason to introduce anything XML-ish; it would defeat the purpose.</p><p>Please don't change it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-06-20T20:57:00+00:00">June 20, 2010 at 8:57 pm</time></p>
      <p>Just taking a chunk:</p><pre>section[header[Something about Glyph]
You can use Glyph macros in conjunction
 with _Textile_ or _Markdown_]</pre><p>In regular, but simplistic, XML, that could become:</p><pre>&lt;section&gt;
  &lt;header&gt;Something about Glyph&lt;/header&gt;
  You can use Glyph macros in conjunction with _Textile_ or _Markdown_
&lt;/section&gt;</pre><p>I find the latter a lot more readable as the separation between the semantics and the content is clearer and, really, because I've had to stare at HTML and XML in various forms for 15 years now and it's second nature.</p><p>@Dave: Isn't a key difference here that wiki markup doesn't require a lot of nesting except for complex features? Things are more sequential and list-like than tree-like.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-06-20T20:58:00+00:00">June 20, 2010 at 8:58 pm</time></p>
      <p>The other benefit of the XML-style solution, of course, is ease of translation. So you could build a document in, say, Haml and it'd translate right across. You also get the benefits of syntax highlighting, macros (in TextMate) and autocompletion (in many editors).</p><p>Of course, anything's better than TeX style formatting ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2010-09-03T16:03:00+00:00">September 3, 2010 at 4:03 pm</time></p>
      <p>now if it could output to latex...</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
