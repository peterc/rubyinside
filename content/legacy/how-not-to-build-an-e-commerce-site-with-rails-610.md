---
title: How Not To Build An E-Commerce Site With Rails
date: '2007-09-24'
author: Peter Cooper
author_slug: admin
post_id: 610
slug: how-not-to-build-an-e-commerce-site-with-rails-610
url: "/how-not-to-build-an-e-commerce-site-with-rails-610.html"
categories:
- controversy
- news
- ruby-on-rails
---

{{< rawhtml >}}
<p>Derek Sivers, quite the Rails champion when he decided to rebuild his <a href="http://www.cdbaby.com/">CD Baby</a> e-commerce site using Rails <a href="http://www.oreillynet.com/onlamp/blog/2005/01/cd_baby_rewrite_in_postgres_an.html">two years ago</a>, has now <a href="http://www.oreillynet.com/ruby/blog/2007/09/7_reasons_i_switched_back_to_p_1.html">admitted defeat</a>. After <em>two years</em> of wrestling with Rails while building the new site, Sivers along with coder Jeremy Kemper, decided to face up to reality. Kemper <a href="http://www.37signals.com/svn/posts/231-please-welcome-jeremy-kemper-to-37signals">went off</a> to 37signals and <strong>Sivers rebuilt the entire site in PHP in </strong><strong><a href="http://www.oreillynet.com/ruby/blog/2007/09/7_reasons_i_switched_back_to_p_1.html">just two months</a></strong><strong>.</strong> As such, Slashdot is jumping on the bandwagon by telling developers to <a href="http://developers.slashdot.org/article.pl?sid=07/09/23/1249235">"think again"</a> about using Rails in future.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>crayz</strong> &middot; <time datetime="2007-09-24T03:08:00+00:00">September 24, 2007 at 3:08 am</time></p>
      <p>Looks like DHH put out his thoughts:<br>
<a href="http://www.loudthinking.com/posts/13-thinking-about-the-big-rewrite" rel="nofollow">http://www.loudthinking.com/posts/13-thinking-about-the-big-rewrite</a></p><p>For all the controversy this has kicked up, the post had a pretty shocking lack of detail on what exactly went wrong</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeremy McAnally</strong> &middot; <time datetime="2007-09-24T03:19:00+00:00">September 24, 2007 at 3:19 am</time></p>
      <p>I'm trying to figure out what the heck he was trying to do that "didn't fit with Rails."  I don't mean to be a fanboy, but I've built a wide range of stuff with Rails and I'm sort of puzzled as to what just didn't work for him.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tristan</strong> &middot; <time datetime="2007-09-24T03:23:00+00:00">September 24, 2007 at 3:23 am</time></p>
      <p>I agree with Jeremy. His site looks straight forward enough. I'd like to hear him elaborate on the problems, so if they do exist they can be addressed.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Don</strong> &middot; <time datetime="2007-09-24T03:36:00+00:00">September 24, 2007 at 3:36 am</time></p>
      <p>I just hope the comments here don't degenerate like the ones to that article.  Some of comments posted there aren't representing the Rails community all that well.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Danno</strong> &middot; <time datetime="2007-09-24T04:13:00+00:00">September 24, 2007 at 4:13 am</time></p>
      <p>I don't even know man, I was the second commenter on that article, I asked him if his rewrite was done yet and I didn't get an answer.</p><p>What I wouldn't give to see the commit log.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>David Rupp</strong> &middot; <time datetime="2007-09-24T04:24:00+00:00">September 24, 2007 at 4:24 am</time></p>
      <p>Huh. I don't remember DHH having those concerns when "The Big Rewrite" was being done by a major internet player rewriting in his framework.</p><p>@Don: I would like to be able to agree with you (re: the comments that "aren't representing the Rails community all that well"). But I'm afraid there are at least two -- largely disjoint -- versions of the Rails community: the one that I (and I assume you) have been part of at some point or other that's focused on getting good work done for our clients, and the one that goes around loudly and profanely attacking any legitimate criticism of their newfound religion. </p><p>It's the Dark Side of the internet, my friend, and it's not getting any lighter.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Don</strong> &middot; <time datetime="2007-09-24T04:43:00+00:00">September 24, 2007 at 4:43 am</time></p>
      <p>David:  I didn't word that very well.  I meant that the criticism and outright attacks in the comments might reflect negatively on the Rails community, not that those folks don't represent a part of the community.  </p><p>Basically I was voicing a hope that these comments don't turn into a bunch of posts about this guy not knowing what he's doing, and then just bashing his site design.  :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>suhrawardi</strong> &middot; <time datetime="2007-09-24T05:27:00+00:00">September 24, 2007 at 5:27 am</time></p>
      <p>Hmm, the current CD Baby site doesn't look railsey, it's Web0.9 if you ask me. reminds me of the good old days of the internet.<br>
