---
title: A Review of The Book of Ruby – Pleasant Prose Meets Clumsy Code
date: '2011-07-18'
author: Peter Cooper
author_slug: admin
post_id: 5166
slug: the-book-of-ruby-review-5166
url: "/the-book-of-ruby-review-5166.html"
categories:
- controversy
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2011/07/the-book-of-ruby.png" alt="" title="the-book-of-ruby" width="170" height="225" style="float: right; margin-left: 18px; margin-bottom: 18px; border: 1px solid #666">I don't like being negative on Ruby Inside without good reason. Trivia like <a href="dhh-offended-by-rspec-debate-4610.html">DHH's test library preferences</a> can provide a fun talking point but pointing out specific flaws in someone's work is rarely <em>insightful.</em></p>
<p>I wasn't going to publish a review of this book but when I discussed the issues with people on IRC, Twitter and e-mail (to find second opinions), I was pressed to push on, primarily to serve as a warning to newcomers who may pick up this book. So, let's tread carefully..</p>
<h3>What is The Book of Ruby?</h3>
<p><strong><a href="http://nostarch.com/boruby.htm">The Book of Ruby</a> is a new Ruby book published by <em>No Starch</em></strong> (who, as a publisher, I love - <a href="http://nostarch.com/tlpi">The Linux Programming Interface</a> is one of the best books I've <em>ever</em> read) <strong>and written by <a href="http://www.rantsandraves.co.uk/">Huw Collingbourne</a>.</strong> It came out this month (July 2011) and is available in print and e-book formats as well as on the <a href="http://www.safaribooksonline.com/">Safari Books</a> subscription site.</p>
<blockquote class="stylized"><p>While other books focus on Ruby's trendier features, The Book of Ruby reveals the secret inner workings of one of the world's most popular programming languages, teaching you to write clear, maintainable code.</p></blockquote>
<p><cite>Sales page for TBOR</cite></p>
<p>This book was spawned from <a href="http://www.sapphiresteel.com/The-Book-Of-Ruby">a freely available PDF</a> Huw wrote in 2009, also called <em>The Book of Ruby.</em> (Notably, it's included with the Windows-based <a href="http://rubyinstaller.org/">RubyInstaller.</a>) But you can't just follow along with this review using the free PDF since it has been rewritten, tech-reviewed (supposedly by <a href="http://on-ruby.blogspot.com/">Pat Eyler</a>) and includes fresh stuff on Ruby 1.9 and Rails 3. The TOC remains similar, nonetheless.</p>
<h3>Who's Huw?</h3>
<p>Huw's main claim to fame is as author of Ruby In Steel, an awesome Ruby development environment for MS Visual Studio. I've promoted it several times in the past <em>(Update: Given Huw's personal attacks in response to this review, I am no longer doing so - you will need to Google it for yourself.)</em></p>
<p>Despite what I say about the book, I have nothing against Huw (having only traded a few e-mails) and have admired his work from afar. I can't believe how he gets so much done with his Visual Studio extensions.</p>
<h3>So, The Actual Review</h3>
<p>First impression: Huw writes well. He doesn't waste time and he's never "dry." He demonstrates a solid interest in Ruby and proceeds at a good pace through a wide selection of topics that'll be of interest to both Ruby newbies and more advanced developers.</p>
<p>Sometimes the coverage is a bit shallow. Despite the first chapter being called <em>"Strings, Numbers, Classes, and Objects"</em> — a pretty wide range of topics — it lasts a mere 13 pages. The <em>"Numbers"</em> section is 3 paragraphs long. This struck me as odd for a book whose sales blurb says: <em>"The Book of Ruby reveals the secret inner workings of one of the world's most popular programming languages"</em></p>
<p>The book is interesting as something to <em>browse</em> through or if you're an experienced developer from another language who's OK with learning one (frequently non-standard) way of doing something in Ruby. Huw moves quickly and frequently probes into some interesting elements of syntax and underlying language functionality on the way (mostly in the <em>Dig Deeper</em> sections at the end of each chapter - a nice touch).</p>
<p>Some chapters are notably strong and dig into some curious crevices. The chapters on Symbols, YAML (which rarely gets much coverage in other books), Marshal (ditto), Threads, and Conditional Statements are solid and you'll pick up some interesting tidbits. Little more than you'd pick up from <em>The Ruby Programming Language</em> or the <em>Pickaxe</em>, though.</p>
<p>At other points, things get a bit confused:</p>
<p><img src="/assets/2011/07/wtf.jpeg" alt="" title="wtf" width="459" height="137" class="alignright size-full wp-image-5172"></p>
<p>This is the first time I've read a book that claims to delve into <em>"secret inner workings"</em> where the author admits that they don't know the answer to a verifiable and straightforward problem. While he says that <em>I can't get Ruby to tell me</em>, Ruby <em>can</em> do so (this will work straight-off on MRI Ruby 1.9):</p>
<pre>require 'ripper'; require 'pp'; pp Ripper::SexpBuilder.new("puts{}.class").parse</pre>
<p><em>(A note for the intrigued reader: <code>{}</code> is being treated as a block being passed to <code>puts</code>. <code>puts</code> returns <code>nil</code> and then <code>class</code> is being called on that.)</em></p>
<p>Despite the odd confusing moment, though, the key issue with this book doesn't ultimately lie in the author's writing style or even his approach (which varies from fair to great, depending on the chapter). The main problems orient themselves around something more important than all of that..</p>
<h3>Inconsistent Code and Style</h3>
<p>The code in the book is inconsistent not only in regard to established Ruby style but from page to page of the book itself. It jumps between conventions even on basic issues (this is only scratching the surface):</p>
<pre>puts 'hello world'              # on page 1
puts( "Hello #{name}" )         # on page 2
puts(Class.to_s)                # on page 12
abc(a, b, c ){ puts "four" }    # on page 166</pre>
<p>The author makes a point on several occasions about how parentheses reduce ambiguity in the code, but if you like Lisp you'll love this book because there are parentheses almost everywhere. Except.. when they seem to get forgotten. You'll see one code sample full of them in a particularly un-Rubyish fashion and on the next page with none. Odd.</p>
<p>Similarly, the code has wandering indentation (even within single code examples). Rather than the 2 spaces to which Rubyists are most accustomed, the book uses 4 spaces. Sometimes 2. And sometimes 6. Actually, just pick a number between 1 and 6:</p>
<p><img src="/assets/2011/07/indentations.jpg" alt="" title="indentations" width="630" height="361" class="alignright size-full wp-image-5168" id="indentation"></p>
<p>Also be prepared to get almost no grounding on variable or method naming conventions. The author isn't keen on them and instead switches between <em>snake_case</em>, <em>allinasinglewordcase</em> and <em>CamelCase</em> on a whim.</p>
<p>When challenged on some of these issues elsewhere (notably <a href="http://www.reddit.com/r/programming/comments/ioor4/reviews_the_book_of_weird_ruby_and_eloquent_ruby/">on Reddit</a>), the author pointed to an article he wrote called <a href="http://www.bitwisemag.com/2/Programming-With-Style">Programming With Style</a> in which he said:</p>
<blockquote class="stylized"><p>So, when I switch from one programming language to another do I change my coding style to fit the language? The answer is: up to a point. Or, to put it another way: as little as possible.</p></blockquote>
<p><cite>Huw Collingbourne</cite></p>
<p>It's no surprise, then, that the style in this book is not only un-Rubyish but that it's not even consistent to any other language, it's a mishmash of Smalltalk, Java, C, and some odd language that has no consistency in indentation. Chad Perrin <a href="http://blogstrapping.com/?page=2011.197.13.23.05">wrote an article</a> about the issue in response to Huw's comments.</p>
<p>Chad sagely notes:</p>
<blockquote class="stylized"><p>I may disagree with Huw Collingbourne's choice of coding style, but do not much care if he uses it for his own private purposes. <strong>I just care that he replaces idiomatic style in a book designed to impress good programming practice on new students of the Ruby language.</strong></p></blockquote>
<p><cite>Chad Perrin</cite></p>
<h3>And Just Plain Weird Stuff™</h3>
<p>Some things in <em>The Book of Ruby</em> are just <em>weird</em>.</p>
<p>The author is not keen on <code>do .. end</code> for multi-line blocks and inconsistently drags out the curly brace form (usually reserved for one-liners) in <em>most</em> cases. Coupled to that, he frequently doesn't like putting block arguments on the same line as the start of the block either. This leads to rather unusual looking constructs. I have to show you an example. I've taken a screenshot of the book just in case you don't believe me (this is from page 173):</p>
<p><img src="/assets/2011/07/weirdcode.png" alt="" title="weirdcode" width="368" height="268" class="alignright size-full wp-image-5171"></p>
<p>Any competent Rubyist could understand this code but, and I know I'm not the only one here, seeing this sort of thing quickly leads to thoughts of <em>"Who wrote this!?"</em> and <em>"What's the deal here?"</em> Style is not solely an anally-retentive attempt to get everyone writing the same way. It's also a way to recognize who follows reasonable conventions and an indicator (like it or not) that can cause us to form a prejudiced opinion about someone's overall competence. This is as much true with programming languages as with spoken language.</p>
<p>Again:</p>
<p><img src="/assets/2011/07/inconsistency.jpg" alt="" title="inconsistency" width="640" height="71" class="alignright size-full wp-image-5167"></p>
<p>I'm not in the mood to trawl through the entire book picking it apart, but any experienced Rubyist will find a lot of nits to pick, including:</p>
<ul>
<li>The term 'interpolation' is never mentioned. It's introduced as 'embedded evaluation' and referred to as 'embedded' code throughout the book.</li>
<li>The <code>%w</code> array creation technique is explained as being <em>"unquoted text separated by spaces between parentheses preceded by %w"</em>, although parentheses, in particular, aren't mandatory at all.</li>
<li>Extra <code>then</code>s on <code>if</code>s all over the place. But not always. Just sometimes.</li>
<li>The <em>"Iterating over Arrays"</em> section explains one way to iterate over an array: the <code>for .. in ..</code> loop.</li>
<li>An attempt is made to see if an object has a singleton method called "congratulate" by using <code>item.singleton_methods.include?("congratulate")</code> - this won't work in Ruby 1.9 since <code>singleton_methods</code> returns an array of symbols, not strings. This matter is only cleaned up 2 pages after it's used.</li>
</ul>
<p>Many code examples are a little odd or inconsistent even given the context of the writing surrounding them. Just a handful:</p>
<p><img src="/assets/2011/07/oddities.jpg" alt="" title="oddities" width="640" height="500" class="alignright size-full wp-image-5169"></p>
<p>Chad Perrin talks about this more <a href="http://blogstrapping.com/?page=2011.194.11.46.40">in his review</a> of what he calls <em>The Book of Weird Ruby.</em></p>
<h3>Who Should Buy It?</h3>
<p>If you're an intermediate or expert Rubyist, you're probably going to pick up or be reminded of <em>something</em> useful, so it might help fill a few holes in your knowledge. It might also act as a grim reminder of why teaching and maintaining a consistent style is important.</p>
<p>If you're a total Ruby newbie, I think you'll learn too many bad habits from this book for me to recommend it with any sincerity. If you're still interested though, you'll already need to know what things like variables, methods and strings are (all are mentioned on the first page without any explanations) so it's not for <em>total</em> programming newbies. If you're willing to ignore the book on matters of style, give it a try, there's enough interesting stuff to see.. but you could just as easily read <em>Eloquent Ruby</em> instead and pick up things on both angles.</p>
<h3>The Chapters</h3>
<p>Here's a brief outline of the main contents (you can get a deeper look <a href="http://www.nostarch.com/download/bookofruby_toc.pdf">in this PDF</a>):</p>
<ol>
<li>Strings, Numbers, Classes, and Objects</li>
<li>Class Hierarchies, Attributes, and Class Variables</li>
<li>Strings and Ranges</li>
<li>Arrays and Hashes</li>
<li>Loops and Iterators</li>
<li>Conditional Statements</li>
<li>Methods</li>
<li>Passing Arguments and Returning Values</li>
<li>Exception Handling</li>
<li>Blocks, Procs, and Lambdas</li>
<li>Symbols</li>
<li>Modules and Mixins</li>
<li>Files and IO</li>
<li>YAML</li>
<li>Marshal</li>
<li>Regular Expressions</li>
<li>Threads</li>
<li>Debugging and Testing</li>
<li>Ruby on Rails</li>
<li>Dynamic Programming</li>
</ol>
<h3>In Conclusion</h3>
<p><strong>It's pleasant to read Huw's writing.</strong> He panders to the reader just the right amount and strikes a good balance between being over-familiar and dull. You'll enjoy his explanations and find his pacing pleasant for the most part, even if the depth isn't always there. As Steve Klabnik said <a href="http://groups.google.com/group/ruby-talk-google/browse_thread/thread/391a883bf54d3c3a/8cc20c549fd3eeaf?#8cc20c549fd3eeaf">on a ruby-talk discussion about the book</a>: </p>
<blockquote class="stylized"><p>I've actually read the book (admittedly skimmed in parts), and it's a fine book, with one exception: The author uses a very non-standard<br>
coding style. You can see it in the example chapter. So, good for learning, except no Ruby code you ever read will look like that.</p></blockquote>
<p><cite>Steve Klabnik</cite></p>
<p><strong>What kills the book, however, is its disregard for code consistency and long-standing Ruby style conventions.</strong> More worryingly, the author knows this and seems not to care. Tab-sizes jump from 4 to 6 and back again, there's bad spacing all over the place, there's no consistency with variable name formatting or the use of parentheses, and, in general, the style used is little like any Ruby code I've come across before (and I'm reviewing and code-walking Ruby code from hundreds of developers on a regular basis). If you learnt Ruby only from this book, you'd pick up a lot of bad habits to correct. I can't believe for a minute that the named tech reviewer, Pat Eyler (a stand up guy in the Ruby world), signed off on all of this without a fight.</p>
<p>Another comment from Reddit:</p>
<blockquote class="stylized"><p>When learning a new language we apply the idioms of what we know best from our past into this new language until we've learned the new language well enough to be fluent and use it's own idioms. However, I don't think any of us(except you Huw) would be so bold as to write a book half way through this process, having given up on learning idiomatic ruby and attempting to convince the rest of the world that your way is the best way.</p></blockquote>
<p><cite>crassnlewd</cite></p>
<p>This is the first No Starch book that has given me any doubts about their editorial process and I hope it's a mere aberration. The last two books I read from them, <a href="http://nostarch.com/ejs.htm">Eloquent JavaScript</a> and <a href="http://nostarch.com/tlpi">The Linux Programming Interface</a> seriously impressed me and continued the positive impression I'd formed over the years.</p>
<p>Usually this is where I'd link to ways to get the book. I'm not going to elaborate on this, however, as I don't want to profit from it. Google "The Book of Ruby" or find the link to No Starch's product page at the start of this review if you want to grab a copy.</p>
<p>Lately, if you think this review is missing the mark, feel free to leave a comment or head over to <a href="http://blogstrapping.com/?page=2011.194.11.46.40">Chad Perrin's review</a> which provides a slightly different take.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jeff</strong> &middot; <time datetime="2011-07-18T23:27:00+00:00">July 18, 2011 at 11:27 pm</time></p>
      <p>A review where you won't even drop an Amazon affiliate link? Oh snap!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-07-18T23:32:00+00:00">July 18, 2011 at 11:32 pm</time></p>
      <p>Even if I wanted to, it wouldn't help much:</p><p><em>Shipping this item to your default address may require an additional 1 to 3 weeks to process.</em></p><p>This morning it only had 1 still in stock so I guess someone bought that and they're waiting for the publisher. People seem to not want to buy if things aren't readily available..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dru</strong> &middot; <time datetime="2011-07-18T23:34:00+00:00">July 18, 2011 at 11:34 pm</time></p>
      <p>As a newbie I was looking forward to the release of this book for a while. Although I'm pass the basics of the language now, I'm sure you're helping/saving many would-be readers. Thanks Peter</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Bell</strong> &middot; <time datetime="2011-07-19T00:12:00+00:00">July 19, 2011 at 12:12 am</time></p>
      <p>I've only been programming professionally in Ruby for a few months (although I'm pretty experienced in a wide range of other languages). While I enjoyed the inimitable pickaxe book a few years back when I started to play with Ruby, I've got to give a shout out to Russ Olsen's "Eloquent Ruby". It was the perfect introductions to the idioms of the language and it's surrounding community for someone who might otherwise have continued to write Scala, Clojure, Groovy or (shudders) Java in .rb files. Highly recommended (and no Amazon affiliate link in site :) ).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-07-19T00:21:00+00:00">July 19, 2011 at 12:21 am</time></p>
      <p>I love, love, love Eloquent Ruby, and haven't met anyone who doesn't at least like it. I <a href="a-review-of-eloquent-ruby-by-russ-olsen-it-rocks-4432.html" rel="nofollow">reviewed it here.</a> Affiliate links are in sight on that one ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pankaj D</strong> &middot; <time datetime="2011-07-19T00:31:00+00:00">July 19, 2011 at 12:31 am</time></p>
      <p>I have read the earlier books <em>"The little book of ruby"</em> and <em>"The book of ruby"</em> free version , and this is how i got introduced to ruby , although i agree the author has tons of bad habits but at times they are helpful , there are some scenarios where you might even have to use a semicolon or bracket. And Eventually when i moved to <em>"Humble little ruby book"</em> and <em>Apress "Beginning Ruby"</em> i quickly dropped many bad habits, because i think it is in our nature to write better code if only we are aware of it. I don't think someone would purposefully want to write bad code or applications. So it is OK to read this book the ruby community is so awesome that sooner or later any newbie would improvise. I know i did. Also These book are pretty lightweight to start with and thus saves a newbie from procrastination and fear of length and complexity while starting.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-07-19T01:10:00+00:00">July 19, 2011 at 1:10 am</time></p>
      <p>I think that's a fair comment. As I say, I think a lot of the book is good. I just fear that some people might pick up bad habits from its style. Nonetheless, someone's who dedicated and happy to use lots of different resources to learn from at once should pick up the conventions over time.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>The Arcadian</strong> &middot; <time datetime="2011-07-19T01:25:00+00:00">July 19, 2011 at 1:25 am</time></p>
      <p>A while back i wrote a chapter for java certification study guide and the publisher/editor destroyed all of the code samples to the point where most were misformatted and many wouldn't even execute.  yeah, I'll say it again, a java certification study guide.  They did put a ton of errata on the website and eventually updated the book altogether - maybe that's what happened here.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>DGM</strong> &middot; <time datetime="2011-07-19T01:53:00+00:00">July 19, 2011 at 1:53 am</time></p>
      <p>Writing code is not the hard part.  Maintaining it is the hard part.  Sticking to the idiomatic forms make that job a lot easier, whether it is your own code, or code that someone else wrote.  A quality ruby programmer can write code that looks like art, and makes it easy for others to read.</p><p>Looking at those code examples left me saying things I won't repeat in print...  Yes, the code can work that way, but ... It's adding pain that doesn't need to be there in such a beautiful language as ruby.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luca</strong> &middot; <time datetime="2011-07-19T06:22:00+00:00">July 19, 2011 at 6:22 am</time></p>
      <p>To Mr Collingbourne I would like to say:</p><p>When someone tells you that you are an elephant, that doesn't mean you are an elephant.<br>
But when everybody offer you only peanuts, maybe you should start to worry.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Woodhouse</strong> &middot; <time datetime="2011-07-19T09:44:00+00:00">July 19, 2011 at 9:44 am</time></p>
      <p>Over the years I've read several series that Huw's written in (at least two) UK magazines, covering a number of different languages. In general, the code has been workable but stylistically variable (at least, where I had prior knowledge of the idiom for the language concerned). I think it's a real problem and his approach to coding style is probably inappropriate when working in an instructional medium: it essentially ignores (at best) and is both divisive and deeply disrespectful to (at worst) the existing community.</p><p>It's a shame, because in prose he often communicates particularly well. While I may be wrong, I kind of get the feeling that Huw's not really a developer first and foremost (from following the development of Ruby In Steel I believe most of the hard-core work was done by his business partner <a href="http://www.sapphiresteel.com/info/company/about-us" rel="nofollow">Dermot Hogan</a>).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-07-19T11:36:00+00:00">July 19, 2011 at 11:36 am</time></p>
      <p>@Mike: Thanks for the background info. Yeah, he has lots of experience and that page even says he has an MA in English from Cambridge, so I guess it's no surprise he knows how to write well :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeff</strong> &middot; <time datetime="2011-07-19T18:53:00+00:00">July 19, 2011 at 6:53 pm</time></p>
      <p>Eloquent Ruby is a _fantastic_ book for people coming from other languages and want to learn about Ruby's style and idioms.</p><p>And style is pretty much Ruby's central premise -- so if you don't learn that, what's the point?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Huw Collingbourne</strong> &middot; <time datetime="2011-07-19T21:35:00+00:00">July 19, 2011 at 9:35 pm</time></p>
      <p>Thanks for the review, Peter. And all the comments that followed. I can't say I am surprised that many Ruby programmers dislike The Book Of Ruby. I take a very clear approach to programming which is at odds with the preferences of many Ruby programmers. I have outlined my approach here: <a href="http://www.bitwisemag.com/2/Programming-With-Style" rel="nofollow">http://www.bitwisemag.com/2/Programming-With-Style</a></p><p>Bear in mind that I've been programming for about 25 years or so now and, in that time, I have developed some pretty strong views. My overriding goals in programming are clarity and maintainability. As I state in my introduction to the book, I don't object to other people adopting coding conventions that differ from mine if they find them useful. That, however, is not what my book is about.</p><p>The Book Of Ruby was originally written for our internal use when developing the IntelliSense inference engine (in effect a sort of Ruby interpreter) for the Ruby In Steel IDE. This project revealed two things about many of the Ruby projects we tested with: 1) many Ruby programmers embrace certain coding-styles for aesthetic reasons at the risk of introducing ambiguity and 2) Ruby often doesn't behave quite as it's documented.</p><p>The upshot is that I wrote several hundred Ruby programs (the backbone of this book) to test Ruby. In so doing, I realised that many of the ambiguities would be easily resolved by adopting different coding conventions. The thrust of the book is to explain the 'behind the scenes' behaviour of Ruby (which is what we needed to understand to create our IntelliSense engine). I don't preach a particular coding style. I have my own strong preferences but that is not my interest in the book so I simply explain why I code the way I do, explain that other Ruby programmers prefer a different coding style but, fundamentally, that is not a topic that I consider to be of the most compelling interest when writing clear, maintainable Ruby code.</p><p>Thanks again for taking the time to put forward your views at such length.</p><p>best wishes</p><p>Huw</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James Britt</strong> &middot; <time datetime="2011-07-20T05:27:00+00:00">July 20, 2011 at 5:27 am</time></p>
      <p>Interesting review, Peter.  You're more charitable than I am.  I went to Amazon to see if it was listed there and found  a single review of four stars.  I am now in the middle of countering that.  My overall opinion: Stay away; this book may do more harm than good.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Huw Collingbourne</strong> &middot; <time datetime="2011-07-20T12:47:00+00:00">July 20, 2011 at 12:47 pm</time></p>
      <p>I don't propose to enter into a long argument. However, I do want to give my own comments to Peter's review and I have done so here: <a href="http://www.bitwisemag.com/2/Ruby-Style-Wars" rel="nofollow">http://www.bitwisemag.com/2/Ruby-Style-Wars</a></p><p>best wishes</p><p>Huw</p>
    </li>
      <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2011-07-21T15:35:00+00:00">July 21, 2011 at 3:35 pm</time></p>
      <p>The code inconsistencies actually remind me of reading real Ruby code.  It always seems to vary just a little bit from developer to developer...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Herman</strong> &middot; <time datetime="2011-07-21T20:10:00+00:00">July 21, 2011 at 8:10 pm</time></p>
      <p>I just read Huw's comment on your review, for someone who doesn't care, he is a bit strong.  I too have been programming for over 30 years, and if there is one thing I have learned is that style does matter. It's what makes a program you wrote years ago as legible as the one you are writing now, and it does not matter if you write it in basic, pascal, c, or their newer equivalents.  The trouble is that if you have been programming a lot with windows based ide's, they do a lot of the styling for you, and it is easy to disregard it. If later you move to other editors that are not so integrated, you have to adopt a style you never developed, nor cared about. The compiler/interpreter, whatever does not care about your style, so your program will run, but unless you plan to live on an island, some degree of consistency should be obvious. If I am writing something, and get stuck, how can I ask for help, if they can hardly read my code.  When I taught code, I always made sure it was consistent, clear and written in the same way as my students will encounter it in the wild. So while I have not read the book, I do not like the <i>I don't care</i> attitude from the teacher.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Milan Dobrota</strong> &middot; <time datetime="2011-07-24T03:00:00+00:00">July 24, 2011 at 3:00 am</time></p>
      <p>Hold on. So you want to figure out the purpose of {} in:</p><p>&gt; puts{}.class<br>
 =&gt; NilClass </p><p>It is either this:</p><p>&gt; puts({}.class)<br>
Hash<br>
 =&gt; nil </p><p>or this:</p><p>&gt; (puts{}).class<br>
 =&gt; NilClass </p><p>Easy.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-07-26T16:16:00+00:00">July 26, 2011 at 4:16 pm</time></p>
      <p>Huw has failed to return here to mention he has written a somewhat more vitriolic response at <a href="http://www.bitwisemag.com/2/The-Book-Of-Ruby-A-Heretical-Text" rel="nofollow">http://www.bitwisemag.com/2/The-Book-Of-Ruby-A-Heretical-Text</a></p><p>Prior to this, I was happy in a pleasant, agree to disagree manner. The book wasn't written by a Rubyist, cool, now I get it. But with this bizarre post racked with ad hominems, he has shown himself up as, additionally, unprofessional and passive agressive IMHO. If that's the sort of author you choose to follow, beware.</p><p>It's a shame, too, as till I saw that post, I was pretty happy with the outcome of our debate. I guess Huw was not.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matthew</strong> &middot; <time datetime="2011-07-26T21:08:00+00:00">July 26, 2011 at 9:08 pm</time></p>
      <p>Have to say, his response sounded more tongue-in-cheek than scathing. And unless all the comments he quotes were written by you, it reads more like he's complaining about the community's general responses to his work.</p><p>Granted, looking at the snippets of code you've quoted, he has completely missed the mark regarding accepted community best style practices, a crime that the community does punish. He seems to think that there is still so much debate, and has completely missed the overriding conclusion that Consistency Is King.</p><p>That said, if I were coming to Ruby from Java, I might find his love of { curlies } more readable, might even be swayed towards Ruby by the fact you can do <code> for i in (1..6) </code> (which is a form of the most readable looping mechanism known to many languages). </p><p>He is clearly not a guru of ruby best practices, but he does have wares to peddle. It's his right to spin-doctor the community response, though buyer beware ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Murray Bozinsky</strong> &middot; <time datetime="2011-08-04T21:44:00+00:00">August 4, 2011 at 9:44 pm</time></p>
      <p>I have to agree with Peter, especially on No Starch Press. I have the TCP/IP, Hacking, Land of Lisp books and have skimmed a few others that seriously impressed me and are on my list to buy. Skimming Huw's book made me think it was an Apress book or some other uneven publisher.</p><p>Huw's response to the criticism is more telling and even if his next book is the best technical book ever written I doubt I would ever buy it. Heck, I have a few books that Obie has written/edited even though he can be a bit caustic at times and am going to order *** ****'s Python book soon, even though calling him caustic is an understatement(at least his public persona) and his book is available for free. So I don't expect the more public figures in programming to be angels, but Huw has been very dishonest over this minor ruckus.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>The Arcadian</strong> &middot; <time datetime="2011-08-11T03:56:00+00:00">August 11, 2011 at 3:56 am</time></p>
      <p>I gave the author the benefit of the doubt in my above comment but after reading his "defenses" on other sites its clear that he really doesn't get it.  Ruby is not a C-style language littered with parentheses and braces and to present it to newcomers as such does a tremendous disservice to readers, the community, and Ruby itself.</p><p>If I sound a little passionate its because I'm writing some performance-critical code tonight in C++ and am being forced to write lines like:<br>
<code><br>
std:vector:iterator p = std:lower_bound(list.begin(), list.end(), key);<br>
if (p==list.end()) {return nil;}<br>
return p - list.begin();<br>
</code><br>
instead of just gorilla punching Array with a binary search function and writing:<br>
<code><br>
list.bin_find(key, exact=false)<br>
</code></p>
    </li>
      <li>
      <p class="comment-meta"><strong>The Arcadian</strong> &middot; <time datetime="2011-08-11T03:59:00+00:00">August 11, 2011 at 3:59 am</time></p>
      <p>oops my vector type got tag-munched but you get the picture  :-)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
