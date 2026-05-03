---
title: The Official Ruby Site Is Proudly Maintained by No-One
date: '2011-08-03'
author: Peter Cooper
author_slug: admin
post_id: 5248
slug: official-ruby-site-not-so-good-5248
url: "/official-ruby-site-not-so-good-5248.html"
categories:
- controversy
---

{{< rawhtml >}}
<p><img src="/assets/2011/08/dilapidated.gif" alt="" title="dilapidated" width="120" height="104" class="alignnone size-full wp-image-5250" style="float: right; border: 1px solid #666; margin-left: 18px; margin-bottom: 18px"><strong>Official project sites should set the benchmark for standards relating to that project in terms of the best quality and most up to date news updates, documentation, download links, tutorials, and so forth. On this front, Ruby's official site at <a href="http://www.ruby-lang.org/en/">ruby-lang.org</a> is doing a bad job (in the English language variant, at least).</strong></p>
<p><em><strong>Update:</strong> Since making this post, people have begun to volunteer and existing volunteers have started to update the site. The <a href="http://www.ruby-lang.org/en/downloads/">Download page</a> now lists alternative implementations :-) Congratulations to everyone who stepped up. This means this article may progressively become out of date, so please read it in that context, since the problems may get fixed soon :-)</em></p>
<p>The site's footer says it's <em>"proudly maintained by members of the Ruby community"</em> and links to the homepage of the rather anonymous <a href="http://rubyidentity.org/">Ruby Visual Identity Team</a> who redesigned it 5 years ago. Sadly, though, the site doesn't <em>seem</em> to get much proud maintenance and as, perhaps, the most popular destination for newbies checking out Ruby on a whim, it's not playing a strong hand.</p>
<p>Note: I'm not picking nits for fun here. As someone who depends upon Ruby's popularity, I <em>care</em> about this topic and if shining a spotlight on the site's flaws will help people rally around, discuss the problems, and eventually work on a solution, I'm more than happy to accept the flak for being the grump who kicked it all off ;-)</p>
<p>Let's tour a few areas:</p>
<h3>The Homepage</h3>
<p><img src="/assets/2011/08/ruby-lang.jpg" alt="" title="ruby-lang" width="640" height="360" class="alignnone size-full wp-image-5249"></p>
<p>The homepage is the best part of the site, mostly because it's automatically updated with a blog. The latest item is from just yesterday and covers <a href="http://www.ruby-lang.org/en/news/2011/08/01/ruby-1-9-3-preview1-has-been-released/">the Ruby 1.9.3 preview 1 release</a> (though Ruby Inside <a href="ruby-1-9-3-preview-1-released-5229.html">covered it</a> <em>before</em> the official site and in more detail!). </p>
<p>The simple, snappy definition of Ruby is good, and the randomly changing source code example is OK for such a tiny chunk of code. So far, so good. There's not much to pick on here, but things fall down in the sidebar a little:</p>
<p><img src="/assets/2011/08/nahnah.jpg" alt="" title="nahnah" width="417" height="134" class="alignnone size-full wp-image-5254"></p>
<p>The "Some Top Ruby Projects" section is a randomly changing list of mostly dead or hardly ever updated projects and, worse, it links to Rubyforge for every one, despite Rubyforge rarely hosting the latest version of any of them anymore. The "more" link heads to <a href="http://www.ruby-lang.org/en/libraries/top-projects/">Top Ruby Projects</a>, a list of top Ruby projects in the prior decade, it seems. Entry #5, <a href="http://rubyforge.org/projects/rubot/">rubot</a>, hasn't even had an update since April 7, 2008. I dread to imagine what newcomers think.</p>
<h3>The Libraries Page</h3>
<p>The <a href="http://www.ruby-lang.org/en/libraries/">libraries page</a> is a long time favorite of mine. Earlier this year, I ranted on Twitter about the <a href="http://www.ruby-lang.org/en/libraries/">Libraries</a> page specifically recommending you install a <em>4 year old</em> version of RubyGems (version 0.9 - we're up to 1.8 now!) James Edward Gray II picked up on my comment and had it updated to 1.7.2.</p>
<p>Still, though, it's like reading a cookbook from the ruins of Pompeii. Its two top suggestions for finding libraries are RubyForge and the Ruby Application Archive. It even says <em>RubyForge is a popular home for Ruby libraries.</em> If this were true, Ruby is hosed because there were only 14 updates to libraries hosted on RubyForge in the whole of July. The <a href="http://raa.ruby-lang.org/">Ruby Application Archive</a>, on the other hand, boasts a whole 5 updates in July. These are the <strong>only 2 ways suggested to find libraries.</strong></p>
<p>The libraries page also gives some handy tips on how to install a gem... using a gem that doesn't even exist anymore! Then out of nowhere it randomly refers to "Gemcutter" as the official repository, a moniker that hasn't been used for ages now.</p>
<h3>Downloads</h3>
<p>The <a href="http://www.ruby-lang.org/en/downloads/">Download Ruby page</a> is, I suspect, one of the most popular. Sadly it's one of the most flawed.</p>
<p>Despite MRI being only one of many implementations, it fails to make any reference to other implementations (the <a href="http://python.org/download/">Python download page</a> gets this right) and then runs straight into offering up the raw source code to the latest versions of MRI, rather than providing any useful instructions for <em>average</em> users. Why no links to JRuby, IronRuby, Rubinius or REE for people who would be better served by those implementations?</p>
<p>The <em>Ruby on Windows</em> section links to some out-of-date <a href="http://rubyinstaller.org/">Ruby Installer</a> versions.</p>
<p>The <em>Ruby On Linux</em> section recommends that installing "the current stable version of Ruby 1.9.1" (wildly out of date) is an easy and elegant way to go on Ubuntu or Debian. Sure, if you want to put up with segfault-o-rama and library incompatibilities.</p>
<p>The <em>Ruby On OS X</em> section kicks off with the state of play on Leopard (OS X 10.5 - now two versions out of date) and recommends using MacPorts to install Ruby, despite the popularity of RVM.</p>
<p>This is core bread and butter stuff. People who are new to Ruby are going to be hitting the Download Ruby page in their hundreds daily, no doubt, and they're getting fed a poorly organized pile of out of date information.</p>
<h3>The News Blog</h3>
<p>As previously mentioned, the front page is taken up mostly by links to news updates on <a href="http://www.ruby-lang.org/en/news/">the blog</a>, which doubles up as the "Recent News" section of the site. I've picked on this before, but the quality of the news leaves much to be desired. On the Ruby 1.9.2-p290 release, little was said:</p>
<blockquote class="stylized">
<p>Ruby 1.9.2-p290 is released.</p>
<p>This release doesn't include any security fixes, but many bugs are fixed in this release.</p>
<p>See ChangeLog for details.</p>
</blockquote>
<p><cite>Shota Fukumori</cite></p>
<p>Other than the download links, that was <a href="http://www.ruby-lang.org/en/news/2011/07/15/ruby-1-9-2-p290-is-released/">the entire post!</a> But I saw enough people asking on Twitter and Reddit what the changes were that I crawled the Changelog and <a href="ruby-1-9-2-p290-released-the-lowdown-on-rubys-latest-production-release-5145.html">wrote my own post for Ruby Inside.</a> Not Pultizer winning stuff, but the bare minimum I'd expect from a "proudly maintained" <em>official home page</em> for a language we supposedly all care about.</p>
<p>I'd comment on the quality of the core documentation on ruby-lang.org too, if I could, but the sluggish, de facto pseudo-official site for it at <a href="http://ruby-doc.org/">ruby-doc.org</a> isn't even maintained by the core Ruby team, but by James Britt. (And we should certainly congratulate James for this long standing and mostly thankless task, but why isn't it maintained in any <em>official</em> capacity?)</p>
<h3>Not All Bad</h3>
<p>It's definitely not all bad news. The <a href="http://www.ruby-lang.org/en/about/">About Ruby</a> page remains relevant, the <a href="http://www.ruby-lang.org/en/security/">Security</a> page seems to get updated, and there are links to some useful external resources like user group listings, an IRC channel, and the main mailing lists. I've always enjoyed the <a href="http://www.ruby-lang.org/en/documentation/ruby-from-other-languages/">Ruby From Other Languages</a> page too.</p>
<p>I also need to stress that I, for one, appreciate the effort put in by people to produce the site <em>so far.</em> But it clearly isn't living up to its ideals. We have so many great developers in the Ruby scene and it'd be great to have even more, but with such a lacklustre site, it almost looks like Ruby is dying on its arse.</p>
<p>So why should Ruby put up with such a poorly updated, beginner-unfriendly and next to useless official site? Answers on a postcard to the Ruby Visual Identity Team, whoever they are, or perhaps just in the comments here. <em>(And, yes, I suspect the Ruby Visual Identity Team is <a href="http://rubyforge.org/project/memberlist.php?group_id=556">these folks</a> but you shouldn't need to Google to try and guess that..)</em></p>
<p><em>Added: It is important for me to stress that my comments are entirely directed at the main English language version of the site and not necessarily the localized, foreign language editions of the site. I have been told many of these are far more up to date and have more active maintainers. I apologize if I offended anyone who felt I was including their localized sub-sites in my comments.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Steve Klabnik</strong> &middot; <time datetime="2011-08-03T02:20:00+00:00">August 3, 2011 at 2:20 am</time></p>
      <p>Yeah, it needs a lot of work. A lot of it is really long in the tooth...</p><p>That said, the few times I've emailed them about updating things, they've done it promptly.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pedro</strong> &middot; <time datetime="2011-08-03T02:21:00+00:00">August 3, 2011 at 2:21 am</time></p>
      <p>Love it...</p><p>I can see a lot of people hating it right now. But is the awful truth.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonathan Rochkind</strong> &middot; <time datetime="2011-08-03T02:25:00+00:00">August 3, 2011 at 2:25 am</time></p>
      <p>So, do you have any interest in volunteering? Cause that'd be awesome, and if they don't take you up on it, that's an even bigger problem than what's presumably the current situation of nobody with the time/interest to do it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>kenny</strong> &middot; <time datetime="2011-08-03T02:36:00+00:00">August 3, 2011 at 2:36 am</time></p>
      <p>So truly un-Matz like.  Not friendly, not helpful.  There must be a billion eager open sourcers who would take this over I think...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-08-03T02:44:00+00:00">August 3, 2011 at 2:44 am</time></p>
      <p>Jonathan: Maybe. James Gray has been in touch with me via Twitter just this moment and has made a similar suggestion (he has access to the site) so we will hopefully discuss this.</p><p>The only problem is that unless there is reform made to how the site is managed, the changes possible will be primarily cosmetic (would core team members seriously want a third party writing their blog posts?). I suspect it's a thankless and altruistic task and there are better people than me at being altruistic, selfless, and diplomatic enough to resolve the inevitable disputes (I'm a loud mouthed unilateralist, as Ruby Inside probably demonstrates). </p><p>I'm pretty big on getting credit for things (far higher on my scale than money in most cases) and I don't see any reasonable way to get that here (note how hidden the 'visual identity team' are - no-one's taking credit for anything).  There are surely selfless, altruistic people ready to take on this task and do some good. (And before you think this all sounds a bit self-aggrandizing, <em>code</em> contributions <em>are</em> credited and reflected, through Changelogs, tickets, etc. That's partly why people do it.)</p><p>Now, even if you don't like my attitude, you can't say I'm not honest :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nick</strong> &middot; <time datetime="2011-08-03T02:45:00+00:00">August 3, 2011 at 2:45 am</time></p>
      <p>Peter, As someone who's sole programming knowledge is from your book and Chris Pines Learning to Program page I have picked up on a lot of neat things I never thought I would understand but I have also found it incredibly difficult figuring out just what the heck it is I am "supposed" to be doing.  To be honest I have been going to rubyforge and wondering why it looked like a tomb if Ruby was such a popular language.  It seems like 1.8.7 is the most used Ruby implementation but I am not sure why... Perhaps it is all above my pay grade, but I didn't really get much help from the main Ruby site.  I really need to find a place to learn some programming fundamental concepts.  Anyway found your article interesting and informative Cheers,<br>
Nick</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jim Gay</strong> &middot; <time datetime="2011-08-03T02:58:00+00:00">August 3, 2011 at 2:58 am</time></p>
      <p>I actually just reached out last week to get involved with this site and I'm currently awaiting some more info.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-08-03T03:00:00+00:00">August 3, 2011 at 3:00 am</time></p>
      <p>Nice one, Jim! Keep us informed.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Simon</strong> &middot; <time datetime="2011-08-03T03:03:00+00:00">August 3, 2011 at 3:03 am</time></p>
      <p>Put the whole thing in github and let people submit pull requests.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Diego</strong> &middot; <time datetime="2011-08-03T03:12:00+00:00">August 3, 2011 at 3:12 am</time></p>
      <p>I was, not long ago, one of those newcommers who thought that all that chat about ruby being dynamic and in plain growth was bullshit when I surfed through the official website. I eventually found some other resources, but still my first encounter was not too encouraging to say the least.</p><p>Hope you're article pushes some buttons around so those who will come have a better first panorama of the language and the community.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>AnonymousWoodDuck</strong> &middot; <time datetime="2011-08-03T03:19:00+00:00">August 3, 2011 at 3:19 am</time></p>
      <p>People hitting the ruby-lang site will most likely be new to Ruby and should be encouraged to take up and write 1.9 since its official and stable.</p><p>Alternative implementations that don't have the complete 1.9 feature set and legacy versions should be explicitly marked as such because they shouldn't be used without a very compelling reason.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James Britt</strong> &middot; <time datetime="2011-08-03T05:12:00+00:00">August 3, 2011 at 5:12 am</time></p>
      <p>"The only problem is that unless there is reform made to how the site is managed, the changes possible will be primarily cosmetic (would core team members seriously want a third party writing their blog posts?). I suspect it's a thankless and altruistic task and there are better people than me at being altruistic, selfless, and diplomatic enough to resolve the inevitable disputes (I'm a loud mouthed unilateralist, as Ruby Inside probably demonstrates). "</p><p>For a few yeas (some time ago) I was one of the three English-speaking editors for for ruby-lang.org.  I was (and never have been) a core contributor, but had enough interest and motivation to pitch in.  It worked out pretty well.  Later on the site got a serious makeover, and over time more editors were added.</p><p>Having more people able to maintain a site is a mixed blessing.  On the one hand it become more likely that this or that notable event would get posted. On the other, over time, people drop out believing there are now other people looking after things, even if that's not the case.  But a key aspect is that whomever is doing it does it out of a real interest, not from sense of duty for being part of some core team, stuck with a task they really don't want to do.</p><p>The truth is, many developers love to code but hate to document or blog or even post decent announcements to a mailing list.   But if there are other people willing to fill in then it works out.   I much prefer to see apps, libraries Web sites, and so on done by people dig for the love it rather than having it directed from some official centralized person or committee.  </p><p>BTW, one interesting phenomenon I saw was that many things would b e announced on Twitter, and practically no place else.  I'm pretty positive I've seen that with announcements for registration dates for RubyConf. Nothing on rubylang.org, nothing on ruby-talk. Just Twitter.  I think the reasoning was that enough people would see it, retweet it or blog about or something, and the overall dissemination of key info would be crowdsourced.  </p><p>It's an interesting approach, but seems to work best when trying to reach people who already know all the cool places to get news.  It does little for people who are just looking into Ruby and (naively) assumed that important information would be on the language's home page.     Still, it's worth re-evaluationg the roles and uses of traditional sources of info such as mailing lists or official Web sites. If nothing else it's important to look at how decentralized things can be and still work.</p><p>As for ruby-doc, I have always been open to suggestions and comments on the site, and if people have concrete ideas (i.e. something other than "make the docs better" or other equally nebulas, however noteworthy, desires) they should get in touch with me.   (BTW, many thanks to those who  *have* written to me and your words of encouragement. Please be sure to thank the doc writers who are doing the real work.)</p><p>I'd be particular interested in better links to resources for Ruby newcomers, and ideas on how best to integrate a comment system into the API docs. I'm aware of Disqus, but last I checked it had issues with multiple comment fields for different topics on the same page.   Write to <a href="mailto:james.britt@<!--*-->gmail.com">james.britt@<!--*-->gmail.com</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>nube</strong> &middot; <time datetime="2011-08-03T05:44:00+00:00">August 3, 2011 at 5:44 am</time></p>
      <p>Sure Peter, put your name at the bottom of every page. Will that be enough for you to make a start? Will it compensate for the time you will have to spend?</p><p>And no you don't have to write their blog posts, but the site could certainly mirror (or display the rss feed of) the top Ruby blogs (e.g. Ruby Inside).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>libogski</strong> &middot; <time datetime="2011-08-03T05:52:00+00:00">August 3, 2011 at 5:52 am</time></p>
      <p>Ruby is not yet dead, but it has bottomed out. Ruby had a chance of making it big, but ultimately it failed to deliver (except Rails).</p><p>A good analogy for the paths of Python and Ruby is the careers of two Star Wars stars: The career of Mark Hamill resembles that of Ruby, while Python is that of Harrison Ford.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Postmodern</strong> &middot; <time datetime="2011-08-03T08:46:00+00:00">August 3, 2011 at 8:46 am</time></p>
      <p>Thank you Mr. Cooper for pointing out this "broken window" in our community. I have already taken it upon myself to attempt porting <a href="http://www-ruby-lang.org/" rel="nofollow">http://www.ruby-lang.org</a> (a Radiant CMS site) to <a href="http://www.jekyllrb.com/" rel="nofollow">Jekyll</a>. So far I've spidered/mirrored the site and started breaking the raw HTML into Jekyll layouts/includes. My plan is to have the master branch contain all static assets, and have separate branches for each translation. Once the layouts/includes are finished and Jekyll can render an exact copy of <a href="http://www.ruby-lang.org/" rel="nofollow">http://www.ruby-lang.org</a>, I will begin converting the HTML to Markdown. By using Jekyll and Markdown, we lower the bar to contribution and simplify hosting (Obligatory: static-HTML is web-scale).</p><p>If your interested in helping me do the dirty work of porting static-HTML to Jekyll/Markdown, the GitHub repository is here: <a href="https://github.com/postmodern/www.ruby-lang.org" rel="nofollow">https://github.com/postmodern/www.ruby-lang.org</a></p><p><code><br>
git clone <a href="https://github.com/postmodern/www.ruby-lang.org.git" rel="nofollow">https://github.com/postmodern/www.ruby-lang.org.git</a><br>
cd <a href="http://www.ruby-lang.org/" rel="nofollow">http://www.ruby-lang.org/</a><br>
git fetch origin en<br>
git checkout en<br>
jekyll<br>
</code></p>
    </li>
      <li>
      <p class="comment-meta"><strong>nnay13</strong> &middot; <time datetime="2011-08-03T08:50:00+00:00">August 3, 2011 at 8:50 am</time></p>
      <p>For a newcomer , leading projects like Rails, Sinatra , RSpec eclipse the language  itself.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Cook</strong> &middot; <time datetime="2011-08-03T09:34:00+00:00">August 3, 2011 at 9:34 am</time></p>
      <p>I know only too well how difficult it is to keep a site up-to-date, however, there are tricks that the team could do.</p><p>If they're struggling to keep all those links relevant, then why are they keeping them? Why not remove them, or replace with something more general - point people to their Twitter account(s) perhaps.</p><p>They could make their whole site more generic, which although might not be the uber cool place it could be, at least it won't be the out-of-date sponge it currently is.</p><p>As a relative newbie to Ruby, I soon learned to forget about ruby-lang.org and it's rare that I end up on the site...I suppose that says everything.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-08-03T12:03:00+00:00">August 3, 2011 at 12:03 pm</time></p>
      <p><em>The truth is, many developers love to code but hate to document or blog or even post decent announcements to a mailing list.</em></p><p>Right on. The amount of digging I have to do sometimes merely in order to mention a project on the podcast or on here is surprising.</p><p><em> I much prefer to see apps, libraries Web sites, and so on done by people dig for the love it rather than having it directed from some official centralized person or committee.</em></p><p>I agree, and that's why I think you deserve a round of applause for maintaining ruby-doc.org all of these years. My issue is more with the policy of the core Ruby team regarding documentation. It's great you've stepped up but it's sorta a shame someone <em>needed</em> to, in a way.</p><p><em>As for ruby-doc, I have always been open to suggestions and comments on the site, and if people have concrete ideas</em></p><p>I'm not one of those folks with wild ideas about adding comments, wikis, or whatever. If I cared about those things, I'd have given it a try already ;-) I think ruby-doc.org is doing a good job already and I can usually find what I need given its good Google positioning.</p><p>The only immediate issue I have with ruby-doc.org as-is is how slow it is. It's pretty sluggish most of the time and I assume I'm mostly hitting static pages. If there is a way we could help you upgrade the hosting behind it, provide extra resources, or otherwise improve its speed, I think everyone who hits the site on a daily basis would appreciate it. There may even be a company like an Engine Yard or Linode who would be willing to provide a more powerful solution for the most cursory of mentions on the front page, perhaps.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Liam</strong> &middot; <time datetime="2011-08-03T12:21:00+00:00">August 3, 2011 at 12:21 pm</time></p>
      <p>Interesting points.  I was actually comparing ruby-lang.org to various other language/frameworks websites quite recently and it didn't fair too well.</p><p>Out of curiosity, what is it that makes everyone actually consider ruby-lang.org to be <i>the official</i> website for Ruby?  I've possibly answered my own question (community recognition is probably enough).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Maurizio</strong> &middot; <time datetime="2011-08-03T12:21:00+00:00">August 3, 2011 at 12:21 pm</time></p>
      <blockquote cite="Peter Cooper"><p>The Ruby On Linux section recommends that installing "the current stable version of Ruby 1.9.1" (wildly out of date) is an easy and elegant way to go on Ubuntu or Debian. Sure, if you want to put up with segfault-o-rama and library incompatibilities.</p></blockquote><p>Well this is not so true, 'cause actually <code>apt-get install ruby1.9.1</code>  IS ruby 1.9.2 (don't ask me why), and ruby1.9.2 is a link to ruby1.9.1... however, the right code is <code>apt-get install ruby1.9.2</code>, so not updated systems don't risk to install ruby 1.9.1.</p><p>However, apt-get is only for Debian systems... I would write "please search for ruby in the package manager of your distro", or something like this...</p><p>However....... why is there no mention of RVM??</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-08-03T12:31:00+00:00">August 3, 2011 at 12:31 pm</time></p>
      <p>@Maurizio: RVM is mentioned but only in the Linux section and right near the start of it. It's somewhat cursory though.</p><p>@Liam: That's an intriguing question and you might be on to something there. The recognition is one thing, and it's certainly more of a <em>de facto</em> official site. I suggest that having Ruby core team members updating the blog helps with the image too :-)</p><p>One thought I've been having is that I could add some of the elements that the official site attempts to cover into Ruby Inside. I wouldn't pretend to be the "official" Ruby site but since so many people hit Ruby Inside, it wouldn't hurt to provide them with the basic resources that I feel the official site isn't offering.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-08-03T13:44:00+00:00">August 3, 2011 at 1:44 pm</time></p>
      <p>It didn't take long for the first accusation (on Twitter) that I only wrote this to profiteer to come in :-) The amusing part is this would be the WORST way I could think of making money. My revenue does not correlate with traffic at all and even if this post got a million pageviews today, it wouldn't improve my bottom line at all.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>rndrubyist</strong> &middot; <time datetime="2011-08-03T13:47:00+00:00">August 3, 2011 at 1:47 pm</time></p>
      <p>God, I can't believe someone finally talked about it!</p><p>I've always been amazed how Ruby attracted so many talented people from all over the world, and could not understand why the official web site looked pretty much like a tomb. I had to compile a few time the list of urls for Ruby newcomers to help them understand where to get the latest Ruby distribution, gems, documentation, etc.</p><p>The status quo is a huge drawback for newcomers. It is also a huge flaw for corporate users of Ruby: they need to be able to find information quickly, without digging for it all over the web. If Ruby community wants Ruby to start receiving widespread acceptance in corporations (and this is really the key to the success of a language), the official web site should be informative and up-to-date.</p><p>I think the situation with he official web site has been unacceptable for quite some time, and it needs to change, quickly. JRuby home page is a good example of how it should be: <a href="http://www.jruby.org/" rel="nofollow">http://www.jruby.org/</a>.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Roland Moriz</strong> &middot; <time datetime="2011-08-03T13:49:00+00:00">August 3, 2011 at 1:49 pm</time></p>
      <p>It's also a shame that ruby-lang.org has no integrated download mirrors. All download requests go to a server located in .jp which is neither performant nor redundant. </p><p>It's 2011 and all other languages have their working download mirror system for there language core and modules (perl, python, php, younameit). </p><p>Besides ruby-lang also rubygems is weak in this area: rubygems for example relies 100% on amazon s3/cloudfront. There is no working way to setup a replication (like with rsync) to mirror the gems in a consistent way (including the --pre gems). </p><p>Two huge SPOF that will hurt us really bad sometime in the future.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kensuke Kamachi</strong> &middot; <time datetime="2011-08-03T14:32:00+00:00">August 3, 2011 at 2:32 pm</time></p>
      <p>Yes, This is one of reasons I don't use Ruby. Poor (or No?) official document.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James Edward Gray II</strong> &middot; <time datetime="2011-08-03T15:23:00+00:00">August 3, 2011 at 3:23 pm</time></p>
      <p>The core team does allow third parties to write the blog posts.  For example, I've written a few.  There are some very minor restrictions, but I'm sure your help would be most welcome Peter.</p><p>The core team spends most of their time making Ruby better and trying to stay ahead of the bug tracker.  Plus, there are language challenges, if we want them to write English blog posts.  This is most likely why it's not a key focus for them.</p><p>The reason we use Radiant is to support the numerous translations of the site we maintain.  It makes it easy to control all the users who need access to do those translations and to share content between the sections when possible.</p><p>Please understand that there may be reasons we do some things the way we do, as we all suggest the ways we should be doing it.  I'm not saying our system is perfect, of course.</p><p>If you really want to affect change, start helping us.  Let's begin by fixing the content in our current system.  Then you can jokey the team for changes and I'm sure we will be happy to discuss the possibilities.</p><p>I can't speak for everyone who works on the site, but I have to take time out of my job to update the site or respond to posts like this.  I gladly do that, but let's make sure the time we do take counts as much as it possibly can.</p><p><a href="mailto:webmaster@ruby-lang.org" rel="nofollow">Email the webmasters</a> (that includes me) and volunteer to help.  We will surely put you to work!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2011-08-03T15:24:00+00:00">August 3, 2011 at 3:24 pm</time></p>
      <p>@Peter Cooper: If I can comment on this...</p><blockquote cite="Peter Cooper"><p>The Ruby on Windows section links to some out-of-date Ruby Installer versions.</p></blockquote><p>RubyInstaller is managed independently of Ruby releases itself, and sometimes we run out of sync.</p><p>Most of the time we email James Edward Gray II the links and MD5 to update, and sometimes I update them myself for both English and Spanish versions.</p><p>===</p><p>The real problem with ruby-lang.org site is that it's CMS has not been conceived to handle specific types of data, like for example newer releases of versions. Is a big website with *lot of pages* and not all the languages get updated!</p><p>I think your rant should have been focused in get the best out of people instead of complaining.</p><p>A good example of call for action is what Eric Hodel did for documentation of Ruby itself:</p><p><a href="http://blog.segment7.net/2011/05/09/ruby-1-9-3-documentation-challenge" rel="nofollow">http://blog.segment7.net/2011/05/09/ruby-1-9-3-documentation-challenge</a><br>