But why does the 37signals site display the php easter-egg?<br>
<a href="http://www.37signals.com/?=PHPE9568F36-D428-11d2-A769-00AA001ACF42" rel="nofollow">http://www.37signals.com/?=PHPE9568F36-D428-11d2-A769-00AA001ACF42</a><br>
is that site rebuild in php as well...?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>riki</strong> &middot; <time datetime="2007-09-24T08:50:00+00:00">September 24, 2007 at 8:50 am</time></p>
      <p>Rails doesn't force you to use migrations. You can jump into Command Line and write SQL is desired.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pratik</strong> &middot; <time datetime="2007-09-24T09:28:00+00:00">September 24, 2007 at 9:28 am</time></p>
      <p>Peter, do you seriously believe that a site like cdbaby.com cannot be built with any damn web framework under the sun in less than 2 years ?</p><p>The reason why their project failed, is clearly because of their lack of planning and vision. It has nothing to do with rails or php. Using their management's failure as that of rails, is just way too lame.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pratik</strong> &middot; <time datetime="2007-09-24T09:46:00+00:00">September 24, 2007 at 9:46 am</time></p>
      <p>Haha..sorry. I just noticed the tag "Troll Of The Month"</p><p>lol</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Arnon Rotem-Gal-Oz</strong> &middot; <time datetime="2007-09-24T09:53:00+00:00">September 24, 2007 at 9:53 am</time></p>
      <p>He failed because he adopted rails as a technology without thinking about the architectural/design implications of the move<br>
I wrote about it in my blog: <a href="http://www.rgoarchitects.com/nblog/2007/09/23/WarningTechnologyMappingHasImplications.aspx" rel="nofollow">http://www.rgoarchitects.com/nblog/2007/09/23/WarningTechnologyMappingHasImplications.aspx</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Neil Wilson</strong> &middot; <time datetime="2007-09-24T10:12:00+00:00">September 24, 2007 at 10:12 am</time></p>
      <p>This issue is entropy - the existing system is already there and to change it *always* costs vastly more than anybody realises. </p><p>I didn't see anything unusual - just a very expensive training exercise in why it is often cheaper to pay the money for legacy maintenance of an existing structure.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>planetmcd</strong> &middot; <time datetime="2007-09-24T13:26:00+00:00">September 24, 2007 at 1:26 pm</time></p>
      <p>I wish it was a bit more detailed.  I've found Rails apt for the tasks I've thrown at it, but they 've all been greenfield applications.<br>
