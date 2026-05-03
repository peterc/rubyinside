---
title: DHH Offended By RSpec, Says Test::Unit Is Just Great
date: '2011-03-29'
author: Peter Cooper
author_slug: admin
post_id: 4610
slug: dhh-offended-by-rspec-debate-4610
url: "/dhh-offended-by-rspec-debate-4610.html"
categories:
- controversy
- news
---

{{< rawhtml >}}
<p><img src="/assets/2011/03/dh-rofl-h.gif" alt="" title="dh-rofl-h" width="120" height="158" class="alignnone size-full wp-image-4611" style="float: right; margin-left: 18px; border: 1px solid #333">As an outspoken and opinionated guy, <a href="http://loudthinking.com/">David Heinemeier Hansson</a> (a.k.a. DHH), creator of Rails, is no stranger to a little bit of <a href="david-heinemeier-hansson-says-no-to-use-of-rails-logo-567.html">controversy</a>.  He frequently sets off interesting debates on Twitter from his <a href="http://twitter.com/dhh">@dhh</a> account. The latest is, perhaps, the most involved yet and has been rattling on for a couple of hours today.</p>
<p>So what's the beef? <strong>RSpec and Cucumber versus.. Test::Unit.</strong> It's no secret that DHH is a happy Test::Unit (and fixtures) user. Last October he tweeted:</p>
<p><img src="/assets/2011/03/dhh0.png" alt="" title="dhh1" class="alignnone size-full wp-image-4612"></p>
<p>But here's what kicked off today's debate:</p>
<p><img src="/assets/2011/03/dhh1.png" alt="" title="dhh1" class="alignnone size-full wp-image-4612"><br>
<img src="/assets/2011/03/dhh2.png" alt="" title="dhh1" class="alignnone size-full wp-image-4612"><br>
<img src="/assets/2011/03/dhh3.png" alt="" title="dhh1" class="alignnone size-full wp-image-4612"><br>
<img src="/assets/2011/03/dhh4.png" alt="" title="dhh1" class="alignnone size-full wp-image-4612"></p>
<p>Naturally, this brought a plethora of heckles, support, snark, and questions from DHH's followers, including:</p>
<p><img src="/assets/2011/03/dhh5.png" alt="" title="dhh1" class="alignnone size-full wp-image-4612"><br>
<img src="/assets/2011/03/dhh6.png" alt="" title="dhh1" class="alignnone size-full wp-image-4612"><br>
<img src="/assets/2011/03/dhh10.png" alt="" title="dhh1" class="alignnone size-full wp-image-4612"><br>
<img src="/assets/2011/03/dhh8.png" alt="" title="dhh1" class="alignnone size-full wp-image-4612"></p>
<p>More specifically, though, DHH noted that <a href="https://gist.github.com/893027">this gist comparing some Test::Unit tests to RSpec</a> triggered his statements.</p>
<p>But back to the debate. JD Skinner asked: <em>What testing tools do you use/recommend?</em> DHH replied:</p>
<p><img src="/assets/2011/03/dhh7.png" alt="" title="dhh1" class="alignnone size-full wp-image-4612"></p>
<p>Jeremy Welland asked: <em>So why do you think RSpec/shoulda's approach is so popular?</em> DHH's response:</p>
<p><img src="/assets/2011/03/dhh9.png" alt="" title="dhh1" class="alignnone size-full wp-image-4612"></p>
<p>The debate rattled on for a few hours amongst various Ruby developers on Twitter (including Dave Thomas and Bryan <em><a href="http://smartic.us/2008/08/15/tatft-i-feel-a-revolution-coming-on/">TATFT</a></em> Liles) and if you want to really dig into it, check out <a href="http://twitter.com/dhh">DHH's Twitter account</a> and follow through some of the responses.</p>
<p>I agree with DHH for the most part, though I use a mixture of RSpec, Test::Unit, and Minitest just to "keep my hand in." RSpec (and BDD) did seem to become "the way" to do testing in many circles, though, even when it didn't present any significant benefits. Cucumber, following on from RSpec, had a similar experience.</p>
<p>This debate is important, though, not because DHH is right or wrong or because one testing system is better than another, but because it wipes away some of the lines in the sand and assumed "correct way" attitudes that exist. If you want to use Test::Unit, it's not "old and uncool" (yes, I've heard this) and you should get on with it (DHH is using it fer chrissakes.) Likewise, RSpec and Cucumber are not panaceas or catch all solutions but may have significant benefits you <em>can</em> take advantage of.</p>
<p>Research your options and pick the tool that makes sense for you and your team. DHH has and he's sticking with Test::Unit. What's your take on it?</p>
<p><em>Update: DHH recommends <a href="http://objectreload.com/articles/2010/09/thoughts-on-testing-part-1.html">this post about testing</a> which suggests you check out Test::Unit first before considering more extensive frameworks. A good read!</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>DGM</strong> &middot; <time datetime="2011-03-30T00:05:00+00:00">March 30, 2011 at 12:05 am</time></p>
      <p>It sems like cucumber is an extra step on top of testing, only useful for showing an intermediate step between no coders and coders.  I have now use for it; non-coders don't need to see my tests. They don't care.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark Coleman</strong> &middot; <time datetime="2011-03-30T00:06:00+00:00">March 30, 2011 at 12:06 am</time></p>
      <p>This is just like "which is better, Ruby or PHP?" or jazz vs. pop. There is no 'correct' answer, just a bunch of people with different tastes and opinions. I'll use the tools that suit me best, and I'll be happy.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sarah Allen</strong> &middot; <time datetime="2011-03-30T00:07:00+00:00">March 30, 2011 at 12:07 am</time></p>
      <p>In evaluating test frameworks, I believe that looking at the output for test failures is more important than the syntax for developing tests.  I find that when I really need a test framework to be clear and effective is when my tests are unexpectedly failing (or when teaching).  A while back I compared test::unit, rspec, and shoulda:  <a href="http://www.ultrasaurus.com/sarahblog/2009/08/ruby-unit-test-frameworks/" rel="nofollow">http://www.ultrasaurus.com/sarahblog/2009/08/ruby-unit-test-frameworks/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>dotemacs</strong> &middot; <time datetime="2011-03-30T00:20:00+00:00">March 30, 2011 at 12:20 am</time></p>
      <p>Hey Peter, didn't you tweet about a year ago how you don't follow @dhh?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-03-30T00:29:00+00:00">March 30, 2011 at 12:29 am</time></p>
      <p>I might have. It's not necessary to follow someone to see their tweets. Also, you still see someone's tweets if someone you follow retweets them (unless you block them - but I like seeing the "best of" DHH that other people retweet). That's what happened in this case.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Geoffrey Grosenbach</strong> &middot; <time datetime="2011-03-30T00:39:00+00:00">March 30, 2011 at 12:39 am</time></p>
      <p>I think the modern Test::Unit replacement in Ruby 1.9 is underappreciated. </p><p><a href="http://bfts.rubyforge.org/minitest/" rel="nofollow">Minitest</a> has built-in "describe" and "it" blocks for readable test names and easy grouping. And it was built from the ground up for speed and simplicity. It even has simple chained matchers (like RSpec) and a minimal mocking facility.</p><p>And a major contributor was none other than the original author of RSpec...Steven Baker!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-03-30T00:46:00+00:00">March 30, 2011 at 12:46 am</time></p>
      <p>Agreed. I've been meaning to do a brief how-to on minitest/spec here.. I better pull my finger out.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matias</strong> &middot; <time datetime="2011-03-30T00:57:00+00:00">March 30, 2011 at 12:57 am</time></p>
      <p>Ok, so DHH says that he doesn't like Rspec, that's just fine.<br>
