---
title: 'Interesting Ruby Tidbits That Don’t Need Separate Posts #21'
date: '2008-04-09'
author: Peter Cooper
author_slug: admin
post_id: 849
slug: interesting-ruby-tidbits-that-dont-need-separate-posts-21-849
url: "/interesting-ruby-tidbits-that-dont-need-separate-posts-21-849.html"
categories:
- compilations
- cool
- elsewhere
- miscellaneous
---

{{< rawhtml >}}
<p><span style="font-size: 14px; font-weight: bold;">RubyAMP: Amazing Ruby Bundle for TextMate</span></p>
<p><a href="http://code.leadmediapartners.com/tools/rubyamp">RubyAMP</a> is a <a href="http://macromates.com">TextMate</a> bundle that goes above and beyond the typical TextMate bundle in usefulness. It adds auto-complete from all open tabs, easy jumping to methods and classes, improved RSpect debugging support, breakpoint support (set and remove from TextMate), Merb / Rails server or console launching, development log tailing, and a lot more. There's a screencast on the project page itself so you can get a direct look at how it all works within a minute or two.</p>
<p><big><strong>Bicycle Location Visualization with Ruby and RMagick</strong></big></p>
<p><img src="/assets/2008/04/bikes-in-paris.jpg" width="257" height="205" alt="bikes-in-paris.jpg"></p>
<p>Paris has a shared bicycle scheme for those who want to get around downtown called Velib. Ardent Velib fan Thibaut Barrère decided he wanted a better way to see the availability of bikes, and <a href="http://blog.logeek.fr/2008/3/31/data-visualization-with-ruby-and-rmagick-where-are-those-bikes">put together a Ruby app that could scrape the raw data and put together a visualization for him</a>. This is a well written article covering how he did it from start to finish.</p>
<p><big><strong>Engine Yard Invites Ruby Developers To "Hackfests"</strong></big></p>
<p>When a press release is so concise and well written (a VERY rare event), it seems a shame not to quote it verbatim:</p>
<blockquote>
<p><a href="http://www.engineyard.com/">Engine Yard</a>, provider of the leading Ruby and Rails deployment platform, today announced a series of Hackfests, informal community events open to Ruby developers, where sharing, learning, and hacking rule. The inaugural Hackfest was a resounding success with participation from over 100 top Ruby and Rails developers. Two more Engine Yard Hackfests are planned for the coming months.</p>
<p>The first event was held this past weekend alongside MountainWest RubyConf 2008 in Salt Lake City, Ut., where Engine Yard’s Ezra Zygmuntowicz and Evan Phoenix shared the opening keynote. After the conference, folks generally look to talk tech, shoot the breeze, and hack. They split off into small groups, grab dinner, and eventually end up in various hotel rooms, awake into the wee hours.</p>
<p>The Engine Yard Hackfest aimed to draw these small groups together, and facilitate a mid-sized, casual, expert meeting of the minds. As an alterative to having Rubyists chat in the brief windows between conference sessions, the Hackfest offered an open-all-night comfortable workspace, with free wi-fi, dinner and snacks, and expert community leaders for company.</p>
<p>Rubyists are invited to participate in Engine Yard’s upcoming Hackfests, which will be held alongside <a href="http://2008.goruco.com/">GoRuCo</a> in New York (April 26) and <a href="http://rubyfringe.com/">RubyFringe</a> in Toronto (July 18-20).</p>
</blockquote>
<p>I hear that the similar "Ruby Cave" events at the recent Ruby Fools conferences went down well, so this is a great development for those going to GoRuCo and RubyFringe.</p>
<p><big><strong>ServiceReg - A RESTful API for RESTful APIs</strong></big></p>
<p><a href="http://www.servicereg.com/">ServiceReg</a> is a new service by Chris Matthieu (of <a href="http://wuby.org/">Wuby</a> fame) that acts as an API to <em>other</em> RESTful APIs. Confused? Perhaps this example URL will give you an idea:</p>
<blockquote>
<p><em>http://servicereg.com/verb/{user:password@}domain/noun{/id?params}</em></p>
</blockquote>
<p>Still don't get it? Thankfully Chris has put together a <a href="http://rubyology.com/podcasts/show/60">screencast</a> to bring us all up to speed. ServiceReg appears to be useful for accessing third party RESTful APIs entirely through a well crafted URL to ServiceReg (without the need to send XML payloads, etc.)</p>
<p><big><strong>Ruby's Not Ready! (Or: Why Python Rules and Ruby Sucks)</strong></big></p>
<p>A Python developer takes Ruby, rips it apart, and <a href="http://glyphobet.net/blog/essay/228">explains in 6000+ words why Ruby sucks compared to Python</a>. It's a ballsy essay, and if it were a lot shorter and not as well written, I'd be calling it <em>Troll Of The Month</em>. As it is, I think he's missing the point a lot of the time (he tends to think Python's better because he likes its conventions more than Ruby's - not a compelling argument), but it's an interesting read none the less. Anything that keeps our minds open to the fact that Ruby != perfection is worth a look.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Eric Anderson</strong> &middot; <time datetime="2008-04-10T00:38:00+00:00">April 10, 2008 at 12:38 am</time></p>
      <p>I don't think the "Ruby's Not Ready!" is trolling at all. It is well written and most of the points are not about differences in conventions but actual issues that the Ruby community is working on.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark Murphy</strong> &middot; <time datetime="2008-04-10T01:10:00+00:00">April 10, 2008 at 1:10 am</time></p>
      <p>Regarding "Ruby's Not Ready!", had the author cast his piece as "things I prefer about Python that I don't like about Ruby", I wouldn't have a problem with it at all. However, he comes across as The One True Language Arbiter, and that rankles me whenever I run across it, whether for languages I like or languages I don't like. Pieces written in the mode of The One True Language Arbiter don't quite rise to the level of "troll" for me in most cases, though I can see where some might feel that way.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bradly</strong> &middot; <time datetime="2008-04-10T01:50:00+00:00">April 10, 2008 at 1:50 am</time></p>
      <p>Re: “Ruby’s Not Ready!”</p><p>I don't think he really understands where Ruby is coming from. He sites how update and merge should not be called the same thing because in a wiki update and merge are not analogous, but that is exatly the reason there are two ways to call it; Ruby gives you a way to call the method in a way that fits with your object.</p><p>Re: "RubyAMP: Amazing Ruby Bundle for TextMate"</p><p>The svn instructions are incorrect. It is grabing the entire repo (tags, branches, and trunk). The check out should be<br>
