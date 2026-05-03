---
title: Does Ruby Need More Opinions?
date: '2006-08-24'
author: Peter Cooper
author_slug: admin
post_id: 207
slug: does-ruby-need-more-opinions-207
url: "/does-ruby-need-more-opinions-207.html"
categories:
- miscellaneous
- nonsense
---

{{< rawhtml >}}
<p>Today I read JesusPhreak's "<a href="http://jesusphreak.infogami.com/blog/why_py">Of snakes and rubies; Or why I chose Python over Ruby</a>" and it highlighted a few of the feelings that have been running around in my head lately regarding Ruby. He points out Python's wealth and depth of libraries, style guides, and how Python is wider used and less dependent on a single technology to promote it. While Rails is good, he seems to feel that Rails is defining the entire Ruby experience too much. I'm inclined to, sadly, agree.</p>
<p>While Ruby has a large life outside of Rails, Rails tends to define the experience for a great deal of new users. Whereas many newcomers to Python move to the language <em>because</em> of the language, a lot of people are only trying Ruby because of Rails. As matz has said, Rails is Ruby's killer app, but don't we need a much larger collection of solid systems and apps than a single killer app? Even amazing tools and libraries (Mongrel, for one) for Ruby tend to written with Rails in mind. Rails has a significant impact on the Ruby environment, and as <em>opinionated software</em> that means a single world-view is also being brought in.</p>
<p>I guess this post is my first step to thinking about the answers to all of this. I am using Ruby outside of Rails a great deal now and can see how powerful it is, but Python coders (and Perl coders, of which I am one also) certainly have a good point when pointing to the lack of a larger ecosystem with Ruby. It feels like the Ruby community agrees too much and prefers to centralize around existing projects than to reinvent the wheel. Reinventing the wheel feels like you're violating DRY, but.. just because the Rails opinion works for Rails, does it have to work for everything else?</p>
<p>I'd hate to have to learn Python to feel like I'm progressing as I've fallen in love with Ruby. So, is it possible to knuckle down, keep producing code, and end up with a development ecosystem as rich as that of Python or Java, or should we be looking to maintain a foothold in several languages, use the best features of each and tie them together with Web Services and the like?</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>ncalpunker</strong> &middot; <time datetime="2006-08-24T23:33:00+00:00">August 24, 2006 at 11:33 pm</time></p>
      <p>I think Ruby will outshine Rails (not that Rails needs any outshining) in the long run.  Ruby has been around for a long, long, long time.  But it is just now getting popular.  When is the last time you have seen a 10+ year old language just start to take off so late in its lifecycle?  I think Rails has been a great way to maket ruby to a group that might not have otherwised been interested.  I also feel/hope that Ruby will become more widely accepted going forward.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ncalpunker</strong> &middot; <time datetime="2006-08-24T23:39:00+00:00">August 24, 2006 at 11:39 pm</time></p>
      <p>One more thing...the author has only been programming for 1 year or so.  I think most developers (me inlcuded) that have used python for several years would favor Ruby more after going from Python to Ruby.  The Ruby language is far more elegant and simple.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>David F</strong> &middot; <time datetime="2006-08-24T23:51:00+00:00">August 24, 2006 at 11:51 pm</time></p>
      <p>Excellent post.  I think, however, that as the number of general purpose modules and libraries for Ruby grows, that Ruby will become more of an option for programmers looking to do general scripting, ala Perl/Python.  I think a lot of Ruby's weakness lies in it's relatively immature library selection - often when I have an obscure task to do, I will have to write the library myself (or debug an existing, abandoned, alpha stage library), whereas if I were using Perl or Python it would have (probably) been available already.</p><p>Having said that, new projects are being added to rubyforge every day, and it's only a matter of time until choosing between Python/Perl/Ruby will simply be a choice based on language semantics rather than available libraries.  When it comes down to only that, in my opinion, Ruby wins.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jason</strong> &middot; <time datetime="2006-08-25T01:24:00+00:00">August 25, 2006 at 1:24 am</time></p>
      <p>I read that article as well and to some extent I can actually agree with what he is saying. And I have used python for quite some time before moving to Ruby (mostly for Rails, as most people have). But I think a point needs to be made that most of the Ruby support and projects are less than 3 years old even though Ruby has been around for about 10 years. With Ruby being obscure outside of Japan for so long, the libraries were just not being produced like Python or Perl. I see that changing rather rapidly over the next serveral years and I see Ruby actually going ahead of Python, but again, all opinion. </p><p>Don't get me wrong, I actually like both languages. I just prefer Ruby these days.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-08-25T01:55:00+00:00">August 25, 2006 at 1:55 am</time></p>
      <p>I realize I've poorly stated part of my opinion here. I also think Ruby can overtake Python in the future, but I'm wondering whether to capture the "hearts and minds" of other developers that Ruby needs 'something' to get away from a Rails-centric mindset? All just thinking out loud of course. I love Rails, but I love Ruby more ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ben Kittrell</strong> &middot; <time datetime="2006-08-25T01:57:00+00:00">August 25, 2006 at 1:57 am</time></p>
      <p>Wow, that article is really stirring things up, I'm seeing people talk about it everywhere.  I enjoyed the article, and the things he says are true.   But they are not fundamental faults of Ruby, and will pass with time.  I know Ruby has been around, but it's popularity is young.  It takes popularity, acceptance and community to develop things like libraries and documentation.</p><p>From the Rails perspective, a large majority of the developers I see are not the type to go writing their own dbase module.  But it will come.  Either the libraries will be written for general Ruby use, then modified for Rails, or vice-versa.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James</strong> &middot; <time datetime="2006-08-25T03:54:00+00:00">August 25, 2006 at 3:54 am</time></p>
      <p>&gt; It feels like the Ruby community agrees too much and prefers to centralize around existing projects than to reinvent the wheel. </p><p>Wow.  I don't see that at all.    There are multiple Web frameworks,  ORMs, templating tools, XML/HTML parsers,  extension libs, and so on.  One just has to  look.</p><p>&gt; Reinventing the wheel feels like you're violating DRY, but.. just because the Rails opinion works for Rails, does it have to work for everything else?</p><p>It clearly doesn't, which is why other Ruby people are writing and using other Ruby software.    This is not repetition, but evolution in action.  A monoculture is  bad thing, and it's good that (so far) Ruby has been avoiding it.</p><p>All software is opinionated, and one only need poke around rubyforge or watch the "New Gems" RSS feed to see just how many opinions there are.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matt von Rohr</strong> &middot; <time datetime="2006-08-25T05:06:00+00:00">August 25, 2006 at 5:06 am</time></p>
      <p>I definitely agree with ncalpunker and David. The article makes some good points, although I couldn't image going away from ruby. Just looking at turbogears or pylons source code does raise a feeling in me: "it just does not feel right compared to rails". Although this is just a matter of personal taste (I have been programming Python before I changed to Ruby as a matter of fact). Nevertheless articles like this one are valuable, preventing you from blindly following your programmer's way, neither looking right nor left what's going on in the world.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Oleg Andreev</strong> &middot; <time datetime="2006-08-25T06:37:00+00:00">August 25, 2006 at 6:37 am</time></p>
      <p>Don't try to fall in love with prorgamming languages. They are not girlfriends (-;</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Greg</strong> &middot; <time datetime="2006-08-25T06:45:00+00:00">August 25, 2006 at 6:45 am</time></p>
      <p>I read the article yesterday as well. What I found most interesting were the comments. So many of them were very well thought out and reasoned arguments. I was impressed.</p><p> As a 'budding' ruby programmer, I must say that I have found it to do all of the tasks that I needed of it. When there was not a widget to solve the problem at hand I have been able to use Ruby to solve the problem.</p><p>In fact, my first project was re-writing a network monitoring app. It was in bash, and was quite huge and basically unreadable. I was able to hack together a Rubyised version in about a day. Totally readable, easy to follow code. That is very important to me, as six months from now when the Boss says 'we need it to do X as well!' it's going to be a lot easier to figure out what I was thinking when I wrote it. :)</p><p>My second project is a huge inventory program using Rails. Steep learning curve.</p><p>I think that even if Ruby is an 'older' language, it's still young. It's gaining mind share right now, and it's a good place to be. Sort of like Java developers in the early 90's. I just hope that Ruby never gets as bad as Java is today.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Juice10</strong> &middot; <time datetime="2006-08-25T07:21:00+00:00">August 25, 2006 at 7:21 am</time></p>
      <p>Well I guess there is only one thing we can do...<br>
