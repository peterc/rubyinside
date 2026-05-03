---
title: Google PageRank In Five Lines Of Ruby
date: '2010-06-10'
author: Giles Bowkett
author_slug: gilesgoatboy
post_id: 3313
slug: google-pagerank-in-five-lines-of-ruby-3313
url: "/google-pagerank-in-five-lines-of-ruby-3313.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><em>Giles Bowkett - Ruby Inside's <a href="top-ruby-presenter-of-2008-giles-bowkett-1425.html">Top Presenter of 2008</a> - contributes a guest post:</em></p>
<p>I created a 90-minute video called <a href="http://gilesbowkett.blogspot.com/2010/03/programmers-what-to-do-if-you-get-fired.html"><i>How To Get A Kickass Job, Making Six Figures Working (From Home) With The Stars Of Your Community, Even If You Just Got So Fired That The Cops Hauled You Out Of The Building In Handcuffs</i></a>. Part of my magic formula includes understanding Google PageRank, and the best way to understand complex, abstract mathematics is to reduce them to a very short Ruby script. As an aside, you'd be surprised how many complex, abstract theoretical thingamajigs can condense down to just a few lines of easily understandable Ruby.</p>
<p><object width="480" height="270"><param name="allowfullscreen" value="true">
<param name="allowscriptaccess" value="always">
<param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=9945353&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=0&amp;color=00ADEF&amp;fullscreen=1">
<embed src="http://vimeo.com/moogaloop.swf?clip_id=9945353&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=0&amp;color=00ADEF&amp;fullscreen=1" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" width="480" height="270"></embed></object></p>
<p>Having problems watching the video embedded above? You can go <a href="http://vimeo.com/9945353">directly to the video on Vimeo.com</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Oleg Keene</strong> &middot; <time datetime="2010-06-10T23:23:00+00:00">June 10, 2010 at 11:23 pm</time></p>
      <p>Giles, fix the embed code pls</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-06-10T23:33:00+00:00">June 10, 2010 at 11:33 pm</time></p>
      <p>I'm not seeing a problem with the embed, but I've added a link directly to the video for anyone who is having issues.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Giles Bowkett</strong> &middot; <time datetime="2010-06-11T00:11:00+00:00">June 11, 2010 at 12:11 am</time></p>
      <p>I'm not seeing it in Safari either, but I do see it in Firefox. Also for some odd reason the video's tiny in Firefox. In my defense, I can't edit embed codes directly because I'm not an admin. Peter doesn't trust me with the keys to the store, which is probably wise of him.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-06-11T00:36:00+00:00">June 11, 2010 at 12:36 am</time></p>
      <p>I'm seeing it in both Safari (which is my main browser) and Chrome. Not tried Firefox or IE, etc. Only tried Chrome because I'm not logged in with that and it still works. Odd! I'll have a quick look at the raw code to see if anything obvious is up.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-06-11T00:37:00+00:00">June 11, 2010 at 12:37 am</time></p>
      <p>Noticing that BR tags have been added into the embed. I suspect some clients might not like that. Removing them now. This is because I just copied and pasted from an e-mail so it wasn't all on one line :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gerard</strong> &middot; <time datetime="2010-06-11T07:51:00+00:00">June 11, 2010 at 7:51 am</time></p>
      <p>Interesting video and will probably try this out. One thing that struck me was the unnecessary use of the word f**k in the video?! I mean why can't you just use "messed up"  or something similar? </p><p>DHH's keynote at Railsconf 2010 was the same... "selfish b*****d rant", "this is just s**t syntax"(para-phrased), "this just p****s me off"(para-phrased). </p><p>I mean, that sort of stuff is cool when you're... i dunno 15 years old or whatever but it's just unprofessional in my opinion. Don't get me wrong, I love ruby (and rails for that matter), I just think it's unnecessary and childish</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-06-11T08:04:00+00:00">June 11, 2010 at 8:04 am</time></p>
      <p>@Gerard: DHH has his own <a href="http://twitter.com/dhh/status/1631100714" rel="nofollow">answer to that charge.</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gerard</strong> &middot; <time datetime="2010-06-11T09:01:00+00:00">June 11, 2010 at 9:01 am</time></p>
      <p>Ok, I hear his defiant "f**k the world" stance on professionalism and all that, but the notion that you have to defend the way you speak at a conference is obsurd in my opinion. I mean, you should be out to convert people to Rails, not have people listening to you one minute, and then spend the remainder of the presentation wondering why you speaking in a disrespectful manner. </p><p>It's great to have an arrogant poster child for rails, but arrogance and vulgarity don't go hand in hand. He should respect the community, as it respects him. </p><p>One last point, he was perfectly articulate in his tweet, why can't speak similarly in his presentations? :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>William</strong> &middot; <time datetime="2010-06-11T16:47:00+00:00">June 11, 2010 at 4:47 pm</time></p>
      <p>Uhm, that video doesn't seem to be describing PageRank... at least without any sort of input/output data, it would be impossible to tell.</p><p>The best way to compute PageRank is by constructing an adjacency matrix of inbound and outbound links and computing the first eigenvector. You don't need to use a linear algebra library, as you don't really need the full bag of tricks, and could just write your own custom function that mimics matrix multiplication. I used Ruby's LA capabilities as it is easier to illustrate.</p><p>Anyways, here's my version... not five lines, more like 106 (with comments)... but hey, I know that it is indeed a valid representation of PageRank.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>William</strong> &middot; <time datetime="2010-06-11T16:49:00+00:00">June 11, 2010 at 4:49 pm</time></p>
      <p>Link: <a href="http://gist.github.com/127435" rel="nofollow">http://gist.github.com/127435</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Allen Madsen</strong> &middot; <time datetime="2010-06-11T17:40:00+00:00">June 11, 2010 at 5:40 pm</time></p>
      <p>The only problem with this is how long it would take. Especially since you can just ask google for it and just about everyone else:</p><p><a href="http://rubygems.org/gems/PageRankr" rel="nofollow">http://rubygems.org/gems/PageRankr</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>raggi</strong> &middot; <time datetime="2010-06-11T18:36:00+00:00">June 11, 2010 at 6:36 pm</time></p>
      <p>"probability matrix" might sound cool, but what's it got to do with the price of tea in china?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Giles Bowkett</strong> &middot; <time datetime="2010-06-11T18:48:00+00:00">June 11, 2010 at 6:48 pm</time></p>
      <p>@Gerard - Ruby community's a bit informal like that. been that way a long time and I won't be the one who changes it, assuming that change ever happens, which I doubt.</p><p>@raggi - maybe the informal thing can go too far. what are you asking?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bradley Grzesiak</strong> &middot; <time datetime="2010-06-15T22:13:00+00:00">June 15, 2010 at 10:13 pm</time></p>
      <p>Correct me if I'm wrong, but isn't PageRank effectively a map-reduce operation? Map all incoming pages to their page rank and reduce over the addition operator with a damping factor. Iterate until the PageRanks settle.</p><p>The nice thing about map (unlike inject) is that you can parallelize it over (tens of? hundreds of?) thousands of processors.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Giles Bowkett</strong> &middot; <time datetime="2010-06-15T23:19:00+00:00">June 15, 2010 at 11:19 pm</time></p>
      <p>@Bradley - well, my goal was to show the math, not the infrastructure. The reality is Google's infrastructure is probably way more of a business advantage and technological innovation than any of the math.</p><p>@William - this video DOES give you a valid representation of PageRank, and you can judge the validity by the fact that it quotes the original Google white paper on PageRank and then goes directly from that white paper into code. I show the equation in the Google white paper, and then I translate it from math into Ruby. According to the comments in your code, you based your version on the description in Wikipedia. If you're going to tell me that a version based on a description in Wikipedia gives a more valid representation than a version based on the original Google white paper and the patented equation, I think the least you could do is provide some reasons, logic, or justifications backing up the assertion.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bradley Grzesiak</strong> &middot; <time datetime="2010-06-16T01:05:00+00:00">June 16, 2010 at 1:05 am</time></p>
      <p>@Giles My apologies for nit-picking. I guess my comment was more directed at the matrix approach of defining PageRank. It doesn't seem to scale, while map-reduce does. Combining the facts that map-reduce scales horizontally and Google has a ridiculous infrastructure, it's no wonder they've done so well with search.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Giles Bowkett</strong> &middot; <time datetime="2010-06-16T01:16:00+00:00">June 16, 2010 at 1:16 am</time></p>
      <p>@Bradley - no worries. When it comes to giant calculations and data sets on Google scale, Ruby isn't normally going to be the language to go with anyway.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>William</strong> &middot; <time datetime="2010-06-16T19:17:00+00:00">June 16, 2010 at 7:17 pm</time></p>
      <p>Your code would be a valid description of PageRank if:</p><p>1.) It had an example of a set of web pages all linking to each other.<br>
