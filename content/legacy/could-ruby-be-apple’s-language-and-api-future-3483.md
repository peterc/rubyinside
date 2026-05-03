---
title: Could Ruby be Apple’s Language and API Future?
date: '2010-06-30'
author: Peter Cooper
author_slug: admin
post_id: 3483
slug: could-ruby-be-apple’s-language-and-api-future-3483
url: "/could-ruby-be-apple’s-language-and-api-future-3483.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<blockquote class="stylized"><p>There has been a shift in development landscape over at Apple. John Siracusa of Ars Technica recently published an article about <a href="http://arstechnica.com/apple/news/2010/06/copland-2010-revisited.ars">Apple’s language and API future.</a> I believe Apple is preparing to transition to Ruby as their next default language.</p></blockquote>
<p><cite>Parveen Kaler</cite></p>
<p>Parveen <a href="http://parveenkaler.com/2010/06/30/could-ruby-be-apples-language-and-api-future-3/">pulls together</a> some interesting threads about MacRuby, LLVM, and XCode to argue that Apple might be looking at Ruby as a future first-class language for their platforms.</p>
<p>I'm going to put myself on the line with a hunch here and say, yes, MacRuby is going to become a first-class language at Apple. Seriously. Apple's investment in MacRuby is an interesting one for a company not known for frivolity in its crazy-scale R&amp;D operations and there's <em>something</em> brewing there. Either that, or they'll disband the whole thing.</p>
<p>Parveen's post is <a href="http://news.ycombinator.com/item?id=1473462">being discussed</a> over on Hacker News where <em>danudey</em> makes a good point for why Apple would <em>not</em> make MacRuby a first class language:</p>
<blockquote class="stylized">
<p>I can't really see Apple doing this, if for no other reason than Objective-C is something they can control, and Ruby isn't. If the core Ruby developers decide they want to add more features, change the language's underpinnings, etc. Apple's left to play catch-up. If Apple wants to add features, then they basically have to fork the language and hope their changes get merged in.</p>
<p>Apple's shown (and been shown) how much of a benefit it is to control your own destiny; even with Ruby being open-source, it's still an outside influence they have to work with or against. Objective-C, for all intents and purposes, is their language, one they can take in any direction they want.</p>
</blockquote>
<p><cite>danudey</cite></p>
<p>Seems like reasonable thinking but I say "watch this space."</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Matt Aimonetti</strong> &middot; <time datetime="2010-06-30T06:25:00+00:00">June 30, 2010 at 6:25 am</time></p>
      <p>Of course Apple believes MacRuby is a great project otherwise they would stop developing it. Does it mean it will be the next official Apple language? Nobody knows for sure. This dude seems to think so and I personally hope so too. But really, the only thing that we can do is wait and see. Starting rumors certainly won't help (one way or the other).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-06-30T06:31:00+00:00">June 30, 2010 at 6:31 am</time></p>
      <p>But nor will spreading a rumor hurt, as Apple has seen time and time again (I'm convinced most of their "leaks" are deliberate anyway).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sven Kräuter | 5v3n</strong> &middot; <time datetime="2010-06-30T07:58:00+00:00">June 30, 2010 at 7:58 am</time></p>
      <p>I'd love to see Ruby become Apple's dev language of choice. </p><p>I love my Mac OS, but I'd see it as a waste of time to get into a proprietary language, be it .net or objective-c. When I had my first glance at MacRuby, I instantly thought: if this project evolves, that could mean I'm finally able to develop for Mac OS without the feeling of being trapped by a company's language. </p><p>I hope Apple opens up, perhaps being reminded of their own past virtues.</p><p>To put it short: I'd love to see that!</p><p>Cheers </p><p>5v3n</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Stout</strong> &middot; <time datetime="2010-06-30T16:04:00+00:00">June 30, 2010 at 4:04 pm</time></p>
      <p>Really the big question for a lot of people is will they port Mac ruby to iOS.  Right now you can basically build any OSX app in MacRuby, even if its not a "first class" language for Apple.  iOS development however is another story.  While mobile devices may not have as much processing power, the LLVM can do some amazing things, so if MacRuby keeps improving at the rate it has, it wouldn't surprise me if they open iOS development to use MacRuby as well.  Right now the big issue is garbage collection from what I understand.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ron</strong> &middot; <time datetime="2010-06-30T16:50:00+00:00">June 30, 2010 at 4:50 pm</time></p>
      <p>I just hope its C like with dot notation a line terminated with a semi-colon. Nothing that looks like VB or Python. As for Ruby it doesn't feel comfortable or C like either.</p><p>Perl 6 looks interesting, if it ever materializes.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Geoffrey Grosenbach</strong> &middot; <time datetime="2010-06-30T17:02:00+00:00">June 30, 2010 at 5:02 pm</time></p>
      <p>I followed all the links and re-read Peter's intro, looking for an argument. There is none here.</p><p>Yes, Apple supports the development of MacRuby, and it uses LLVM, but that's a long shot from making it the official language for writing Cocoa apps. </p><p>I've written and shipped a MacRuby app and I can say that 90% of a MacRuby app is just calling through to the Cocoa APIs. Using Ruby instead of Objective-C would give up protocols, first-class pointers, and a bunch of other language features that Cocoa relies on heavily.</p><p>However, Apple has shown that they will continue to enhance the Objective-C language  (which is an open standard, not a proprietary language). Gradual improvement makes more sense than switching to Ruby altogether.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Othmane Benkirane</strong> &middot; <time datetime="2010-07-01T00:08:00+00:00">July 1, 2010 at 12:08 am</time></p>
      <p>I would like that too, but seriously, this is but a dream. At most, we can expect Apple to consider Ruby as a language for scripts, not for big applications. Objective-C has already got an ecosystem so monolithic that a small change would hurt the whole community. Plus, MacRuby is made upon Objective-C.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>jimbob2000</strong> &middot; <time datetime="2010-07-08T17:15:00+00:00">July 8, 2010 at 5:15 pm</time></p>
      <p>There's no way Apple would replace Objective-C.  But like their Java support, Ruby is probably gaining acceptance as a scripting / adjunct language.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Vojto</strong> &middot; <time datetime="2010-09-15T01:57:00+00:00">September 15, 2010 at 1:57 am</time></p>
      <p>1. With Ruby you can quickly make web applications<br>
2. With Objective C you can make actual applications</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
