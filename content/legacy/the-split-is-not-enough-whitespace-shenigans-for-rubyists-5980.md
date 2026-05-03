---
title: 'The Split is Not Enough: Unicode Whitespace Shenigans for Rubyists'
date: '2012-11-26'
author: Peter Cooper
author_slug: admin
post_id: 5980
slug: the-split-is-not-enough-whitespace-shenigans-for-rubyists-5980
url: "/the-split-is-not-enough-whitespace-shenigans-for-rubyists-5980.html"
categories:
- nonsense
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2012/11/spaced.png" alt="" title="spaced" width="640" height="225" class="alignnone size-full wp-image-5981"></p>
<p>That code is legal Ruby! If you ran it, you'd see <code>8</code>. How? There's a tale to tell..</p>
<h3>The String with the Golden Space</h3>
<p>I was on IRC in <a href="http://nwrug.org/">#nwrug</a> enjoying festive cheer with fellow Northern Rubyists when <code>ysr23</code> presented <a href="https://gist.github.com/4118156">a curious problem.</a></p>
<p>He was using a Twitter library that returned a tweet, <code>"@twellyme film"</code>, in a string called <code>reply</code>. The problem was that despite calling <code>reply.split</code>, the string refused to split on whitespace. Yet if he did <code>"@twellyme film".split</code> in IRB, that was fine.</p>
<p>International man of mystery <a href="https://twitter.com/will_j">Will Jessop</a> suggested checking <code>$;</code> (it's a special global variable that defines the default separator for <code>String#split</code>). It was OK.</p>
<p>In an attempt to look smarter than I am, I suggested <code>reply.method(:split).source_location</code> to see if the String class had been monkey-patched by something <a href="http://rubygems.org/gems/activesupport">annoying.</a> Nope. (Though this is a handy trick if you <em>do</em> want to detect if anyone's tampered with something.)</p>
<p>Someone suggested Mr. Ysr23 show us <code>reply.codepoints.to_a</code>:</p>
<pre># reply.codepoints.to_a
 =&gt; [64, 116, 119, 101, 108, 108, 121, 109, 101, 160, 102, 105, 108, 109]</pre>
<p>Something leapt out at me. Where was good old <em>32</em>!? Instead of trusty old ASCII 32 (space) stood <em>160</em>, a number alien to my ASCII-trained 1980s-model brain.</p>
<h3>From Google with Love</h3>
<p>To the Google-copter!</p>
<p><img src="/assets/2012/11/spacey.png" alt="" title="spacey" width="586" height="343" class="alignnone size-full wp-image-5984"></p>
<p>Aha! <em>Non-breaking</em> space. That's why <code>split</code> was being as useful as a chocolate teapot.</p>
<p>After an intense 23 seconds of discussion, we settled on a temporary solution for Mr. Ysr23 who, by this time, was busy cursing Twitter and all who sailed upon her:</p>
<pre>reply.gsub(/[[:space:]]/, ' ').split</pre>
<p>The solution is simple. Use the the Unicode character class <code>[[:space:]]</code> to match Unicode's idea of what whitespace is and convert all matches into vanilla ASCII whitespace. <code>reply.split(/[[:space:]]+/)</code> is another more direct option - we just didn't think of it at the time.</p>
<h3>Quantum of Spaces</h3>
<p>Solving an interesting but trivial issue wasn't where I wanted to end my day. I'd re-discovered an insidious piece of Unicode chicanery and was in the mood for shenanigans!</p>
<p>Further Googling taught me you can <em>type</em> non-breaking spaces directly on OS X with <em>Option+Space.</em> (You can do the homework for your own platform.)</p>
<p>I also knew Ruby 1.9 and beyond would <a href="http://pragdave.blogs.pragprog.com/pragdave/2008/04/fun-with-ruby-1.html">let you use Unicode characters as identifiers</a> if you let Ruby know about the source's encoding with a magic comment, so it was time for shenanigans to begin!</p>
<p>My first experiment was to try and use non-breaking spaces in variable names.</p>
<p><img src="http://no.gd/awesome.png" style="border: 3px solid #666"></p>
<p>Cool! So what about variable names <em>and</em> method names?</p>
<p><img src="http://no.gd/awesome2.png" style="border: 3px solid #666"></p>
<p>What about without any regular printable characters in the identifiers at all?</p>
<p><img src="/assets/2012/11/spaced.png" alt="" title="spaced" width="640" height="225" class="alignnone size-full wp-image-5981"></p>
<p>And so we're back to where we started. A hideous outcome from a trivial weekend on IRC. But fun, nonetheless. Stick it in your <em>"wow, nice, but totally useless"</em> brain box.</p>
<h3>A Warning</h3>
<p><strong>Please don't use this in production code or the Ruby gods will come and haunt you in your sleep.</strong> But.. if you want to throw some non-breaking spaces into your next pair programming session, conference talk, or job interview, just to see if anyone's paying attention, I'll be laughing <em>with</em> you. (And if you're a C# developer too, Andy Pike tells me that <a href="http://lostechies.com/jimmybogard/2009/02/17/spaces-in-identifier-names-in-c/">C# supports these shenanigans too.</a>)</p>
<p><em>P.S. My <a href="http://www.kickstarter.com/projects/1225193080/the-ruby-20-walkthrough">Ruby 2.0 Walkthrough Kickstarter</a> only has about 12 hours to go! Check it out if Ruby 2.0 is on your radar or you want a handy way to get up to speed when it drops in February 2013.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>taelor</strong> &middot; <time datetime="2012-11-26T16:43:00+00:00">November 26, 2012 at 4:43 pm</time></p>
      <p>alternate title "Go home whitespace, you're drunk"</p>
    </li>
      <li>
      <p class="comment-meta"><strong>yanoo</strong> &middot; <time datetime="2012-11-26T20:49:00+00:00">November 26, 2012 at 8:49 pm</time></p>
      <p>That's... awesome! Unicode is hard.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nathan Long</strong> &middot; <time datetime="2012-11-26T20:53:00+00:00">November 26, 2012 at 8:53 pm</time></p>
      <p>Your last example is mind-bending, but an even more insidious usage is to put a non-breaking space at the end of a method name. Now the method "doesn't exist", "but I can see it, it's defined RIGHT THERE!". Muwahahahaha!</p><p>I'm not sure if this will show up correctly on account of the UTF-8 characters, but if you're using Vim, a setting like this can prevent you from being punk'd like this:</p><p>set listchars=nbsp:☠,trail:⋅,tab:▸\ ,eol:¬,extends:❯,precedes:❮</p><p>With that, `:set list!` will show non-breaking spaces as a skull and crossbones (among other settings for invisibles).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2012-11-26T22:00:00+00:00">November 26, 2012 at 10:00 pm</time></p>
      <p>Nathan: Ha, yes! And thanks for the tip. There's a similar setting for Sublime Text 2 users to show this stuff up too. I'll let people Google for it but the clue is <code>"draw_white_space": "all"</code> in the user settings.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dan Q</strong> &middot; <time datetime="2012-11-26T23:04:00+00:00">November 26, 2012 at 11:04 pm</time></p>
      <p>Inspired by your post, I've written a program that encodes/decodes any string into a map of 16 different UTF-8 whitespace codepoints, and then made it produce Ruby code which decodes and evals such encoded files. It's very, very wrong.</p><p><a href="https://gist.github.com/4151267" rel="nofollow">https://gist.github.com/4151267</a></p><p>Now I'm going to go take a shower in bleach.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Huckstep</strong> &middot; <time datetime="2012-11-27T17:48:00+00:00">November 27, 2012 at 5:48 pm</time></p>
      <p>I think taelor wins the comment thread on this one.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James Roper</strong> &middot; <time datetime="2012-11-28T00:17:00+00:00">November 28, 2012 at 12:17 am</time></p>
      <p>Interestingly, Java's and Scala's split methods also don't treat nbsp as whitespace, and require a similar regex if you want to do it, however, even though Java and Scala do support unicode identifiers (without any comment magic), nbsp is not a valid identifier character, because they are very strict as to exactly which unicode character categories are allowed in identifiers.  Unicode puts each character in a category, for example, ä is in the category letter/lowercase, so it's a valid identifier, but non breaking space has a category of separator/space, so it's not.  In Java, symbols are not valid identifiers, so ☃ is not valid, since its category is symbol/other.  But in Scala, symbols are, as long as the method only contains symbols.  So that makes for the following interesting Scala code:</p><p>val ☃ = 9700; val ☀ = 30<br>
println((☃ + ☀).asInstanceOf[Char])</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonas Elfström</strong> &middot; <time datetime="2012-12-12T09:44:00+00:00">December 12, 2012 at 9:44 am</time></p>
      <p>If I'm not mistaken it's not so much that C# supports these shenanigans but rather that Bogard used a font that rendered a non-visible character as a space.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
