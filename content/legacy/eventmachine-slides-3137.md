---
title: 'EventMachine: Get Excited By Scalable Non-Blocking I/O'
date: '2010-03-19'
author: Peter Cooper
author_slug: admin
post_id: 3137
slug: eventmachine-slides-3137
url: "/eventmachine-slides-3137.html"
categories:
- cool
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2010/03/em.png" class="alignleft size-thumbnail bordered"><a href="http://rubyeventmachine.com/">EventMachine</a> is a simple(ish), fast, event-driven I/O library for Ruby. Its goal is to provide highly scalable I/O performance with an easy-to-use <span class="caps">API</span> wrapped around the nastiest parts of the process (since typical Ruby coding practices aren't particularly event-driven friendly). Aman Gupta has put together <a href="http://timetobleed.com/eventmachine-scalable-non-blocking-io-in-ruby/">an awesome 114-page deck of slides</a> <strike>(also available <a href="http://dl.dropbox.com/u/635/em_export.pdf">as a <span class="caps">PDF</span></a>)</strike> that walks through EventMachine with lots of practical code examples.</p>
<p>The presentation walks through:</p>
<ul>
<li>Who uses EventMachine <em>(a lot of big guys - Heroku, GitHub, 37signals, Engine Yard, PostRank)</em>
</li>
<li>What EventMachine is good for</li>
<li>Ruby's other I/O solutions (and why they suck)</li>
<li>What a "reactor" is</li>
<li>How to write asychronous code with EventMachine's <span class="caps">API</span>
</li>
<li>How EventMachine provides event-compatible iterators and timers</li>
<li>EventMachine's message channels</li>
</ul>
<p>Even though Aman's slides are meant to go alongside a live presentation, they stand well on their own and provide more than enough incentive to check out EventMachine is event-driven I/O is something that would benefit you, so stop reading this post and get flicking through <a href="http://timetobleed.com/eventmachine-scalable-non-blocking-io-in-ruby/">Aman's awesome slides!</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Mike Perham</strong> &middot; <time datetime="2010-03-19T01:03:00+00:00">March 19, 2010 at 1:03 am</time></p>
      <p>I gave a talk two months ago about using EventMachine with Ruby 1.9 and Fibers to provide asynchronous processing with a more standard Ruby coding style.</p><p>The problem with EventMachine and Ruby 1.8 is that it forces the callback style of programming on your entire application (e.g. see Cramp vs Rails).</p><p><a href="http://www.mikeperham.com/2010/01/27/scalable-ruby-processing-with-eventmachine/" rel="nofollow">http://www.mikeperham.com/2010/01/27/scalable-ruby-processing-with-eventmachine/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sohan</strong> &middot; <time datetime="2010-03-19T04:04:00+00:00">March 19, 2010 at 4:04 am</time></p>
      <p>A link to your post is added at the Drink Rails blog.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Justin Mazzi</strong> &middot; <time datetime="2010-03-19T14:32:00+00:00">March 19, 2010 at 2:32 pm</time></p>
      <p>PDF link:</p><p>Oops! (509)<br>
This account's public links are generating too much traffic and have been temporarily disabled!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>AkitaOnRails</strong> &middot; <time datetime="2010-03-19T15:12:00+00:00">March 19, 2010 at 3:12 pm</time></p>
      <p>Damn, the PDF link at scribd is failing on me :-( Anyone has another link?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Lori M Olson</strong> &middot; <time datetime="2010-03-19T15:12:00+00:00">March 19, 2010 at 3:12 pm</time></p>
      <p>You've killed that dropbox link for the PDF with your post ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>AkitaOnRails</strong> &middot; <time datetime="2010-03-19T15:13:00+00:00">March 19, 2010 at 3:13 pm</time></p>
      <p>Ah, forgive me, it was the timetobleed.com link that's failing, the download link within scribd's flash player works fine.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-03-19T15:49:00+00:00">March 19, 2010 at 3:49 pm</time></p>
      <p>Oh man, the only reason I did a direct link was because it was to Dropbox and I assumed they'd "just work" being a big service and all :-) Thanks for the heads up.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
