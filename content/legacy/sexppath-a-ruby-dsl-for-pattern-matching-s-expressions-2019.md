---
title: 'SexpPath: A Ruby DSL for Pattern Matching S-Expressions'
date: '2009-07-14'
author: Ari Brown
author_slug: aribrown
post_id: 2019
slug: sexppath-a-ruby-dsl-for-pattern-matching-s-expressions-2019
url: "/sexppath-a-ruby-dsl-for-pattern-matching-s-expressions-2019.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img style="float: left; margin: 0px 12px 12px 0px" title="braces" src="/assets/2009/07/braces.png" alt="" width="80">With people occasionally talking about "Code vs. Data", it only makes sense that you should be able process over code as you would a string. <a href="http://endofline.wordpress.com/2009/06/22/sexp_path/">Sexp Path</a> is a code processing tool that allows you to search over and process Ruby code in the form of S-Expressions.</p>
<p>For those who don't know, an S-Expression (or simply, a "sexp") is an iterable way of representing code or data. Using Ryan Davis' <a href="http://www.zenspider.com/ZSS/Products/ParseTree/">Parse Tree</a>, you can parse Ruby files and process over them using Sexp Path. It's a bit like like XPath or regular expressions for your code.</p>
<p>The foundation of Sexp Path is the query, formed with <code>Q?{ ... }</code>, which is applied to the sexp via the <code>/</code> method. These methods can be chained, and the results processed via the <code>each</code> method. Using <a href="http://github.com/adamsanderson/sexp_path/blob/b7ee04fb74dc25652bf691c224fa6dc1aa3c9f4f/examples/print_methods.rb">this</a> as an example, Sexp Path also supports named captures like <code>Q?{ s(:class, atom % 'class_name', _, _) }</code> in line 16 so that the second atom is accessible via the <code>class_name</code> attribute in line 25.</p>
<p>The <a href="http://github.com/adamsanderson/sexp_path/tree">code</a> is stored on GitHub. Unclear of where the project is headed, Adam Sanderson, the creator, encourages forking and feedback.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Magnus Holn</strong> &middot; <time datetime="2009-07-14T18:06:00+00:00">July 14, 2009 at 6:06 pm</time></p>
      <p>SexpPath is really sweet! One of the coolest DSLs out there, and definitely worth checking out if you're going to process S-expressions.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stephen Stillwater</strong> &middot; <time datetime="2009-07-14T18:16:00+00:00">July 14, 2009 at 6:16 pm</time></p>
      <p>Does anyone have a good link explaining what this is most useful for?</p><p>I've heard a lot of about Sexps from Lisp folk, but I haven't had a moment of grokking yet.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aslak Hellesøy</strong> &middot; <time datetime="2009-07-14T18:53:00+00:00">July 14, 2009 at 6:53 pm</time></p>
      <p>ParseTree will probably never work on Ruby 1.9 (<a href="http://blog.zenspider.com/2009/04/parsetree-eol.html" rel="nofollow">http://blog.zenspider.com/2009/04/parsetree-eol.html</a>) so I find it a little puzzling that new projects based on ParseTree keep popping up.</p><p>Another sign that some people don't want to move to 1.9?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Magnus Holn</strong> &middot; <time datetime="2009-07-14T18:55:00+00:00">July 14, 2009 at 6:55 pm</time></p>
      <p>Aslak: RubyParser also speak Sexps and runs nicely on 1.9 :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Adam Sanderson</strong> &middot; <time datetime="2009-07-14T19:58:00+00:00">July 14, 2009 at 7:58 pm</time></p>
      <p>Stephan: I have no idea what it's good for yet, but it's still pretty neat.  I intend on using it to scan ruby code and using it for some interesting meta programming.  </p><p>Aslak: Magnus is right, you can use RubyParser on 1.9, the dependency here is on SexpProessor, though I do use ParseTree for a few examples.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2009-07-15T20:22:00+00:00">July 15, 2009 at 8:22 pm</time></p>
      <p>There are a few related libs:</p><p><a href="http://github.com/coatl/rubymacros/tree/master" rel="nofollow">http://github.com/coatl/rubymacros/tree/master</a><br>
<a href="http://github.com/raganwald/rewrite_rails/tree/master" rel="nofollow">http://github.com/raganwald/rewrite_rails/tree/master</a><br>
<a href="http://allgems.ruby-forum.com/gems?search=macro" rel="nofollow">http://allgems.ruby-forum.com/gems?search=macro</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
