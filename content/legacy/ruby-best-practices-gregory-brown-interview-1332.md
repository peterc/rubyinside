---
title: 'Ruby Best Practices: The Book and Interview with Gregory Brown'
date: '2008-11-14'
author: Peter Cooper
author_slug: admin
post_id: 1332
slug: ruby-best-practices-gregory-brown-interview-1332
url: "/ruby-best-practices-gregory-brown-interview-1332.html"
categories:
- interviews
- miscellaneous
- news
- reference
---

{{< rawhtml >}}
<p><a href="http://oreilly.com/catalog/9780596156749/"><img src="/assets/2008/11/ruby-best-practices.gif" width="116" height="152" alt="ruby-best-practices.gif" style="float:left; margin-right:12px; margin-bottom:12px;"></a>Back in March, Ruby developer Gregory Brown <a href="help-fund-a-ruby-developer-to-work-on-open-source-for-6-months-798.html">raised the idea</a> of receiving donations so he could work on open source Ruby projects full-time. It went well, and out of this project came <a href="prawn-ruby-pdf-library-987.html">Prawn, a pure Ruby PDF generation library</a>. Not one to rest on his laurels, Gregory's now working on a book for O'Reilly called <a href="http://oreilly.com/catalog/9780596156749/">Ruby Best Practices</a>, billed as "for programmers who want to use Ruby the way Rubyists do." The book will cover how to design "beautiful" APIs and DSLs, along with lots of other general topics that will make your code more expressive and make you a better Ruby developer into the bargain.</p>
<p>The book is not due for final release until <em>August 2009</em>, but thanks to O'Reilly's "Rough Cuts" program, the first three chapters (<em>Driving Code Through Tests</em>, <em>Designing Beautiful APIs</em>, and <em>Text Processing and File Management</em>) are already available. Online-only access is $17.99 and you'll get the latest version as it becomes available. Print-only and Print + Online bundles are also available.</p>
<p>Gregory gave me a copy of the first three chapters to look over, and they're well crafted. This definitely isn't a reference book, a "cook book" or any sort of book you merely "dip" into. It's designed to be read by the chapter. The first chapter, Driving Code Through Tests, for example, takes you on a journey through the world of testing in Rubyland from motivation through to best practices - it's a full introduction to a single topic.</p>
<h3>The Interview</h3>
<p>I decided to ask Gregory a few questions to get more background on the book, as well as an update on his Ruby Mendicant project:</p>
<p><strong>What was the inspiration for writing Ruby Best Practices?</strong></p>
<blockquote>
<p>Right now, it's entirely possible for one to learn enough Ruby to get by without ever understanding why people love the language. I think one reason is that our books have disproportionately emphasized on solving particular problems, via some recipe or pattern. We've also got a ton of introductions to the language, some better than others, but these books don't dive into code that looks or feels real. Our reference books are great (at least IMO), but they're only telling you what sharp tools are in the shed, not how to use them.</p>
<p>Ruby Best Practices is a book about why Rubyists tend to write Ruby the way they do. So this book looks at a lot of real code, most of it from open source projects, and tries to make it approachable to any reader who's got a reference book handy, so long as their willing to engage their brain a bit. I'm hoping that people will have fun learning a bit more about the 'why' behind a lot of the design decisions we face when writing code.</p>
</blockquote>
<p><strong>Does the rapid pace of change in the Ruby community makes writing a book like this more difficult?</strong></p>
<blockquote>
<p>I think change is generally good, and that folks who wish to live on the edge must be willing to pay the price. There's nothing wrong with using older versions of software if you're not ready to make the jump to the new hotness of the week.</p>
<p>However, I want this book to be current when it prints, and I also want to help encourage people to move forward, so I've been writing against Ruby 1.9.1 only. Because the only place 1.8 is mentioned is in my chapter on how to write backwards-compatible code, I don't have the pain that most people do with updating their notes constantly about changes in 1.9 vs 1.8. I just need to make sure my code keeps running properly on 1.9.1 until the time the book is released. There are hiccups from time to time, but I've definitely been in less pain than anyone who's trying to write a reference book right now.</p>
</blockquote>
<p><strong>What sort of developer should be buying this book right now?</strong></p>
<blockquote>
<p>I think that any developer who has worked through some introductory Ruby material and has a reference book handy can learn something from RBP. I've got a couple internal reviewers who are in exactly that position, so they help keep that target audience in range.</p>
<p>However, in terms of the Rough Cuts release, <strong>what I need most is folks who are fairly strong in idiomatic Ruby to pick up a copy and help correct me where I am wrong.</strong> I put together a great team of internal reviewers who check every chapter before it becomes public, but more eyes will surely help shape the book before it hits the shelves.</p>
<p>I definitely want the book to have the kind of authority that comes from extensive peer review instead of having people trust it based on name recognition. If people provide feedback through Rough Cuts, I think it'll be easier to accomplish that goal.</p>
</blockquote>
<p><strong>How is the Ruby Mendicant project going?</strong></p>
<blockquote>
<p>The Ruby Mendicant project officially ended on September 30th, two weeks after the scheduled end-date. However, I'm still actively working on Prawn and will continue to move things forward over the coming months. I came up a little short of the hours I initially pledged, but accomplished most of the goals I had in mind. We're getting closer and closer to providing a replacement for PDF::Writer, and many users have already made the jump.</p>
<p>I gave <a href="http://majesticseacreature.com/talks/rubyconf08.html">a talk on Ruby Mendicant / Prawn at RubyConf</a>, and it's probably the best summary I've done so far, which people could check out once Confreaks gets the video online. I also plan to write a post-mortem about the whole experience but haven't found time just yet. I'll link it on that talk page once it's available.</p>
</blockquote>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Gregory Brown</strong> &middot; <time datetime="2008-11-14T20:31:00+00:00">November 14, 2008 at 8:31 pm</time></p>
      <p>The link was updated, but just so folks know, I wrote the longish, sentimental post-mortem this morning:</p><p><a href="http://majesticseacreature.com/mendicant/" rel="nofollow">http://majesticseacreature.com/mendicant/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aslak Hellesøy</strong> &middot; <time datetime="2008-11-16T12:02:00+00:00">November 16, 2008 at 12:02 pm</time></p>
      <p>This is an interesting choice of name for a book. </p><p>Does this mean that Gregory believes the practices described in this book are better than all other practices?</p><p>What makes a practice "best"?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gregory Brown</strong> &middot; <time datetime="2008-11-16T16:16:00+00:00">November 16, 2008 at 4:16 pm</time></p>
      <p>Aslak: Definitely not.  They're the best practices I know of, and I'm reaching out to the community and to a great group of internal reviewers to poll them for their best tricks too.</p><p>My original title was "The Second Book of Ruby", because that's what I wanted it to be, a book you read to learn how to write Ruby well after learning how the language worked.</p><p>I also suggested "Ruby Techniques and Practices", but O'Reilly felt as if this title was 'too weak'.</p><p>So please don't be off-put by the book.  Though it is somewhat opinionated in places, the content does not in any way suggest that there is some 'One true way of Ruby coding'.  In fact, in many places, I talk about how the "Best Practice" truly depends on what you're going for.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aslak Hellesøy</strong> &middot; <time datetime="2008-11-16T22:40:00+00:00">November 16, 2008 at 10:40 pm</time></p>
      <p>Gregory: Good to hear. I have used Prawn, which is awesome, so I expect this book to contain a lot of great practices. Good luck with the book!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Q</strong> &middot; <time datetime="2008-11-18T00:45:00+00:00">November 18, 2008 at 12:45 am</time></p>
      <p>I think this is a great idea. I've been reading programming books for a long time and while they typically describe what _can_ be done with a language, they don't often discuss whether or not things _should_ be done.</p><p>When learning any new technology I typically find myself asking: What would a pro user do in this situation? These are the sort of questions an expert could answer easily if we were sitting together in the same room, but aren't usually found in the books I read.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Markus Jais</strong> &middot; <time datetime="2008-11-19T08:52:00+00:00">November 19, 2008 at 8:52 am</time></p>
      <p>sounds great. Looking forward to this book. Will this be similar in style like the excellent "Effective Java" by Josh Bloch?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gregory Brown</strong> &middot; <time datetime="2008-11-19T19:41:00+00:00">November 19, 2008 at 7:41 pm</time></p>
      <p>@Markus,</p><p>To be fair, I have not read the book.  But when my editor read over my outline and talked out the structure of the book with me, he mentioned that it sounded similar to "Effective Java".</p><p>We even considered the title "Effective Ruby" for the book (which I like better than the RBP title), but we avoided this due to potential conflicts with Addison Wesley.</p><p>I'm not looking at other books for inspiration (aside from references, obviously) because I have a clear sense in my head of how the book should come together.  But Mike Loukides described "Effective Java" to me as having a "big<br>
focus on API design, a book for people who already know the language<br>
but who want to get better."  If this is true, RBP will definitely share similarities.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Markus Jais</strong> &middot; <time datetime="2008-11-20T08:02:00+00:00">November 20, 2008 at 8:02 am</time></p>
      <p>@Gregory: thanks for the information.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
