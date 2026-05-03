---
title: A Review of ‘The Rails 3 Way’ by Obie Fernandez
date: '2010-12-20'
author: Peter Cooper
author_slug: admin
post_id: 4080
slug: review-of-the-rails-3-way-obie-fernandez-4080
url: "/review-of-the-rails-3-way-obie-fernandez-4080.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2010/12/tr3w.png" width="103" height="82" alt="tr3w.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"><a href="http://www.amazon.com/dp/0321601661/?tag=rubins-20"><b>The Rails 3 Way</b></a> is the much awaited, Rails 3-focused followup to <a href="the-rails-way-by-obie-fernandez-679.html">The Rails Way</a>, a popular Rails book (and, dare I say, <i>bible</i>) by Obie Fernandez. It features forewords by David Heinemeier Hansson and Yehuda Katz and checks in at a desk-thumping 759 pages of full-on Rails 3 goodness (despite the book sites claiming 850 pages). I've given it the once-over.</p>
<h3>My General Conclusion</h3>
<p><b><i>The Rails 3 Way</i> is an interesting book representing a large amount of effort digging into Rails 3.</b> It shares insights and technical knowledge you'd struggle to patch together from blog posts and documentation. <b>It's a</b> <i><b>very</b></i> <b>opinionated book and will not be to everyone's taste.</b> For starters, ERb isn't covered at all, instance variables in views are scowled at, and Test::Unit is treated with contempt.</p>
<p>It's <i>not</i> an introductory book in any sense and Obie acknowledges this in his introduction (Rails newbies need <a href="http://zfer.us/EKm97">Michael Hartl's awesome Rails Tutorial Book and Screencasts</a>). Obie bills it as a <em>"day-to-day reference for the full-time Rails developer"</em> - a fair description IMHO. The book feels disjointed in places and has a scattershot approach to what it cares to cover. You need to be clued up to digest this book properly and I discuss these feelings more at the end of this post.</p>
<p>For an intermediate to expert Rails developer (<i>especially</i> one yet to move to Rails 3) or an expert Rubyist new to Rails <b><i>The Rails 3 Way</i> is a useful book that unearths some of the trickier parts of Rails 3 that a professional needs to know about.</b> I recommend it - but not as wholeheartedly as the original edition for a number of reasons covered later in this post.</p>
<h3>Who Should Buy It?</h3>
<ul>
<li>Existing Rails 3 experts (to use as a reference and "refresher")</li>
<li>Rails 1.x and 2.x gurus who haven't yet made a serious effort with Rails 3 (as you'll know what parts are useful to you or not)</li>
<li>Confident Rubyists with an interest in Rails 3 (ditto)</li>
<li>People prepared to use the book as part of a wider library of Rails 3 books as the author intended</li>
</ul>
<h3>Who Shouldn't Buy it?</h3>
<ul>
<li>Anyone who doubts their confidence with Ruby and is unable to work around the book's flaws</li>
<li>Total newcomers to Ruby and Rails</li>
<li>People expecting an exhaustive reference to Rails 3</li>
</ul>
<h3>How to Buy The Rails 3 Way</h3>
<p><i>The Rails 3 Way</i> is currently <a href="http://www.amazon.com/dp/0321601661/?tag=rubins-20">available on Amazon</a> in paperback form ($31.49 at time of writing) and on the Kindle ($36.80), as well as in a PDF form ($35.99) <a href="http://www.informit.com/store/product.aspx?isbn=9780321601667">on InformIT</a>. You can also read it at no extra charge on <a href="http://my.safaribooksonline.com/">Safari Books Online</a> if you're a member (I recommend it - a great service and they even have an iPad app to read 1000s of tech books now).</p>
<h3><b>The Book's Structure</b></h3>
<p>To give you a taster, the main chapters are:</p>
<ol>
<li>Rails Environments and Configuration</li>
<li>Routing</li>
<li>REST, Resources, and Rails</li>
<li>Working with Controllers</li>
<li>Working with Active Record</li>
<li>Active Record Migrations</li>
<li>Active Record Associations</li>
<li>Validations</li>
<li>Advanced Active Record</li>
<li>Action View</li>
<li>All About Helpers</li>
<li>Ajax on Rails</li>
<li>Session Management</li>
<li>Authentication</li>
<li>XML and Active Resource</li>
<li>Action Mailer</li>
<li>Caching and Performance</li>
<li>RSpec</li>
<li>Extending Rails with Plugins</li>
<li>Background Processing</li>
</ol>
<h3>The Criticism</h3>
<p>As much as I recommend this book for its provenance, its uniqueness, and because, well, Obie is just a damn nice guy, a review is not a review without some insightful criticism. Sadly, I have some.</p>
<p><b>Those Strong Opinions</b></p>
<p>On Twitter, Obie Fernandez <a href="http://twitter.com/obie/status/15289337155420160">noted</a> that The Rails 3 Way is <i>"purposely opinionated and not an introductory book."</i> This is an understatement and a half. The Rails 3 Way is, like the framework it describes, <i>opinionated</i> but those opinions don't necessarily match with those of Rails itself. For example, ERb isn't covered at all. From the book:</p>
<blockquote><p>
  I think Haml is such a superior choice over ERb, that this edition does not cover ERb at all.
