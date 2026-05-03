---
title: 'RubyRun Community Edition: Diagnostics Reports for your Ruby Apps'
date: '2008-12-06'
author: Peter Cooper
author_slug: admin
post_id: 1374
slug: rubyrun-community-edition-diagnostics-reports-for-your-ruby-apps-1374
url: "/rubyrun-community-edition-diagnostics-reports-for-your-ruby-apps-1374.html"
categories:
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2008/12/rrunx.png" width="183" height="123" alt="rrunx.png" style="float:left; margin-right:12px; margin-bottom:12px;">It was a few months ago that <a href="http://www.rubysophic.com/">Rubysophic</a> - a Bay Area startup working on products relating to Ruby diagnostics - came quietly into the Ruby scene, launching their first product, <a href="http://www.rubysophic.com/products/RubyRun/">RubyRun Community Edition</a>, a free, standalone application-performance diagnostic tool. While the most obvious use is with Rails applications, RubyRun works on any Ruby code (within reason) though it's primarily suited to Web applications.</p>
<p>I spoke with a few developers at Rubysophic recently to find out more about RubyRun and why they were offering it for free. It turns out that their team mostly comes from the J2EE (Java 2 Platform, Enterprise Edition) world (from companies including HP, IBM, and Cisco) and they wanted to release a suite of enterprise-quality diagnostics tools and services for the Ruby world. It seems that their ultimate plan is to offer a holistic range of services - not just tools like RubyRun but direct collaboration on performance issues.</p>
<h3>Diagnostics, Not Monitoring?</h3>
<p>The sort of data that RubyRun provides might remind you of <a href="http://www.newrelic.com/">New Relic</a>'s RPM product (it certainly did for me when I tried it out!) or those from <a href="http://www.fiveruns.com/">FiveRuns</a>, but the Rubysophic guys wanted to stress that they're "not a monitoring company" and are entirely devoted to "diagnostics." They told me that RubyRun is suited more to when you want to track down a problem and fix it, rather than as a permanent addition to your app.</p>
<p><img src="/assets/2008/12/rrtrace.png" width="567" height="261" alt="rrtrace.png" style="border:1px #000000 solid;"></p>
<p>Upon playing with the tool, I got to see some rather in-depth "traces" of what my Rails applications were doing. It wasn't the sort of information I'd want to see all the time, but for fixing specific performance issues, it was incredibly detailed.</p>
<h3>Standalone, No Phoning Home</h3>
<p>I also noted another key difference between RubyRun and other monitoring tools (useful though they are) was that RubyRun runs standalone. It doesn't talk to a server. Everything is published locally into HTML reports - performance summary reports, detailed reports, and process traces. Further, the latency is in the single milliseconds range per request, so even though it's not designed for permanent use, it doesn't hurt too much on minor applications.</p>
<p>After getting a tour from the Rubysophic guys, I realized that despite getting the impression RubyRun was competing with the services offered by New Relic and Five Runs, it's not. RubyRun is a very direct tool that you can call on to look into both performance <em>and</em> code problems primarily during the <em>development</em> stage. It gives you information down the object level - how many objects of each class are currently instantiated, etc - and down to every single step made in a single request.</p>
<p>For free, it's a good tool. I imagine Rubysophic will be offering more commercial-level services in the future, perhaps even liaising with people who need problems diagnosed, but for now RubyRun is free and definitely worth playing with if you're developing applications where you want deep traces and instant HTML reports.</p>
<p>For more information check out <a href="http://www.rubysophic.com/products/RubyRun/">the official product page</a>, the <a href="http://www.rubysophic.com/download/files/rubyrun-0.9.8.htm">gargantuan and highly detailed user guide</a>, or <a href="http://www.rubysophic.com/download/">download it</a>. <em>(They won't like me for saying this, but if you don't want to give your details, check out</em> <a href="http://www.rubysophic.com/download/files/README.txt"><em>the quick start guide</em></a> <em>to see how to install it as a gem ;-))</em></p>
<p><em>(Disclaimer: Rubysophic is a sponsor of Ruby Inside. While I was unaware of RubyRun before this, I was impressed that they were offering a free, no-strings-attached product and thought it deserved highlighting. There are no sponsor-influenced posts on this site - except the monthly Thanks To Our Sponsors posts - and I believe RubyRun is a particularly interesting offering in any case. If you have similarly community beneficial products and services that could be featured in a similar way, do get in touch!)</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Eric Hoover</strong> &middot; <time datetime="2008-12-08T23:16:00+00:00">December 8, 2008 at 11:16 pm</time></p>
      <p>I did a gem install and got a request trace and performance report in a minute! Now I know which part of my code needs to be optimized. Thanks for the great work!</p><p>By the way, does it support Rails 2.2 now? I am planning to migrate it to 2.2 and it will help me a lot if I know how my apps performs after a major system change.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joseph</strong> &middot; <time datetime="2008-12-09T01:15:00+00:00">December 9, 2008 at 1:15 am</time></p>
      <p>Hi Eric,</p><p>2.2 support is coming in a week or so. Basically the way "view" timing work has been changed, and it needed some serialization to correctly generate the reports. It should work ok if you only want to take a trace though. Will announce on our web site. Stay tuned.</p><p>Thanks for the comments! We will be connecting up to GetSatisfaction soon. In the meantime for further questions please email to <a href="mailto:support@rubysophic.com">support@<!--*-->rubysophic.com</a> and not to pollute Pete's website!</p><p>Thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-12-09T02:18:00+00:00">December 9, 2008 at 2:18 am</time></p>
      <p>I certainly don't mind pollution if the answers will be publicly useful as in this case :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joseph</strong> &middot; <time datetime="2008-12-19T01:50:00+00:00">December 19, 2008 at 1:50 am</time></p>
      <p>OK, since Peter doesnt mind, I want to announce that RubyRun CE 0.9.9 has just been released to RubyForge and Rubysophic.com. This release supports and is tested against JRuby 1.1.6 (with and w/o Rails), Rails 2.2.2 (multithreaded with monkey patched Mongrels), and Ruby 1.9.1 p2 (with pure Ruby scripts).</p><p>Happy Holidays!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