Develop Django for Ruby ;-P</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Fabien Penso</strong> &middot; <time datetime="2006-08-25T07:55:00+00:00">August 25, 2006 at 7:55 am</time></p>
      <p>Well I love Ruby as a very object oriented language, but damned it's slow compared to python... And I don't want to write C extension to make it faster, no way, no time.</p><p>I worked on a python software that handles a lot of data and parse it. I started rewriting it in Ruby, made few tests. Too slow, I forgot about the idea, and I'm more thinking about rewriting it in C# (will be much much faster).</p><p>The only con I see of Ruby is its speed...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andy B</strong> &middot; <time datetime="2006-08-25T08:39:00+00:00">August 25, 2006 at 8:39 am</time></p>
      <p>I guess it depends on whether you're after one language to fit all, or if you just use what's appropriate. Ruby and Python are both good languages. If Rails is Ruby's killer-app, then fine, it's a good tool and I'll use it. If python is better for something I'm doing, I'll use that.</p><p>I suppose I'm just thinking that what Java has shown us is that we'll probably never see one language, for all applications, everywhere...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andreas</strong> &middot; <time datetime="2006-08-25T08:41:00+00:00">August 25, 2006 at 8:41 am</time></p>
      <p>killer apps tend to overshadow the rest of the eco system. But they lay out the groundwork for a much richer use of the underlying technology: in this case ruby. Just look at the integration of ruby on rails in MacOS X Leopard (I know ruby was integrated before). But maybe rubycocoa is coming too. Think of the possibilities: <a href="http://softwaretrenches.com/2006/07/rubycocoa_bundled_with_mac_os.html" rel="nofollow">http://softwaretrenches.com/2006/07/rubycocoa_bundled_with_mac_os.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rick</strong> &middot; <time datetime="2006-08-25T09:35:00+00:00">August 25, 2006 at 9:35 am</time></p>
      <p>Don't be so pessimistic or impatient , Ruby 1.9/2.0 will boost Ruby adoptation even more. Ruby is climbing to top ten on TIOBE Programming Community Index. Ruby probably done much more in its life time than the languages you compare with.<br>
