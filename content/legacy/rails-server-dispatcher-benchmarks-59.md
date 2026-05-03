---
title: Rails server + dispatcher benchmarks
date: '2006-06-09'
author: Peter Cooper
author_slug: admin
post_id: 59
slug: rails-server-dispatcher-benchmarks-59
url: "/rails-server-dispatcher-benchmarks-59.html"
categories:
- ruby-on-rails
---

{{< rawhtml >}}
<p><em>maiha</em> from #caboose ran some benchmarks and produced this graph of 'requests per second' for a basic app under different dispatcher setups (Apache, lighttpd, Mongrel, etc.):</p>
<p><img src="/assets/2006/06/rails-deployer-benchmarks.png" height="284" width="600" border="1" hspace="4" vspace="4" alt="Rails-Deployer-Benchmarks"></p>
<p>It shouldn't be taken as definitive (the Litespeed + lighttpd time seems suspicious to me), but it definitely demonstrates the power of lighttpd and Mongrel.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Doug</strong> &middot; <time datetime="2006-06-09T16:07:00+00:00">June 9, 2006 at 4:07 pm</time></p>
      <p>I'd like to see some more information about the setups here.  Maybe I'm just confused how lighttpd can serve a rails app.  Is that using straight cgi?  fcgi?  Or some other ruby loader?</p><p>This is a very welcome report and I'd like to see some more details on how to repeat the test for my apps.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-06-09T16:11:00+00:00">June 9, 2006 at 4:11 pm</time></p>
      <p>Lighttpd and FastCGI is a common combination when serving Rails apps (although I don't use it myself). Most of the major Rails apps use it for its speed and reliability (Apache is just a mega pain as I constantly discover). :) I'll ask maiha if he has any more info.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alex Staubo</strong> &middot; <time datetime="2006-06-09T16:26:00+00:00">June 9, 2006 at 4:26 pm</time></p>
      <p>When will developers learn statistics?</p><p>First of all, means are useless as a single value to represent a distribution of values, especially in a case such as this when Ruby's frequent garbage-collection hiccups are going to skew the numbers. What are these means, anyway? Arithmetic means of the whole population?</p><p>In addition to the arithmetic mean you need a sense of the statistical dispersion: standard deviation and interquartile range are two good numbers to use, and you also want to know the range of values. These numbers can all be plotted in a nice box chart or candlestick chart that will beat coloured bars any day.</p><p>Secondly, there is no information here about population sizes, testing methodology, whether a pre-run was performed for each test, etc.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-06-09T17:25:00+00:00">June 9, 2006 at 5:25 pm</time></p>
      <p>Alex: Hey, don't shoot the messenger :) In any case, flawed benchmarking is still reasonably descriptive as long as the flaws are consistent from reading to reading. These aren't absolute numbers, just very rough comparisons. Not particularly scientific, just backing up some anecdotal evidence. I don't think maiha did it for them to be picked apart too much but I considered his findings interesting.</p><p>So yeah, ApacheBench type statistics would certainly be extremely useful for the hard and definitive benchmarks, but until someone is willing to do all of that, we'll go off of unscientific, rough and ready comparisons to get a feel for it.</p><p>I would certainly love to be able to link to, and present, a more scientific study, of course.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Antonin AMAND</strong> &middot; <time datetime="2006-06-15T12:31:00+00:00">June 15, 2006 at 12:31 pm</time></p>
      <p>What about Apache2 + FCGID ??</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
