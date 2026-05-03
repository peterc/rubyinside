---
title: 'Opinion: Taking Ruby to the kids?'
date: '2006-09-12'
author: Peter Cooper
author_slug: admin
post_id: 233
slug: opinion-taking-ruby-to-the-kids-233
url: "/opinion-taking-ruby-to-the-kids-233.html"
categories:
- miscellaneous
- nonsense
---

{{< rawhtml >}}
<p>I want to look at the history of the BASIC language, the uptake of novice programmers, and how Ruby could capitalize on them in the future.</p>
<p><span id="more-233"></span><br>
My first programming experience was before my brain began recording stuff I can still remember today, but it was on either a Commodore Vic-20, Acorn Electron, or BBC Micro, as these were the computers my father used. All these machines had their own version of BASIC, like the majority of 1980s microcomputers.</p>
<p>BASIC did little to open my mind to the more interesting aspects of software development, but it certainly reinforced basic procedural logic and structure. Millions of people began coding this way in the 1980s. The keenest budding developers often moved on to discover C and Pascal although BASIC retained significant mindshare, best demonstrated by the popularity of QBasic (as bundled with DOS 5 and 6 and Windows 95) in the mid 1990s. BASIC was even taught in schools, often being the only option available (and LOGO's power being woefully underestimated - something I am only now just realizing).</p>
<p>From BASIC's popularity grew Microsoft's Visual Basic (geek trivia.. my first after-school job was to save up the £70 for Visual Basic for DOS - yes, there was a short-lived DOS version!) which continues to be popular and is used in an ungodly amount of commercial software, along with Visual Basic for Applications which is used in millions of business systems in conjunction with Microsoft Office. BASIC's ease of use, low barrier to entry, and overall flexibility of use (despite being an inflexible <em>language</em>) all helped it amass and retain significant mindshare even in the face of significantly better languages (C, Pascal, and now C# or Java). All those kids and teenagers who tapped in 10 PRINT "HELLO" 20 GOTO 10 and copied computer game source code from the back of flimsy magazines in the 1980s still feel a sense of warmth towards BASIC.</p>
<p><strong>How can we bring the same experience to today's novice programmers?</strong> It's no longer trivial to begin programming. While downloading Ruby or Python themselves is relatively easy, the whole environment isn't exactly novice-friendly. <em>irb</em> is a superb 'immediate' tool, but more cryptic than a total programming novice would bear. Chris Pine's <a href="http://pine.fm/LearnToProgram/">Learn To Program</a> is incredibly well written, but, again, is perhaps a little too much for either a <em>total</em> novice (let's say, a 6 year old kid) to grasp.</p>
<p>The way I envision the solution, using Ruby, is by providing a browser based Ruby IDE and run-time environment along with a highly tailored version of Ruby that can use a number of special libraries and methods (that are built-in). Built-in classes would make placing and controlling graphics and sounds within the viewport easy. Tutorials could, potentially, be built into the IDE. Ruby is <em>ideal</em> for this, since Ruby can be used in a procedural, pure OO, or functional way merely with slightly different syntax, and by pre-loading different classes and methods at run-time!</p>
<p>But why a browser-based IDE? One of the problems we're seeing with schools nowadays (and this was even a problem 10 years ago when I was still in school) is that they want to maintain sanitary environments. Installing new software can be troublesome unless there's an official buy-in / policy from the school (although for one superb education-focused client-side IDE / run-time environment, check out <a href="http://www.libertybasic.com/">Liberty Basic</a>). Browser environments, however, are a lot easier to use, since all they require is Web access.</p>
<p>Is this all pie in the sky on my front? I sense that learning about algorithms and 'how computers work' was a part of significantly more kids' lives in the 1980s than it is now. Kids aren't typing in BASIC source code and wondering what a 'variable' is anymore, rather than working out how to game MySpace or play Flash games. Macromedia / Adobe have a massive potential in this sector as Flash makes an ideal scripting + fun environment to develop in, but they're seemingly uninterested.</p>
<p><strong>Can we take Ruby to the kids and the novices and make Ruby the next BASIC?</strong> That is, of course, without the negative connotations ;-)</p>
<p><em>(Further thought: Why aren't there more efforts to get ordinary folk to write their own mashup scripts and Web tools using scripting languages over the Web? Ning is a start but still significantly more complex than it could be. This is something I'm digging into.)</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Greg</strong> &middot; <time datetime="2006-09-12T02:50:00+00:00">September 12, 2006 at 2:50 am</time></p>
      <p>Fantastic Idea.</p><p>I was one of those kids typing on my c64 for hours and hours to get some (now) silly little game.</p><p>In fact, me and my mom would trade off typing duties to get 'r done. :)</p><p>As a result, I have always been interested in exactly how computers work. My digging took me more towards Networks and Network Services, but I am swinging full circle, and getting back into typing for hours and hours to get some blip on a screen dance.</p><p>I have a 16 month old, and I hope that he will be interested in coding when he gets older. Starting to work on projects like this now, will mean that the projects are very well developed in time for my little monster.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-09-12T02:55:00+00:00">September 12, 2006 at 2:55 am</time></p>
      <p>Thanks for the comment! It's the "As a result, I have always been interested" bit of your comment that worries me the most about today's new generations. If kids nowadays aren't coding, perhaps they won't get that same interest.</p><p>From time to time some teenager comes up with a clever Web site and people wow over how young they are, etc.. but back in the 1980s there were hundreds of teenagers coming up with games that weren't too bad by the standards of the day. I guess part of my question is.. are we missing out on this and a potential horde of great future programmers by having no 'low barrier to entry' environment for them to screw around with?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Patrick Hurley</strong> &middot; <time datetime="2006-09-12T04:34:00+00:00">September 12, 2006 at 4:34 am</time></p>
      <p>I don't know I think there are many more choices for todays kids then "back in the good old days". I started on a TRS-80 Model II, saved my paper route money for a C64, learned 68XX asm, made sprites dance,played bad ADSR sound and abused my floppy drive motors. </p><p>But my son has (in comparison) a massively powerful computer, Ruby and Gosu. In a handful (~200) of lines of code we have a working multi-layered 2d game, mp3 sound, reasonable physics -- he is 9, I helped a fair amount, but he can play with the code, change things, modify the strength of gravity, wind, change backgrounds and sprite graphics, the music, etc. Once he is strong enough to understand that a little better, we can move on to true 3d graphics, still in Ruby (or a half dozen other languages, but heck if I am teaching :-). We even wrote unit tests for all the physics and much of the game -- and he can see (thanks zentests) as soon as he breaks something.</p><p>I think todays future programmers have it great, open source, the internet (ruby talk mailing lists), etc.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James H</strong> &middot; <time datetime="2006-09-12T04:35:00+00:00">September 12, 2006 at 4:35 am</time></p>
      <p>It *is* trivial to begin programming.  What was the first thing you did when you got the Internet in your house?  I, as a 10 year old lad, tried to take it apart.  I remember being agape that I could look at the source for a page.  I couldn't believe I could *save* an entire page!  I did.  I took it apart.  I built a new one.  I wanted to make it better so I investigated into the then new technology of CSS, and Javascript.</p><p>HTML, CSS and basic Javascript are the new BASIC.  They'll come to Ruby on their own terms.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Lam</strong> &middot; <time datetime="2006-09-12T04:44:00+00:00">September 12, 2006 at 4:44 am</time></p>
      <p><a href="http://tryruby.hobix.com" rel="nofollow">http://tryruby.hobix.com</a> is a very good start in this direction.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Allen</strong> &middot; <time datetime="2006-09-12T07:39:00+00:00">September 12, 2006 at 7:39 am</time></p>
      <p>There is a kind of IDE, not really what you had in mind I think, but check this out:</p><p><a href="http://tryruby.hobix.com/" rel="nofollow">http://tryruby.hobix.com/</a></p><p>That's a rather impressive web application, perhaps you could tailor something like that for the kids?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonathan A</strong> &middot; <time datetime="2006-09-12T09:41:00+00:00">September 12, 2006 at 9:41 am</time></p>
      <p>Alan Kay (creator of Smalltalk) has done some really great work with introducing computers and technology to kids using Squeak (Smalltalk dialect). During his acceptance speech of the Kyoto Prize, he demonstrated how kids were learning about science in new ways using Squeak as a platform for the computational experiments--very impressive stuff. </p><p>I like the idea of using Ruby as an introductory language for kids. I believe there is a lot that can be learned from Alan Kay's work by examining the amazing things he is doing with Squeak. In my opinion, it is especially important to factor in the mental models of kids, which is something Smalltalk does very well and Ruby too through its aesthetic qualities for one.</p><p>Check out:</p><p><a href="http://www.openp2p.com/pub/a/p2p/2003/04/03/alan_kay.html" rel="nofollow">http://www.openp2p.com/pub/a/p2p/2003/04/03/alan_kay.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael Houghton</strong> &middot; <time datetime="2006-09-12T10:42:00+00:00">September 12, 2006 at 10:42 am</time></p>
      <p>Amy Bruckman (from MIT Media Lab and now  Georgia Tech) has a program to teach kids to write, and code, called MOOSE Crossing. It was based on the MOO system. The kids learn to program objects in a virtual text world.</p><p>If you want to teach kids to program, an equivalent ruby MOO would be great. (Not as easy as it sounds, though; MOO is a surprisingly sophisticated framework).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Clay Bridges</strong> &middot; <time datetime="2006-09-12T14:36:00+00:00">September 12, 2006 at 2:36 pm</time></p>
      <p>It's hard to serve two masters. It seems to me that Ruby is designed to be a joy for people who already know the basics. Its syntax is terse, even sometimes arcane, as a result of trying to be concise and deeply expressive. IMO, this would create a barrier to all but the most precocious kids. For most, I think a better choice would  be a language and environment designed for kids, ala Squeak (above) or Logo or a new effort, KPL (<a href="http://www.kidsprogramminglanguage.com/" rel="nofollow">http://www.kidsprogramminglanguage.com/</a>).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Lyle</strong> &middot; <time datetime="2006-09-12T15:23:00+00:00">September 12, 2006 at 3:23 pm</time></p>
      <p>I recall that at the first RubyConf (almost five years ago now, in Tampa), Pete McBreen made a presentation about using Ruby to teach programming to kids. I don't remember whether he used any slides, but if he did, I wonder if those are archived anywhere?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark</strong> &middot; <time datetime="2006-09-12T16:57:00+00:00">September 12, 2006 at 4:57 pm</time></p>
      <p>I think that we could emulate Jurtle. Jurtle is an attempt to teach Java in an easily understood way. You learn by programming a small "turtle" to do things on the screen.</p><p>"Jurtle starts you out by having you write programs that move a "turtle" on screen, leaving a trail that can create interesting and even beautiful pictures. " I believe that it was designed to teach programming to 8th graders. </p><p>Given the complexity of Java and the simplicity of Ruby, SURELY we could do something similar to make learning Ruby more accessible.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Roberto Nogueira</strong> &middot; <time datetime="2006-09-13T10:21:00+00:00">September 13, 2006 at 10:21 am</time></p>
      <p>....well, just to have an idea, I think we are a bit delayed. Teaching Ruby has already reached Africa!!! see e.g.  this breaking news:</p><p>"Ghana: Aiti to Train Over 100 Tutors in Ruby"<br>
As part of the on-going collaboration between the Ghana-India Kofi Annan Centre of Excellence in ICT and the Finatrade Foundation, over one hundred ICT tutors from forty four Senior Secondary Schools (SSS) are expected to be trained in Ruby Programming Language. Ruby is a new generation and a dynamic object oriented programming language. It is relatively easy to learn and can be mastered within a relatively short period of time. It is a useful tool for developing software applications to enhance productivity in the economy.<br>
<a href="http://allafrica.com/stories/200609120015.html" rel="nofollow">http://allafrica.com/stories/200609120015.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>colabus</strong> &middot; <time datetime="2006-09-13T13:18:00+00:00">September 13, 2006 at 1:18 pm</time></p>
      <p>Not a bad idea however I think now the younger ones are a lot brighter than I know I was at that age. If they are going to get into programming they will regardless of 'making it easy' documentation and supporting IDEs.</p><p>Good thoughts though :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alex MacCaw</strong> &middot; <time datetime="2006-09-13T16:45:00+00:00">September 13, 2006 at 4:45 pm</time></p>
      <p>I'm 16, having only been introduced to Ruby (and Rails) about a year ago. I wish I'd been introduced to it earlier as I went through a couple of years of PHP hell before seeing the light. I think introducing programming to kids is important, and ruby is good in these respects considering that it reads like English. Here, at school, although the pupils are computer literate (myspace,chat,etc), they haven't got much further than that. Indeed when people ask what I'm doing I can hardly make myself understood (though that could be on a completely unrelated matter :) ). The ICT A/AS level is awful (and is hardly recognized by the universities) mainly involving spreadsheets and how to work Word! I think, if given the chance, teenagers could further their computer knowledge immensely considering they already know the basics (which is much better than my Dad's generation). My peers didn't have a problem with the Binary system, when that was explained to them, so I don't think they'd struggle too much with more advanced stuff. Kids can now see the benefit of computers (such as a holiday job that pays well) - so there is a willingness to learn. For ruby (and indeed programming) to be accepted inside schools, it needs to be part of the curriculum. We live in such a computer oriented society today that kids can’t afford not to be competent. However, by that I don’t mean the current system which involves a basic (and rather insulting) test. Kids should be allowed to be creative - the teacher should say, “So what do you want to build today?”.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jared Nuzzolillo</strong> &middot; <time datetime="2006-09-13T18:50:00+00:00">September 13, 2006 at 6:50 pm</time></p>
      <p>Hello Peter.</p><p>I think it's great that others are considering how to get kids interested in progamming. For me, it was the knowledge that my dad was a computer operator -- everyone wants to be like their daddy when they're young. Also,  as a seven year old, turning on my computer immediately opened a BASIC prompt.</p><p>I've heard that why the luck stiff is working on some sort of Ruby-based multimedia learning environment for children. Here's an article he wrote regarding the problem (though I don't think he mentions his solution): <a href="http://whytheluckystiff.net/articles/theLittleCodersPredicament.html" rel="nofollow">http://whytheluckystiff.net/articles/theLittleCodersPredicament.html</a> .</p><p>Another decent platform for learning the absolute basics is Guido van Robot. It's probably very similar to Jurtle (and Jurtle was based on Logo turtle graphics, methinks), but it uses a very simple python-like language.</p><p>I truly believe that it is in Society's best interest to encourage youngsters to learn to code. One easy way to help out would be to offer free programming tutoring to children in your local middle school.</p><p>Keep up the good work!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jared Nuzzolillo</strong> &middot; <time datetime="2006-09-13T18:51:00+00:00">September 13, 2006 at 6:51 pm</time></p>
      <p>Oops, I forgot the link for GvR: <a href="http://gvr.sourceforge.net/" rel="nofollow">http://gvr.sourceforge.net/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-09-13T19:07:00+00:00">September 13, 2006 at 7:07 pm</time></p>
      <p>It looks like Why has put what I was thinking into words far more elegantly than I could! :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Doug Bromley</strong> &middot; <time datetime="2006-09-14T13:57:00+00:00">September 14, 2006 at 1:57 pm</time></p>
      <p>I spent hours and hours coding games on the old Amstrad CPC 6128 only for it to not work and give ridiculous errors.  Thoroughly soul destroying and yet for some reason I went into the industry and subject myself to such torture everyday.</p><p>I must be a masochist.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Carl Gundel</strong> &middot; <time datetime="2006-09-14T14:53:00+00:00">September 14, 2006 at 2:53 pm</time></p>
      <p>It's sad that Windows doesn't come with a really easy BASIC for Windows, but even if it did Microsoft would probably not put an icon for it on the desktop.  As Jared above mentions, his computer came up with a BASIC prompt.  BASIC was the operating system for his computer, so it was not a great leap for the user to start learning BASIC.  Nowadays Windows comes up when you start the machine, not BASIC.  Even if there was an icon on the desktop for an easy BASIC, it wouldn't have the same impact.  Couldn't hurt though.  ;-)</p><p><a href="http://basicprogramming.blogspot.com" rel="nofollow">http://basicprogramming.blogspot.com</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Greg</strong> &middot; <time datetime="2006-09-15T21:45:00+00:00">September 15, 2006 at 9:45 pm</time></p>
      <p>David Brin opines on this subject here</p><p><a href="http://www.salon.com/tech/feature/2006/09/14/basic/index_np.html" rel="nofollow">http://www.salon.com/tech/feature/2006/09/14/basic/index_np.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tom Palmer</strong> &middot; <time datetime="2006-09-19T16:51:00+00:00">September 19, 2006 at 4:51 pm</time></p>
      <p><a href="http://bagotricks.com/projects/tugaturtle/" rel="nofollow">Here's a JRuby turtle graphics system</a> I made for this purpose a while back. Assuming you have Java, you don't need to install anything, but it does require a download. But more likely, kids want to make games rather than draw black and white lines.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Curt</strong> &middot; <time datetime="2006-09-25T14:03:00+00:00">September 25, 2006 at 2:03 pm</time></p>
      <p>&gt;more likely, kids want to make games rather than draw black and white lines.</p><p>You're probably right.  So given that, where does Ruby stand in terms of game development libraries?  I know there are web sites devoted to writing games in Python (<a href="http://www.pygame.org" rel="nofollow">http://www.pygame.org</a>).  What resources are there for Ruby?  Maybe Python would be a good choice for children -- given that it is very similar to Ruby but there are more extensive libraries available in Python, such as for game development.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