<a href="http://blog.segment7.net/2011/05/14/doc-challenge-update" rel="nofollow">http://blog.segment7.net/2011/05/14/doc-challenge-update</a><br>
<a href="http://blog.segment7.net/2011/05/20/doc-challenge-update-2" rel="nofollow">http://blog.segment7.net/2011/05/20/doc-challenge-update-2</a></p><p>While yours is, well... not positive.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-08-03T15:25:00+00:00">August 3, 2011 at 3:25 pm</time></p>
      <p>Just wanted to post an update..</p><p>Since making this post, people have begun to volunteer and existing volunteers have started to update the site. The Download page now lists alternative implementations. Congratulations to everyone who stepped up. This means this article may progressively become out of date, so please read it in that context, since the problems may get fixed soon :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jean-Denis Vauguet</strong> &middot; <time datetime="2011-08-03T15:45:00+00:00">August 3, 2011 at 3:45 pm</time></p>
      <p>Peter, I'm the one performing the updates. I made several attempts at reviving the website activity during the last two years, but unfortunately none really had any outcome. Your post is a bitter sweet recall of that fact. So I (and hopefully some VIT fellows) will keep on updating the content from now on even though there has been no consensus on it. In the mean time, I sent another email on our internal ml. Several people reached us by email too. Expect new updates and some other improvements (general cleanup and the like). Please note I post this comment on my behalf, not exposing any "official" views.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-08-03T17:04:00+00:00">August 3, 2011 at 5:04 pm</time></p>
      <p>@Luis Lavena: My post <em>is</em> getting the best out of people since I know several people who have volunteered to help after this post, and updates have already begun to occur on the site. Those efforts are not coincidental.</p><p>Yet, it seems one can't say anything critical in the Ruby world without someone taking faux-offense at it or interpreting it as "aggression." I'm sorry for anyone who has taken genuine offense, but I'm ignoring the complainers because even if I did write a "rant", it's <strong>getting people to take action and do good things</strong>, whereas wailing at me isn't ever going to stop me doing what I believe is fair and right in the future.</p><p>You may note that over the years I have been particularly bullish and supportive of your efforts on Windows, even bringing the topic up on a panel at Euruko, only to be shot down in flames by an audience who didn't care for Windows. Nonetheless, I have continued to support and promote your good work. It should be more than clear to you that I am not personally ranting at anyone, least of all you, but that I am pointing out <em>serious flaws that people should step up and address.</em> People are now doing that, so mission accomplished.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>rndrubyist</strong> &middot; <time datetime="2011-08-03T18:31:00+00:00">August 3, 2011 at 6:31 pm</time></p>
      <p>Volunteering now to fix the current issues is great, but I think it is more of a band-aid - it does not promise to fix the actual process of constantly keeping the site up-to-date.</p><p>However harsh it may sound, right now it sounds like only a selected few update the web site, and they have not been doing a very good job. instead, if a small group of designated people were responsible for keeping a certain section of the web site up-to-date instead of just a few individuals for the whole web site, that in theory would fix the web site update process.</p><p>Staying ahead of the bug tracker is extremely important, but if we want Ruby community to continue growing, we need to ensure the information is easy to find and access.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2011-08-03T18:33:00+00:00">August 3, 2011 at 6:33 pm</time></p>
      <p>@Peter Cooper: I'm not criticizing your intentions, but the way they are said.</p><p>I'm personally thankful for all the exposure Ruby for Windows, specially RubyInstaller has received from you.</p><p>Perhaps is because I'm not a native english speaker that certain words have different meanings to me but I haven't taken these personal.</p><p>Been one of the ones that helped build the spanish version of ruby-lang website I can tell you is not an easy task to maintain with is current CMS.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dr Nic Williams</strong> &middot; <time datetime="2011-08-03T18:35:00+00:00">August 3, 2011 at 6:35 pm</time></p>
      <p>If this post causes a new influx of Rubyists who discover they are allowed to help maintain this site and keep it up-to-date and awesome, then this is a great post.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-08-03T18:40:00+00:00">August 3, 2011 at 6:40 pm</time></p>
      <p>@Luis: I probably need to add a note about this as someone else pointed it out to me too :-) I'm NOT making any claims about the localized versions of ruby-lang.org. I am not familiar with how up to date they are and my comments are entirely focused on the main English language version. I apologize if I've offended anyone who thinks I was suggesting the localized versions are not being maintained properly. I will try to add a note correcting this.</p><p>All that said, I have heard several complaints about the CMS now, including yours. And I hope that the mini drama this post may have stirred up will get people seriously discussing the future of the site in regards to the technology behind it rather than merely patching up any errors or out of date content.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jean-Denis Vauguet</strong> &middot; <time datetime="2011-08-03T19:21:00+00:00">August 3, 2011 at 7:21 pm</time></p>
      <p>@Peter: It (underlying tech) is been discussed right now. Thank you everyone for your comments and feedback.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Murray Bozinsky</strong> &middot; <time datetime="2011-08-03T22:24:00+00:00">August 3, 2011 at 10:24 pm</time></p>
      <p>Whoever added the RVM section on the download section, please remove it.</p><p>RVM is the biggest source of issues for newbies getting started. There are so many bugs in RVM that even experienced Rubyists have to fight with it a few times a year.</p><p>Sure, if you need to test your code in more than 3 versions of Ruby(not including JRuby, etc), then I weep for you, that might be a good reason to use RVM.</p><p>Other than that narrow use case, recommending that buggy pile crap is irresponsible.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-08-03T22:29:00+00:00">August 3, 2011 at 10:29 pm</time></p>
      <p>I guess this is part of the reason for updates slowing down; people will disagree on what should or shouldn't be included ;-)</p><p>I can't dispute your experience, Murray, but I want to add a data point that I've used RVM exclusively for the last year or so now on several machines, both new and old, on OS X and Linux, without any negative experiences at all.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonathan Rochkind</strong> &middot; <time datetime="2011-08-03T23:17:00+00:00">August 3, 2011 at 11:17 pm</time></p>
      <p>"There are surely selfless, altruistic people ready to take on this task and do some good. "</p><p>Ha, if that were so, wouldn't they be doing it?  But I guess we'll find out, publisizing the problem is the first step (I agree there's a problem, a big one. I myself have been confused by that site when looking for info, before I learned to ignore it.)</p><p>But I'd suggest that, if there's initial interest from the people with control of that site, you prepare a proposal for what you'd want in order to take it up: If you want credit (I agree it's important), then include how/where/how-prominent you'd want credit.  If you want control over things you are not sure you'll get control over, then specify what.  (Although perhaps be willing to compromise on some of them -- I see what you're saying about core team blog posts, but core team blog posts not as useful as they could be are DEFINITELY not among the worst or highest priority of the problems you've identified, and improving them does not seem to me to be crucial... you may disagree). </p><p>You may likely be surprised and find that they are fine with what you propose. I suspect the lack of attention the site receives indicates that there's nobody who really has a proprietary care for it, so nobody to object to someone taking it over under your terms.  But if not, oh well, then don't do it, right? Worth a shot.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Grimm</strong> &middot; <time datetime="2011-08-04T00:32:00+00:00">August 4, 2011 at 12:32 am</time></p>
      <p>I agree that it's important to have a good "official" website. It helps a lot if you're doing something by yourself without the help of co-workers or your mailing list/IRC/twitter/Stack Overflow buddies.</p><p>If I'm a drive-by visitor and I notice something wrong, who should I contact?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kevin</strong> &middot; <time datetime="2011-08-04T04:39:00+00:00">August 4, 2011 at 4:39 am</time></p>
      <p>When you type in "ruby" in google, ruby-lang.org is the first link for me in the US.  This is why it needs to be a more complete site.  I'm lazy (don't often bookmark good ruby sites) and always use google for ruby info and it is always the first link.</p><p>Like many others, I figured ruby support was dying since info was either old or very simply defined (like when new releases come out).  Posts are sometimes months apart and it's so refreshing to see more frequent updates...even if it is just "1.9.3 release expected in September" or other information we don't see today.  It can drive excitement and improve the culture.</p><p>So thank you so much for posting this article and getting a strong reaction. Having a strong ruby culture/presence is so important to allow ruby to reach a critical mass.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>jotbuzz.com</strong> &middot; <time datetime="2011-08-04T08:40:00+00:00">August 4, 2011 at 8:40 am</time></p>
      <p>this could be a reason while many people leave the site and maybe don't start with ruby.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>jimmy</strong> &middot; <time datetime="2011-08-04T10:25:00+00:00">August 4, 2011 at 10:25 am</time></p>
      <p>yeah this is embarrassing, its a mainstream language for goodness sake, not someone's crappy project.</p><p>the quote on developers not liking to document is rubbish, it doesn't take that long to do some updates on a page that's already built. dont have to do long eassays just something short and concise.</p><p>Mr Matz owes rails big time, without it his language would be 'on the bench'.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Justin Baker</strong> &middot; <time datetime="2011-08-04T18:01:00+00:00">August 4, 2011 at 6:01 pm</time></p>
      <p>WTF. Whytheflyingfuck is rubot even mentioned there? Or InstantRails, with no releases since 2007?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>nube</strong> &middot; <time datetime="2011-08-05T02:50:00+00:00">August 5, 2011 at 2:50 am</time></p>
      <p>Keep us informed of what you and everyone else has volunteered to do. There should be an 'honour role' listing those who have stepped up (rather than just spoke up).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-08-05T07:03:00+00:00">August 5, 2011 at 7:03 am</time></p>
      <p>@nube: Good idea! I think we'd need to wait a while to see how it pans out but I would be more than happy to do that. I know Steve Klabnik has already started rewriting the Download page so far..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-08-06T16:44:00+00:00">August 6, 2011 at 4:44 pm</time></p>
      <p>Update.. the <a href="http://www.ruby-lang.org/en/downloads/" rel="nofollow">Downloads page</a> is now SIGNIFICANTLY better. I believe most of the credit for this is due to Steve Klabnik (of the Hackety Hack project).</p><p>I also need to point to an all new attempt of producing a Ruby homepage at <a href="http://rubylang.info/" rel="nofollow">http://rubylang.info/</a> - an interesting attempt.</p><p>I think the results so far are quite positive and will continue to be so.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Trek</strong> &middot; <time datetime="2011-08-06T21:08:00+00:00">August 6, 2011 at 9:08 pm</time></p>
      <p>I'd love to see Ruby's build dependencies for various systems listed on the install page. RVM does a great job of guiding you through installs on different OSes.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jean-Denis Vauguet</strong> &middot; <time datetime="2011-08-07T01:11:00+00:00">August 7, 2011 at 1:11 am</time></p>
      <p>Hi,</p><p>I'll just quote my email sent to <a href="mailto:vit-core@<!--*-->ruby-lang.org">vit-core@<!--*-->ruby-lang.org</a>:</p><p>---</p><p>So here's the thing: <a href="https://github.com/chikamichi/ruby-lang.org" rel="nofollow">https://github.com/chikamichi/ruby-lang.org</a></p><p>It lacks most of the current content, even the homepage, but the structure is ready! And it was the most important part to achieve, before filling content.<br>
The README on the project's page gives a few instructions on how to have this running on your local machine.</p><p>I'm tired so I won't go into much more details right now :)</p><p>---</p><p>This attempt is the product of a coordination between current, active maintainers of ruby-lang.org. I'm happy to see others attempts, I'm a bit concerned by the lack of coordination and duplicated effort though. Many people got in touch with us, whereas some others never said a word about their projects, so we're now forced to plan how solving this issue on top of those we already had. Please, talk to each others, and be patient (for a few days) ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nando</strong> &middot; <time datetime="2011-08-08T21:43:00+00:00">August 8, 2011 at 9:43 pm</time></p>
      <p>Great comment, I really was concerned about the list of "most active" projects, some of them were just dead projects. Just one comment about Watir: you mention that it was updated 2 years ago, but Watir is a living project with regular updates, it has been updated several times during this year only. Probably the code is not changed in rubyforge, that's the problem.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jason Thomas</strong> &middot; <time datetime="2011-08-12T05:13:00+00:00">August 12, 2011 at 5:13 am</time></p>
      <p>I thought the new Ruby documentation standard was <a href="http://yardoc.org/" rel="nofollow">yardoc.org</a> and by association <a href="http://www.rubydoc.info/stdlib/core/1.9.2/frames" rel="nofollow">rubydoc.info</a>. I personally like the style and layout much better than ruby-doc. Unfortunately when you Google for "Ruby documentation", rubydoc.info doesn't even show up and yardoc.org is halfway down after a bunch of ruby-doc links.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dazza</strong> &middot; <time datetime="2011-08-16T09:41:00+00:00">August 16, 2011 at 9:41 am</time></p>
      <p>I have to say as someone fairly new to Ruby, I find the lack of websites devoted to this language awful. A fair number have seemingly been abandoned, or not updated in years. Many projects are becoming dormant ie: rubygame just as a quick example. And although there are a few sites worth visiting, I find it becoming too niche, and just not worth the time bothering with. I get the impression whether rightly or wrongly that Ruby is an Apple Mac only thing, and that other operating systems aren't so widely used with Ruby, for example Linux and the most widely used OS Windows, which I still support due to it's major userbase. </p><p>I do also feel that I have been wasting my time developing with this language, and although I've thoroughly enjoyed using it, I do feel it is time to move on. So, where next? Well, I've been dabbling in Python, and I have to say the community is amazing, it just seems so much more alive, and things are easier to find and implement. Will I go to Python fulltime? I'm not sure. My company is certainly moving away from Ruby and the various web frameworks we've used, and although we even looked at C#!, we may well end up in the Pythonistas domain and continue down that route. One of our top people has already been creating a test system for us to try out on a redundant server, and speed as well as development seems to be a lot quicker and easier to implement than Ruby. </p><p>It's such a pity, as Ruby is good, but the community surrounding it sucks so bad.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bill</strong> &middot; <time datetime="2011-08-31T00:37:00+00:00">August 31, 2011 at 12:37 am</time></p>
      <p>A crappy official website is the least of Ruby's problems.</p><p>The headline should have said "Ruby is proudly maintained by No-one"</p><p>I agree with Dazza. There is simply too few companies and people properly writing and maintaining Ruby and Gems, so it is mostly hackers that quickly lose interest in the project and move on to abandon their next project. The result is a huge repository of mostly worthless libraries.</p><p>If you aren't willing to properly support your gem or rails plugin, don't put it up on github! It is that simple. Even though the number of Gems would be lower the quality would be exponentially higher. Also if you fork someone else's project, make sure that fact is properly documented and link back to the repo you forked since github does such a poor job of that.</p><p>The biggest problem in Ruby, and the responsibility lies at the feet of the otherwise awesome Matz is the lack of documentation. A few weeks ago, I installed Ruby from source and was disgusted that it reported that ~50% of the methods were documented.</p><p>SOURCE CODE IS NOT DOCUMENTATION!</p><p>Too many projects don't even have methods documented, just links to source code. That is what makes Ruby look bad. Java is an overly bloated language, but look at the quality of the docs in the official API's. Then look at third party API's from Apache Commons to random devs releasing libraries, they follow the example of the Java devs.</p><p>People releasing libraries for Ruby follow Matz and the rest of the Ruby team's example. That is embarrassing, amateurish, and inexcusable. For an example, look at Rails, or Nokogiri, or almost anything else. Terrible, incomplete docs that help no one but authors of commercial books. RMagick is a rare exception, but compare it to Perl or Java standards and it is still quite subpar, but great compared to most of Ruby.</p><p>There needs to be a push for all current ruby development projects to freeze all development, other then security and library breaking bugs, and get documentation up to par. From RDocs to a proper manual. Yeah, it is boring and a royal pain, but if they had spent just a few minutes after writing a method or class to properly document it they wouldn't be in this position.</p><p>That these libraries and frameworks are free is NO excuse. Again, if you are not willing to competently develop and support something, DO NOT RELEASE IT TO THE PUBLIC!</p><p>I can't think of another open source ecosystem that has acted this way and tried to push off critical documentation on to its unsuspecting users.</p><p>In the Ruby world this unprofessionalism somehow became widely accepted and will destroy any hope for Ruby and Rails to overcome crap like PHP and Java. </p><p>Drill this in your head: source code are not docs and neither are half-assed, shallow examples in your readme file.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
