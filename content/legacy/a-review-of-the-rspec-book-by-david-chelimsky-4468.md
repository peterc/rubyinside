---
title: A Review of “The RSpec Book” by David Chelimsky
date: '2011-03-14'
author: Peter Cooper
author_slug: admin
post_id: 4468
slug: a-review-of-the-rspec-book-by-david-chelimsky-4468
url: "/a-review-of-the-rspec-book-by-david-chelimsky-4468.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><a href="http://www.amazon.com/RSpec-Book-Behaviour-Development-Cucumber/dp/1934356379/?tag=rubins-20"><img src="/assets/2011/03/the-rspec-book.gif" alt="" title="the-rspec-book" width="230" height="273" class="alignnone size-full wp-image-4469" style="float: right; margin-left: 18px; border: 1px solid #666"></a> <strong><a href="http://www.amazon.com/RSpec-Book-Behaviour-Development-Cucumber/dp/1934356379/?tag=rubins-20">The RSpec Book</a></strong> <em>(Amazon.com)</em> by <strong>David Chelimsky</strong> (plus a cadre of BDD superstars) is a recent release from <a href="http://pragprog.com/">The Pragmatic Programmers</a> and a handy addition to any TDD-mad or RSpec-using developer's bookshelf. You can buy a copy <a href="http://www.amazon.com/RSpec-Book-Behaviour-Development-Cucumber/dp/1934356379/?tag=rubins-20">from Amazon.com</a>, <a href="http://www.amazon.co.uk/RSpec-Book-Behaviour-Development-Cucumber/dp/1934356379/?tag=boogsweblog-21">Amazon.co.uk</a>, or <a href="http://www.pragprog.com/titles/achbd/the-rspec-book">direct from the publisher</a> (more expensive but a PDF version is available).</p>
<h3>What is <em>The RSpec Book</em>?</h3>
<p><em>The RSpec Book</em> is a 400 page book by David Chelimsky (<a href="http://rspec.info/">RSpec</a>'s primary maintainer), Dave Astels, Zach Dennis, Aslak Hellesøy (of <a href="http://cukes.info/">Cucumber</a> fame), Bryan Helmkamp and Dan North. <strong>Its aim is to teach you all about RSpec <em>(RSpec 2.0 - specifically)</em> and BDD (Behavior Driven Development) from the ground up</strong> and it promises to "help you write better code, write better tests, and delver better software to your users."</p>
<p>Robert C. Martin (a.k.a. <em>Uncle Bob</em>) kicks off the book with a foreword that warns us of what's to come. He says that the book is a <em>trap</em> and isn't really about RSpec. I won't spoil the whole surprise of his delivery but his general point is that the book is focused on teaching you software <em>craftsmanship</em> using BDD (and testing in general) as the framework for putting together well-crafted software. This point is significant because <em>The RSpec Book</em> focuses on the <em>concepts</em> of BDD just as much as it does on the technicalities of RSpec itself.</p>
<h3>A Book of Five Parts</h3>
<p>The book starts with an extensive <strong><em>Getting Started</em></strong> section headed by a quick chapter summarizing RSpec and Cucumber before moving on to a suite of walkthrough-style chapters dedicated to building a 'code breaker' game. <em>Acceptance Test-Driven Planning</em> is used which essentially means the acceptance tests are written <em>first</em> in the form of Cucumber features so for two chapters you don't get to see any RSpec at all. Once RSpec comes into the mix, though, things move quickly and mocks (doubles) and stubs are introduced quickly. The 'code breaker' game work then continues for a couple of chapters with a brief detour into refactoring.</p>
<p>The second section of the book - <strong><em>Behavior Driven Development</em></strong> - is made up of two code-free chapters that look at BDD from a higher level. A lot of this portion is quite opinionated but if you want to get an overall feel for the BDD process and how different concepts interlock with it, it's a great primer.</p>
<p>The third section of the book - <strong><em>RSpec</em></strong> - proved to be the real "meat" for me. There are several chapters digging solely into the ins and outs of RSpec 2.0 itself. You learn how to use RSpec from the basics up, working through matchers, best practices, mocks, macros, custom formatters, custom matchers, and how the RSpec toolkit can integrate with other tools (such as TextMate). You basically get a 102 page guide to RSpec 2.0 here and that might be worth the price of admission alone.</p>
<p>Sections dedicated to <strong><em>Cucumber</em></strong> and <strong><em>Rails</em></strong> follow on to close the book. I found the Rails section particularly useful having not previously gotten on to the RSpec 2 bandwagon with Rails 3. There are several chapters that each walk through a particular topic, like view specs, controller specs, and model specs. I didn't want to digest the entire set at once and the structure helped me just dig into the parts I was immediately interested in without following each chapter in order. The large number of short and sweet code examples also helps if you're just scanning through looking for some guidance.</p>
<p>Given the significance of <em>The RSpec Book</em> and its time already spent out "in the wild" I asked my Twitter followers for some second opinions to round things off:</p>
<p><img src="/assets/2011/03/tw1.png" alt="" title="tw1" width="638" height="140" class="alignnone size-full wp-image-4492"><br>
<img src="/assets/2011/03/tw2.png" alt="" title="tw2" width="634" height="137" class="alignnone size-full wp-image-4493"><br>
<img src="/assets/2011/03/tw3.png" alt="" title="tw3" width="636" height="140" class="alignnone size-full wp-image-4494"></p>
<p>In short, I recommend <em>The RSpec Book.</em> The <a href="http://www.amazon.com/RSpec-Book-Behaviour-Development-Cucumber/dp/1934356379/?tag=rubins-20">reviews on Amazon</a> seem to be rather mixed so you might want to check them out to get the bigger picture, but I've found the book to be rather useful with its direct narrative style, logical structure, and vast number of short code examples from which to descry some handy techniques.</p>
<h3>Who Should Buy It?</h3>
<ul>
<li>Rubyists who want to get up to speed with RSpec 2.0 and, to a lesser extent, Cucumber</li>
<li>Rails 3.0 developers who want to learn how to do model, controller, view and integration testing with RSpec 2.0</li>
<li>Anyone with a high-level interest in BDD, even if they're not Ruby developers.</li>
<li>Anyone who thinks a small press like <em>The Pragmatic Programmers</em> is worth supporting (yes!)</li>
</ul>
<h3>Who Shouldn't Buy It?</h3>
<ul>
<li>Anyone expecting a wide overview of TDD and BDD toolsets and libraries. For example, I didn't find any references to Capybara, though Webrat is mentioned.</li>
<li>Any existing BDD, RSpec 2 and Cucumber gurus.</li>
<li>Die-hard Test::Unit users.</li>
</ul>
<h3>The Chapters</h3>
<p>Here's an overview of the Table of Contents to give you a feel for what's covered:</p>
<ul>
<li>Getting Started with RSpec and Cucumber
<ul>
<li>Introduction</li>
<li>Hello (and Installation)</li>
<li>Describing Features</li>
<li>Automating Features with Cucumber</li>
<li>Describing Code with RSpec</li>
<li>Adding New Features</li>
<li>Specifying an Algorithm</li>
<li>Refactoring with Confidence</li>
<li>Feeding Back What We’ve Learned</li>
</ul>
</li>
<li>Behaviour-Driven Development
<ul>
<li>The Case for BDD</li>
<li>Writing Software That Matters</li>
</ul>
</li>
<li>RSpec
<ul>
<li>Code Examples</li>
<li>RSpec::Expectations</li>
<li>RSpec::Mocks</li>
<li>Tools And Integration</li>
<li>Extending RSpec</li>
</ul>
</li>
<li>Cucumber
<ul>
<li>Intro to Cucumber</li>
<li>Cucumber Detail</li>
</ul>
</li>
<li>Behaviour-Driven Rails
<ul>
<li>BDD in Rails</li>
<li>Cucumber with Rails</li>
<li>Simulating the Browser with Webrat</li>
<li>Automating the Browser with Webrat and Selenium</li>
<li>Rails Views</li>
<li>Rails Controllers</li>
<li>Rails Models</li>
</ul>
</li>
</ul>
<h3>How to Get <em>The RSpec Book</em>
</h3>
<p>If you want a print copy (no Kindle - sorry!), head to <a href="http://www.amazon.com/RSpec-Book-Behaviour-Development-Cucumber/dp/1934356379/?tag=rubins-20">Amazon.com</a>, <a href="http://www.amazon.co.uk/RSpec-Book-Behaviour-Development-Cucumber/dp/1934356379/?tag=boogsweblog-21">Amazon.co.uk</a>, or your other favorite book retailer. If a PDF, EPUB or Mobi (Kindle) file is more to your taste, <a href="http://www.pragprog.com/titles/achbd/the-rspec-book">the publisher</a> has those for sale directly - super dooplebloops!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jamie Lawrence</strong> &middot; <time datetime="2011-03-14T20:34:00+00:00">March 14, 2011 at 8:34 pm</time></p>
      <p>The question I'm struggling with is how does The RSpec Book compare to Eails Test Prescriptions (<a href="http://pragprog.com/titles/nrtest/rails-test-prescriptions" rel="nofollow">http://pragprog.com/titles/nrtest/rails-test-prescriptions</a>) also by Pragmatic Programmers? Has anyone had a chance to compare them?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-03-14T20:39:00+00:00">March 14, 2011 at 8:39 pm</time></p>
      <p>I haven't read it but encourage anyone who has to comment :-)</p><p>The only thing I can say is that I'd expect RTP doesn't dig into the high-level BDD talk and doesn't cover RSpec 2 in the same depth separate from Rails.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Aronoff</strong> &middot; <time datetime="2011-03-14T23:41:00+00:00">March 14, 2011 at 11:41 pm</time></p>
      <p>I think the short version would be something like this: <em>Rails Test Prescriptions</em> is <i>all</i> Rails, and not primarily Rspec. (If anything it's mostly Test::Unit, though Rspec and Cucumber do get a chapter each.) On the other hand, <i>The Rspec Book</i> is not all Rails, but is <i>only</i> Rspec and company. I haven't finished it yet, but four chapters into <i>Rails Test Prescriptions</i> I'm finding it very clear and well-written.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>dotemacs</strong> &middot; <time datetime="2011-03-14T23:47:00+00:00">March 14, 2011 at 11:47 pm</time></p>
      <p>@Jamie Lawrence - I would recommend The Rspec Book over RTS. I'd say that Peter's review of the book is pretty accurate. The book teaches you Rspec 2, but also you pick up why and how those techniques were designed and where they derive from.</p><p>RTS, on the other hand, is more like a quick reference. It covers a wide array of testing toolset, some of it demonstrated with Rails 2 some with Rails 3. Others, just have a couple of pages about them. I'd say that it complements The Rspec Book.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>David</strong> &middot; <time datetime="2011-03-15T21:45:00+00:00">March 15, 2011 at 9:45 pm</time></p>
      <p>Nice review, think im going to get it form my local university library.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jamie Lawrence</strong> &middot; <time datetime="2011-03-16T21:05:00+00:00">March 16, 2011 at 9:05 pm</time></p>
      <p>Thanks for the replies... it sounds like The RSpec Book is the one for me. The title really is a bit misleading (and I of course meant *Rails* Test Prescriptions - damn, iPhone autocorrect!)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Lloyd Budd</strong> &middot; <time datetime="2011-03-17T17:22:00+00:00">March 17, 2011 at 5:22 pm</time></p>
      <p>Peter, it's wonderful to read your thoughts on this book, particularly with there being so few reviews.</p><p>Have you had a chance to read a draft of "Continuous Testing with Ruby: with Ruby, Rails, and JavaScript"? As a novice, on first read through I've found it much more practical-&gt;pragmatic. What's the point if not setting up with automation in mind from the start.</p><p>I can't help, but wonder if combined these two books would make a truly great book.</p><p>I plan to reread The RSpec Book, but on first read through I found it too much of the insiders perspective directed at an intermediate to advanced audience -- I'll readily acknowledge the title sets it up to be for a niche audience.</p><p>The Uncle Bob foreword was over the top. It is too too much of the Kool-Aid, which I guess could be a warning for what is to come.</p><p>I'm also disappointed that my questions and comments have had no response on the book's official forum: <a href="http://forums.pragprog.com/users/50061/posts" rel="nofollow">http://forums.pragprog.com/users/50061/posts</a> . I basically gave up on asking them. The sparse discussion there seems focused on code issues with the examples, or upgraded software.</p><p>I think this book has a lot of potential, and I did come away feeling that understanding it will contribute to my success, but I'll have to revisit once I have more experience to see if it then makes more sense to me.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-03-17T23:52:00+00:00">March 17, 2011 at 11:52 pm</time></p>
      <p>@Lloyd: I haven't, unfortunately! I actually get through a rather limited number of books due to the time involved. These tend to be the ones publishers or their PR types either send me automatically or e-mail me about specifically (big tip there for publishers, I like a sob story!)</p><p>Mostly agree with your comments, though I didn't find those elements unfortunate. Perhaps I am a bit too "close" to the topic to see these things as negatives though..</p><p>I'll see if I can get my hands on that other book. It sounds like it might well suit a lot of my readers better.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeff Poulton</strong> &middot; <time datetime="2011-03-23T22:26:00+00:00">March 23, 2011 at 10:26 pm</time></p>
      <p>I have been referencing this book for the past 6-8 months as it worked its way through beta. For better or worse, this book, along with Rasmusson's Agile Samurai, have been instrumental in my BDD/Agile learning curve. </p><p>I appreciate that the Rspec book has examples and sections in plain ruby, as well as providing Rails-specific content. One little gotcha. In the PDF version, the highly useful appendix listing Rspec's built-in matchers is incorrectly nested at the end of the Behavior-Driven Rails section. I tend to refer to this section of the book more than any other, but it's tricky to find.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Bethany</strong> &middot; <time datetime="2011-04-04T21:34:00+00:00">April 4, 2011 at 9:34 pm</time></p>
      <p>I didn't realize how much RSpec had that I wasn't using till I read the book. That could be seen as a total failure of the documentation (which is pretty weak I think) but luckily the book is more than just a Microsoft-esque reprinting of the help files. It really helped me understand some of the core concepts of BDD while learning how to use RSpec.</p><p>I'd give the book a solid 7 out of 10. It's well worth the price and I would recommend it for a novice BDD'er like myself.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
