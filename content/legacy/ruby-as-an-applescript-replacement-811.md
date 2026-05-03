---
title: Ruby as an AppleScript Replacement?
date: '2008-03-18'
author: Peter Cooper
author_slug: admin
post_id: 811
slug: ruby-as-an-applescript-replacement-811
url: "/ruby-as-an-applescript-replacement-811.html"
categories:
- controversy
- miscellaneous
- os-x-specific
---

{{< rawhtml >}}
<p><img src="/assets/2008/03/osxapplescript.jpg" alt="osxapplescript.png" style="border: 1px solid #000000" height="165" width="382"></p>
<p>John Muchow has put together a three part (so far) set of blog posts that guides you through using Ruby as an alternative for AppleScript on OS X (<a href="http://macdevelopertips.com/ruby/ruby-an-applescript-alternative-part-1.html">part 1</a>, <a href="http://macdevelopertips.com/ruby/ruby-an-applescript-alternative-part-2.html">part 2</a>, <a href="http://macdevelopertips.com/ruby/ruby-an-applescript-alternative-part-3.html">part 3</a>) using the <a href="http://appscript.sourceforge.net/rb-appscript/index.html">rb-appscript</a> library. It's <span style="font-style: italic">very</span> slow moving so even if you're a complete AppleScript / OS X newbie, you'll be able to follow it.</p>
<p><big><strong>Ruby &gt; AppleScript</strong></big></p>
<p>With all of the developments going on between <a href="http://www.rubyinside.com/category/os-x-specific">OS X and Ruby</a> lately, I'm becoming convinced that Ruby could become the de-facto OS X scripting language of choice within the next few years. I'm a programmer, but I find AppleScript hideous enough to avoid it wherever possible, and I'm not the only one. I forget where, but I recently read an article about AppleScript that suggested while it reads like English, it's not particular easy to code in because it <span style="font-style: italic">isn't</span> English and the constructions are very rigid. Compare this AppleScript code:</p>
<pre>tell application "TextEdit"
    get paragraph 1 of document "Read Me"