</p></blockquote>
<p>Not only this, but Haml isn't really explained with merely a reference to the <a href="http://haml-lang.com/">official Haml homepage</a> given. Not necessarily a <i>bad</i> thing but it makes the book unsuitable for developers without the confidence to accurately judge things for themselves. Haml may or <i>may not</i> be suitable for your project and you need to have figured that out before hitting this book.</p>
<p>I'm on the fence with Haml. It's not my cup of tea but I'm not in one of the strongly-opinionated hordes that <i>loves</i> or <i>hates</i> it. Its structure seems to produce rich benefits for many (<a href="http://survey.hamptoncatlin.com/survey/stats#question_9">approx 47% of respondents</a> to Hampton Catlin's 2010 Ruby Survey showed a preference for it). Not being a Haml user, though, I found the code examples relating to views more taxing to parse than I'd have liked. I suspect a Haml user would find well-formatted ERb easy to read and to re-implement as they wish.</p>
<p>The same issues with strong opinions pop up elsewhere. Test::Unit is ignored in deference to RSpec and a curious technique called <a href="https://github.com/voxdolo/decent_exposure">Decent Exposure</a> is pushed as a way to never use instance variables in your views.</p>
<p><b>Odd Structure and Patchy Coverage</b></p>
<p>This needs bulletpoints:</p>
<ul>
<li>The introduction starts: <em>"As I write this new introduction in the spring of 2010, the official release of Rails 3.0 is looming [..]"</em> As soon as I read this I had to tweet: <em>"Man, publishing is slooooow!"</em> But this lag represents no small part of some of my other concerns..</li>
<li>
<b>Many sections of the book feel curiously short or scattershot in their coverage.</b> The <i>AJAX on Rails</i> chapter is a mere 16 pages. The RSpec chapter is 33 pages long and provides only an overview (and says as much) though given the recent release of RSpec 2.0 and the new RSpec book, this may be a plus. Oh, and Rails Engines aren't discussed or covered at all except for a small sidenote that links you to <a href="https://gist.github.com/af7e572c2dc973add221#file_2_engine.rdoc">this</a>. It's not all bad though - some chapters are great, complete guides, such as <em>Active Record Associations</em> and <em>Advanced Active Record</em>.</li>
<li>
<b>A lot can be gathered from what's</b> <i><b>not</b></i> <b>covered or mentioned in the book:</b> Cucumber, Capybara, Selenium, Webrat, Searchlogic, SASS, factory_girl, thor, Mongrel, Passenger.. It wouldn't be expected for a book like <i>The Rails 3 Way</i> to go into depth with many of these tools but having no mentions of them when related issues are raised feels like a missed opportunity to give people some guidance or reminders.</li>
<li>
<b>The lack of Webrat is bizarre since the only full integration test in the book clearly uses it.</b> Webrat is neither mentioned nor explained. I have some sympathies for Obie on this, though, as I've found getting Webrat to run on Rails 3 with the latest RSpec to be nigh on impossible so far. <strong>Capybara (Webrat's <em>heir assumptive</em>) would be even better but that's not mentioned at all.</strong>
</li>
<li>In the introduction, Obie states: <em>"In cases where third-party code is better than the built-in Rails functionality, we don’t cover the built-in Rails functionality (pagination is a good example)."</em> This seems a reasonable course of action, but it would have been nice for this "better" code to be mentioned in a more formal way than as a single erroneously placed footnote on page 399 that was meant to link to attachment_fu..</li>
<p><img src="/assets/2010/12/tr3w-oops.png" alt="" title="tr3w-oops" width="520" height="182" class="alignnone size-full wp-image-4082"></p>
<li>
<b>The concept of using a different ORM than ActiveRecord is mentioned only once</b>, in the context of running <code>--skip-migration</code> on a <code>rails generate</code> in order to prevent ActiveRecord migrations being generated. Considering what a big deal ORM agnosticism was when developing Rails 3, this is a disappointment.</li>
<li>
<b>Concepts are sometimes used in code but not mentioned in the text.</b> In the RSpec chapter, for instance, the first example includes a call to <a href="https://github.com/thoughtbot/factory_girl">factory_girl</a>'s <code>Factory</code> method, yet nothing about factory_girl or the benefits of factories is covered. I only know it's factory_girl being called because the gem's name appears in the copy-and-pasted output from running <code>bundle install</code> 500 pages earlier. And why put a scope condition based on a <code>7.days.ago</code> call into a <code>lambda</code> when there are no params? <em>I</em> know why, but a note would be appreciated.</li>
<li>
<b>Tests are rarely used or demonstrated</b> except in the RSpec overview, <i>Working With Active Record</i> (4 test snippets in 39 pages), <i>Action Mailer</i> (once), and <i>Active Record Associations</i> (6 test snippets in 50 pages). Oddly, though, 4 stray instances of using Test::Unit instead pop up when writing a test for a <code>belongs_to</code> association - it's never used again anywhere else in the main part of the book..</li>
</ul>
<p><b>So I'm Unsure</b></p>
<p>I hesitated to post these criticisms because Obie's a great guy and the first edition of The Rails Way was epic and definitive. I'd hope someone can come along and say <i>"You read the book wrong! Here's why x, y, and z are like they are!"</i> but from my first run through, I'm torn. I'm a little saddened by what I perceive as flaws yet impressed by the sheer depth and pockets of brilliance.</p>
<p>Nonetheless, I recommend the book. It's a <b>flawed champ</b>. While there are other great Rails books in the pipeline, The Rails 3 Way offers a lot <i>right now</i>, as long as you're either happy to look past its flaws or skilled enough to mentally fill in the blanks..</p>
<p><i>The Rails 3 Way is currently</i> <a href="http://www.amazon.com/dp/0321601661/?tag=rubins-20"><i>available on Amazon</i></a> <i>in both paperback (at $31.49) and Kindle ($36.80) formats, or in a PDF version ($35.99)</i> <a href="http://www.informit.com/store/product.aspx?isbn=9780321601667"><i>on InformIT</i></a><i>.</i></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Ben Hughes</strong> &middot; <time datetime="2010-12-20T06:03:00+00:00">December 20, 2010 at 6:03 am</time></p>
      <p>When the first Rails Way came out I sat down in Barnes and Noble for 7 hours and read virtually the entire book; it was truly epic and made a huge difference in my development as a Ruby developer back then.</p><p>I will definitely look forward to reading the new edition (just about to order my copy), but many of the things you point out surely are disappointing.  I'm looking for a truly stellar book to recommend that covers Rails 3 exhaustively and I was hoping this would be it; we'll see.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-20T07:06:00+00:00">December 20, 2010 at 7:06 am</time></p>
      <p>You'll definitely find some interesting things in the book and learn a bit, but <em>a truly stellar book [..] that covers Rails 3 exhaustively</em>? This isn't the one. But in fairness, such a thing would be incredibly difficult or even impossible to pull off under a standard publishing model. Rails changes too quickly even now and even where Rails keeps things the same, the <em>ecosystem</em> around it changes. Capybara was barely on anyone's radar a year ago - now it's replacing Webrat all over.</p><p>The old publishing models aren't good enough for this, even when attaching "early release" or "beta" programs to them. There needs to be a new way to deal with things like this.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Doug</strong> &middot; <time datetime="2010-12-20T07:20:00+00:00">December 20, 2010 at 7:20 am</time></p>
      <p>Since the first book came out Obie founded HashRocket and his primary focus has shifted from programming and promoting himself as a freelancer to running and promoting a large business. A very opinionated business, run by a very opinionated man. The Hashrocket website even states that "Our founder, Obie Fernandez, wrote the 'bible' of Rails development and we are the world's foremost experts in Ruby on Rails programming". Really? Wow. What hubris.</p><p>From what I've read, heard, and seen, Hashrocket is an echo chamber. They think that the Hashrocket way is not only the best way to do things, but the only way. You can even pay them to let them sit amongst them and learn the Hashrocket way through their Space Cadet program. It sounds like this hubris has spilled over into the book. </p><p>Perhaps the Rails community and future readers would have been better served to have The Rails 3 Way written by another author, or for Obie to have titled the new book Rails 3 the Obie Fernandez Way.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ian Tindale</strong> &middot; <time datetime="2010-12-20T08:07:00+00:00">December 20, 2010 at 8:07 am</time></p>
      <p>I keep seeing this flaw all over the Internet, and it’s wrong — people should simply stop doing it. There’s really no point in giving arbitrary pricing in a foreign currency, especially when you don’t state which country you were thinking of in your head when you give those foreign prices. Invariably, those foreign prices simply don’t apply anywhere in the world without there being quite a strong variance from what would otherwise be simply a task of looking up the conversion rate and converting the foreign pricing to normal currency.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-20T08:33:00+00:00">December 20, 2010 at 8:33 am</time></p>
      <p>Fair enough though $ without any clarification typically refers to the US Dollar online. Even my British bank, Natwest, pointed this out when I was filling in paying-in slips and putting USD under the sign :-) In this case I linked only to Amazon.com and InformIT - both sites are priced in USD.</p><p>If you wish to buy it from Amazon.co.uk or another local bookstore, you can look for it there and see the local price, so I'm not sure what the problem is. If it's the focus on America and the USD, it's because they make up the plurality of visitors here. US English is also the official RI language for the same reason.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ben Pickles</strong> &middot; <time datetime="2010-12-20T12:21:00+00:00">December 20, 2010 at 12:21 pm</time></p>
      <p>Peter, could you shed any light on the *mental* pricing that makes an actual physical book *less* expensive than a digital one that has (basically) zero overhead for "printing", storage or delivery. What the heckins is going on?!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Adam Fitzgerald</strong> &middot; <time datetime="2010-12-20T12:48:00+00:00">December 20, 2010 at 12:48 pm</time></p>
      <p>No problem with criticism's in a review. That's the point :) Will still purchase for the office, but good to get some insights!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jakub Godawa</strong> &middot; <time datetime="2010-12-20T12:56:00+00:00">December 20, 2010 at 12:56 pm</time></p>
      <p>Thanks for the review! If this is not for Rails newbies and at once do not cover Rails 3 most valuable changes I don't see a point in buying it. </p><p>If what you say is true, that ActionModel is barely explained, Railties (Engines, Plugins) are ommited, basic production deployment not mentioned (Passenger, Capistrano), real testing (BDD or TDD) helpers forgotten (Shoulda, Capybara, factory_girl) then who is the target of that book? You say RoR experts/gurus - how does it refer to the holes in the book?</p><p>If what Doug says is true then I completely understand why book like this gets printed. It tries to target everyone (750 pages?? Wtf? Dostoyevsky?).</p><p>I like books that have clear target: beginners or non-beginners:<br>