svn co <a href="http://ruby-amp.googlecode.com/svn/trunk" rel="nofollow">http://ruby-amp.googlecode.com/svn/trunk</a> RubyAMP.tmbundle</p><p>Also, I would do an export instead of a check out, but that's just me .</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-04-10T02:13:00+00:00">April 10, 2008 at 2:13 am</time></p>
      <p>Just so I have some defense to my implication the anti-Ruby article is a bit trolly.. a few points:</p><p>"The language is inconsistent and needlessly complex."</p><p>He doesn't prove this or even really demonstrate it. Many of his examples are needlessly esoteric. Python is no more consistent than Ruby. Two types of class, for a start. And ambiguity over when to use functions or methods.. len(something) versus something.len (in Ruby, you just use methods all the time - yes, I know about something.__len__ but that's even worse).</p><p>He works with regular expressions in a way even I find confusing. Regexp::MULTILINE? I didn't even know that existed till now because it's not necessary. Infix regex notation is a lot better and doesn't have some of the issues he raises.</p><p>"Either way, it’s a total mystery how difficult it will be to move to Ruby 2.0, or when that move might have to happen. Python, on the other hand, has been in the 2.x series for a long time. "</p><p>Ruby 2.x isn't analogue in featureset to Python 2.x, so making a comparison between how long it's taking Ruby 2.x to manifest versus the existence of Python 2.x seems weird.</p><p>"Ruby is slower than TCL, a language that is twenty years old."</p><p>Python's slower than LISP, a language that's 50 years old.</p><p>"TMTOWTDI is bad"</p><p>Opinion.</p><p>"the behavior of print in Python is exactly what I’ve wanted out of print, or printf, in every programming languge I’ve ever used"</p><p>Stating something is better because it's your opinion. Not a real argument. He moves on to do weird experiments with using puts to display a hash on screen. Who ever does that?</p><p>"Ruby has two ways to handle code in other files require and load. The difference is that require loads the code only once per application, and load loads it each time the interpreter sees load. Yet again, there’s more to remember to be fluent in Ruby. This distinction is of dubious value; if you have code that you want to run more than once, put it in a method and call the method. Don’t make the interpreter re-load, re-parse, and re-run the file."</p><p>Missing a key point of Ruby entirely.</p><p>"Ruby’s while and if statements can optionally have do and then keywords following them. This is just one more extra variation that Ruby programmers have to remember to be able to read other people’s code."</p><p>Sure, if anyone ever used them. Ruby code tends not to be as idiomatic as this guy assumes since Ruby developers tend to stick to a common style.</p><p>I'm sure I could pick out a bunch more odd phrases and sentences to pick on, but I already said he has a well written piece (and I didn't call it a troll) and he does make some good points. I feel, however, that he picks on many of the things that make Ruby good for Rubyists and considers them to be general negatives for programmers, like: "TMTOWTDI is bad." That's just arrogant.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2008-04-10T02:20:00+00:00">April 10, 2008 at 2:20 am</time></p>
      <p>It's definitely trolling. None of the points (in the cases where they're accurate) raised are new to anyone. And it boils down to "yep, I like what I'm familiar with better." Promises of objectivity from partisans frequently turn out that way. Strange, that.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>IL</strong> &middot; <time datetime="2008-04-10T03:23:00+00:00">April 10, 2008 at 3:23 am</time></p>
      <p>In his defense, a few of his points are good, particularly those having to do with Unicode and Ruby 1.9 migration. Since he took the time to learn Rails and learn Ruby to some depth, let's not just write him off as a troll. Let's take his best points and incorporate them into future versions of Ruby.</p><p>I love Rails, but I also do work in Django, and I'm also guilty of doing the same type of, "Rails has this, Django doesn't, Django's not ready" type of posting. I don't do it because I hate Django, I do it because Rails does things well. We should separate the good from the bad.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tim Harper</strong> &middot; <time datetime="2008-04-10T03:40:00+00:00">April 10, 2008 at 3:40 am</time></p>
      <p>@bradly: If you install the bundle via "svn export", the handy-dandy "Update RubyAMP bundle" command won't work for you.  But hey, that's just me :)</p><p>Thanks for correction on the SVN instructions</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bradly</strong> &middot; <time datetime="2008-04-10T04:38:00+00:00">April 10, 2008 at 4:38 am</time></p>
      <p>@Tim Harper: Ahh.. I didn't think about the update using SVN. That's pretty clever. BTW I installed and I am loving. option-g itself make the bundle a must have.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Greg</strong> &middot; <time datetime="2008-04-11T04:56:00+00:00">April 11, 2008 at 4:56 am</time></p>
      <p>re: ruby isn't ready<br>