end tell</pre>
<p>To this Ruby alternative:</p>
<pre><span class="ident">app</span><span class="punct">('</span><span class="string">TextEdit</span><span class="punct">').</span><span class="ident">documents</span><span class="punct">['</span><span class="string">Read Me</span><span class="punct">'].</span><span class="ident">paragraphs</span><span class="punct">[</span><span class="number">1</span><span class="punct">].</span><span class="ident">get</span></pre>
<p>The AppleScript reads better in English terms, but the Ruby version is, arguably, easier to remember how to reconstruct, as long as you're familiar with Ruby syntax. <strike>Ruby's reflection / inspection capabilities also ensure that even if you forget the name of a method / term, you can look it up on the fly! Try <span style="font-style: italic">that</span> in AppleScript!</strike> (Oops, I'm wrong, for now.)</p>
<p><big><strong>RubyOSA</strong></big></p>
<p>As well as rb-appscript, let's not forget <a href="http://rubyosa.rubyforge.org/">RubyOSA</a>, a Ruby bridge to the Apple Event Manager, a library that makes controlling OS X applications child's play:</p>
<p><img src="/assets/2008/03/osaexample.jpg" alt="osaexample.png" style="border: 1px solid #000000" height="214" width="311"></p>
<p>Justin Williams has put together <a href="http://maczealots.com/tutorials/rubyosa/">an all-in-one RubyOSA tutorial</a> that's worth reading and demonstrates how to control NetNewsWire from Ruby.</p>
<p><big><strong>Ruby &amp; OS X Books?</strong></big></p>
<p>Lastly, where are the Ruby and OS X books? Are you writing one now that you can tell us about? Are you a publisher looking for someone to write such a book? Is there already a book that's dedicated to using Ruby specifically with OS X? If not, it's finally time for one.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Ted</strong> &middot; <time datetime="2008-03-18T13:59:00+00:00">March 18, 2008 at 1:59 pm</time></p>
      <p>I agree with you that Ruby is better then AppleScript in every way.  I also agree that Apple is positioning Ruby (in MacRuby) form as the replacement system scripting language.  You made one mistake though.  The problem with the OSA architecture is that you can't tell what functions an application supports by querying.  Applications _can_ export lists of functions they support but they're often incomplete or simply undefined.  The only way to know for certain is to send a message and see if anything happens.  In those cases it's irrelevant if Ruby is easier to query objects at run-time.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-03-18T14:13:00+00:00">March 18, 2008 at 2:13 pm</time></p>
      <p>Oh, I blindly assumed that would have been one of the solved problems. Guess not! Thanks for pointing it out :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pete Wood</strong> &middot; <time datetime="2008-03-18T14:29:00+00:00">March 18, 2008 at 2:29 pm</time></p>
      <p>Brian Marrick was writing a book about Ruby Scripting for Leopard but has <a href="http://www.exampler.com/blog/2008/02/05/book-deferred-book-started/" rel="nofollow">changed tack</a> to RubyCocoa</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Giles Bowkett</strong> &middot; <time datetime="2008-03-18T14:34:00+00:00">March 18, 2008 at 2:34 pm</time></p>
      <p>Hi Peter. If my info's up to date Brian Marick is writing at least one book on Ruby with OS X for the Pragmatic Programmers, possibly two.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tom</strong> &middot; <time datetime="2008-03-18T15:12:00+00:00">March 18, 2008 at 3:12 pm</time></p>
      <p>re "I recently read an article about AppleScript", I'm guessing you were thinking of <a href="http://pragdave.blogs.pragprog.com/pragdave/2008/03/the-language-in.html" rel="nofollow">The 'Language' in Domain-Specific Language Doesn't Mean English</a>.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-03-18T15:25:00+00:00">March 18, 2008 at 3:25 pm</time></p>
      <p>That's the one, Tom. Thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Assaf</strong> &middot; <time datetime="2008-03-18T16:43:00+00:00">March 18, 2008 at 4:43 pm</time></p>
      <p>For Ruby In Practice, I'm writing a section on automation which includes an example using RubyOSA, next to a similar example using OLE (insert evil OS joke here).  It will show up in the next MEAP.</p><p>RubyOSA is nicely and thoroughly implemented, rdoc-osa is really helpful, as is trying things out in irb.  I got the impression Apple is serious about Ruby.  The example also illustrates where Ruby works much better than AppleScript, being as easy to use but more powerful.</p><p>There's a lot more you can script with Ruby!</p><p>I did notice, though, that OSA was written specifically for AppleScript.  Parts of what looks like AppleScript's English-like syntax is actually implemented in the API itself, so to do the same from Ruby you need to think AppleScript and then map the statement into Ruby code.  (The same problem also exists when using Python and Objective-C with the OSA bridge)</p><p>Try adding a todo item to iCal and you'll see what I mean.  Still, once you get past that hurdle and understand OSA conventions, it's a pleasure to use from Ruby.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2008-03-18T17:17:00+00:00">March 18, 2008 at 5:17 pm</time></p>
      <p>In fairness, the AppleScript should be:</p><blockquote><p>
tell app "TextEdit" to get paragraph 1 of document "Read Me"
</p></blockquote>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2008-03-18T17:27:00+00:00">March 18, 2008 at 5:27 pm</time></p>
      <p>AppleScript was an example of Apple failing to learn from history, BTW. They were trying to build a programming language for non-programmers. It was based on HyperTalk, which had some success in that area, but they didn't understand that this wouldn't scale well. Apparently, they still had microcomputer blinders on, so the lessons of COBOL were unknown to them.</p><p>AppleScript error messages are still indecipherable.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Benoît</strong> &middot; <time datetime="2008-03-18T18:54:00+00:00">March 18, 2008 at 6:54 pm</time></p>
      <p>another option is to use the leopard-delivered <a href="http://www.apple.com/applescript/features/scriptingbridge.html" rel="nofollow">ScriptingBridge</a> (ObjC bridge to Apple Events) and use it through <a href="http://rubycocoa.sourceforge.net/" rel="nofollow">RubyCocoa</a> - an apple supported solution. i routinely use the two in tandum to great result, the ScriptingBridge even works through <a href="http://trac.macosforge.org/projects/ruby/wiki/MacRuby" rel="nofollow">MacRuby</a>!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>has</strong> &middot; <time datetime="2008-03-18T21:47:00+00:00">March 18, 2008 at 9:47 pm</time></p>
      <p>Assaf: "For Ruby In Practice, I’m writing a section on automation which includes an example using RubyOSA"</p><p>Looking at the RubyOSA project site, I get the impression that RubyOSA no longer being actively maintained: there's been no new code commits since August, mailing list queries often go unanswered and some of the open entries in the bug tracker date back over a year. With Apple's decision not to include RubyOSA in Leopard, I suspect Laurent has since switched his attention to more promising projects - RubyCocoa and MacRuby - which is fair enough.</p><p>If you're going to write about Mac automation, I would recommend covering either rb-appscript or Scripting Bridge instead. Appscript is the best solution in technical terms: it's a very mature, proven design that provides feature parity with AppleScript and ~99.9% compatibility with existing scriptable applications. It also provides a native Ruby API and powerful interactive help system. HTML documentation and AppleScript-to-Ruby translation tools are also available. Scripting Bridge is immature, flawed in design, and has various application compatibility problems, but does have one advantage over appscript in that it's included in Leopard (appscript requires installation from source or gem).</p><p>Brian Marick posted his own thoughts on this subject back when he was working on his own Mac automation book (he's switched to writing one on RubyCocoa now); you might find them of help:</p><p><a href="http://www.exampler.com/blog/category/scripting-macs/" rel="nofollow">http://www.exampler.com/blog/category/scripting-macs/</a></p><p>HTH </p><p>has<br>
