---
title: Getting down with Closures, Blocks, and Procs
date: '2006-07-01'
author: Peter Cooper
author_slug: admin
post_id: 120
slug: getting-down-with-closures-blocks-and-procs-120
url: "/getting-down-with-closures-blocks-and-procs-120.html"
categories:
- cool
- elsewhere
- ruby-tricks
- tutorials
---

{{< rawhtml >}}
<p>Paul Cantrell has created <a href="http://innig.net/software/ruby/closures-in-ruby.rb">a cool guide</a>, with demonstrations, of the powers, quirks, and surprises of closures, blocks, and procs in Ruby. He writes:</p>
<blockquote>
<p><em>A closure is a block of code which meets three criteria:</em></p>
<p>* It can be passed around as a value and</p>
<p>* executed on demand by anyone who has that value, at which time</p>
<p>* it can refer to variables from the context in which it was created (i.e. it is closed with respect to variable access).</p>
<p>Closures are a mainstay of functional languages, but are present in many other languages as well (e.g. Java's anonymous inner classes). You can do cool stuff with them: they allow deferred execution, and some elegant tricks of style.</p>
<p>Ruby is based on the "principle of least surprise," but I had a really nasty surprise in my learning process. When I understood what methods like "each" were doing, I thought, "Aha! Ruby has closures!" But then I found out that a function can't accept multiple blocks -- violating the principle that closures can be passed around freely as values. This document details what I learned in my quest to figure out what the deal is.</p>
</blockquote>
<p>All but the highest Ruby masters are going to find at least one thing <a href="http://innig.net/software/ruby/closures-in-ruby.rb">in here</a> that makes them scratch their head for a few seconds and go "Ah, yes!".</p>
<p>He walks all the way through closure and block land through to generating a Lisp style enumerable class with lazy evaluation. Language geeks, enjoy!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>SergeantCircles</strong> &middot; <time datetime="2006-07-01T19:21:00+00:00">July 1, 2006 at 7:21 pm</time></p>
      <p>What is it with all those closure types anyway? It seems like I should be able to straightforward things like...</p><p>a_closure = {|arg| 10 * arg}<br>
a_closure(5) #=&gt; 50<br>
[1,2,3].map(a_closure) #=&gt; [10, 20, 30]</p><p>Is this impossible to reconcile with the rest of ruby's syntax?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paul</strong> &middot; <time datetime="2006-07-05T18:03:00+00:00">July 5, 2006 at 6:03 pm</time></p>
      <p>Probably not impossible to reconcile with the syntax, but rather with the implementation: CRuby does a bunch of madness with setjump / longjump to make blocks run fast, and relies on static syntax information to do it.</p><p>The reason not to have only one type of block is that you want this to work:</p><p>def find_elem<br>
    @elements.each do |x|<br>
        return x if yield x<br>
    end<br>
end</p><p>If there are only lambdas, then the "return" on line three can't break out of the "each." So Ruby at least needs the two control flow alternatives.</p><p>The rest of the distinctions seem unnecessary to me as well.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