Lots of his points are off base, BUT the first one, about the lack of effective Unicode support in Ruby, is terrible. In this day when internationalization and multi-language support is a relatively high probability feature, I wish that there was better documentation, discussion, and support for Unicode in Ruby 1.8, and Ruby 1.9, and the lack of this can remove Ruby as a language option immediately for important projects.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bryan</strong> &middot; <time datetime="2008-04-25T12:56:00+00:00">April 25, 2008 at 12:56 pm</time></p>
      <p>I've been trying to use the RubyAMP bundle to speed up my coding.<br>
I'm still trying to figure out how to do something similar to the now<br>
deprecated Rails debugger which used to allow a console to be opened up<br>
from the testing environment.</p><p>Anytime I try to use any of the RubyAMP bundle commands I receive the<br>
following error:<br>
/usr/lib/ruby/site_ruby/1.8/rubygems/custom_require.rb:21:in<br>
`require__': No such file to load -- appscript (LoadError) from<br>
/usr/lib/ruby/site_ruby/1.8/rubygems/custom_require.rb:21:in `require'<br>
from /Users/intention/Library/Application<br>
Support/TextMate/Bundles/RubyAMP.tmbundle/Support/lib/ruby_amp/launcher.rb:2<br>
from /Users/intention/Library/Application<br>
Support/TextMate/Bundles/RubyAMP.tmbundle/Support/lib/ruby_amp.rb:19:in<br>
`require' from /Users/intention/Library/Application<br>
Support/TextMate/Bundles/RubyAMP.tmbundle/Support/lib/ruby_amp.rb:19:in<br>
`const_missing' from /tmp/temp_textmate.2nfNou:3</p><p>Both the required gems are installed on the system and I can require<br>
them from a console.</p><p>It seems to have something to do with the appscript gem.</p><p>Any help is appreciated.</p><p>Bryan</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