But saying that he's actually sad about its proliferation, that's too much.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-03-30T01:00:00+00:00">March 30, 2011 at 1:00 am</time></p>
      <p>The idea of "offense" also struck me as a bit odd but he's not one for understatement!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joe Fiorini</strong> &middot; <time datetime="2011-03-30T01:17:00+00:00">March 30, 2011 at 1:17 am</time></p>
      <p>I like RSpec more for it's specdoc output than anything else. Cucumber keeps me from writing too much code, and from forgetting exactly what I'm trying to solve. I couldn't imagine life without it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Marlon Moyer</strong> &middot; <time datetime="2011-03-30T01:53:00+00:00">March 30, 2011 at 1:53 am</time></p>
      <p>I just started my first project using RSpec.  The impetus behind this was that all the tools that helped me avoid the startup costs of Ruby 1.9 and Rails.  Running RSpec with Spork is simple compared to getting it to work correctly with Test/Unit.  When I was using TestUnit, all the tools seemed to be aimed at RSpec.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joel Helbling</strong> &middot; <time datetime="2011-03-30T03:06:00+00:00">March 30, 2011 at 3:06 am</time></p>
      <p>I'm with Joe, RSpec's output is nice.</p><p>And Cucumber...complex?  Seriously?  I'm often kinda embarrassed when I explain to folks how it works.  It's so simple, even a cave man could do it.</p><p>I like RSpec and Cucumber, and @dhh's proliferation makes me sad.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Austin Schneider</strong> &middot; <time datetime="2011-03-30T03:08:00+00:00">March 30, 2011 at 3:08 am</time></p>
      <p>There's a pretty big gap between what a user wants to accomplish and specs; which cucumber fits the bill perfectly. Why does this method return true if the provided email and password match a record in the database? Oh, because the user wants to sign in to view his stuff. Scenarios drive specifications, which drive code. This process works excellent for me, and keeps my eye on what's important.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Evan Light</strong> &middot; <time datetime="2011-03-30T03:23:00+00:00">March 30, 2011 at 3:23 am</time></p>
      <p>And there's nothing new here.</p><p>Plenty of us have been saying it for some time.  This isn't net.  TDD/BDD is about the process and not the tools.</p><p>Use what works best for you.  But, please, do actively consider what works best for you.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Lance Carlson</strong> &middot; <time datetime="2011-03-30T06:52:00+00:00">March 30, 2011 at 6:52 am</time></p>
      <p>Is there an alternative to cucumber using test::unit and following the same principals of simplicity? I personally have a bit of a gripe with stories and wish there were more people on the side of making acceptance tests not rely on stories and just let you get to the basics with ruby code. I'm assuming you can just use capybara without writing the cyclist stories and marchers but I really haven't seen much support for this or using this sort of acceptance testing style with test::unit. In my case and in DHH's case, I'm the client so I can do without non coder written specs. I also feel that if you need to generate some sort of story output, one could be extracted from your low level ruby based acceptance tests. Ruby is more flexible than reg ex.</p><p>Disclaimer: written from my phone so please excuse minor spelling errors :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jack Kinsella</strong> &middot; <time datetime="2011-03-30T07:22:00+00:00">March 30, 2011 at 7:22 am</time></p>
      <p>Dave is right about Cucumber. Think about all the times your cukes have failed because you wrote "And I visit the seller's overview page" instead of "And I am on the seller's page". </p><p>The units of YOUR memory required to keep a cucumber step definition recalled is much higher than a webrat step for ("visit overview_seller_path" in this case), and requires much less work to implement (less typing, no need to map "seller's overview page" in paths.rb).</p><p>Cucumber adds a whole layer of complexity to your integration tests and have no place in projects which aren't client facing.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rob Gleeson</strong> &middot; <time datetime="2011-03-30T08:37:00+00:00">March 30, 2011 at 8:37 am</time></p>
      <p>I agree with DHH here, and that's rare ;-)</p><p>By the way, for all those who don't like the output of MiniTest or test/unit, check out <a href="https://github.com/TwP/turn" title="Turn" rel="nofollow">Turn</a>.</p><p>It's as simple as require "turn" in your test helper, and then you've got pretty and descriptive test output.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Morgan</strong> &middot; <time datetime="2011-03-30T08:46:00+00:00">March 30, 2011 at 8:46 am</time></p>
      <p>I occasionally use Shoulda, but only for a tiny bit of context/should syntactic sugar, never macros or anything else.  The rspec/cucumber worship has never made sense to me, but I'm not now and never have been a contractor.  I've found that the best predictor (not 100%, but strong correlation) is that contractors seem to care deeply about rspec/cucumber, where FTEs find them fragile and unnecessary.</p><p>Personally, I especially loathe rspec's assertion syntax. <i>shudder</i></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matt</strong> &middot; <time datetime="2011-03-30T09:29:00+00:00">March 30, 2011 at 9:29 am</time></p>
      <p>Thanks for recommending our article on testing (I'm the founder of Object Reload). We're happy to see people finding our tips useful.</p><p>Geoffrey: We actually profiled test/unit vs. minitest in one of our applications and minitest's claim that it was build for speed simply didn't hold up. They both performed similarly, with test/unit often coming on top. Obviously, your mileage may vary.</p><p>Joel: Cucumber is great as long as you have your clients read/write tests. Otherwise it's just an extra layer of abstraction. Programmers think better in code.</p><p>Evan: Definitely. That's why we didn't bash rSpec altogether. But we believe it's better to start with something simple like test/unit and grow into a more complex framework than vice versa.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Christoph Jasinski</strong> &middot; <time datetime="2011-03-30T10:27:00+00:00">March 30, 2011 at 10:27 am</time></p>
      <p>Wonder what the guys at Hashrocket think. As far as I know they're totally for RSpec (just like me), saying it's the "Rails Way". As Evan, I think use what fits you best and don't get people angry who put their free time and effort into something others like and use (Github facts for RSpec: over 1600 viewers and more than 150 forks)!</p><p>Hope that the Ruby community isn't on a suicidal trip, destroying good people and good projects. You don't like it - keep it for yourself. That's what I do and nobody seems to be offended or hindered while doing their work. </p><p>This discussion almost reminds me of python: "there is only one way of doing something", which I don't really find true and appriciated Rubys (community) for being WHAT-FITS-YOU-BEST-WAY and HAVE-FUN-AND-RESPECT-FOR-OTHERS. </p><p><em>Z** S***</em>'s case is coming into my mind. Hope that David C. and the Rspec team don't leave the Ruby community etc. :(</p>
    </li>
      <li>
      <p class="comment-meta"><strong>skrat</strong> &middot; <time datetime="2011-03-30T11:46:00+00:00">March 30, 2011 at 11:46 am</time></p>
      <p>Ruby, Rubyists and Rubyism again and again. You guys write so much crap about your tastes and likes. Who cares? Well, only the people that prefers tastes over facts. TDD and BDD are just buzzword, both Test::Unit and RSpec fall into the category of unit testing. Why can't you keep your preferences for yourself, and write articles based on facts, numbers, and analysis? That's what good programmers do, on the other hand, bored and useless devs write articles about their tastes.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>asancio</strong> &middot; <time datetime="2011-03-30T13:08:00+00:00">March 30, 2011 at 1:08 pm</time></p>
      <p>I agree with DHH. Test/Unit do its job perfectly fine. Many developers prefer to test with RSPEC? Great but rspec shouldn't be considered the "standard" or "the right way" to test.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rodrigo Rosenfeld Rosas</strong> &middot; <time datetime="2011-03-30T14:10:00+00:00">March 30, 2011 at 2:10 pm</time></p>
      <p>This is really a personal taste matter. I prefer reading Rspec specifications over Test::Unit tests. And tests are all about readability, right?</p><p>What I really never liked nor find it useful is Cucumber. Too much extra work and no real benefit. I'll never convince any real client to read my Cucumber specifications... Good theorical idea, but useless in my opinion.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dan Carper</strong> &middot; <time datetime="2011-03-30T14:16:00+00:00">March 30, 2011 at 2:16 pm</time></p>
      <p>I agree with skrat. Inflammatory claims w/ no evidence or examples don't do to much for me. I think it's good that this question was raised but someone with that much influence / experience / knowledge should explain where he's coming from.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kyle Drake</strong> &middot; <time datetime="2011-03-30T15:16:00+00:00">March 30, 2011 at 3:16 pm</time></p>
      <p>Check out Contest. It takes Test::Unit and makes it perfect with 100 lines of code. I use it on everything.</p><p>Explanation: <a href="http://blog.citrusbyte.com/2009/05/19/introducing-contest/" rel="nofollow">http://blog.citrusbyte.com/2009/05/19/introducing-contest/</a><br>
Github: <a href="https://github.com/citrusbyte/contest" rel="nofollow">https://github.com/citrusbyte/contest</a></p><p>Ruby 1.9 has similar niceties baked into Test::Unit, which may be worth looking into. Contest works on 1.8 and 1.9 so I'll probably stick with it for awhile.</p><p>I agree with DHH, I don't like how RSpec dumps crap into all the objects, and I abandoned it a while ago after finding out it was <i>causing</i> too many bugs with this approach. Testing should be simple, and should never create bugs from its implementation ever! Also, the documentation was fairly abysmal at the time.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nate Klaiber</strong> &middot; <time datetime="2011-03-30T15:44:00+00:00">March 30, 2011 at 3:44 pm</time></p>
      <p>I prefer the output of RSpec - that's a factor for me. There is a balance to be had here. For a while it seemed as though everyone had a testing framework, and the barrier for people learning TDD became larger simply on the amount of choices and opinions (and lack of examples). As a preference, I enjoy working with Factory Girl and RSpec.</p><p>As far as the Cucumber situation, I think I understand his point a little more. Unless I am working with a team where people are committed to using it - not just talking about how cool it is, but actually using it - then I don't see as much of the value, as the Unit/Integration tests cover the majority of what needs to be tested. I don't think it's complex, I just don't see it necessary in all situations.</p><p>@Joe Fiorini<br>
Curious if you could elaborate how Cucumber helps you write only the code you need, versus the other tests that you write (Unit, Integration, etc)? Don't good unit tests help you write only the code you need? I'd ask you in person, but alas .. ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark Wilden</strong> &middot; <time datetime="2011-03-30T15:55:00+00:00">March 30, 2011 at 3:55 pm</time></p>
      <p>I use Cucumber. I never show features to users.</p><p>So why do I use it? Because I do TDD. Writing a Cucumber feature is writing prose, not code. I have to clearly and succinctly lay out what I want the system to do, without concerning myself with how it should do it. That's reason #1.</p><p>Reason #2: After I've finished writing and implementing a feature, I have an integration test. To me, that's almost a side benefit. I prefer to think of it as having executable documentation.</p><p>Reason #3: Anyone who joins the project reads the features - then they understand the project.</p><p>I never show the features to end-users.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matthew Nielsen</strong> &middot; <time datetime="2011-03-30T15:57:00+00:00">March 30, 2011 at 3:57 pm</time></p>
      <p>Remember kids, using XYZ framework just because ABC said so is also (and is the worst kind of) cargo-culting.</p><p>"My hero said I should use this product in this manner and so I do."</p><p>If you don't understand *why* you are using a certain approach, everything else is superfluous.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael Latta</strong> &middot; <time datetime="2011-03-30T18:08:00+00:00">March 30, 2011 at 6:08 pm</time></p>
      <p>I value Cucumber for the separation of "what" should be true, from "how to test if it is true".  When changing aspects of a site that are user visible, or even just large enough technically (Rails2 -&gt; Rails3) this separation is very valuable.  I can run the same features on different step definitions to verify they pass on ole and new sites alike.  While I like the .should notation from RSpec, I like that test unit can include a message indicating what the failure was in human terms.</p><p>The bottom line is ensure the software does what it is supposed to do, and provide a tool for programmers to verify this before it goes live, and to understand what it is supposed to do before deciding how to change it.  Any good test tool and test suite can achieve this.  It all comes down to style, and minor strengths and weaknesses.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dan Carper</strong> &middot; <time datetime="2011-03-30T18:40:00+00:00">March 30, 2011 at 6:40 pm</time></p>
      <p>Examples of this added complexity would be much appreciated by the people who aren't knee deep in the development of these libraries</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ian</strong> &middot; <time datetime="2011-03-30T19:16:00+00:00">March 30, 2011 at 7:16 pm</time></p>
      <p>The only thing that really sets RSpec above Test::Unit, in my opinion, is the clarity of expected versus actual values.</p><p>It's immediately obvious which of x and y is expected, and which is actual, in RSpec:<br>
<code>x.should == y</code></p><p>However, for Test::Unit, it's not so clear:<br>
<code>assert_equal y, x</code></p><p>I've used both for years on different projects with many developers, and I constantly find "backwards" assertions in Test::Unit -- but never so with RSpec.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>marc</strong> &middot; <time datetime="2011-03-30T22:01:00+00:00">March 30, 2011 at 10:01 pm</time></p>
      <p>I agree with Ian, Rspec just looks better, its more legible and that makes me want to use it over test::unit, its also why i started using ruby over php, at least in the beginning. @Grosenbach i love your work keep making those screencasts!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jason Rogers</strong> &middot; <time datetime="2011-03-31T02:51:00+00:00">March 31, 2011 at 2:51 am</time></p>
      <p>dhh claiming a "cargo cult" acceptance around RSpec &amp; Cucumber is like the pot calling the kettle black. The same can, and certainly, is said of Rails.</p><p>I tend to use RSpec because I prefer the syntax of 'object.should' instead of 'assert_equals' and friends. It's not that RSpec has anything over Test::Unit per se, I just like the syntax better. I have more than 11 years of TDD experience with JUnit, SUnit, Test::Unit, and RSpec -- so I'm no beginner at this game. I just know what I prefer.</p><p>Also, a lot of people are talking about the complexity of reading and maintaining RSpecs due to nested contexts and such. If you have a 500+ line RSpec file with 5+ nested contexts (as has been posited more than once in this debate) you may be doing something wrong. You might need to go back to the drawing board and learn how to break things out more.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nate Kirby</strong> &middot; <time datetime="2011-03-31T06:16:00+00:00">March 31, 2011 at 6:16 am</time></p>
      <p>It seems to me that a vital point is being lost.  It is the 'Driven' in TDD or BDD.  To a guy like DHH, most likley writing the tests first is habit, however for most of us mere mortal, the 'Driven' part means writing the tests first, and test::unit sortof leaves that pretense behind, whereas RSpec thrusts it to teh forefront (the B versus the T and the Spec v. the Test).</p><p>Writing the test after the code (as Test::Unit facilitates fine, and sadly RSpec also facilitates) is the issue that needs to fostered.  </p><p>So if you are using RSpec and writing tests first, I suggest you ignore this controversy.  And if you are using Test::Unit and writing tests afterwards, or worse not writing tests at all,  and you smugly agree with DHH, then I fear you miss the point.</p><p>Nate</p>
    </li>
      <li>
      <p class="comment-meta"><strong>janfri</strong> &middot; <time datetime="2011-03-31T08:06:00+00:00">March 31, 2011 at 8:06 am</time></p>
      <p>In the German Ruby community we had a long time ago a discussion about test/unit versus RSpec. One important argument against RSpec to me was the fact that RSpec pollute the global namespace with methods (extending the Object class and the Kernel module). So it changes the behaviour of your testet objects! This is in practice not a real problem but in an architectural point of view it is simple a failure. The test/unit, minitest and so on frameworks live complete in the Test module and separate in this way the test code from the tested code (unless you write tests for one of those frameworks ;-).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ade</strong> &middot; <time datetime="2011-03-31T14:22:00+00:00">March 31, 2011 at 2:22 pm</time></p>
      <p>I like the simplicity of Test::Unit and the fact my test code feels as close to the code I am testing as possible, without any unnecessary abstractions.  I like just asserting that 1 ought to equal 1, or that the number of things ought to have changed, in simple Ruby syntax.  So I'm with DHH on this one.</p><p>I like that you posted this up, because I'd felt for a while that by not using the newer test libraries I was behind the curve.  Nice to see that's not necessarily the case.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark Wilden</strong> &middot; <time datetime="2011-03-31T15:25:00+00:00">March 31, 2011 at 3:25 pm</time></p>
      <p>@janfri: One thing I've learned over the years is that if something's not a real problem in practice, it's not a problem - period. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Adrian Perez</strong> &middot; <time datetime="2011-03-31T16:06:00+00:00">March 31, 2011 at 4:06 pm</time></p>
      <p>Ok, we don't definitely need a flame war about something as important as testing your code. IMHO it really depends on the developer and the team, I wouldn't be the first to say that should use what you're more comfortable working with, and hopefully what makes you even more productive. That said, I'm an almost exclusive Cucumber/Rspec user, I do minitest/test-unit only for foreign projects from time to time, and I have to say, it's the methodology that matters here.<br>
I don't see any points if you're using Cucumber and Rspec to translate TDD into these tools and be cool about it. It has been done, it has been successful, but it's also the cause many devs simply "don't seem to get it". These tools excel in BDD, executable specifications, Acceptance-Driven Planning and Development, and many other topics people should really get into so they can value their tools. It also depends on your domain in some fashion, you won't certainly have any value by telling your customer that "when I use the &lt;&lt; method I add a message to an asynchronious message queue for latter processing", for me it doesn't add value to clients, although it might even add value for developers. Mini-BDD such as shoulda and minitest/spec are great tools. And I really mean great tools, being a rspec user I sometimes found myself putting shoulda code (all right, matchers and the like, but still), but that's not full-blown BDD, the authors acknowledge that. So, test/unit? Simple? It's relative. Simple for JUnit, NUnit, yes. Simple for assert_equals yes, simple for custom assertions, yes. Powerful? Ummm. Readable? Ummm. Process-Oriented? Ummm. Where Ummm actually means that are better solutions based on that criteria, and IMHO Rspec/Cucumber are one of those. I wouldn't ever, ever again, write a Rails integration test with that API, when I can visit, click_link, etc. I wouldn't ever again assert something.some_col.size instead of something.should have(n).items.<br>
But again this is me. And I point is, use the right tool for the job, *your* right tool for the job.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Will</strong> &middot; <time datetime="2011-03-31T17:11:00+00:00">March 31, 2011 at 5:11 pm</time></p>
      <p>Some people are overreacting. DHH just said his opinion that RSpec/Cucumber aren't aesthetically pleasing and that recommending them over T::U for newbies is a bad idea.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Deryl Doucette</strong> &middot; <time datetime="2011-03-31T17:34:00+00:00">March 31, 2011 at 5:34 pm</time></p>
      <p>Wait a minute. Is this supposed to mean I shouldn't use RSpec/Cucumber because the vaunted DHH said it makes him sad? There's a lot of things in the world that make people sad. Get used to it. Is this supposed to mean I shouldn't use Test::Unit because the vaunted David Chelimsky 'says' it makes him sad? He too would have to have to get used to it. There's a lot of things that make people sad. I respect both their work, I've used both their work. Am I going to stop using one or the other because one of them gets a gut wrenching feeling about the other? NOT!</p><p>Use what works for you, regardless of who sees the tests. If one is more natural to your way of thinking and really helps you knock out code because you understand intuitively what needs to be done from the way the tests 'read' or how high above or close you get to the actual code, then by all means use it. Neither testing apparatus is better than the other. Either one will accomplish the goals you have set before you by the software requirements of the client. THAT, in the final analysis, is all that matters. Which ever one best helps you to deliver the best code you can for the requirements is the one you should use, regardless of the position in the community of the writer/user/supporter of said testing kit.</p><p>Anything less than that is just plain wrong and a disservice to you and your customers. If what the major/minor deities has to say that significantly impacts your decision making capabilities, there's something wrong with your thought processes. And, at the risk of offending the great DHH, come with the evidence backing up your claims or sit back and let your inner demon scream itself hoarse because it can't get to the keyboard. Comments like that are sure to start flamewars and, somehow, I think you know that.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paris Sinclair</strong> &middot; <time datetime="2011-03-31T19:14:00+00:00">March 31, 2011 at 7:14 pm</time></p>
      <p>@Mark Wilden:</p><p>Prose... I've always just used pseudo-code at the intial design phase for that. To me if you're making the pseudo-code so technical that you're even parsing it and keeping it around, its function is broken and now it's actually become part of the implementation.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brian</strong> &middot; <time datetime="2011-04-01T02:11:00+00:00">April 1, 2011 at 2:11 am</time></p>
      <p>What's funny to me is that some might take umbrage at "one true wayism" from the guy who invented Rails.  I mean, there are books called 'The Rails Way'.  Seems that boat's already sailed, folks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-04-01T03:13:00+00:00">April 1, 2011 at 3:13 am</time></p>
      <p>@Brian: And yet, "The Rails Way" is anything but (it's really the HashRocket Way). Unusual view style (using decent exposure), HAML (not ERb), RSpec (not Test::Unit).. it's about as far from the DHH style as it gets ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brian Takita</strong> &middot; <time datetime="2011-04-01T03:44:00+00:00">April 1, 2011 at 3:44 am</time></p>
      <p>Hah, the complexity of Rails upsets me. That's why I ditched it long ago.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Roman Le Négrate</strong> &middot; <time datetime="2011-04-01T09:35:00+00:00">April 1, 2011 at 9:35 am</time></p>
      <p>I have always used Test::Unit and Mocha and have always been happy with them.</p><p>I could never wrap my brain around the need for alternatives like RSpec, even less so for Cucumber. Seeing this many people praising them and using them in their open-source projects, I have given them a chance but I never got it.</p><p>If anything, trying them out showed me just how great a fit Test::Unit is for my testing needs.</p><p>I have seen so many bad quality, even useless tests using RSpec for the sake of it, in quite a lot of open-source Ruby projects... it's a good thing DHH is reviving this debate.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Beoran</strong> &middot; <time datetime="2011-04-01T12:08:00+00:00">April 1, 2011 at 12:08 pm</time></p>
      <p>Well, I agree that it's a matter of taste and approach. I can see the value for some projects in BDD or TDD. However, for my projects, I feel that the code and it's documentation are much more precise than English can ever be in describing features. So I am content to thoroughly unit test the code after I've written it. </p><p>And I like to unit test in the simplest way possible. So I use my own version of nanotest combined with watchr. It's the ultimate in light-weight unit testing, and I really like it. Just assert { whatever } and the test is good to go. </p><p>As for everyone else: try out different tools, and then use the ones which are most convenient for you or your team. Ruby is all about programmer convenience, so choose a unit test/bdd/tdd framework that is you and other people involved in the project like best. Keep in mind the Ruby ideals of TIMTOWTDI, MINASWAN, POLS, etc. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Eric Galluzzo</strong> &middot; <time datetime="2011-04-01T22:12:00+00:00">April 1, 2011 at 10:12 pm</time></p>
      <p>Why use Test::Unit, RSpec or Cucumber when you can use <a href="http://affirmit.org/" rel="nofollow">AffirmIt</a>?  Today on Twitter, DHH mentioned that he was going to switch Rails 3.1 tests over to AffirmIt.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jim</strong> &middot; <time datetime="2011-04-02T02:56:00+00:00">April 2, 2011 at 2:56 am</time></p>
      <p>I prefer rspec because it looks more readable and I like the output.  However, I only like it slightly better than test/unit and feel that it was overhyped.  I'll continue to use it because I've spent so much time learning it, but I will never spend any of my time trying to convince others to switch to it.<br>
I'll continue to use both rspec and test/unit because I want to be familiar with both.  Usually, one has little choice about what to use because you have to use what everyone else at your company is using.  Being familiar with both for job interviews is the most important issue for me rather than being a guru in one.<br>
I liked cucumber at first, until I realized what I liked about cucumber was really webrat/capybara.  Capybara is really powerful for writing integration tests, so I'm more of a capybara fan than a cucumber fan.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brian Takita</strong> &middot; <time datetime="2011-04-03T23:38:00+00:00">April 3, 2011 at 11:38 pm</time></p>
      <p>It seems like there are two debates here. One is a question of which library to use and another is what idioms to adopt.</p><p>I've long been a fan of using rspec with straight-forward tests (using the basic features). I like nesting contexts so the edge cases can be tested and visualized.</p><p>Yes, lots of nesting is bad, but the pain one feels when this happens serves and good motivation to make the software simpler by refactoring.</p><p>Looking at DHH's gist, <a href="https://gist.github.com/893027" rel="nofollow">https://gist.github.com/893027</a>, it seems like he is against the idiom that has been pushed by some (arguably the majority) in the rspec community. I agree with DHH there. Breaking things up that small makes things more complicated in many cases and makes the test suite slower.</p><p>So yes, keep things simple and do whatever works for you. Avoid religious zealotry and be pragmatic. If there's anything that I've learned when it comes to testing, it's that over-reliance on one technique (and worldview) causes unnecessary complexity and unmaintainable software.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James OKelly</strong> &middot; <time datetime="2011-04-05T17:24:00+00:00">April 5, 2011 at 5:24 pm</time></p>
      <p>This anti-cargo-culting is just cargo-culting in reverse kids.</p><p>Cargo culting has it's positives. It is better for a JR rails developer or even a mid to follow the cult of the most efficient coders leading the project. This is right up there with 'dont use generators' another wad of crap.</p><p>CONVENTION over *</p><p>A developer may cargo cult, and to you that may seem bad, but rails code that looks like rails code is so much more productive and easier to work on as a team then rails code that looks like ruby code.</p><p>Cargo cult until you have your own master rails programmer title. Then do all the thinking for yourself. If you think before you have style and intuition with rails you will just be hurting yourself and others.</p><p>So yes, cargo culting is good. But whatever, I like RSpec over Test::Unit any day so what do I know ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Fred</strong> &middot; <time datetime="2011-04-11T02:54:00+00:00">April 11, 2011 at 2:54 am</time></p>
      <p>I always had the guts that Test::Unit was the simplest and straight forward.<br>
I never liked the added complexity of rspec.</p><p>Rspec might help big teams of developers to make test easy to read.</p><p>But overal I agree with DHH. </p><p>btw, ruby 1.9 Test::Unit is so damn fast.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jacob Richardson</strong> &middot; <time datetime="2011-04-11T22:07:00+00:00">April 11, 2011 at 10:07 pm</time></p>
      <p>Ewwwww fixtures!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Linh Chau</strong> &middot; <time datetime="2011-04-12T14:34:00+00:00">April 12, 2011 at 2:34 pm</time></p>
      <p>Some discussions in here make me remember about an interview for a J2EE job I had back in 2007.<br>
When one (supposed to be) architect asked me about "Why I like Rails better than any of the J2EE framework, such as Struts, JFC, GWT?", one of my reason was "In Ruby you don't have to do compilcated XML mappings for the application to recognize the controllers IF YOU DON'T WANT TO"</p><p>The interviewer perplexed: "What? Do you think that XML is complicated?"</p><p>I've even worked with XML from the time that guy was not born yet. However the dumb ass failed to recognize that "Doing nothing is better than doing something, because doing something can potentially cause errors". In Rails, you map the URLs only when you want to, and in Java, you have to do it all the time.</p><p>Anyway, back to RSpec and Cucumber, my opinion is "Having to learn nothing is better than having to learn something". And the syntax, keywords and everything else of RSpec are ugly to a professional developers. Only stupid users need specs in English, and they don't read code anyway.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Marnen Laibow-Koser</strong> &middot; <time datetime="2011-04-13T14:57:00+00:00">April 13, 2011 at 2:57 pm</time></p>
      <p>Test::Unit encourages unreadable implementation-dependent tests. The "should" syntax of RSpec, at least in my experience, encourages more thinking about behavior. That's why I started using RSpec way back in 2007, and I recently found myself maintaining other's Test::Unit tests that confirmed these impressions.</p><p>I'm sure it's *possible* to write readable Test::Unit tests -- perhaps DHH already does so. But RSpec actually follows the Rails philosophy of making the right thing the *easy* thing. I don't know why anyone would voluntarily use Test::Unit today.</p><p>I've said for a long time that DHH was, at this point, a liability and a threat to the Rails community -- he developed something wonderful but has had a hard time letting it evolve in the hands of others, I think. These tweets tend to make me think I was correct in that assessment.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://railscoach.com/005-rc-testing-tools-for-rails/" rel="external nofollow" class="url">005 RC Testing Tools for Rails — Rails Coach</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bala Paranj</strong> &middot; <time datetime="2011-04-17T02:38:00+00:00">April 17, 2011 at 2:38 am</time></p>
      <p>I agree with DHH. The RSpec lacks simplicity. It is the J2EE of the testing frameworks. It would benefit if the RSpec committers had learned something from Rails. </p><p>What if there was a test framework that lowers the barrier to entry for less experienced / skilled developers? Something that just works out of the box instead of having to do some cute gymnastics like "World(CrapGoesHere)" inside the configuration file?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://www.railsant.com/blog/2011/04/rails-3-1-include-coffeescript-jquery-sass-default/" rel="external nofollow" class="url">Rails 3.1 include CoffeeScript, jQuery, Sass as default | Rails Ant</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dallas Slieker</strong> &middot; <time datetime="2011-04-18T15:50:00+00:00">April 18, 2011 at 3:50 pm</time></p>
      <p>What a pointless debate. While you all fret over which hammer is most efficient or aesthetically pleasing to you, I'll be driving in nails with whatever works best for me and my team.</p><p>Approach wars = fanboi/troll fodder. How 'bouts we all just get back to coding cool products and services that work?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Marnen Laibow-Koser</strong> &middot; <time datetime="2011-04-18T18:17:00+00:00">April 18, 2011 at 6:17 pm</time></p>
      <p>Bala: Funny, I'd say you got it backwards. I use RSpec because it's *easier* to use than Test::Unit. Test::Unit assertions look like Java to me; RSpec looks like...well...like Ruby. It would benefit DHH if he learned something from RSpec, IMHO.</p><p>What do you find hard about RSpec?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://rubysfera.pl/2011/04/tdd-z-uzyciem-testunit/" rel="external nofollow" class="url">TDD z użyciem Test::Unit</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>qwerty</strong> &middot; <time datetime="2011-05-29T00:19:00+00:00">May 29, 2011 at 12:19 am</time></p>
      <p>Test:Unit is clunky, especially with the terrible fixtures. Fixtures are just terrible things to write. Why not just use a seed.rb test file? Don't get me started on the uselessness(and pointlessness) of functional and integration testing built into Rails. Unit tests do work but are hardly optimal.</p><p>RSpec can get complex but its ability to document expected behavior in a Ruby app is unparalleled as its ability to complete a test without stopping on an error. </p><p>I think this little tantrum from DHH really shows he wants to be a cult leader where all Rails programmers blindly follow him.</p><p>I have used Rails since 1.2 and have always enjoyed it and been productive but face facts. Rails would be in decline if not for the Merb guys. Merging Rails and Merb has been the best thing for Rails and DHH deserves no credit for Rails 3, except for allowing the merge to happen. Yet he still acts as if it is his work alone that made it so good-if anything he is a detriment to Rails and would love to see him step down.</p><p>Then maybe REST can be properly placed as an option and not the default.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
