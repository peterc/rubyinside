---
title: Rails 3.1 Adopts CoffeeScript, jQuery, Sass and.. Controversy
date: '2011-04-13'
author: Peter Cooper
author_slug: admin
post_id: 4669
slug: rails-3-1-adopts-coffeescript-jquery-sass-and-controversy-4669
url: "/rails-3-1-adopts-coffeescript-jquery-sass-and-controversy-4669.html"
categories:
- news
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2011/04/lolhh.png" alt="" title="lolhh" width="100" height="110" class="alignnone size-full wp-image-4670" style="float: left; margin-right: 18px;">Guess what? Yep, the forthcoming Rails 3.1 is going to be bringing in a few new friends as dependencies: <a href="http://jashkenas.github.com/coffee-script/">CoffeeScript</a>, <a href="http://jquery.com/">jQuery</a>, and <a href="http://sass-lang.com/">Sass</a>. What does this mean? Why has this been controversial? I'm going to quickly run through the details here.</p>
<h3>jQuery - A Non-Controversial Switch</h3>
<p>It was back in March (2011) when David Heinemeier Hansson, creator of Rails, dropped an interesting nugget of info on Twitter:</p>
<p><img src="/assets/2011/04/to1.png" alt="" title="to1" width="645" height="185" class="alignnone size-full wp-image-4671"></p>
<p>A lot of Rails applications lean on JavaScript to provide client-side and AJAX functionality. Till now, the <a href="http://www.prototypejs.org/">Prototype</a> library had been included in Rails by default as a way to make various things easier to achieve across different browsers, but <a href="http://jquery.com/">jQuery</a> has become significantly more popular over the last few years.</p>
<p>Given this, DHH's announcement passed with little controversy since Rails developers had become used to using jQuery and installing the <a href="https://github.com/indirect/jquery-rails">jquery-rails</a> gem anyway. A good move and a progression with the times - awesome.</p>
<h3>CoffeeScript - JavaScript, Improved</h3>
<p>Today's news:</p>
<p><img src="/assets/2011/04/to2.png" alt="" title="to2" width="644" height="185" class="alignnone size-full wp-image-4678"></p>
<p><a href="http://jashkenas.github.com/coffee-script/">CoffeeScript</a> started life as a Ruby project that converted a cleaner, JavaScript-esque language <em>into</em> JavaScript (<a href="coffeescript-a-new-language-with-a-pure-ruby-compiler-2921.html">we covered it in January 2010</a>). CoffeeScript's syntax enables you to write JavaScript in a cleaner and, often, more logical way.</p>
<p><img src="/assets/2011/04/cofeescriptdemo.gif" alt="" title="cofeescriptdemo" width="640" height="485" class="alignnone size-full wp-image-4675"></p>
<p>The project eventually became self hosting (so no Ruby was required) and has gone from strength to strength. While regular JavaScript doesn't have to worry about losing many developers any time soon, CoffeeScript has become a popular way to write JavaScript code in a tighter, easier to follow form amongst more progressive developers.</p>
<p><em>Trivia: The creator of CoffeeScript, Jeremy Ashkenas, was inspired by Marc Andre Cournoyer's <a href="http://8dc2fg6673tfx6f6ea1yt90uf1.hop.clickbank.net/">Create Your Own Programming Language e-book.</a> Yes, I make a small commission on this. If I get enough to build a mansion, I'll have your name etched into the cornerstone.</em></p>
<h3>Sass - CSS, Improved</h3>
<p><a href="http://sass-lang.com/">Sass</a> is to CSS as CoffeeScript is to JavaScript, though to a less extreme level. In its modern form, Sass looks just like CSS but adds support for things like variables, functions, nesting, and similar useful features. Crucially, Sass is just a <em>superset</em> of CSS so you can still use regular CSS with Sass and it'll Just Work™. You can then learn new features one by one and start using them as you like (I must admit, I'm a massive fan of Sass and I mostly stick to the variables and nesting features).</p>
<p><img src="/assets/2011/04/sasscss.gif" alt="" title="sasscss" width="438" height="230" class="alignnone size-full wp-image-4679"></p>
<h3>Controversy - Bullpoop, Same Old</h3>
<p>In true Ruby and Rails style, there's been a little controversy over today's CoffeeScript and Sass news. While the jQuery migration was pretty much accepted due to Prototype's position six feet under, plenty of developers are familiar with JavaScript and either feel slighted by CoffeeScript's inclusion as a default or are concerned that it'll act as a barrier for newcomers to Rails in future.</p>
<p>Given that you can "opt out" of having CoffeeScript and Sass included in your Rails projects by making a minor change to your Gemfile, this faux-controversy is nowhere near as interesting to me as the legitimate <a href="dhh-offended-by-rspec-debate-4610.html">RSpec vs Test::Unit debate</a> that DHH kicked off.</p>
<p>However, if you want to grab some popcorn and enjoy the bullshit, the comments <a href="https://github.com/rails/rails/commit/9f09aeb8273177fc2d09ebdafcc76ee8eb56fe33">on this GitHub commit page</a> are epic. People have even gone so far to produce graphics to express their opinions. Rock and roll. There's also a <a href="http://search.twitter.com/search?q=%22rails+3.1%22+OR+%22coffeescript%22+OR+dhh">significant level of pie-slinging going on on Twitter</a> too.</p>
<h3>But what about HAML!?</h3>
<p>It had to be asked right?</p>
<p><img src="/assets/2011/04/to3.png" alt="" title="to3" width="640" height="157" class="alignnone size-full wp-image-4680"></p>
<p><img src="/assets/2011/04/to4.png" alt="" title="to4" width="644" height="162" class="alignnone size-full wp-image-4681"></p>
<p>Phew!</p>
<p>Last but not least:</p>
<p><img src="/assets/2011/04/to5.png" alt="" title="to5" width="645" height="185" class="alignnone size-full wp-image-4682"></p>
<p>I'm glad David's stepping into these sorts of discussions again. He seemed to fade away during the year before Rails 3 came out, leaving a lot of the "thought leadership" to Yehuda Katz. Now he's back on top form and talking sense - long may it last.</p>
<h3>UPDATE: Wanna play with Rails 3.1 and CoffeeScript right away?</h3>
<p>Oh, and do you actually <a href="how-to-rails-3-1-coffeescript-howto-4695.html">want to play with Rails 3.1 RIGHT NOW?</a> You can - just click that link. I already wrote a tutorial post about it.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>insane dreamer</strong> &middot; <time datetime="2011-04-13T22:54:00+00:00">April 13, 2011 at 10:54 pm</time></p>
      <p>Nice moves - but I don't understand the reasoning behind including SASS but not HAML. SASS is definitely saves time over coding in straight CSS, but it doesn't even begin to compare with the time-saving gains made by using HAML over ERB. HAML may not be everyone's cup of tea, but neither is ERB. Maybe it's because most people who start using Rails for the first time already know HTML and find ERB an easy first step, so it's the default to keep the bar to entry low. But then why include CoffeeScript/SASS as the same logic could apply.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Grimm</strong> &middot; <time datetime="2011-04-13T22:57:00+00:00">April 13, 2011 at 10:57 pm</time></p>
      <p>Shouldn't the guy in the icon have braces on his teeth, since this is about Rails?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-04-13T23:26:00+00:00">April 13, 2011 at 11:26 pm</time></p>
      <p>@insane dreamer: CoffeeScript and Sass bring new and improved functionality to JavaScript and CSS respectively. Haml is entirely about <em>aesthetics</em>. As it says on the Haml homepage:</p><blockquote><p>Haml is based on one primary principle. Markup should be beautiful.</p></blockquote>
    </li>
      <li>
      <p class="comment-meta"><strong>herp</strong> &middot; <time datetime="2011-04-13T23:30:00+00:00">April 13, 2011 at 11:30 pm</time></p>
      <p>I feel like Katz cleaned up a lot of the mess in Rails, he seemed to have a better understanding of solid engineering.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>insane dreamer</strong> &middot; <time datetime="2011-04-13T23:56:00+00:00">April 13, 2011 at 11:56 pm</time></p>
      <p>@peter I would argue that HAML is not just about aesthetics--that may be the statement on the home page, but in reality it's about writing HTML in less time, and that's easier to read. Which is basically the same thing CoffeeScript does. I don't see CoffeeScript adding new "functionality" to JS itself--it just makes it quicker to write and easier to read. (I do grant you that SASS, with its variable assignments, does add new "functionality" to CSS.)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bradly Feeley</strong> &middot; <time datetime="2011-04-14T00:03:00+00:00">April 14, 2011 at 12:03 am</time></p>
      <p>@insane dreamer: Really it probably comes down to whether 37 Signals is using Haml or not. I would guess that if DHH is using Haml it would be included. Whether this is good or bad, I'm not going to get into, but I suspect to get Haml into Rails, you need to get Haml into Basecamp.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-04-14T00:35:00+00:00">April 14, 2011 at 12:35 am</time></p>
      <p>@insanedreamer: CoffeeScript doesn't add new functionality in the sense of making JavaScript do things it couldn't do before (since it all ends up as JavaScript anyway) but it makes radical extensions to the language to make really difficult things possible. Example:</p><p><code>cubes = (math.cube num for num in list)</code></p><p>Becomes:</p><pre><code>cubes = (function() {
  var _i, _len, _results;
  _results = [];
  for (_i = 0, _len = list.length; _i &lt; _len; _i++) {
    num = list[_i];
    _results.push(math.cube(num));
  }
  return _results;
})();</code></pre><p>Nothing in Haml - to the best of my knowledge, examples are welcomed - goes this far to free developers from crazy levels of code baggage. It mostly seems to be around the "no more end tags" and "we'll do the classes and IDs for you" level which seems a bit, "eh, big deal."</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-04-14T00:51:00+00:00">April 14, 2011 at 12:51 am</time></p>
      <p>@herp: Oh, I couldn't disparage Yehuda's work. Rails 3 is awesome compared to Rails 2, IMHO. I was just celebrating the return of DHH's thought leadership on issues like those covered here.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>khoa</strong> &middot; <time datetime="2011-04-14T01:34:00+00:00">April 14, 2011 at 1:34 am</time></p>
      <p>arg, no haml, slim please.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>trans</strong> &middot; <time datetime="2011-04-14T01:46:00+00:00">April 14, 2011 at 1:46 am</time></p>
      <p>I only wonder about SASS vs. LESS, I was starting to think client-side LESS was the future.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael Hartl</strong> &middot; <time datetime="2011-04-14T01:55:00+00:00">April 14, 2011 at 1:55 am</time></p>
      <p><em>Note:</em> It's Haml, not HAML, and Sass, not SASS. They're names, not acronyms.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-04-14T02:08:00+00:00">April 14, 2011 at 2:08 am</time></p>
      <p>It is, however, certainly DHH and not Dhh. Because "duhhhh" sounds funny :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jason Rogers</strong> &middot; <time datetime="2011-04-14T03:08:00+00:00">April 14, 2011 at 3:08 am</time></p>
      <p>You left the door wide open... I prefer <i>duhhhh</i>.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>linopolus</strong> &middot; <time datetime="2011-04-14T05:14:00+00:00">April 14, 2011 at 5:14 am</time></p>
      <p>I think there is a mistake in the whole article. What get's included by default, is Scss, which is powered by Sass, but is not Sass. Here is the difference:<br>