- Ruby on Rails: Up and Running (2006, 2008), by Bruce Tate and Curt Hibbs for beginners<br>
- The Ruby Programming Language (2008), by David Flanagan, Yukihiro Matsumoto for non-beginners</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John</strong> &middot; <time datetime="2010-12-20T15:55:00+00:00">December 20, 2010 at 3:55 pm</time></p>
      <p>So "The Rails Way" does not really cover the Rails Way... interesting choice! :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Adam Kittelson</strong> &middot; <time datetime="2010-12-20T18:04:00+00:00">December 20, 2010 at 6:04 pm</time></p>
      <p>You just reminded me that I have a Safari Books Online subscription and got me all excited for their iPad app, but it looks like they pulled it due to a lack of awesome.</p><p><a href="http://safaribooksonline.wordpress.com/2010/11/24/ipad-app-safari-to-go-update-november-24-2010/" rel="nofollow">http://safaribooksonline.wordpress.com/2010/11/24/ipad-app-safari-to-go-update-november-24-2010/</a></p><p>Mobile site works fine though.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>iq9</strong> &middot; <time datetime="2010-12-20T20:58:00+00:00">December 20, 2010 at 8:58 pm</time></p>
      <p>Thanks for the review, Peter.  Picking up Obie's book shortly too.  Love you on The Ruby Show!  Keep up the good work.</p><p>Hey, I'm curious to hear your reasons for being "on the fence" with Haml.  I wonder what's not to like.</p><p>My experience is:</p><p>* Haml - Beautifully terse, elegant, server-side, 100% Ruby code, indented perfectly.  Beautiful, light HTML output, nested and indented perfectly.  (And because it's 100% abstracted, I can do cool things like flip a switch to instantly change my HTML output to adhere to different specs, for example, from XHTML 1 to HTML 5.  Try _that_, ERb!</p><p>* ERb - Complete server-side mess of mixed languages, contexts, and arbitrary indentation.  Disastrous HTML output (unless you are very diligent, of course, and know the tricks to make your HTML correct).</p><p>Not igniting a religious debate...  Just genuinely curious, because both you and Obie have opinons I respect.  :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-20T21:36:00+00:00">December 20, 2010 at 9:36 pm</time></p>
      <p>@iq9: I like HTML. I enjoy working with it. I like that it's pliable and that you can approach the same problem in multiple ways (something I like about Ruby too). But I don't like most Ruby attempts at creating DSLs for other languages (RJS always drove me nuts - JavaScript is much nicer). It's just more stuff to remember and ERb is as brain dead simple as it gets.</p><p>It's like how some people prefer driving stick because it makes them feel more "connected" to the engine in some hard to define way. I prefer driving HTML, but couldn't look down on anyone who prefers the structure of HAML because clearly it has some wins for certain types of people.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Grimm</strong> &middot; <time datetime="2010-12-20T23:52:00+00:00">December 20, 2010 at 11:52 pm</time></p>
      <p>@Ian: I'm an Australian, and I'm not offended by Peter just using "$". You can tell he's not referring to UK Pounds, or Euros, or Yen. As for Canadian or Aussie dollars, they're roughly at (or slightly better than) parity with the US$.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Grimm</strong> &middot; <time datetime="2010-12-20T23:52:00+00:00">December 20, 2010 at 11:52 pm</time></p>
      <p>Thanks (Peter and Obie) for the link to Decent Exposure - it made me think a bit about object-oriented programming in Ruby!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Philly</strong> &middot; <time datetime="2010-12-21T15:18:00+00:00">December 21, 2010 at 3:18 pm</time></p>
      <p>@Doug: The topic of discussion is a book, not how the author of the book runs his company. Stick to the topic or don't unnecessarily flame around. Thanks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>François Lamontagne</strong> &middot; <time datetime="2010-12-21T20:42:00+00:00">December 21, 2010 at 8:42 pm</time></p>
      <p>Thanks for writing this excellent review Peter! I am also on the fence with HAML. Yes it might be cleaner than erb but it is also one more DSL to learn. </p><p>Moreover if you have a design guy on your team, he will be right at home with erb... not quite the case with haml. Anyway, I'm using HAML at the moment in all my projects to really make up my mind whether I should stick with it or go back to erb. Maybe my opinion will change over time.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jon Wood</strong> &middot; <time datetime="2010-12-22T14:34:00+00:00">December 22, 2010 at 2:34 pm</time></p>
      <p>François: That's precisely why I still erb. I'm a big fan of HAML, and will use it if I'm the only person on a project, but most of the work I do for clients I'm going to be working with other people, and it's far more likely that they know how to do HTML with some Ruby embedded in it then HAML.</p><p>I have the same problem with Sass, which I love even more then HAML for making my stylesheets make some sort of sense.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-23T00:23:00+00:00">December 23, 2010 at 12:23 am</time></p>
      <p>@Jon: Though SCSS can almost get you to a best of both worlds. :-) </p><p>To anyone wondering why I might like SCSS and not HAML (yep, I use SCSS).. even though I dislike extra DSLs, CSS already has a strong structure and SCSS just adds a few conveniences to it. I pretty much only use the variables and the nesting features. These feel like they naturally extend CSS rather than replace it (as Haml does to HTML).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-23T00:24:00+00:00">December 23, 2010 at 12:24 am</time></p>
      <p>Someone wrote in to note that rspec-rails3 includes webrat as a dependency, so that may go a little way to explaining why it's not mentioned in the text. Following the way the book says to install RSpec, I didn't have any luck with this but thought I should make a note in the interests of fairness.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Doug</strong> &middot; <time datetime="2010-12-24T07:30:00+00:00">December 24, 2010 at 7:30 am</time></p>
      <p>@Philly </p><p>I'll leave the comment moderation to Peter Cooper, Philly. Not you. My point, as clearly stated in my comment, was that the author's hubris and personality were the cause of the book's failings.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Grimm</strong> &middot; <time datetime="2010-12-28T00:02:00+00:00">December 28, 2010 at 12:02 am</time></p>
      <p>@Peter</p><p>Thanks to the Decent Exposure link, I'm wondering about good books about Object Oriented programming in Ruby. When I asked in Stack Overflow, I was suggested "Design Patterns in Ruby" (which I've already read), and "Beginning Ruby", by you. Would you recommend "Beginning Ruby" as the best OO-related Ruby book?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-28T00:49:00+00:00">December 28, 2010 at 12:49 am</time></p>
      <p>Beginning Ruby is not specifically an OO book - just a full introductory book to an OO language. In terms of specific discussions and advanced examples of OO matters, it's not the book to choose. For that, books like The Ruby Way or The Well Grounded Rubyist would be better, though these assume you have a basic grounding in OO first (Beginning Ruby doesn't).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Scott</strong> &middot; <time datetime="2011-01-13T17:45:00+00:00">January 13, 2011 at 5:45 pm</time></p>
      <p>Are there any non-tutorial rails books that you recommend for beginners?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brandon</strong> &middot; <time datetime="2011-01-14T18:41:00+00:00">January 14, 2011 at 6:41 pm</time></p>
      <p>Great review Peter.</p><p>I just finished reading my copy of the Rails 3 way. While it's a largely opinionated book, in my opinion it's up to the reader how they receive the book. It's not the end all be all of Rails books, no one book will ever be. It was never meant to be a tutorial book, neither was the first. It's one authors opinions and methods as he dives into pieces of the Rails internals. Yes, some stuff was left out but it's not a book for beginners. It's a book for programmers/engineers... if there was something skipped in the book, or briefly touched upon then venture on to google and look it up! If Obie touched upon every single topic, and talked about every single one of his/hashrockets methods, this book probably be 1000 pages thicker.</p><p>All in all I thought it was a great book, and it's going to sit on my desk next to me along with my handy pickaxe, and Rails guides.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