2.) It computed the PageRank for that example set of linked web pages.</p><p>Without that, what is it describing? There doesn't seem to be any math in your example.</p><p>The reason I referenced the Wikipedia article is because it gives an example set of web pages and then shows their computed PageRanks.</p><p>That way, I can use that as proof. Proof, in the mathematical sense.</p><p>I originally wrote that little bit of Ruby code back in 2007 or so and the example image has changed, but here is the old wikipedia page that I reference in my gist: <a href="http://en.wikipedia.org/w/index.php?title=PageRank&amp;oldid=238251940" rel="nofollow">http://en.wikipedia.org/w/index.php?title=PageRank&amp;oldid=238251940</a></p><p>And the image that it was based on: <a href="http://en.wikipedia.org/wiki/File:Linkstruct2.svg" rel="nofollow">http://en.wikipedia.org/wiki/File:Linkstruct2.svg</a></p><p>As you can see, the given example on wikipedia matches the computations that my ruby implementation produces.</p><p>The wikipedia page is based on the Google white paper as well. It directly quotes it. The big difference between a mathematical description of an algorithm and it's implementation is that the language of math does not run on a CPU. You need to write computer code.</p><p>I went with the power method in my example. It is the most scalable and most easy to get working in a parallel computation environment like map-reduce. I still use matrices to bridge the gap between the mathematical/algebraic theory and the working computation, however, I could just have as easily used N arrays of length N instead of an NxN matrix... mimicking matrix multiplication and transpositions with arrays is trivial and definitely required if you're going to scale the algorithm at all. BTW, as soon as you're looking at an algorithm that you can easily break up in to many, many chunks, you know it's a prime candidate for parallel processing.</p><p>Matrix calculations are the building blocks of modern computer science. Everything from wavelet compression, to optical character recognition, to latent semantic analysis, to PageRank is based on linear algebra.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>William</strong> &middot; <time datetime="2010-06-16T19:38:00+00:00">June 16, 2010 at 7:38 pm</time></p>
      <p>Oh, and BTW, I *DID* take the relevant class in college... namely Applied Linear Algebra.</p><p>I highly recommend taking some sort of course in LA if you're interested in any sort of computer science.</p><p>A few years ago I brushed up using this amazing lecture series: <a href="http://ocw.mit.edu/courses/mathematics/18-06-linear-algebra-spring-2005/" rel="nofollow">http://ocw.mit.edu/courses/mathematics/18-06-linear-algebra-spring-2005/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Giles Bowkett</strong> &middot; <time datetime="2010-06-16T20:08:00+00:00">June 16, 2010 at 8:08 pm</time></p>
      <p><i>You need to write computer code.</i></p><p>I did.</p><p><i>There doesn't seem to be any math in your example.</i></p><p>As I said in my previous comment, I pulled the equation out of the Google white paper. That equation was mathematical.</p><p><i>Your code would be a valid description of PageRank if:</i></p><p>1.) It had an example of a set of web pages all linking to each other.<br>
