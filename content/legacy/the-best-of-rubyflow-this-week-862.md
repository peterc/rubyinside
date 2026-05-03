---
title: The Best of RubyFlow This Week
date: '2008-04-16'
author: Peter Cooper
author_slug: admin
post_id: 862
slug: the-best-of-rubyflow-this-week-862
url: "/the-best-of-rubyflow-this-week-862.html"
categories:
- compilations
- miscellaneous
- news
---

{{< rawhtml >}}
<p><a href="http://www.rubyflow.com/"><img src="/assets/2008/04/rubyflow2.jpg" width="276" height="232" alt="rubyflow2.png" style="border:1px #000000 solid;"></a></p>
<p>By all measures, the <a href="rubyflow-a-new-ruby-news-site-851.html">launch</a> of <a href="http://www.rubyflow.com/">RubyFlow</a>, a new community-driven Ruby (and Rails) news site has been a success! We've had about 20,000 pageviews in the first week, and people whose sites have been getting linked on there have been reporting nice levels of traffic coming to their articles. We also have 1,500 subscribers to the main RSS feed, so there's a great audience for your posts.</p>
<p>Makoto Kuwata (of <a href="http://www.kuwata-lab.com/erubis/">Erubis</a> fame) has started <a href="http://www.kuwata-lab.com/rubyflow-ja/">a Japanese version of RubyFlow</a> based on translations of the regular RubyFlow posts. Japanese Rubyists will find this useful on its own, but for RubyFlow posters it provides a way to have more exposure in the Japanese Ruby community.</p>
<p>One of RubyFlow's jobs is to act as a way for me to get leads for Ruby Inside stories and links, so if you have a particularly good Ruby library, blog post, article, tutorial, or other resource to announce, get it on RubyFlow, and it might make it to Ruby Inside too! Other than that, I plan to do regular roundups of the "best of RubyFlow" of which this is the first (this will probably replace the "Interesting Ruby Tidbits" series). So, without further ado:</p>
<div style="margin-left: 1.5em">
<p><strong>FaceBook App In 8 Lines</strong> — <a href="http://facethesinatra.com">Frankie</a> which helps you create a "hello, world" Facebook application with just 8 lines of Ruby is now available. <a href="http://www.deadprogrammersociety.com/2008/04/frankie-goes-to-facebook.html">This blog post</a> gives a good rundown of how it works.</p>
<p><strong>Rice - C++ + Ruby</strong> — If you are writing binding C++ libraries to Ruby - check out <a href="http://rice.rubyforge.org">Rice</a>. It makes accessing C++ libraries from Ruby dead simple through clever use of C++ templating. It is similar to Boost.Python and provides an object-oriented interface to most of the Ruby C API.</p>
<p><strong>Walkthrough of Ruby Reports</strong> — <a href="http://rubymendicant.wikidot.com/">Gregory Brown</a> and Michael Milner have <a href="http://www.oreillynet.com/pub/a/ruby/2008/04/08/ruport-business-reporting-for-ruby.html">written a great article / walkthrough</a> of <a href="http://rubyreports.org/">Ruport</a>, the Ruby report generation library, for O'Reilly. It seems a pretty solid introduction for those not quite ready to buy <a href="http://www.lulu.com/browse/book_view.php?fCID=1700117">the Ruport book.</a></p>
<p><strong>Twitter Library</strong> — <a href="http://twitter.rubyforge.org/">Twitter (Ruby library)</a> is a Ruby library and command line client for the <a href="http://www.twitter.com/">Twitter</a> status / micromessaging social network. It's not <a href="twitter4r-020-twitter-api-for-ruby-558.html">the first Ruby Twitter library</a> but it certainly looks clean and well written.</p>
<p><strong>19 Ruby Template Engines</strong> — Vidar Hokstad presents <a href="http://www.hokstad.com/mini-reviews-of-19-ruby-template-engines.html">mini reviews of 19 different Ruby-based templating engines.</a> This is a surprisingly good round up.</p>
<p><strong>Live Validation for Rails</strong> — <a href="http://www.rubyrailways.com/live-validation-easy-client-side-javascript-validation/" rel="nofollow">Live validation</a> plugin for rails makes validating forms client-side a no-brainer.</p>
<p><strong>Ruby + the Google Data API</strong> — <a href="http://code.google.com/support/bin/answer.py?answer=93164&amp;topic=12027" rel="nofollow">Using Ruby with the Google Data APIs</a> Published in April 2008. Could this be a good sign that App Engine will support Ruby?</p>
</div>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Eivind Uggedal</strong> &middot; <time datetime="2008-04-16T14:57:00+00:00">April 16, 2008 at 2:57 pm</time></p>
      <p>&gt; Could this be a good sign that App Engine will support Ruby?</p><p>I don't think we'll see Ruby on GAE any time soon. Ruby is not one of Google's allowed languages internally (C++, Java, Python, JavaScript are the only ones if I remember correctly). Remember that Steve Yegge actually ported Rails to JavaScript so that it could be run on Mozilla Rhino.</p><p>Frankly I don't really care if Ruby becomes supported on GAE. Python is a fine language.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Guillaume Carbonneau</strong> &middot; <time datetime="2008-04-16T15:00:00+00:00">April 16, 2008 at 3:00 pm</time></p>
      <p>Hi, the website is nice cause we don't have to scan for [ANN]s on ruby-talk anymore.</p><p>I have a request tho : Could the RSS feed contain more than 8 items? (Suggestion : last 3-5 days?)</p><p>Thanks</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-04-16T15:21:00+00:00">April 16, 2008 at 3:21 pm</time></p>
      <p>Elvind: Might be interesting to see if JavaScript becomes a primary language on GAE.</p><p>Guillaume: I'll turn the numbers up slowly (just to avoid a flood to existing subscribers), but I'll make it higher :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>polarbear</strong> &middot; <time datetime="2008-04-16T17:18:00+00:00">April 16, 2008 at 5:18 pm</time></p>
      <p>If GAE gets Java support then we may be able to run JRuby? Would there be any disadvantages with that approach?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-04-16T17:31:00+00:00">April 16, 2008 at 5:31 pm</time></p>
      <p>Only if they installed JRuby on their platform too. I think it'd be quite a nice solution, personally, but I can't see many other people going for it.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