<code><br>
/* Scss */<br>
$blue: #3bbfce;<br>
$margin: 16px;</code></p><p>.content-navigation {<br>
  border-color: $blue;<br>
  color:<br>
    darken($blue, 9%);<br>
}</p><p>.border {<br>
  padding: $margin / 2;<br>
  margin: $margin / 2;<br>
  border-color: $blue;<br>
}</p><p>// Sass<br>
$blue: #3bbfce<br>
$margin: 16px</p><p>.content-navigation<br>
  border-color: $blue<br>
  color: darken($blue, 9%)</p><p>.border<br>
  padding: $margin / 2<br>
  margin: $margin / 2<br>
  border-color: $blue</p><p>/* CSS */<br>
.content-navigation {<br>
  border-color: #3bbfce;<br>
  color: #2b9eab;<br>
}</p><p>.border {<br>
  padding: 8px;<br>
  margin: 8px;<br>
  border-color: #3bbfce;<br>
}<br>
<br>
in Sass, you don't need the nasty curly braces, it's all about indention.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>linopolus</strong> &middot; <time datetime="2011-04-14T05:15:00+00:00">April 14, 2011 at 5:15 am</time></p>
      <p>hm, imagine 2 spaces indention in the previous comment, the blog stripped it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jedidiah Hurt</strong> &middot; <time datetime="2011-04-14T05:19:00+00:00">April 14, 2011 at 5:19 am</time></p>
      <p>"If I get enough to build a mansion, I'll have your name etched into the cornerstone."</p><p>Brilliant.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>almazom</strong> &middot; <time datetime="2011-04-14T05:20:00+00:00">April 14, 2011 at 5:20 am</time></p>
      <p>phanks for scss &amp; cofeescript)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel</strong> &middot; <time datetime="2011-04-14T05:29:00+00:00">April 14, 2011 at 5:29 am</time></p>
      <p>Well, to be fair, on the Haml question.. the question was if it's going to be the "default" templating engine. Sass and Coffee script aren't going to be defaults, are they? They're just going to be shipped by default ..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matt Todd</strong> &middot; <time datetime="2011-04-14T05:34:00+00:00">April 14, 2011 at 5:34 am</time></p>
      <p>Carl Lerch was also part of the "thought leadership". He was no small part of it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-04-14T05:52:00+00:00">April 14, 2011 at 5:52 am</time></p>
      <p>@linopolus: Strictly your comment is correct but pragmatically I believe it's not quite there. As far as I understand it, the indentation based syntax is "deprecated". SCSS is the "new" way that the Sass project is moving ahead with and is now commonly referred to through the project name even though technically the "Sass format" relates to the legacy format you were mentioning.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-04-14T05:53:00+00:00">April 14, 2011 at 5:53 am</time></p>
      <p>Matt Todd: Thanks. I need to clarify though I was making a general point and only said "a lot" rather than "all". No disrespect meant to anyone involved. I'm just recognizing the re-emergence of DHH in comparison, as it were.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Anne Ominous</strong> &middot; <time datetime="2011-04-14T06:03:00+00:00">April 14, 2011 at 6:03 am</time></p>
      <p>An issue with ALL of these DSLs (because at some level of abstraction, that's what these are, although not all at the same level), is: they add another LEVEL to the interpretation. When you are debugging, as often as not, you are debugging the code that was generated, not the code that you wrote. And that adds an additional level of potential error and frustration. It is harder to know whether the mistake is on your end, or some interpreter or library is to blame (and we all know it can be the latter, often enough).</p><p>As for the HAML issue: if you like HAML, why aren't you coding in Python? The basic principles are the same... it's just that in general Rails is a better environment so it supports HAML well. But it really seems to me that if you're a HAML nut you might be happier in Python anyway, since it uses a similar paradigm for writing code.</p><p>But more to the point: HAML is just another abstraction layer on top of Rails. If you like that abstraction fine, but REALLY ... don't try to force your idiosyncracies off on the rest of us. The rest of us DON'T like it as much as all of you DO. I think exclusive use of HAML was the single worst mistake Obie made in The Rails 3 Way. That largely made it more "The Obie Way", rather than the Rails 3 Way... bad move, Obie. We respect you as a developer and a businessperson, but we do not respect you enough to accept dictatorial decisions regarding what View code is the only proper thing for us to use.</p><p>Kudos to DHH for saying there is "no chance" of making HAML the default. All I can say is "yay!" The man has a head on his shoulders. What 1/3 of you think is "the greatest ever made" tastes a bit sour to the rest of us.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Anne Ominous</strong> &middot; <time datetime="2011-04-14T06:17:00+00:00">April 14, 2011 at 6:17 am</time></p>
      <p>And just to be clear, I can say the same about Sass. The concept of making whitespace significant in code is VERY debatable... and has been since Fortran, if not earlier. The consensus for decades has been "it's a bad idea". And while I like to keep an open mind, I have tried the more recent implementations of "whitespace means something", like Sass and HAML, and I find them severely wanting. I might be even more against it than some but I think the proponents of these ideas are missing some very big things. I'm just too polite to point them out here.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>gamov</strong> &middot; <time datetime="2011-04-14T07:57:00+00:00">April 14, 2011 at 7:57 am</time></p>
      <p>I agree that haml doesn't bring any new functionality but coffeescript is just translated into javascript. similar as haml to haml...<br>
However, with ERB, the views are still the ugly side of Rails. Haml could change this. I actually almost enjoy writing views with haml. I always hated the verbosity and clunkiness of ERB.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hampton Catlin</strong> &middot; <time datetime="2011-04-14T08:51:00+00:00">April 14, 2011 at 8:51 am</time></p>
      <p>So, a couple things. </p><p>@peter_cooper: </p><p>1) No, pure Sass is *not* deprecated at all. Think of them as two different hash syntaxes {me: 'you'} and {:me =&gt; 'you'}. Its the same shit, just different way to write it. We added SCSS, because people were moaning so much about indenting that we figured, heck, why not help them out with their ; and { }.</p><p>2) Also, Haml does have more functionality.</p><p>  %div[object]</p><p>  &lt;div class="" id="_" /&gt;</p><p>3) Haml isn't about aesthetics. Its about making it easier to do the<br>