2.) It computed the PageRank for that example set of linked web pages.</p><p>Without that, what is it describing?</p><p>Without that, it is describing the equation. I disagree with your assertion that the lack of dummy data makes this description invalid. I would be willing to give it to you if you said something like "Your code would be a working implementation of PageRank" etc.</p><p>Anyway, you're obviously very well-versed in math. Thanks for adding your gist. It's interesting, and I wish I understood it. I have to tell you, though, the goal with this video is to get the idea across - to teach people how PageRank works - and I don't think your gist works on that level at all. A person kind of needs to understand PageRank before they can even read your code. It's a serious flaw in a teaching example.</p><p>For anyone looking at both sets of code, I believe the end result of William's code:</p><p><code>#[[0.303514376996805], [0.166134185303514], [0.140575079872204], [0.105431309904153], [0.178913738019169], [0.0447284345047923 ], #[0.060702875399361]]</code></p><p>...is a one-dimensional matrix (probably an eigenvector) of PageRank values, with the values themselves being one result of the equation I show how to calculate in the video.</p><p>As an aside, I sure hope RubyInside lets me put HTML in my comments, because I just put a bunch in there.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Giles Bowkett</strong> &middot; <time datetime="2010-06-16T20:28:00+00:00">June 16, 2010 at 8:28 pm</time></p>
      <p><i>Oh, and BTW, I *DID* take the relevant class in college... namely Applied Linear Algebra.</i></p><p>What do you want, a cookie?</p><p><i>I highly recommend taking some sort of course in LA if you're interested in any sort of computer science.</i></p><p>Yes. I also advise that you not turn on an iPad without first taking at least one semester of calculus.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>William</strong> &middot; <time datetime="2010-06-17T02:03:00+00:00">June 17, 2010 at 2:03 am</time></p>
      <p>I was not resorting to hyperbole when I made that statement about taking a course in linear algebra. There is a huge difference between IT and computer science. Being able to understand a published article of an algorithm such as this is pretty much going to require a basic understanding of computer science, of which linear algebra is a pretty key aspect.</p><p>However, needing to know calculus to use a power button is clearly not necessary.</p><p>You need to write full, working computer code. I see no definition of the inbound_links variable. I see no definition of the number_of_links_on_page method. I see nothing to stop the pagerank method from recursing infinitely.</p><p>You are not describing the equation. You are not even in the ballpark. You don't explain that the algorithm is based on the link structure of the entire graph of the web. You don't mention anything about using linear algebraic techniques to solve a problem graph theory, a completely separate domain. If you're going to be explaining the math, you need to be describing these things.</p><p>PageRank is about estimating the primary eigenvector of the adjacency matrix that describes the link structure of all web pages. That is it's definition. It has nothing to do with keywords, or even search. Yes, a major application of PageRank is search, but it is not a search algorithm!</p><p>I didn't set out to teach anyone what PageRank was. The wikipedia article does a very good job at that. I set out to show how you could very easily implement PageRank in Ruby, carefully describing the steps, going from a very easy to understand matrix, m1. I guess I could explain it in more detail.</p><p>#[0, 1, 1, 1, 1, 0, 1]<br>
