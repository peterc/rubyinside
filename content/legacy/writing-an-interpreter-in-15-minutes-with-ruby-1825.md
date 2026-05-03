---
title: Writing An Interpreter In 15 Minutes With Ruby
date: '2009-06-02'
author: Peter Cooper
author_slug: admin
post_id: 1825
slug: writing-an-interpreter-in-15-minutes-with-ruby-1825
url: "/writing-an-interpreter-in-15-minutes-with-ruby-1825.html"
categories:
- cool
- elsewhere
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2009/06/wal15.png" width="96" height="85" alt="wal15.png" style="float:left; margin-right:12px; margin-bottom:12px;"> At the last regular <a href="http://lrug.org/">London Ruby User Group</a> meetup, James Coglan gave a talk on <a href="http://blog.jcoglan.com/2009/05/19/talk-writing-a-language-in-15-minutes/">how to implement a Scheme interpreter in 15 minutes</a>. He recorded a video of the coding in progress beforehand so he could focus on the narration so unfortunately the video (available <a href="http://vimeo.com/4339116">in a higher resolution here from Vimeo</a>) is without sound. There is, however, <a href="http://blog.jcoglan.com/wp-content/uploads/2009/05/lrug-scheme-15.zip">a ZIP file of HTML slides</a> available to help you follow along.</p>
<p>Naturally, building an arbitrary interpreter from scratch without having a design in mind in 15 minutes is impossible (except for the most trivial of cases) but James' demo is nonetheless impressive. James' knowledge and examples are built upon his work on <a href="http://github.com/jcoglan/heist">Heist</a>, a Ruby-powered Scheme interpreter that has somewhat more functionality than the 15 minute version.</p>
<p>The parsing is taken care of primarily by <a href="http://treetop.rubyforge.org/">Treetop</a>, a syntactic analysis / parser creation DSL for Ruby. Without Treetop this would be a three hour demo rather than a 15 minute one, so if you haven't checked out Treetop yet, please do - it deserves a lot more praise than I've seen it get so far.</p>
<div style="background-color: #ffd; padding: 8px; font-family: verdana; font-size: 12px">
<a href="http://mobileorchard.com/inside" rel="nofollow"><img src="/assets/2009/06/rupho.png" width="74" height="40" alt="rupho.png" style="float:left; margin-right:12px;"></a><em>Also worth seeing.. </em><strong><a href="http://mobileorchard.com/inside" rel="nofollow">Beginning iPhone Programming Workshop For Rubyists</a>.</strong> A companion class to the FutureRuby conference. Toronto, July 9-10, <del>$1200</del>$699 through June 9.</div>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Rob Olson</strong> &middot; <time datetime="2009-06-02T21:34:00+00:00">June 2, 2009 at 9:34 pm</time></p>
      <p>Treetop is indeed awesome. I used it to create an interpreter for a pseudo assembly language called SimpleSem. More details here: <a href="http://thinkingdigitally.com/archive/a-simplesem-interpreter/" rel="nofollow">http://thinkingdigitally.com/archive/a-simplesem-interpreter/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tom</strong> &middot; <time datetime="2009-06-03T06:52:00+00:00">June 3, 2009 at 6:52 am</time></p>
      <p>Yesterday?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Taryn</strong> &middot; <time datetime="2009-06-03T11:21:00+00:00">June 3, 2009 at 11:21 am</time></p>
      <p>I second Tom's "yesterday?" next LRUG is on the 8th isn't it? Otherwise I've missed it! (again) :(</p>
    </li>
      <li>
      <p class="comment-meta"><strong>George Palmer</strong> &middot; <time datetime="2009-06-03T13:00:00+00:00">June 3, 2009 at 1:00 pm</time></p>
      <p>@Tom the post may be a little late but the talk was fantastic.  It should be fairly easy to follow without sound</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-06-03T13:14:00+00:00">June 3, 2009 at 1:14 pm</time></p>
      <p>My bad. The post seemed to only become popular yesterday but I now note it was written on May 18th. Thanks for bringing this to my attention.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Phil</strong> &middot; <time datetime="2009-06-05T17:51:00+00:00">June 5, 2009 at 5:51 pm</time></p>
      <p>Actually parsing s-expressions without treetop is pretty straightforward. Where treetop shines is for grammars that are more complicated than Scheme's. (Not that this wouldn't be a good demo of its capabilities.) Looks like some good stuff.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>El Rug</strong> &middot; <time datetime="2009-06-08T14:56:00+00:00">June 8, 2009 at 2:56 pm</time></p>
      <p>The hosts for the evening, Skills Matter, also filmed the whole talk, so you can get the audio of James's talk here: <a href="http://skillsmatter.com/podcast/ajax-ria/implementing-scheme-in-ruby" rel="nofollow">http://skillsmatter.com/podcast/ajax-ria/implementing-scheme-in-ruby</a> (including his intro slides that explain exactly what Scheme is and what he's going to implement).</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