right thing. See the example above. Haml makes it hard to write non-semantic<br>
markup. And it makes it easy to be semantic. Encouraging good behaviours<br>
and saving you lots of time. So, lots of goals. But speed is a big deal too.<br>
I'm pretty sure I'm 2x as fast doing Haml templates than ERB. Easily.</p><p>@khoa: I don't get the slim thing. Its kind of pretty syntax, but its wayyyy slower than Haml. Slower than Haml has been since its 0.1 release.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hampton Catlin</strong> &middot; <time datetime="2011-04-14T08:53:00+00:00">April 14, 2011 at 8:53 am</time></p>
      <p>Whoops!</p><p><code><br>
  %div[object]</code></p><p>  &lt;div class="" id="_" /&gt;</p><p></p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://blog.webtrh.cz/javascript-a-css-konci" rel="external nofollow" class="url">Javascript a CSS končí? | Webtrh Blog</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jamie</strong> &middot; <time datetime="2011-04-14T10:46:00+00:00">April 14, 2011 at 10:46 am</time></p>
      <p>I preferred it when Yehuda was taking the public lead on decisions like this. While he may or may not have come to the same conclusions as DHH Yehuda provided (from an outside perspective at least) a far more reasoned and considered argument for decisions. He also would make reasoned defence/argument against the alternative opinions often going into very well considered and extensive code examples to prove his point. DHH on the other hand often comes across as bullish, arrogant and unwilling to consider alternative opinions. This may or may not be the case, but importantly this is how he is viewed by many both inside and outside of the ruby community.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sam Elliott</strong> &middot; <time datetime="2011-04-14T10:53:00+00:00">April 14, 2011 at 10:53 am</time></p>
      <p>I emailed @dhh about this and his reply is quite interesting. IMHO, it was violating Convention over Configuration, and I said so. His reply basically said that rails was all about his conventions, not necessarily the community at large.</p><p>The offshoot of this is that now i feel i understand the role of the core team far more now. Previously, I thought they were there to represent the different facets of the wider rails community, but now I realise that they're a (largely) benign cabal. I don't think this is necessarily a bad thing, but it is very much worth knowing.</p><p>I think it's worth pointing out that without @dhh rails probably wouldn't progress at all and there's lots of awesome in rails 3.1, and we shouldn't let small things like this blot over other features that meet with more community approval.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>pimo</strong> &middot; <time datetime="2011-04-14T10:57:00+00:00">April 14, 2011 at 10:57 am</time></p>
      <p>This is a religious issue so don't take me seriously but Haml is bad for the same reason Python is bad: space, which is an invisible character, has a structural meaning. Give me a Haml without semantic spacing and I might consider using it even if I prefer writing my own html code.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Darko Fabijan</strong> &middot; <time datetime="2011-04-14T12:14:00+00:00">April 14, 2011 at 12:14 pm</time></p>
      <p>Big Like! Especially for CoffeeScript :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://1up4dev.org/2011/04/coffescript-what/" rel="external nofollow" class="url">CoffeeScript quem? | 1up4developers</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Felix Gallo</strong> &middot; <time datetime="2011-04-14T15:18:00+00:00">April 14, 2011 at 3:18 pm</time></p>
      <p>I hate python, always have, and always will.  Nevertheless, if you can get over that aspect of HAML and just try using it for a few complex pages, you will quickly realize that it's significantly superior to ERB and HTML.</p><p>The comment about it being 'beautiful' is not about aesthetics -- it's about usability, visibility, editability, and functionality.  There are some rough spots in HAML in my opinion, but it's orders of magnitude easier to write, read and use than a forest of angry angle-brackets.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>hced</strong> &middot; <time datetime="2011-04-14T15:46:00+00:00">April 14, 2011 at 3:46 pm</time></p>
      <p>@pimo: re semantic spacing/use of invisible characters in Haml, Python et. al. (Don't take this too seriously either, I'm an amateur ok.)</p><p>But, doesn't (carriage) return – also being an invisible character – affect the structural meaning of your code, keeping different blocks of instructions separated? Despite the fact that you may use as many consecutive returns as you want in most languages, what makes it ok to accept return for structural meaning but not space? Why not structure your programs in a single line of code? Aesthetics? '/_'</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Thomas Glasgow</strong> &middot; <time datetime="2011-04-14T15:51:00+00:00">April 14, 2011 at 3:51 pm</time></p>
      <p>Rails is starting to look like those programs that during installation offer to install whatever toolbar.</p><p>Sure you can disable the additional dependencies, but what's the real motivation for proposing them by default?</p><p>I appreciate jQuery finally takes over Prototype.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Anne Ominous</strong> &middot; <time datetime="2011-04-14T16:19:00+00:00">April 14, 2011 at 4:19 pm</time></p>
      <p>If someone created essentially the same thing without making whitespace significant to the code, I might use it too. As it stands, I have used it and don't like it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bill Kidder</strong> &middot; <time datetime="2011-04-14T17:24:00+00:00">April 14, 2011 at 5:24 pm</time></p>
      <p>"hm, imagine 2 spaces indention in the previous comment, the blog stripped it." Sums up so well the problem with whitespace-based languages.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bill Siggelkow</strong> &middot; <time datetime="2011-04-14T17:39:00+00:00">April 14, 2011 at 5:39 pm</time></p>
      <p>I am confused about the CoffeeScript =&gt; JavaScript example in the post. As I understand it, assignment in CoffeeScript uses '=' and not ':'. That is, shouldn't it be:</p><p>number = 42</p><p>instead of</p><p>number: 42</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bill Siggelkow</strong> &middot; <time datetime="2011-04-14T17:50:00+00:00">April 14, 2011 at 5:50 pm</time></p>
      <p>@peter_cooper,</p><p>The CoffeeScript =&gt; JavaScript is from an earlier version of CoffeeScript that used : for assignment. The latest version goes back to std JS assignment using =. The use of : for assignment in earlier CoffeeScript caused difficulties if you wanted to create an anonymous object literal.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Geoffrey Grosenbach</strong> &middot; <time datetime="2011-04-14T17:56:00+00:00">April 14, 2011 at 5:56 pm</time></p>
      <p>Now if we can only get rid of XML as the default output format in generated templates...</p><p>For a framework that has disparaged XML for over five years, it's time to move to JSON by default for our APIs!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jon Leighton</strong> &middot; <time datetime="2011-04-14T18:08:00+00:00">April 14, 2011 at 6:08 pm</time></p>
      <p>Geoffrey Grosenbach: That was changed quite recently. Can't be bothered to find the commit, but I can say it will be changed in 3.1 :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-04-14T19:30:00+00:00">April 14, 2011 at 7:30 pm</time></p>
      <p>@Bill: Ah, yes, that graphic was yanked from an older post about CoffeeScript that I did. Looks like I might need to update it! :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Obie</strong> &middot; <time datetime="2011-04-14T22:38:00+00:00">April 14, 2011 at 10:38 pm</time></p>
      <p>@Anne: Get over it already ya big crybaby. Does Haml offend your sensitive eyes so much that you can't bear to look at it?? You know what I think? I think that deep inside, Haml haters like you know that they're on the wrong side of the markup fence. You're looking over at our beautiful, elegant playground and you realize that we're having so much more fun than you over here and that makes you so jealous and full of self-loathing... hahaha, let me stop now. Truly, I don't care one way or the other what you use.</p><p>For anyone that's interested in my rationale for using Haml exclusively in my book, here are my actual, adverb-laden words from the introduction to The Rails 3 Way:</p><blockquote>
