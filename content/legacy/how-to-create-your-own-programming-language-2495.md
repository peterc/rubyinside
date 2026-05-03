---
title: How To Create Your Own Programming Language (Using Ruby and/or Java)
date: '2009-09-19'
author: Peter Cooper
author_slug: admin
post_id: 2495
slug: how-to-create-your-own-programming-language-2495
url: "/how-to-create-your-own-programming-language-2495.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><a href="http://8dc2fg6673tfx6f6ea1yt90uf1.hop.clickbank.net/"><img src="/assets/2009/09/createyourown.png" width="114" height="130" alt="createyourown.png" style="float:right; margin-bottom:12px; margin-left:12px;"></a><a href="http://8dc2fg6673tfx6f6ea1yt90uf1.hop.clickbank.net/">Create Your Own Programming Language</a> is a interesting new information product and community by Marc-André Cournoyer (of <a href="http://code.macournoyer.com/thin/">Thin</a> fame) that promises to teach you how to create a simple programming language. The <a href="http://8dc2fg6673tfx6f6ea1yt90uf1.hop.clickbank.net/">official site</a> is well worth checking out, even if you don't want to buy it, as it's a great example of how to sell a product like this. <i>Create Your Own Programming Language</i> costs $39.99 and has a two month money back guarantee.</p>
<h3>What You Get - 2 Different Approaches</h3>
<p>The package includes a 53 page PDF (only 44 pages in the earlier copy I received), a pile of source code (for two different types of bootstrapped languages), and a screencast, along with access to a community of other users. Out of the box, you can create your own "programming language" (of sorts) with a single shell script.</p>
<p>Two different types of approach are provided. The first is a pure Ruby lexer, parser, and interpreter that lets you build your programming language using mostly Ruby. This is what the PDF covers. The second is a JVM (Java Virtual Machine) based language that provides a bootstrap and execution environment upon which you can build a higher performance language; this is what the screencast covers. In both cases, the default languages are ultra-bare Ruby variants of sorts.</p>
<p><span style="font-size: 14px; font-weight: bold;">Quick Results Rather Than Detail</span></p>
<p>The PDF is short but well produced. It leads you through building a new Ruby-like language called "Awesome" upon the Ruby powered lexer, parser, and interpreter supplied in the package. It lacks detail but covers the broad concepts well with a focus on quick results rather than detail or inane computer science.</p>
<p>Likewise, the screencast video isn't a "everything from start to finish" production in the PeepCode manner. It's only 11 minutes long and moves incredibly quickly. The screencast covers adding a "while" construct to the JVM-backed language, as well as a "substring" string method and "eval". The video is good to get a "high level" view of what's involved (and is probably worth watching before opening the book, just to get a feel) but to get the most out of it you need to be either familiar with the terminology and concepts being covered (partially covered in the PDF) or ready to hit the pause button a lot.</p>
<h3>It Whets The Appetite; Great For Dabblers</h3>
<p><a href="http://8dc2fg6673tfx6f6ea1yt90uf1.hop.clickbank.net/">Create Your Own Programming Language</a> is suitably titled but potentially misleading, since although it does let you create your "own" programming language, the resulting language is within a small gamut of what could be considered to be a "programming language." No, CYOPL isn't going to meet lofty technical expectations but it provides a great way to dip your toes into the waters of creating a language, and I wouldn't hesitate to recommend it to those who want to have a dabble and learn a few things.</p>
<p>If, however, you consider yourself a bit of a <i>hotshot</i> and want to really dig deep into building compilers and programming languages, the materials in CYOPL lack the detail and the frankly intimidating level of knowledge you'd need to really design and build a robust programming language. If that's you, buy a copy of <a href="http://www.amazon.com/gp/redirect.html?ie=UTF8&amp;location=http%3A%2F%2Fwww.amazon.com%2FCompilers-Principles-Techniques-Tools-2nd%2Fdp%2F0321486811&amp;tag=rubins-20&amp;linkCode=ur2&amp;camp=1789&amp;creative=9325">Compilers: Principles, Techniques and Tools by Aho, Lam, Sethi, Ullman</a> and enjoy the ride - it's an awesome book and considered canonical in the compiler construction field. Alternatively read Loren Segal's awesome (free) online <a href="http://gnuu.org/2009/09/18/writing-your-own-toy-compiler/">Writing Your Own Toy Compiler Using Flex, Bison and LLVM</a> series.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2009-09-19T04:20:00+00:00">September 19, 2009 at 4:20 am</time></p>
      <p>I'd actually recommend "Compiler Construction" by Wirth over the dragon book as a starting point for beginners. Unless the writing in the dragon book has improved significantly over the past ten years, it's barely penetrable if you have no prior experience in the field.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hubert Łępicki</strong> &middot; <time datetime="2009-09-19T06:58:00+00:00">September 19, 2009 at 6:58 am</time></p>
      <p>No, "dragon book" didn't improve drastically in terms of writing ;). I also used it along with Wirth's book on my compilers course. In the end it *was* useful. But not at the beginning, it was useful when I was making improvements, when I already understood concepts they were writing about. First time I tried to read it was like a whole new language that I didn't understand ;). So I totally agree with you, Chris.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-09-19T11:38:00+00:00">September 19, 2009 at 11:38 am</time></p>
      <p>I appreciate the input but I haven't found the dragon book to be a drag and I'm not really hot on math. I guess it's generally at about the level of the average comp sci paper until you get up to the optimization sections. But, yeah, there are undoubtedly better middle ground solutions.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rafael Rosa</strong> &middot; <time datetime="2009-09-19T13:56:00+00:00">September 19, 2009 at 1:56 pm</time></p>
      <p>While I'm far from being a compiler/language developer, I must say I'm enjoying the reading of Programming Languages Pragmatic (no relation to PragProg). It's quite accessible and complete.<br>