--<br>
Control AppleScriptable applications from Python, Ruby and ObjC:<br>
<a href="http://appscript.sourceforge.net" rel="nofollow">http://appscript.sourceforge.net</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>has</strong> &middot; <time datetime="2008-03-18T22:12:00+00:00">March 18, 2008 at 10:12 pm</time></p>
      <p>Peter: "Ruby’s reflection / inspection capabilities also ensure that even if you forget the name of a method / term, you can look it up on the fly! Try that in AppleScript! (Oops, I’m wrong, for now.)"</p><p>Actually you can. I can't speak for RubyOSA and Scripting Bridge, but rb-appscript provides basic introspection methods - #properties, #elements, #commands, etc. - that list everything that's available, although these aren't particularly helpful on their own. More useful is appscript's built-in #help method, which allows you to explore an application's dictionary and object model from the comfort of irb, etc. For example:</p><p>app('TextEdit').help('-i -t -r')</p><p>will display TextEdit's inheritance graph and the dictionary definition and relationships of its root application object.</p><p>app('Finder').home.help('-s')</p><p>will display the current state of the home folder object's properties and elements. ASDictionary (required for built-in #help) can also export application dictionaries in an rdoc-like HTML format.</p><p>...</p><p>I think what Ted's getting at is that application dictionaries don't, by themselves, provide all the information you need in order to script an application; for example, while they list classes and commands, they don't tell you which commands can be used on which classes of objects. Unfortunately, most application developers don't supply adequate supplemental documentation to fill in the gaps (e.g. Adobe and Microsoft are a couple notable exceptions), which can cause considerable frustration for both new and seasoned users. </p><p>I think this is one of the biggest factors hindering adoption amongst Rubyists, Pythonistas, etc.: too much essential information is only available via experimentation and guesswork, or word of mouth exchange amongst existing AppleScripters. All I can suggest is that AppleScript/appscript/etc. users submit lots of feature requests to application developers asking for better supplementary documentation and examples - the more folk raise the issue, the likelier vendors are to do something about it.</p><p>HTH</p><p>has</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-03-18T23:37:00+00:00">March 18, 2008 at 11:37 pm</time></p>
      <p>I've just taken the rare step of deleting a comment. In case you're the poster of said comment and you're wondering why your comment was deleted, it's not because I think your main argument doesn't deserve to be aired, but because ad hominem attacks are not supported here. Debate the topics, not the people.</p><p>So that the poster's still valid opinion gets out regardless, they were essentially saying that the Ruby code given in this post is no better than the AppleScript. On this, of course, I disagree.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike</strong> &middot; <time datetime="2008-03-19T19:13:00+00:00">March 19, 2008 at 7:13 pm</time></p>
      <p>Oh, yes. *much* more readable. If you're a programmer.</p><p>AppleScript was designed to allow non-coders to code. I think there is room for both.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-03-19T21:57:00+00:00">March 19, 2008 at 9:57 pm</time></p>
      <p>Let's not forget, however, that it *is* a program. It's the difference between: "Take 2, then add 2 to it and find out the result" versus "2+2"</p><p>People are more used to dealing with mathematical syntax than programming syntax (which, arguably, is a form of mathematical syntax in some senses), but hopefully this will change.</p><p>The problem with the AppleScript is if I were coding it "off the top of my head" I might say something like:</p><p>get the first paragraph from the "read me" file I have open in TextEdit</p><p>.. Thing is, that won't work! Even though the AppleScript that would work reads like English, it's not! It has to be in a very specific order and style, which is very misleading. People expect equations to follow a set order, much like computer programs, but people don't expect English to be so.. rigid. In that sense, AppleScript is a poor construction, since it's a programming language in "easy to use" English clothing when it's nothing like that.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sal Scotto</strong> &middot; <time datetime="2008-03-20T17:29:00+00:00">March 20, 2008 at 5:29 pm</time></p>
      <p>Ive converted all my old applescripts to ruby and havent looked back</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Assaf</strong> &middot; <time datetime="2008-03-21T04:36:00+00:00">March 21, 2008 at 4:36 am</time></p>
      <p>Correction:  My previous comment was based on the first draft, for which I only looked at RubyOSA.  I then reworked the example using Appscript and the Scripting Bridge.</p><p>The thing about scripting on OS/X is that it was designed strictly for AppleScript.  Most of the English-like syntax is derived not from the language but the API, so any way you slice it, you end up writing AppleScript code in Ruby cloths.</p><p>I like the way RubyOSA feels like you're writing Ruby code, uses Ruby idioms like you would expect, with wrapper objects that take the grunt of the work.  Until you start stretching it.  It has limited support for object references, so even for my trivial example, I couldn't make it happen without first writing a prototype in AppleScript and then translating it into Ruby code, and the result felt like I'm working around RubyOSA's shortcomings.</p><p>Appscript is more of a Ruby dialect of AppleScript.  Its objects are not wrappers but references, you have to get/set values (or get burned), OSA types don't map to Ruby classes, etc.  But the resulting code is straightforward and just works.  The same trivial example is shorter, easier to read and maintain, and was much easier to write.</p><p>There's also a performance implication, Appscript is more efficient when dealing with large collections, and has the better (and damn good) documentation of the three.</p><p>Working with Scripting Bridge feels like programming in assembly.  I just look at the code and think "wouldn't it be nice to refactor this into a higher level abstraction so a year from now I can go back, read and understand it?"</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brian Marick</strong> &middot; <time datetime="2008-03-25T19:36:00+00:00">March 25, 2008 at 7:36 pm</time></p>
      <p>I switched from a book about scripting apps with Ruby to one about RubyCocoa for two reasons:</p><p>1. There are two competitive frameworks: Apple's Scripting Bridge and rb-appscript. I don't have a position on the philosophical differences between the two, but I'm not eager to write a book on Betamax only to have the world go to VHS. (For my own use right now, I'd probably use rb-appscript. I wrote some sample scripts, using one first, then rewriting into the other. I found myself preferring to start with rb-appscript. Scripting Bridge feels like it's had less use, so it has more gotchas, it seemed.)</p><p>2. As HAS noted above, the state of Mac applications is, like, gag me with a spoon. In many apps, scripting has obviously been tacked on as an afterthought. Some - Preview! - have no scripting support at all. The documentation tend to be weak. The object models can be bizarre or annoyingly UI-centric. I made a 13-minute movie to try to convey the feeling of scripting: <a href="http://www.exampler.com/blog/2008/01/25/the-experience-of-scripting-a-movie/" rel="nofollow">http://www.exampler.com/blog/2008/01/25/the-experience-of-scripting-a-movie/</a></p><p>So it seemed best to delay the book until the frameworks settle down and (with luck) Apple's potential increasing emphasis on scripting leads to better apps.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