On the bit about the rails community, I do think there is something to be concerned about.<br>
Here's my take:<br>
<a href="http://planetmcd.blogspot.com/2007/09/rails-is-not-opinionated-it-is.html" rel="nofollow"><br>
</a><a href="http://planetmcd.blogspot.com/2007/09/rails-is-not-opinionated-it-is.html" rel="nofollow">http://planetmcd.blogspot.com/2007/09/rails-is-not-opinionated-it-is.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>John</strong> &middot; <time datetime="2007-09-24T15:29:00+00:00">September 24, 2007 at 3:29 pm</time></p>
      <p>Does anyone really think that he rewrote his website in 2 months (part time) from scratch? It reads to me like someone who has screwed up twice (the original PHP that needed rewriting, and his Ruby mess) and now he's finally figured out what he wants the site to do. This only got airplay since Slashdot green lighted it - read the comments there are you'll see most people know this is not a technology issue.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>FiZ</strong> &middot; <time datetime="2007-09-25T12:09:00+00:00">September 25, 2007 at 12:09 pm</time></p>
      <p>Allow me to advocate the devil for a moment (as I'm wont to do), and say what I got from his article about the switch. The best thing he liked about switching back to PHP is 1) having knowledge gained from rails on how to rebuild the site better in a language he's more familiar with; 2) He knows every line of his application inside and out. No searching for how to extend {x} or add feature {y} because he wrote the whole thing himself. </p><p>Honestly, I think his post is less about PHP vs. Ruby and more about taking lessons learned from Rails and applying it to a language he's more familiar with. After all, that's the beauty of development: You don't have to use something exactly the way it was packaged, you can substitute and modify any detail you'd like. Rails has taught the dev world a good lesson in keeping code clean and organized even though you don't have to actually use rails to get the benefits.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>NomDePlume</strong> &middot; <time datetime="2007-09-25T21:03:00+00:00">September 25, 2007 at 9:03 pm</time></p>
      <p>I resent the fact that you are now branding Derek as "Troll of the Month" I think his concerns are legitimate, and the Rails community should learn something from his experience as opposed to just jumping all over him.</p><p>This SHOULD NOT have happened! And the guy was sincere, and he put his money where his mouth was. He spent real dollars on a core team member. I've seen total morons asking for 150+ an hour just because they 'know' rails.</p><p>I can only imagine how much bitsweat cost cdbaby.com , If Derek paid a hundred grand for bitsweat's time, he would have gotten off cheap. So every friggin fanboy, who's written a stupid blog and thinks rails is the end of the world, should calm down and try to re-read what he was trying to say. Or spend a hundred grand and then opine on someone who has.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>cag</strong> &middot; <time datetime="2007-09-26T02:38:00+00:00">September 26, 2007 at 2:38 am</time></p>
      <p>I've seen total morons asking for 150+ an hour just because they 'know' rails.</p><p>So every friggin fanboy, who's written a stupid blog and thinks rails is the end of the world</p><p>Nice - I think your wise words and name calling just calmed all of them down - mission accomplished!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Flipper</strong> &middot; <time datetime="2007-09-26T12:08:00+00:00">September 26, 2007 at 12:08 pm</time></p>
      <p>I have to agree that there just isn't enough information in his original post to make any sort of intelligent argument either for or against his statements.  I too would be very interested in what actually went on.  </p><p>I do feel some of his pain.  We are in the midst of rewriting our web app and going from php to rails.  It's a bit easier for us since we are not trying to do a 1:1 conversion but instead are coming at it from a 'this is new and seems to be better, how can we improve our app' standpoint.  </p><p>However, being part of a going concern, you find that your day goes something like this:  code, answer tech support call, commit because you forgot to earlier, start to code, answer ops question for sales person, code, respond to network issue, try to code, commit..... etc. So I do completely understand his line regarding where two years went.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>MachineHead</strong> &middot; <time datetime="2007-09-26T12:53:00+00:00">September 26, 2007 at 12:53 pm</time></p>
      <p>What NomDePlume said.</p><p>There's a lesson in here that we need to understand. CDBaby was a "first mover" and with Jeremy Kemper on board, I'm truly surprised and concerned that they failed.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Senthil Nayagam</strong> &middot; <time datetime="2007-09-27T07:53:00+00:00">September 27, 2007 at 7:53 am</time></p>
      <p>I have posted on my company blog on it.</p><p>it is clients perogative to change his mind on which technology to use or which projects to scrap. </p><p>CDBaby was one of the initial poster child and got more attention than it probably it deserved due to being a pioneering project. </p><p>I totally agree with Chad Fowler's article big rewrite.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jon</strong> &middot; <time datetime="2007-09-27T08:59:00+00:00">September 27, 2007 at 8:59 am</time></p>
      <p>Maybe he should have been reading more articles like <a href="http://cfis.savagexi.com/articles/2007/09/05/rails-unusual-architecture" rel="nofollow">http://cfis.savagexi.com/articles/2007/09/05/rails-unusual-architecture</a> ! Just my two cents!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Markús</strong> &middot; <time datetime="2007-09-27T09:12:00+00:00">September 27, 2007 at 9:12 am</time></p>
      <p>Read carefully that article, you can be misled by its title. I think that it is a shame to find an article such as this with so impact in the community.</p><p>It is a isolated case of a man worried about "I can edit my SQL sentences so I turn back to PHP". What the hell is that? I don't want to touch SQL anymore!</p><p>Have you watched the commercial from railsenvy.com, Rails vs PHP? Then think that PHP is the winner in that video without change anything (even dialogues). This article is exactly that.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luke</strong> &middot; <time datetime="2007-09-27T19:02:00+00:00">September 27, 2007 at 7:02 pm</time></p>
      <p>Had to laugh...</p><p><a href="http://feeds.dzone.com/~r/dzone/ruby/~3/161999947/why_i_switched_back_from_rails_to_assembler.html" rel="nofollow">http://feeds.dzone.com/~r/dzone/ruby/~3/161999947/why_i_switched_back_from_rails_to_assembler.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Joyce</strong> &middot; <time datetime="2007-09-28T17:55:00+00:00">September 28, 2007 at 5:55 pm</time></p>
      <p>that they failed at such a (seemingly) simple site... amazing.<br>
But did they fail?<br>
What are the details?<br>
Did they clash?<br>
He did seem to say he wanted to keep his old database (rather than migrating the data...) this is usually a bad idea. Rails 101, make the database slave to your app, not the reverse.<br>
But software 101, establish requirements!<br>
Agile or not, if you start with big bold ambitions but shift them around when the little stuff is being settled on, things get harder to change around...</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
