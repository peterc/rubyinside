---
title: Writing A Compiler in Ruby
date: '2008-10-01'
author: Peter Cooper
author_slug: admin
post_id: 1222
slug: writing-a-compiler-in-ruby-1222
url: "/writing-a-compiler-in-ruby-1222.html"
categories:
- miscellaneous
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2008/10/compilers-dragonbook.jpg" width="109" height="123" alt="compilers-dragonbook.png" style="float:left; margin-right:12px; margin-bottom:12px;">Back in March 2008, Vidar Hokstad - a London based Norwegian developer - began to write <a href="http://www.hokstad.com/compiler">a series of blog posts on writing a compiler in Ruby from the ground up</a>. Early on, I took objection to some elements of his approach, but it still stands as a great series of posts. Vidar recently reached <a href="http://www.hokstad.com/writing-a-compiler-in-ruby-bottom-up-step-11.html">post 11</a>, providing enough of a landmark to introduce the series as a whole (which is already scheduled to go up to at least 20 posts).</p>
<p>It's worth noting that there are <em>many</em> different approaches to writing compilers of all types - so don't take the series as a definitive way to develop a compiler. Vidar focuses on outputting x86 assembly language and his example compiler (so far) has very tightly bound AST-walking to code generation stages (with no optimization or intermediate stages).</p>
<p>I'd be particularly intrigued to see similar content from the Ruby community - especially on targeting virtual machines (such as YARV or the Rubinius VM) or on using the <a href="http://treetop.rubyforge.org/">Treetop</a> library. For those interested in developing compilers generally, StackOverflow provides <a href="http://stackoverflow.com/questions/1669/learning-to-write-a-compiler">a lot of great resources</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Vidar Hokstad</strong> &middot; <time datetime="2008-10-01T09:03:00+00:00">October 1, 2008 at 9:03 am</time></p>
      <p>Thanks for the mention, Peter... There'll probably be far more than 20 posts - I'm starting to tinker with it again now in addition to cleaning up the old notes I did, so as long as I don't drown in work all the time it should continue a lot further. </p><p>Rest assured that the 32 bit x86 ties will continue to get refactored out - in fact one of my (long term) goals is to implement a technique called Semantic Dictionary Encoding to decouple the code generation completely from the compiler itself. </p><p>My initial focus on 32bit x86 was very much a pragmatic choice to get something that generates runnable code as quickly as possible, as I think a lot of compiler texts tend to spend far too much time on the theory, which you eventually need, but it doesn't encourage tinkering and experimenting for a beginner.</p><p>In fact, part 11 already makes the main code generation mostly (but not entirely) decoupled from the architecture choice, and a couple more steps down the line it should be trivial to replace the lowest level code to target something else.</p><p>As for other approaches, I just added links to Niklaus Wirth's homepage and Jack Crenshaw's "famous" series on building a compiler on the page you linked to - both focus on the top down approach which is of course a lot more common, and I'd absolutely recommend beginners who are seriously interested in compilers read their work - especially the Crenshaw series is very easily approachable for beginners.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charles Oliver Nutter</strong> &middot; <time datetime="2008-10-01T13:26:00+00:00">October 1, 2008 at 1:26 pm</time></p>
      <p>It's still in progress, but the Duby compiler is written mostly in Ruby. Currently it starts with a Ruby AST out of the JRuby parser. That AST is transformed into a Duby AST with support for static types. The Duby AST runs through a type-inferencing engine, and is finally fed into a compiler backend. Currently the JVM backend is the only functional one, but there's a mostly-broken C backend as a proof of concept. For the JVM backend, a bytecode-emitting library is wrapped with a Ruby DSL. So the far outer edges of the toolchain are not written in Ruby, but the bulk of the middle is.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tom Bagby</strong> &middot; <time datetime="2008-10-14T05:27:00+00:00">October 14, 2008 at 5:27 am</time></p>
      <p>For those interested in writing compilers in Ruby, I wrote Ruby bindings for LLVM available at <a href="http://github.com/tombagby/llvmruby/tree/master" rel="nofollow">http://github.com/tombagby/llvmruby/tree/master</a>.  It makes it easy to emit LLVM bytecode and also to use LLVM as a JIT compiler.</p><p>I've blogged a bit about it at <a href="http://llvmruby.org" rel="nofollow">http://llvmruby.org</a> and all the features necessary for using LLVM as a compiler backend are supported.  Takes away the pain of supporting many target architectures and let's you concentrate on language features.</p><p>Here is someone else using it to turn YARV bytecodes to LLVM to native code, <a href="http://github.com/miura1729/yarv2llvm/tree/master" rel="nofollow">http://github.com/miura1729/yarv2llvm/tree/master</a>.  My main interest is in writing a Duby or RPython-like compiler targeting LLVM using this library though I have not released that code yet.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
