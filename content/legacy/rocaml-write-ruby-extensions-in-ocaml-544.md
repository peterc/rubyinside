---
title: rocaml – Write Ruby extensions in OCaml
date: '2007-06-29'
author: Peter Cooper
author_slug: admin
post_id: 544
slug: rocaml-write-ruby-extensions-in-ocaml-544
url: "/rocaml-write-ruby-extensions-in-ocaml-544.html"
categories:
- cool
- ruby-tricks
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2007/06/camllogo.jpg" height="60" width="337" border="1" hspace="4" vspace="4" alt="Camllogo"></p>
<p><a href="http://caml.inria.fr/ocaml/index.en.html">OCaml</a> (short for Objective Caml) is an object oriented implementation of Caml, a derivative of ML. Like Ruby, it's an open source language, but it provides extremely high performance (at least 50% that of compiled C code, in general) and features static typing. You can learn more, and look at code examples, at <a href="http://en.wikipedia.org/wiki/OCaml">OCaml's Wikipedia entry</a>.</p>
<p>Mauricio Fernandez of <a href="http://eigenclass.org/">Eigenclass</a> has put together <a href="http://eigenclass.org/repos/rocaml/head/">rocaml</a> (<a href="http://eigenclass.org/repos/rocaml/head/README.en">readme</a>), a bridge between Ruby and OCaml that lets you write Ruby extensions in OCaml. It handles the type conversions for you and creates boilerplate code that registers Ruby methods and wraps the calls to your OCaml code. Currently rocaml is considered to be "pre-release" but it seems to work okay, and it's certainly worth having a play with.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Per Wigren</strong> &middot; <time datetime="2007-06-29T17:07:00+00:00">June 29, 2007 at 5:07 pm</time></p>
      <p>Damn cool!!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Lars T.</strong> &middot; <time datetime="2007-06-30T12:12:00+00:00">June 30, 2007 at 12:12 pm</time></p>
      <p>So, is this re-inventing (or improving) <a href="http://sciruby.codeforpeople.com/sr.cgi/ProjectIdeas/RubyOCaml" rel="nofollow">RubyOCaml</a>?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Greg Vanard</strong> &middot; <time datetime="2007-06-30T12:17:00+00:00">June 30, 2007 at 12:17 pm</time></p>
      <p>For those on Mac OS X there is an OCaml installer that comes with Labltk, LablGL and GraphPS at <a href="http://maxao.free.fr" rel="nofollow">http://maxao.free.fr</a>. Windows (as well as Mac) users may try <a href="http://godi.ocaml-programming.de" rel="nofollow">http://godi.ocaml-programming.de</a>.</p><p>Some more OCaml example code can be found at<br>
<a href="http://pleac.sourceforge.net/pleac_ocaml/index.html" rel="nofollow">http://pleac.sourceforge.net/pleac_ocaml/index.html</a></p><p>A nifty web server written in ocaml, btw, is <a href="http://camlserv.sourceforge.net" rel="nofollow">http://camlserv.sourceforge.net</a>. Looks pretty good, doesn't it?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>mfp</strong> &middot; <time datetime="2007-06-30T17:45:00+00:00">June 30, 2007 at 5:45 pm</time></p>
      <p>Lars: rocaml automates most of the steps described in that page, in particular those described in "Wrapping the OCaml code as a C library",  "Compiling the OCaml code and the C wrapper",  "The Ruby/C wrapper" and "Create extconf.rb". In other words, there's no need to write a single line of code in C when you use rocaml, as the latter is the "code generator" that page says it'd be nice to have...</p><p>The thing that makes rocaml really convenient is the ability to pass rich structures between Ruby and OCaml. It can handle arrays, tuples, lists, records, (symbolic) variant and recursive types... So if you have some function taking a list of arrays of arrays of tuples with a float and a string and returning an array of floats, this declaration is all you need:</p><p><code><br>
 fun "some_function", LIST(ARRAY(ARRAY(TUPLE(FLOAT, STRING)))) =&gt; ARRAY(FLOAT)<br>
</code></p><p>You can declare things like</p><p><code><br>
 tree_t = sym_variant("string_tree") do |t|<br>
   constant :Empty<br>
   non_constant :Node, TUPLE(t, STRING, t)<br>
 end<br>
</code></p><p>which corresponds to the OCaml type 'a tree in</p><p><code><br>
type 'a tree = Empty | Node of 'a tree * 'a * 'a tree<br>
</code></p><p>and then have Ruby  OCaml conversion routines written automagically. This all goes way beyond the sort of conversions something like RubyInline would do for you (it only handles strings and numeric types by default IIRC).</p><p>There are some examples at <a href="http://eigenclass.org/repos/rocaml/head/examples/" rel="nofollow">http://eigenclass.org/repos/rocaml/head/examples/</a> .<br>
You can find there, amongst others, a 30-line set implementation built atop RB trees with 3X faster lookup than RBTree (which is written in C), and some 2-line specialized marshallers that operate 4-5 times faster than Ruby's Marshal...</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