What's more interesting is now Python community (at least GvR) tries to select one web framework as blessed one. Rails has become an example for others; we should use its advantages and work for increasing the diversity and number of alternatives at the same time.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-08-25T11:04:00+00:00">August 25, 2006 at 11:04 am</time></p>
      <p>Thanks for some of the opposing comments, that's what I wanted to see :) I guess agreeing with some of the Pythonistas points just got me a little pessimistic ;-) I think Ruby 2.0 will be a great step forward, as performance and Unicode support are the only two things stopping me from migrating <em>entirely</em> to Ruby.</p><p>Perhaps I'll stop pondering, write another library or tool that I need, and help solve the problem I'm thinking about ;-) Perhaps Ruby Inside's next contest could be for writing a library or Ruby tool? I could put a bit in but would probably want to collect prizes from others to make it more exciting and worthwhile to enter.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rick</strong> &middot; <time datetime="2006-08-25T12:39:00+00:00">August 25, 2006 at 12:39 pm</time></p>
      <p>We must be aware that pythonistas are masters of propaganda :-) They've been doing this for years. First they did this against Perl and with some help from Perl 6's unavailability and problems of Perl 5 they managed to gain some ground. Then the Rails thing came out and stole their show again. So they are repeating what they are good at. But Rails didn't get its success from propaganda. It was really good and different and people were talking about their positive experiences.  I personally don't waste my time with reading this kind of propaganda. Criticism from real Ruby users and adopters are much more valuable. One must try to learn and use a language before making comments about it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeremy</strong> &middot; <time datetime="2006-08-25T13:02:00+00:00">August 25, 2006 at 1:02 pm</time></p>
      <p>As a newcomer to Ruby (yes, via Rails) I find myself asking the same questions Peter does.  I would LIKE to program in Ruby outside of Rails, but it's easy to let Rails dominate your Ruby experience because web applications are sexy and pretty well defined. IOW it would be difficult for me to think of a non-web app project to do in *any* language right now.</p><p>But I would love to get more experience with Ruby outside of Rails.  Maybe what's needed is a "Ruby beyond Rails" tutorial.  I mean, yeah, I've read the pickaxe book but I'd love to read a  "Ruby Recipes" sort of book (if that's even possible).  Maybe it already exists, or maybe I'm on crack, but I very much agree with what Peter is saying.  Ruby is so deep that I fear I'm only using it as a toy rather than a full fledged tool.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-08-25T13:15:00+00:00">August 25, 2006 at 1:15 pm</time></p>
      <p>There is a Ruby Cookbook, just released by O'Reilly, see: <a href="http://www.oreilly.com/catalog/rubyckbk/" rel="nofollow">http://www.oreilly.com/catalog/rubyckbk/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dave Duchene</strong> &middot; <time datetime="2006-08-25T14:56:00+00:00">August 25, 2006 at 2:56 pm</time></p>
      <p>As far as I can tell, the "ecosystem" of libraries and tools available for Python / Perl is, for the most part, just a manifestation of Not Invented Here Syndrome.  I love that the Ruby community has the discipline and humility to focus their effort on a small number of projects, and would be very disappointed to see that change.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeremy</strong> &middot; <time datetime="2006-08-25T15:00:00+00:00">August 25, 2006 at 3:00 pm</time></p>
      <p>Awesome, thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Robert</strong> &middot; <time datetime="2006-08-25T21:06:00+00:00">August 25, 2006 at 9:06 pm</time></p>
      <p>What may look like a downside, I see as a great opportunity for the Ruby community. I think it is great that people are introduced to Ruby by the way of Rails. What disappoints me is when people just stick with Rails and have no interest in learning Ruby. It's fine if that is what you want to do, but Ruby is so powerful, so elegant, and so much fun to use - they are simply missing out.</p><p>More projects for Ruby are coming about because of Rails stirring interest in the language. A lot of books are being written this year about both Rails and Ruby. </p><p>A shameless plug, I am currently one of the Technical Editors for SAMS upcoming books, "Ruby Phrasebook" which has many little tutorials concerning Ruby.<br>
<a href="http://www.samspublishing.com/bookstore/product.asp?isbn=0672328976&amp;rl=1" rel="nofollow">http://www.samspublishing.com/bookstore/product.asp?isbn=0672328976&amp;rl=1</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Igwe</strong> &middot; <time datetime="2006-08-25T21:56:00+00:00">August 25, 2006 at 9:56 pm</time></p>
      <p>I'm having the very same problem the author had. I built an ecommerce application with Java a year ago before moving to Ruby. Now, the application uses a custom gateway accesed via a web service, but when I try to generate stubs using wsdl2ruby, I don't get errors upon errors. With java I never had this problem and this has me wishing there was a version of Apache AXIS for Ruby.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>M. Edward (Ed) Borasky</strong> &middot; <time datetime="2006-09-02T06:53:00+00:00">September 2, 2006 at 6:53 am</time></p>
      <p>Ah yes ... performance and Unicode. I can't help you with Unicode; the only human language I know is American English. But I *am* a performance engineer. Perhaps you've seen my rants on ruby-talk. Anyhow ...</p><p>1. While I'm impressed with YARV and the plans for Ruby 2.0, it's going to be a long time -- at least a year -- until YARV is ready for prime time. The "inner interpreter" of Ruby needs to be improved *now* -- at the 1.8.5/1.8.6 level. </p><p>I'm sure saying this is going to piss off a lot of people, but in my mind there is *absolutely* no reason not to recode some of the inner pieces of the Ruby interpreter in Intel/AMD assembler for Linux and Windows and the Intel Macs, and in Power PC assembler for the PPC Macs. Portability be damned -- over 90 percent of the places where Ruby is going to be put to practical use are covered by Intel/AMD or PPC.</p><p>2. Ruby application designers have *got* to resist the slogan "beware premature optimization" and learn how to engineer performance into an application. Of course, the same goes for all application programmers, but I'm sick and tired of hearing "premature optimization" being touted as an almost sacred "principle of agile development" along with DRY and YAGNI. You *are* going to need to pay attention to processor, memory and I/O utilization. You *are* going to need to pick efficient algorithms.</p><p>3. I don't think you can call what you do "test-driven development" unless your testing includes performance testing -- response time measurements, load testing, scalability testing, profiling, etc. Of course, since that's mainly what I do for a living, I could be expected to say that. :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
