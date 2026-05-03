---
title: 'IronRuby 1.0 Released: Microsoft’s 3 Years With Ruby Pay Off'
date: '2010-04-14'
author: Peter Cooper
author_slug: admin
post_id: 3212
slug: ironruby-1-0-released-microsoft-s-3-years-with-ruby-pay-off-3212
url: "/ironruby-1-0-released-microsoft-s-3-years-with-ruby-pay-off-3212.html"
categories:
- news
- microsoft-windows
---

{{< rawhtml >}}
<p><img src="/assets/2010/04/ironruby.png" class="alignleft size-thumbnail notbordered">Three years after Microsoft first announced it was dipping a toe into the Ruby implementation waters, <a href="http://ironruby.net">IronRuby 1.0</a> has been released. IronRuby is Microsoft's attempt at bringing Ruby natively to the <a href="http://dlr.codeplex.com/Wikipage" title="Dynamic Language Runtime"><span class="caps">DLR</span></a> that runs on top of .<span class="caps">NET</span> (and Mono), and with version 1.0, it has finally reached maturity with Jimmy Schementi calling it the "first stable version."</p>
<p>IronRuby 1.0 is available to <a href="http://ironruby.codeplex.com/releases/view/25901">download in two different forms</a> - a .<span class="caps">NET</span> 4.0 Windows installer or <span class="caps">ZIP</span> file, and a .<span class="caps">NET</span> 2.0 SP1 Windows installer or <span class="caps">ZIP</span> file. The .<span class="caps">NET</span> 4.0 version has faster startup times and is more feature complete (in terms of .<span class="caps">NET</span> integration) but the .<span class="caps">NET</span> 2.0 SP1 version will run on the <a href="http://ironruby.codeplex.com/releases/view/25901">Mono</a> cross-platform, open source .<span class="caps">NET</span> platform.</p>
<p>The IronRuby team are pushing stability and maturity as big themes for the 1.0 release. Their progress is certainly encouraging. As of today, IronRuby <a href="http://ironruby.info/">passes 85.95% of RubySpec</a> (as opposed to <span class="caps">MRI</span> Windows Ruby's <code>ruby.exe</code> score of 97.84%) with most of the gap in the library tests. IronRuby does particularly well with the language tests (98.31% pass vs 99.89% for <code>ruby.exe</code>). IronRuby promises Ruby 1.8.6 compatibility (mostly) and supports Rails 2.3.5.</p>
<p>We recently presented a <a href="ironruby-silverlight-ruby-in-browser-3192.html">walkthrough of using IronRuby and Silverlight to get Ruby in the Web browser</a> and did <a href="ironruby-interview-q-a-2010-3156.html">an interview with IronRuby developer Jimmy Schementi</a> so we're not going to go into detail here - check out those posts for more in-depth IronRuby knowledge.</p>
<p>New snippets that may also be of interest include an article on <a href="http://ironruby.net/Documentation/.NET/Mocking_.NET_types">using FlexMock with C# types</a> and a demo of <a href="http://github.com/rifraf/IronRubyEmbeddedApps">how to embed Ruby files in a .<span class="caps">NET</span> assembly using embedded resources</a>. The latter is particularly interesting as it allows Ruby source to be encoded and hidden away not only from other developers, but cranky sysadmins ;-)</p>
<p><em>Thanks to David Lake for help with this post.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Ry Walker</strong> &middot; <time datetime="2010-04-14T00:56:00+00:00">April 14, 2010 at 12:56 am</time></p>
      <p>I'm sorry but I see this as Microsoft getting Ruby 1.8.6 done right as 1.8 is retired in favor of 1.9, and as Rails 2.3 is retired in favor of Rails 3.0 - how are they doing on Ruby 1.9 and Rails 3 compatibility?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark</strong> &middot; <time datetime="2010-04-14T04:47:00+00:00">April 14, 2010 at 4:47 am</time></p>
      <p>@Ry, 1.8 is still being maintained and is the primary target of Jruby as well.  Rails 3 is yet to be released so to say that Rails 2.3.5 is being retied is being disingenuous.  Rails 3 will be awesome when it hits.  </p><p>The questions are still good questions tho, what is the roadmap for hitting Ruby 1.9 &amp; Rails 3 compat?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sohan</strong> &middot; <time datetime="2010-04-14T05:43:00+00:00">April 14, 2010 at 5:43 am</time></p>
      <p>I have linked your post at the Drink Rails blog.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Shay Friedman</strong> &middot; <time datetime="2010-04-14T06:16:00+00:00">April 14, 2010 at 6:16 am</time></p>
      <p>As I understanc, the next major version of IronRuby will focus on 1.9 compatibility.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
