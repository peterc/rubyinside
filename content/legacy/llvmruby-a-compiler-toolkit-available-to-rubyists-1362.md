---
title: 'llvmruby: A Compiler Toolkit Available to Rubyists'
date: '2008-11-27'
author: Peter Cooper
author_slug: admin
post_id: 1362
slug: llvmruby-a-compiler-toolkit-available-to-rubyists-1362
url: "/llvmruby-a-compiler-toolkit-available-to-rubyists-1362.html"
categories:
- cool
- elsewhere
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2008/11/red-dragon-ref.png" width="108" height="119" alt="red-dragon-ref.png" style="float:left; margin-right:12px; margin-bottom:12px;"> If you've ever investigated how to build your own compiler, you might be familiar with <a href="http://llvm.org/">LLVM</a> (Low Level Virtual Machine), a "compiler infrastructure" that makes it easy(ish) to create virtual machines, code generators, and optimizers of your own. It also has its own intermediate representation language that's architecture independent and the instruction sets and typing system available are similarly language independent. In theory, if you want to build your own programming language <em>and</em> a compiler for it, LLVM will get you most of the way.</p>
<p><a href="http://llvmruby.org/">llvmruby</a> is an attempt to bring LLVM's power into the grasp of Rubyists. LLVM is typically used from C++, but llvmruby lets you use the LLVM compiler infrastructure directly from the Ruby interpreter. It's still pretty new and only a subset of LLVM is currently usable, but it's under semi-active development by Tom Bagby, and as well as <a href="http://llvmruby.org/wordpress-llvmruby/">a blog</a>, there's also <a href="http://github.com/tombagby/llvmruby/tree/master">a Github repository</a> you can check out.</p>
<p>On the topic of LLVM, Miura Hideki has developed <a href="http://github.com/miura1729/yarv2llvm/tree/master">YARV2LLVM</a>, a YARV (Ruby 1.9's VM) to LLVM translator. While it currently only accepts a tiny subset of Ruby, it's interesting because it uses LLVM's power to compiler YARV into very fast native code. The page is in Japanese, but <a href="http://d.hatena.ne.jp/miura1729/20081012/1223785541">one of Miura's early benchmarks</a> is not hard to decipher.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jan Wedekind</strong> &middot; <time datetime="2008-11-28T10:22:00+00:00">November 28, 2008 at 10:22 am</time></p>
      <p>Also note that there is <a href="http://github.com/cout/ruby-libjit" rel="nofollow">ruby-libjit</a> which is based on <a href="http://www.dotgnu.org/libjit-doc/libjit.html" rel="nofollow">libJIT</a>. libJIT is currently under GPL (there are <a href="http://www.nabble.com/libjit-licensing-td14602959.html" rel="nofollow">plans to release under LGPL</a>).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-11-28T14:36:00+00:00">November 28, 2008 at 2:36 pm</time></p>
      <p>Bonus points to anyone who gets the relevance of the picture on this post to the topic.. :)</p><p>Jan: Thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Edward OG</strong> &middot; <time datetime="2008-11-28T14:44:00+00:00">November 28, 2008 at 2:44 pm</time></p>
      <p>@peter Umm... Aho &amp; Ullman’s baby? “Compilers: Principles, Techniques, and Tools”, aka the Dragon Book?</p><p>(Incidentally, I met Ullman last year at CUSEC; what a cool guy.)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-11-28T14:49:00+00:00">November 28, 2008 at 2:49 pm</time></p>
      <p>Wow - you are very quick! You now have "bonus points". Unfortunately, I do not know how to redeem them, but at the very least I am impressed :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
