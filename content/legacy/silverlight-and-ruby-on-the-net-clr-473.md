---
title: Silverlight (and Ruby on the .NET CLR)
date: '2007-05-03'
author: Peter Cooper
author_slug: admin
post_id: 473
slug: silverlight-and-ruby-on-the-net-clr-473
url: "/silverlight-and-ruby-on-the-net-clr-473.html"
categories:
- cool
- elsewhere
- news
- os-x-specific
- ruby-tricks
- microsoft-windows
---

{{< rawhtml >}}
<p><img src="/assets/2007/05/silverlight.jpg" height="112" width="266" border="1" hspace="4" vspace="4" alt="Silverlight"></p>
<p>At <a href="http://visitmix.com/">MIX07</a> a few days ago, Microsoft announced "<a href="http://silverlight.net/">Silverlight</a>", a new Flash-esque .NET-based platform for delivering "media experiences" and "rich interactive applications" on the Web. It's interesting, and <a href="http://www.techcrunch.com/2007/04/30/silverlight-the-web-just-got-richer/">some people seem to think</a> it's going to revolutionize the Web, but that's not why we're interested in it at Ruby Inside.</p>
<p>The most interesting part of the Silverlight announcement is that it's based on a subset of the CLR (Common Language Runtime) from Microsoft's .NET platform. The .NET CLR has become a common target for programming language runtimes recently, but Microsoft has officially announced C#, Javascript, VB, Python <strong>and Ruby support </strong>for Silverlight's CLR. Microsoft are <a href="http://blogs.msdn.com/hugunin/archive/2007/04/30/a-dynamic-language-runtime-dlr.aspx">also adding new features in a system called the DLR</a> (Dynamic Language Runtime) to bring more dynamic features (as required by Python and Ruby) to the CLR. InfoQ <a href="http://www.infoq.com/news/2007/04/ms-ironruby">has more information on this</a>, in terms of Ruby.</p>
<p>What all of this means is that there's baked-in support for Ruby in what could be one of the biggest runtime environments on the Web in the next few years, and this can only be a good thing for Ruby. Jon Udell sat down with John Lam (the creator of RubyCLR) and <a href="http://blog.jonudell.net/2007/04/30/a-conversation-with-john-lam-about-the-dynamic-language-runtime-silverlight-and-ruby/">talked about the DLR, Ruby, and how the whole caboodle works / will work.</a></p>
<p>Let's cross our fingers and hope this isn't ActiveX all over again.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>John Lam</strong> &middot; <time datetime="2007-05-03T06:40:00+00:00">May 3, 2007 at 6:40 am</time></p>
      <p>I'm really happy that I'm able to talk about our Ruby implementation now. Working on Ruby and distributing Ruby via Silverlight was what convinced me to move my family across the continent to work at Microsoft.</p><p>Fun times!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Shazbat</strong> &middot; <time datetime="2007-05-03T13:43:00+00:00">May 3, 2007 at 1:43 pm</time></p>
      <p><a href="http://diveintomark.org" rel="nofollow">Other people</a> seem to think it's pointless wanking.</p><p>Frankly, why trust Microsoft? They're in the game only to kill Flash (note that they could have used SVG, an open standard, and decided to run off and do their own thing -- NIH much? -- lock-in much?), and as soon as that's accomplished, they'll let it stagnate, just like they did to IE.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bob Aman</strong> &middot; <time datetime="2007-05-03T16:18:00+00:00">May 3, 2007 at 4:18 pm</time></p>
      <p>Not interested until there's a Linux runtime available that works on both x86 and x86-64.  Even then, I'll still have my misgivings...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>jc</strong> &middot; <time datetime="2007-05-03T19:18:00+00:00">May 3, 2007 at 7:18 pm</time></p>
      <p>Hey John. Thanks for your great work on this! This could be a huge boost for every Ruby developer. As much as I like RJS, I'd definately welcome doing all the "AJAXy" programming natively in Ruby. And if its compiled via CLR, 10x faster.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Moore</strong> &middot; <time datetime="2007-05-03T21:25:00+00:00">May 3, 2007 at 9:25 pm</time></p>
      <p>@Bob, IronRuby and the DLR are being released under a very permissive license.  I expect Mono to support IronRuby and the DLR as soon as they are released.  Miguel de Icaza said the following on his blog:</p><p>"The release for the DLR is done under the terms of the Microsoft Permissive License (MsPL) which is by all means an open source license. This means that we can use and distribute the DLR as part of Mono without having to build it from scratch. A brilliant move by Microsoft."</p><p>I suspect Mono will deliver a Linux version of the Silverlight runtime soon after its released.  Again, from Miguel's blog:</p><p>"In fact, am kind of happy that Microsoft did not do the port themselves as implementing this sounds incredibly fun and interesting."</p><p><a href="http://tirania.org/blog/archive/2007/May-01.html" rel="nofollow">http://tirania.org/blog/archive/2007/May-01.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan Wedekind</strong> &middot; <time datetime="2007-05-08T08:52:00+00:00">May 8, 2007 at 8:52 am</time></p>
      <p>Seems like Microsoft is playing down the importance of this by burying the important news with flashy Silverlight videos. I guess they are still interested in establishing C#.<br>
Now your boss will mistrust you, because you are suggesting Silverlight-scripting to do your work.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>CG</strong> &middot; <time datetime="2007-05-11T14:16:00+00:00">May 11, 2007 at 2:16 pm</time></p>
      <p>... Microsoft Permissive License (MsPL) which is by all means an open source license ...</p><p>Why couldn't they just use one of the dozen or so available open source licenses. They don't trust anyone and for good reason - nobody trusts them.</p><p>They're off on yet another exciting adventure of "cloning" another good idea Flash - yes the merry band of "borrowers" are ready to get bloated and have fun again. Of course they have Friar Buck to back them up in court.</p><p>Next time they fight with half the states in the US, I suggest the states just mandate Linux for all government and educational purposes instead of a ridicules settlement that is almost impossible to claim. My guess is they might have paid a dime on every dollar they owed.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