<a href="http://www.cs.rochester.edu/~scott/pragmatics/" rel="nofollow">http://www.cs.rochester.edu/~scott/pragmatics/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-09-19T14:15:00+00:00">September 19, 2009 at 2:15 pm</time></p>
      <p>Rafael: Great recommendation! Not heard of that one before but the table of contents makes it look pretty good and there are some strong reviews on Amazon too. Added it to my wishlist - I buy too many books ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>macournoyer</strong> &middot; <time datetime="2009-09-19T21:31:00+00:00">September 19, 2009 at 9:31 pm</time></p>
      <p>Thanks a lot for the review Peter!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan Wedekind</strong> &middot; <time datetime="2009-09-20T15:27:00+00:00">September 20, 2009 at 3:27 pm</time></p>
      <p>The article about rolling your own language using Bison-Flex-LLVM is really nice.</p><p>I can recommend <a href="http://www.info.uni-karlsruhe.de/publications.php/bib=159&amp;lang=en" rel="nofollow">Goos and Waite - Compiler Construction</a>. It's free and it has chapters on lexers, LR-parsers, LALR, and attributed grammars.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>agile</strong> &middot; <time datetime="2009-09-22T18:58:00+00:00">September 22, 2009 at 6:58 pm</time></p>
      <p>macournoyer: I cannot pay outside the USA. Can you provide another way for payment?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>macournoyer</strong> &middot; <time datetime="2009-09-23T15:21:00+00:00">September 23, 2009 at 3:21 pm</time></p>
      <p>@agile do you get an error using Paypal or something? I've had people buy from Japan, Poland and more. They only other option I can use w/ my book distribution service (e-junkie) is Google Checkout and it's not available for Canadian merchants.<br>
I you can think of any other solution, let me know at macournoyer AT gmail dot com.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>anonymous</strong> &middot; <time datetime="2009-09-23T17:21:00+00:00">September 23, 2009 at 5:21 pm</time></p>
      <p>argh! damned commerce culture! what happened to freedom of information??? no proprietary screencasts about that?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-09-23T23:20:00+00:00">September 23, 2009 at 11:20 pm</time></p>
      <p>@anonymous: Huh? Freedom of information is a very new, and niche, concept. The distribution of information has been commercial for hundreds of years, even if solely funded by advertising.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
