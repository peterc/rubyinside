---
title: A Basic Prolog Implementation in Ruby
date: '2006-11-02'
author: Peter Cooper
author_slug: admin
post_id: 286
slug: a-basic-prolog-implementation-in-ruby-286
url: "/a-basic-prolog-implementation-in-ruby-286.html"
categories:
- cool
- elsewhere
- miscellaneous
- ruby-tricks
---

{{< rawhtml >}}
<p>Ruby genius Mauricio Fernandez <a href="http://eigenclass.org/hiki.rb?tiny+prolog+in+ruby">has been playing with an attempt at processing Prolog</a> using Ruby <a href="http://www.okisoft.co.jp/esc/prolog/in-ruby.html">found</a> on a Japanese coding site and has come up with tiny_prolog.rb.</p>
<pre>require 'tiny_prolog_ext'

# rules
# read as "X and Y are siblings if Z is the parent of both"
sibling[:X,:Y] &lt; &lt;= [ parent[:Z,:X], parent[:Z,:Y], noteq[:X,:Y] ]
parent[:X,:Y] &lt;&lt;= father[:X,:Y]
parent[:X,:Y] &lt;&lt;= mother[:X,:Y]

# facts: rules with "no preconditions"
father["matz", "Ruby"].fact
mother["Trude", "Sally"].fact
father["Tom", "Sally"].fact
father["Tom", "Erica"].fact
father["Mike", "Tom"].fact

query sibling[:X, "Sally"]
# &gt;&gt; 1 sibling["Erica", "Sally"]</pre>
<p>If you know what <a href="http://en.wikipedia.org/wiki/Prolog">Prolog</a> is, or you have an interest in micro-languages and Ruby, it's well worth a read as Mauricio looks into solving problems using logic that Prolog was designed for.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Pat Eyler</strong> &middot; <time datetime="2006-11-02T13:45:00+00:00">November 2, 2006 at 1:45 pm</time></p>
      <p>This is a language combination that has drawn looks from several people recently. It might be worth looking at:  <a href="http://weblog.jamisbuck.org/2006/9/29/d-d-knowledge-bases-and-prolog-oh-my%20" rel="nofollow">Jamis Buck's thoughts</a> and <a href="http://www.kdedevelopers.org/node/2369" rel="nofollow">Richard Dale's blog post</a> for some additional ideas.  Hopefully Maurcio, Jamis, and Richard can spend some time talking through their individual plans and come up with some really cool prolog in Ruby stuff.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pawel</strong> &middot; <time datetime="2006-11-16T04:54:00+00:00">November 16, 2006 at 4:54 am</time></p>
      <p>now, how do you write this in Lisp?</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