<p>I firmly believe that Haml is vastly, profoundly, better than ERb for view templating, so the book uses Haml exclusively.</p>
<p>Introduction 0.1	About This Book</p>
<p>This book is not a tutorial or basic introduction to Ruby or Rails. It is meant as a day-to-day reference for the full-time Rails developer.</p>
</blockquote><p>If you are a <em>full-time Rails developer</em> then one of the first things you learned was how to use ERb. You don't need reference material for it in a book like The Rails 3 Way.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>pimo</strong> &middot; <time datetime="2011-04-15T07:17:00+00:00">April 15, 2011 at 7:17 am</time></p>
      <p>@hced: A return is way more visible than a space. Actually what you see is a "new line". It's even more visible that a semicolon at the end of a line or a { or a }: people forget them but never forget starting a new line.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Phil Thompson</strong> &middot; <time datetime="2011-04-15T09:06:00+00:00">April 15, 2011 at 9:06 am</time></p>
      <p>Python is a programming language, HTML and CSS are not. HTML and CSS are all about structure rather than flow. I believe that's why whitespace significance works for these languages and not Python. Of course with Sass it's a little more complicated as it has programming features but structure is still the overriding use.</p><p>I'm a little sceptical of CoffeeScript as it's also a programming language but I will take another look it.</p><p>I have worked with Python, HTML, CSS, Haml and Sass as well as Ruby and Rails of course.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pete Browne</strong> &middot; <time datetime="2011-04-15T16:25:00+00:00">April 15, 2011 at 4:25 pm</time></p>
      <p>I'm all for using Sass for generating stylesheets. It makes sense because the .scss syntax is just a superset of CSS and hardly changes the way newcomers would make a Rails app.</p><p>Using CoffeeScript, on the other hand, requires node.js to be installed, and it uses a completely different syntax from Javascript. If I was using Rails for the first time it would be near impossible for me to understand or utilize this feature. In my opinion CoffeeScript should be easy to enable, but not a default.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>coder</strong> &middot; <time datetime="2011-04-15T18:50:00+00:00">April 15, 2011 at 6:50 pm</time></p>
      <p>CoffeeScript inclusion must be a belated April Fool's joke.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pete Forde</strong> &middot; <time datetime="2011-04-16T03:16:00+00:00">April 16, 2011 at 3:16 am</time></p>
      <p>There's no way to prove it, but most of the Haml-haters haven't made any real effort to try it for more than a few minutes.</p><p>I'm lucky to live in Toronto, where Haml was created. We have a massive Rails community here, and the vast majority of people/shops/startups use Haml by default.</p><p>Frankly, I think Obie should get a medal for canonizing his opinion in book format. Most people are terrified of being radical.</p><p>Rails was never intended to be a critical mass product in the way a marketer understands critical mass. It hit critical mass when it was used to build Basecamp and Shopify. It's conventions are (as someone said above) the preferences of one expert developer and those he trusts with extra keys to the $2M race car.</p><p>What is a framework beyond a whole bunch of conventions that play well together?</p><p>Anyhow, all y'all are silly to be arguing about libraries that you probably have installed anyhow. Happiness is one Gemfile deletion away.</p><p>ps. Use Haml for one project. If you still hate it and you can prove that you used it extensively for said project, I'll make a $25 charitable donation in your name.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="how-to-rails-3-1-coffeescript-howto-4695.html" rel="external nofollow" class="url">How to Play with Rails 3.1, CoffeeScript and All That Jazz Right Now</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Will Jessop</strong> &middot; <time datetime="2011-04-18T01:26:00+00:00">April 18, 2011 at 1:26 am</time></p>
      <p>@Pete Forde: pick a charity and I will donate $25 to it so I don't have to use HAML on my next project. It's really not worth it to me to mess up my project that much for you to make the donation for me.</p><p>This comment pretty much sums up the reason I won't use HAML:</p><p>"HAML is /like/ an abstraction, except you still have to know HTML, you still have to think about the HTML it's generating, and instead of just writing the HTML, you have to figure out how to write the HAML that will generate the HTML that you need to have in your head anyway."<br>
  -- (<a href="https://github.com/rails/rails/compare/9333ca7...23aa7da#commitcomment-342404" rel="nofollow">https://github.com/rails/rails/compare/9333ca7...23aa7da#commitcomment-342404</a>)</p><p>And yes @obie, It does offend my sensitive eyes, I consider it harmful. Almost no web-designers use it, alongside a minority of programmers. It makes open-source projects less appealing to contribute to, and means work by designers has to be 'translated'.</p><p>I'd also appreciate less of the patronisation. I don't secretly believe myself to be on "the wrong side of the markup fence". You've made some great contributions to the Ruby/Rails community, but pushing your preferences as fact isn't one of them.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>pimo</strong> &middot; <time datetime="2011-04-18T07:26:00+00:00">April 18, 2011 at 7:26 am</time></p>
      <p>Designers don't give me SASS code, even in the new and welcome .scss syntax. Their tools don't work with SASS, they work with CSS so that's what they give me. All the project will slow down if I have to translate it to SASS. They usually start working with pure HTML and CSS, then in some cases they get a Rails installation on their machine and start doing changes to CSS and the HTML parts of the the ERB files. Some of them even learned how to commit and push to a git repository which is great because we can work in parallel and spend little time communicating. Nonetheless they are not programmers. HAML is definitely beyond their reach. I'll check if they can work with SASS but I'm not confident.</p><p>My feeling is that as we put more layers between the actual output (HTML/CSS) and its representation in the code, we slow down the project team by increasing the amount of work for the programmers. There is no point at making me faster at coding with HAML and SASS if I have to spend more time redoing the work of the designers and talking with them.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>DHH</strong> &middot; <time datetime="2011-04-18T09:12:00+00:00">April 18, 2011 at 9:12 am</time></p>
      <p>I'm happy for commenters here who have found bliss in HAML. Truly, I am. It's wonderful when you stumble across a syntax that just clicks with your brain. That happened for me with Ruby and, recently, CoffeeScript.</p><p>But it's certainly a misnomer to call this preference The Rails Way or something that you graduate to. "The Rails Way", in the literal sense of the term, is the defaults that Rails ships with. In this case ERB. </p><p>I personally love ERB.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bala Paranj</strong> &middot; <time datetime="2011-04-18T12:08:00+00:00">April 18, 2011 at 12:08 pm</time></p>
      <p>HAML lacks simplicity. Period. It is also nightmare for designers. My vote is always for tools that make complicated things easy. HAML makes simple things complicated. Wrong direction!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bala Paranj</strong> &middot; <time datetime="2011-04-18T12:22:00+00:00">April 18, 2011 at 12:22 pm</time></p>
      <p>HAML is the LISP of templating engines.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paetor</strong> &middot; <time datetime="2011-04-19T11:22:00+00:00">April 19, 2011 at 11:22 am</time></p>
      <p>Well, I just think it's strange to invite everyone to code on your project but when push comes to shove glorify your own personal preferences without any room for debate. </p><p>Clearly, the majority doesn't like an extra layer of abstraction on top of something as simple as javascript, and if such choices were to be made, clearly everyone the real productivity increaser here is Haml. You just like the torture that is Erb, which is fine ofcourse.</p><p>Sure, it's easily turned off but in a way that adds to the childishness of the entire affaire that's causing all this noise.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ricardo</strong> &middot; <time datetime="2011-04-19T12:04:00+00:00">April 19, 2011 at 12:04 pm</time></p>
      <p>@pimo: being a superset of CSS, you don't need to "convert" anything to SCSS. It will just work. From my experience coders at any level can understand the logic behind variables, and nesting with a little effort.</p><p>I'd prefer Less.js though.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Adam Gonnerman</strong> &middot; <time datetime="2011-04-19T16:18:00+00:00">April 19, 2011 at 4:18 pm</time></p>
      <p>I have no quarrel with any of the choices. It looks like progress to me.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Aronoff</strong> &middot; <time datetime="2011-04-19T17:14:00+00:00">April 19, 2011 at 5:14 pm</time></p>
      <p><b>Hampton Cailtlin wrote:</b></p><blockquote><p>
I don't get the slim thing. Its kind of pretty syntax, but its wayyyy slower than Haml. Slower than Haml has been since its 0.1 release.
</p></blockquote><p>@Hampton: really? I thought it was the other way around and Slim was faster than Haml? See for example: <a href="https://gist.github.com/626215" rel="nofollow">this gist</a> and <a href="https://github.com/stonean/slim" rel="nofollow">Slim's Github page</a>.</p><p>More broadly, I think there's two sides to the "Rails way" slogan. On the one hand, as DHH says, there's the literal "What Rails ships with." According to that Test::Unit is <em>still</em> the Rails way. On the other hand, there's the (equally common and obvious) use of "the Rails way" to mean "what most Rails people do and recommend." On that interpretation, Rspec is probably the Rails way. (I don't have a particular dog in this fight, but it's a clear example of the split in usage.)</p><p>Ultimately, Rails is flexible enough that you can pretty easily tweak the stack to suit your tastes and needs.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paris Sinclair</strong> &middot; <time datetime="2011-04-22T22:28:00+00:00">April 22, 2011 at 10:28 pm</time></p>
      <p>"What most Rails people do and recommend" really means, what the cool kids do.</p><p>There is no survey of what most "Rails people" do.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jaroslaw Zabiello</strong> &middot; <time datetime="2011-04-23T08:59:00+00:00">April 23, 2011 at 8:59 am</time></p>
      <p>When I think about CoffeScript, first thought that comes to my mind is: HOW TO DEBUG it in FIREBUG? Generated JS is not the source code you want to debug.  For simple code all is simple, CoffeScript is just not needed. For advanced, complex code, debugging may become a challenge. Because you cannot debug CoffeScript source code, you have to debug the compiled, mangled JavaScript! That's why Google had to  create Firefox extension to deal the code compiled by their Closure compiler. </p><p>@Bala Paranj: Haml is not for designers, right. But neither ERb is. Both contain embed Ruby code. And designers should not have no access to Ruby code directly. But for programmers, well, Haml is not only cleaner but it is also more powerful than ERb (I agree with Obie). Common', ERb resembles PHP, it looks like shit:<br>
<code>&lt;div id="myid" class="myclass" label=""&gt;</code><br>
vs.<br>
<code>#myid.myclass{label:x}</code></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jaroslaw Zabiello</strong> &middot; <time datetime="2011-04-23T09:01:00+00:00">April 23, 2011 at 9:01 am</time></p>
      <p>Stupid blog engine. It's code tag does not work. </p><p><code></code></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jaroslaw Zabiello</strong> &middot; <time datetime="2011-04-23T09:03:00+00:00">April 23, 2011 at 9:03 am</time></p>
      <p>And it does not gave preview. Again: <a href="https://gist.github.com/938484" rel="nofollow">https://gist.github.com/938484</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://astonj.com/tech/coffeescript-sass-and-rails-3-1/" rel="external nofollow" class="url">CoffeeScript, SASS and Rails 3.1 - AstonJ's Blog</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://blog.octo.com/quelques-niouses-en-ruby-du-mois-davril/" rel="external nofollow" class="url">OCTO talks ! » Quelques niouses (en) Ruby du mois d’Avril</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>drymlover</strong> &middot; <time datetime="2011-05-02T05:28:00+00:00">May 2, 2011 at 5:28 am</time></p>
      <p>Hey folks, on the HAML front... Haven't you ever seen or played with DRYML?  I mean seriously, this eats HAML for breakfast, vomit's it during brunch, it's it again for lunch and then eats ERB for dinner.  </p><p>If you've not seen it, you seriously owe yourself: <a href="http://bit.ly/dryml" rel="nofollow">http://bit.ly/dryml</a></p><p>This is better than sex on the beach... ;)  Yeah, heh, talking about the drink.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://blog.jayway.com/2011/05/16/coffeescript-goodies/" rel="external nofollow" class="url">CoffeeScript Goodies | Jayway Team Blog - Sharing Experience</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://www.swaroopch.com/blog/passionate-programmer-book-review/" rel="external nofollow" class="url">Passionate Programmer book review | Swaroop C H - India, Technology, Life Skills</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://ihower.tw/blog/archives/5611" rel="external nofollow" class="url">Rails 3.1 RC 發佈: 重點導覽 | ihower { blogging }</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>rbq</strong> &middot; <time datetime="2011-05-30T18:05:00+00:00">May 30, 2011 at 6:05 pm</time></p>
      <p>When I think of HTML I think of a tree of elements, not a markup language. Maybe that's why I see Haml as a more appropriate representation than the regular notation.</p><p>ERB in contrary is just bad in so many ways -- it adds even more bloat to an already verbose and non-DRY markup language. Plus it reminds me of my PHP days, fiddling with whitespace in the templates to produce correctly indented output. Urgh.</p><p>BTW, I heard we'll get a generator switch to choose between JQuery and other frameworks. I really can't believe that there isn't an equivalent to start a project with Haml. =(</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://elegantcode.com/2011/06/21/exploring-coffeescript-part-1-and-then-there-was-coffee/" rel="external nofollow" class="url">Elegant Code » Exploring CoffeeScript Part 1 – And Then There Was Coffee</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Braz Ford</strong> &middot; <time datetime="2011-07-07T20:00:00+00:00">July 7, 2011 at 8:00 pm</time></p>
      <p>I have used DRYML before on a couple of projects.  It lets me define my own tags and pass them parameters.  That was super helpful in a few situations.  Nonetheless, I feel that I have not really understood the true power of it.  I would love to see a book that explained that in detail.  Much of Hobo looks like the right and intelligent direction for setting conventions.  But the learning curve is daunting to me.  I am always learning on the job, and I have to justify the client's dollar.</p><p>I like the direction Coffeescript is taking us, because I've always been too lazy to be good at Javascript.  I agree with the seriousness of many of the problems with it too, but I am hoping for progress.  Java was pretty gnarly at first, but I was still relieved to not be using C++, which again, I was too lazy to fully learn.</p><p>I used to write FORTH interpreters in assembler and C.  So its not like I'm just plain lazy!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