#[1, 0, 0, 0, 0, 0, 0]<br>
#[1, 1, 0, 0, 0, 0, 0]<br>
#[0, 1, 1, 0, 1, 0, 0]<br>
#[1, 0, 1, 1, 0, 1, 0]<br>
#[1, 0, 0, 0, 1, 0, 0]<br>
#[0, 0, 0, 0, 1, 0, 0]</p><p>The first row of the matrix represents the links from Page 1 to other pages. It has links to Page 2, Page 3, Page 5, and Page 7. Row 2 describes Page 2, which has only a single link to Page 1.</p><p>Through a series of calculations on the matrix m1, of which I describe in detail, the result is an estimate of the primary eigenvector that has been normalized, with the values of the rows of this vector equal to the PageRank of the pages you started with.</p><p>You know what is a REALLY serious flaw in teaching method? Not knowing what the hell you're talking about mixed with heavy dose of arrogance.</p><p>"You may not be very accustomed to reading these things and understanding these formulas, so I'm going to make it very easy for you."</p><p>Seriously, if it wasn't for your incredibly smug attitude throughout the video, I wouldn't have given two thoughts on this horribly inaccurate description.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeo</strong> &middot; <time datetime="2010-06-24T20:37:00+00:00">June 24, 2010 at 8:37 pm</time></p>
      <p>I think the difference here is between "writing a working pagerank that you can use," and "understanding pagerank well enough to promote your website effectively." </p><p>For the latter purpose, 5 lines is way better than 100. Descriptions like "estimating the primary eigenvector of the adjacency matrix" are unhelpful for most people.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
