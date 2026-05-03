---
title: 'Deploying Rails Applications: The Book'
date: '2008-05-15'
author: Peter Cooper
author_slug: admin
post_id: 895
slug: deploying-rails-applications-the-book-895
url: "/deploying-rails-applications-the-book-895.html"
categories:
- news
- reference
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2008/05/9780978739201-lrg.jpg" width="272" height="326" alt="9780978739201_lrg.jpg"></p>
<p>I usually try to get a review copy and read through a book before mentioning it here, but a book like <a href="http://www.oreilly.com/catalog/9780978739201/">Deploying Rails Applications</a> (<a href="http://www.amazon.com/Deploying-Rails-Applications-Step-Step/dp/0978739205">Amazon.com alternative</a>) has been in demand for a <em>long</em> time now. Its provenance (coming from the keyboards of Ezra "Engine Yard" Zygmuntowicz, Bruce Tate, and Clinton Begin - and published by <a href="http://www.pragprog.com/">Pragmatic Bookshelf</a>) encourages me to support it without direct review. That's not to say it's <span style="font-style: italic;">certainly</span> a good book, but it darn well <span style="font-style: italic;">shouldn't</span> be a bad one.</p>
<p>The book covers deploying Rails applications under shared hosting, virtual machine, and dedicated server hosting environments, and looks at the variety of technologies you can use, such as Apache, Nginx and Mongrel. Monitoring, source control, and automated deployment (using Capistrano) are also discussed.</p>
<p>For those who'd rather squint endlessly at the screen than fondle finely pressed tree flesh, <a href="http://pragprog.com/titles/fr_deploy/deploying-rails-applications">Pragmatic Bookshelf have a PDF version available</a> for $22.</p>
<p><em><strong>This post is sponsored by KickStart Events —</strong> <a href="http://kickstartme.co.uk" title="UK RubyOnRails Training">RubyOnRails Training at the EMCC (East Midlands Conference Centre), UK</a>. High-quality hands-on workshops and courses for web application developers. Taught by experienced mentors using live coding sessions, slides and participatory discussion.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Ericson Smith</strong> &middot; <time datetime="2008-05-15T03:20:00+00:00">May 15, 2008 at 3:20 am</time></p>
      <p>Ouch...</p><p>With the advent of Passenger, SwitchPipe and Litespeed, this book may be *slight* dated.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-05-15T03:24:00+00:00">May 15, 2008 at 3:24 am</time></p>
      <p>I did wonder about that, but felt okay with it in the end, because... LiteSpeed has been around a long while, but is reasonably niche. SwitchPipe is a proof of concept and too new. And Passenger / mod_rails is even newer and unproven. In six months or so, though, I'd expect a book like this to be covering Passenger, at least (so a second edition, perhaps).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Si</strong> &middot; <time datetime="2008-05-15T09:32:00+00:00">May 15, 2008 at 9:32 am</time></p>
      <p>This book lanuished in semi-beta state for ages. I think the rise of git and passenger was the thing that gave them all a kick up the bum to get moving and just release the damn thing. Given another 6 months, they may have had to start again!  The late release does feel like a bit of an opportunity missed, covering SVN only I think, but as long as the capistrano section is up to scratch there will be some relevant content.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>XYZ</strong> &middot; <time datetime="2008-05-15T10:30:00+00:00">May 15, 2008 at 10:30 am</time></p>
      <p>@Peter Cooper<br>
"And Passenger / mod_rails is even newer and unproven."</p><p>Uhm yeah, tell that to Dreamhost. They certainly don't agree with you.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-05-15T10:45:00+00:00">May 15, 2008 at 10:45 am</time></p>
      <p>Perhaps you're right. It's been public for, what, five whole weeks already :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-05-15T10:50:00+00:00">May 15, 2008 at 10:50 am</time></p>
      <p>I thought the IP address seemed familiar so I looked it up. Turns out "XYZ" has the same IP as Hongli Lai from Phusion.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Si</strong> &middot; <time datetime="2008-05-15T10:54:00+00:00">May 15, 2008 at 10:54 am</time></p>
      <p>@Peter 6 - You sleuth! What am I thinking now ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pratik</strong> &middot; <time datetime="2008-05-15T11:26:00+00:00">May 15, 2008 at 11:26 am</time></p>
      <p>Ericson Smith : LiteSpeed has been around for ages and is in no way a new thing. And till date, it never stops to amazes me why very few people actually use it. Screw it being closed source and stuff, the free version is more than good enough for 90% of Rails apps around. Probably it's the porn part in their T&amp;C. Who knows!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Steve</strong> &middot; <time datetime="2008-05-15T13:07:00+00:00">May 15, 2008 at 1:07 pm</time></p>
      <p>Hasn't Phusion been using Passenger for an extended period of time in an effort to ensure that their first release isn't crapware like a lot of stuff these days seems to be? So saying it's only been public for five weeks, though correct, doesn't mean it's unproven. And I think Dreamhost adopting it already (any others?) is indicative of its build quality. [Disclaimer: I have no affiliation with Dreamhost!]</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeremy</strong> &middot; <time datetime="2008-05-15T13:28:00+00:00">May 15, 2008 at 1:28 pm</time></p>
      <p>Uh Dreamhost has adopted a lot of stupid things and policies in the past.  I'm not saying Passenger is crap, but the sites that I know are using that receive even only moderate traffic crash at a much higher rate than they did with the "tried and true" methods discussed in this book.</p><p>Even further, I've yet to see any discussion of how to scale a Passenger application horizontally to meet the needs of a very high demand application.  So, while the guys who wrote it seem to think it's awesome, I still have my doubts.  Of course, I'm open to being proven wrong (and very much would like to be). :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-05-15T13:32:00+00:00">May 15, 2008 at 1:32 pm</time></p>
      <p>Pratik: As it's such a workable product, it might seem initially odd, but it does not surprise me that a company that makes weird, arbitrary demands on its users gets less press and support than alternative solutions that are actually open source with no unusual restrictions. Litespeed seems.. "odd", and I suspect that puts many people a little on edge.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ninh Bui</strong> &middot; <time datetime="2008-05-15T17:59:00+00:00">May 15, 2008 at 5:59 pm</time></p>
      <p>Hi Peter,</p><p>Just read your twitter message on saying that "One of the Phusion Passenger guys decided to snark anonymously in the Ruby Inside comments in favor of his product. Minus 100 points for PR." and I apologize for the anonymity if this is indeed the case.</p><p>That being said and being one of the creators of an ambitious deployment solution, I don't think apologies are in place for favoring ones product. In particular and in all fairness, I think I may also remind you of a twitter message you've posted several weeks ago:<br>
"I'll be impressed with Phusion Passenger when it does something I can already do better".</p><p>From this, I really don't see how this is significantly different from how you've commented in favor of your own product/person in the past. Needless to say, this is and should be your god given right and I'm just posting this to make sure that there's no bad blood between us: what we're doing is all for the benefit of the community so the way I see it, it should all be love right?</p><p>So in conclusion, if you have reason to believe that Phusion Passenger could be improved by your input, we'd be more than happy to receive patches/suggestions on how to do this. After all, it was made open source for these reasons.</p><p>Cheers,<br>
Ninh Bui<br>
- Phusion.nl</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-05-15T18:16:00+00:00">May 15, 2008 at 6:16 pm</time></p>
      <p>Ninh:  Thank you for commenting and e-mailing. I will reply here, just for the record.</p><p>"I think I may also remind you of a twitter message you’ve posted several weeks ago:<br>
“I’ll be impressed with Phusion Passenger when it does something I can already do better”."</p><p>I did post that. It is true. Phusion Passenger is not aimed at me. It is aimed at people who have had issues reliably deploying Rails applications. Saying that I don't need to use it is not to imply that it's bad.</p><p>"I really don’t see how this is significantly different from how you’ve commented in favor of your own product/person in the past."</p><p>The difference is that my name is on everything I write. I expect the same of anyone referencing their own product, otherwise it's shilling.</p><p>"if you have reason to believe that Phusion Passenger could be improved by your input, we’d be more than happy to receive patches/suggestions on how to do this. After all, it was made open source for these reasons."</p><p>I have no reason to believe that. Your product has traction and benefits many. I am sure you are already working on solutions to running non-Rails applications.</p><p>I wish you continued good luck.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2008-05-15T19:15:00+00:00">May 15, 2008 at 7:15 pm</time></p>
      <p>Hi Peter,</p><p>you're absolutely right on the posting anonymously, and I'd like to apologize for that. However, I'd like to ask for your understanding in that when someone claims that a technology is unproven without any supporting elaboration -- even though a lot of time and care has been taken to ensure that it's robust, stable and peforms well in live environments -- that this is quite provoking. That doesn't excuse my action in any way though, as I should've let it slide, but while we're on the subject, I'd be more than interested in hearing your reasons for it being unproven. Because, just as Steve [no affiliation btw] commented earlier, we had been beta testing Passenger for an extended period of time in live environments - including DreamHost - before releasing it to the public. What we're both doing should benefit the Ruby/Rails community as a whole. So we're open to any constructive criticism on how Passenger can be improved.</p><p>With kind regards,<br>
Hongli Lai</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Arik Jones</strong> &middot; <time datetime="2008-05-15T21:32:00+00:00">May 15, 2008 at 9:32 pm</time></p>
      <p>Passenger and Switchpipe seem best for boutique web applications that won't need to scale for the next 5 years. However I will say that Passenger is a wonderful addition to the Rail deployment space surely making those small projects less of a pain for sys admins.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rob Funk</strong> &middot; <time datetime="2008-05-15T22:04:00+00:00">May 15, 2008 at 10:04 pm</time></p>
      <p>The problem here is that Rails deployment has just been moving too fast.  No paper book could keep up, though last I looked I was disappointed that the beta PDF wasn't even up to date with Rails moving to git.</p><p>Hongli Lai, "unproven" means that it has not yet been proven.  The burden of proof is on the people who develop and deploy it, and it really does take time for the more conservative of us to see that it has been proven.  It's wonderful that Passenger has now been released, but don't expect everyone to trust it right away.</p><p>I'm another one wondering about horizontal scaling with Passenger.  Of course, we already know that horizontal scaling works well with other solutions, while Passenger does fill a niche that those others don't fill, so it may be a moot point.  It's more a question of how universal a solution Passenger will turn out to be -- and that has yet to be seen.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-05-16T07:47:00+00:00">May 16, 2008 at 7:47 am</time></p>
      <p>Hongli: Apology accepted! I don't mind you expressing your opinions or disagreeing with me, just do it under your name :)</p><p>Rob (above) has basically elaborated on what I meant. Even though we've now accepted that the worlds of Ruby and Rails move forwards very quickly, I'm still from the "old school" of developers where it takes time for something to be proven, rather than just a certain amount of anecdotal evidence.</p><p>I'd guess that 99% of Passenger's install base (that is, not the 1% you beta tested with) are still in the "honeymoon phase" and have less than 5 weeks' experience with the product. If people are still using it in six months time and singing its praises, I'd say it's proven.</p><p>With the significantly wider gamut of experiences from this new audience, bugs are sure to come out over time, these will be resolved, and the system will become "proven." I am seeing more and more good reports all the time, so it is /becoming/ proven, but as of yet I'd say it's still in that process.</p><p>It is easy to forget that Rails deployment has seen "magic bullet" solutions before which have rapidly dropped out of favor when alternatives come along. Passenger seems to be the most mature and well grounded magic bullet so far, but I've been doing this long enough not to count the chickens before they're fully hatched.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Raul Rubio (roller8)</strong> &middot; <time datetime="2008-05-16T17:46:00+00:00">May 16, 2008 at 5:46 pm</time></p>
      <p>While this book is out of date in some respects, it still has huge value for folks coming over from other environments (like Windows) such as myself.  I was able to get a great perspective on Linux, Apache/nginx, mongrel, monit, capistrano, performance benchmarking, etc. all from a single source to get me off to the races quickly. All from the Beta edition. </p><p>Now having put lots of these topics into practice I'm equipped to understand and consider the other deployment alternatives that are developing. So I guess if you've already "been there, done that" with all of these things then the book may be of much less value since you're already onto new horizons.</p><p>Having spent years deploying sites with IIS I'm anxious to see simple and reliable Rails solutions develop. That'll cut out the hurdle of convincing Sys Admins to support a Rails app deployment in the enterprise!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ninh Bui</strong> &middot; <time datetime="2008-05-16T23:08:00+00:00">May 16, 2008 at 11:08 pm</time></p>
      <p>Hi Peter, (and Rob :-))</p><p>(Now that I've found out about RubyInside, you can expect me posting here more often, although I'm not sure everyone would be happy with that ;-))</p><p>Thank you for providing us with your insightful views on when a technology is thought of being proven, and I agree with you guys that for the greater part, time will probably have to run its course on this one for the more conservative developers.</p><p>But as Rob has stated, the burden of proof lies at those who develop and deploy Passenger. Needless to say, we're taking care of the former, but the latter is something we can't: that's actually something we believe you guys could tell us more about.</p><p>In particular, I'm interested in finding out if you guys have actually had the opportunity to try out Passenger, as I'm curious on what you're basing your opinions on. In particular, I'm interested in finding out what has caused for this reluctance, i.e. a result of an unpleasant first-hand experience with Passenger or in a more general sense, bad past experience with perceived comparable products.</p><p>In other words, is it a rational reluctancy or one that is more or less attributed to human emotion (FUD comes to mind). From my experience, time and the opinions of others are important in addressing the latter and seeing as we believe your opinions really count in this matter, we're interested in finding out what we would need to do to get you to use Passenger as well. And I'm not just asking Peter Cooper in particular, but old-school developers in general :-).</p><p>As for the targeted audience of Passenger, this was initially "people who just want an upload-and-go experience with deployment", but the focus has recently shifted towards performance and efficiency as well. See also <a href="http://www.rubyenterpriseedition.com" rel="nofollow">http://www.rubyenterpriseedition.com</a> and without spoiling too much, we're not doing bad in these comparisons with the competition, so again, I'm curious in finding out if there is anything we could do to get you old-school developers on board as well.</p><p>As always, I'm interested in hearing your thoughts on these matters and am looking foward to reading your response(s).</p><p>Cheers,<br>
Ninh Bui<br>
- Phusion.nl</p>
    </li>
      <li>
      <p class="comment-meta"><strong>dean cameron</strong> &middot; <time datetime="2008-05-16T23:22:00+00:00">May 16, 2008 at 11:22 pm</time></p>
      <p>everyone is bruised from the dick waving.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ninh Bui</strong> &middot; <time datetime="2008-05-17T00:11:00+00:00">May 17, 2008 at 12:11 am</time></p>
      <p>Well, maybe I've been hammering a bit much on the word reluctance seeing as it's a bit of a strong word which doesn't really capture what I'm trying to get to: "conservative approach" would probably fit the bill better (feel free to gsub it in my previous comment ;-)). English is not my first language so my apologies to those who may have felt offended by that.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ericson Smith</strong> &middot; <time datetime="2008-05-17T01:06:00+00:00">May 17, 2008 at 1:06 am</time></p>
      <p>We're happy Switchpipe, Passenger and Litespeed users for varying sites.</p><p>There are very few reasons or excuses left to use the mongrel + apache + pound + nginx stack. </p><p>So my initial post on the book being dated still stands. I suspect that there will be good portions in there dealing with capistrano and other deployment issues.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ezra</strong> &middot; <time datetime="2008-05-18T06:00:00+00:00">May 18, 2008 at 6:00 am</time></p>
      <p>While there may be some new additions to the rails deployment scene that are not covered in this book, I can tell you from experience of managing probably more rails deployments then any other single individual that the techniques in this book are still very relevant and valuable and have proven time and time again to scale. </p><p>Passenger was not included because it only came out after this book had gone to print. And yes I have personally tried passenger and while I think it fits a nice niche for easy to set up, shared and low traffic hosting it did not offer me any compelling reason to switch from my tried and true stack of nginx + mongre|thin, a setup that I have personally scaled to *large* clusters with *large* amounts of traffic.</p><p>In the end though this book is not just about the webserver you use, there is a ton of philosophy around what makes Rails scale and a lot of experience from the trenches of running some of the highest trafficked rails apps around. The information about setting up your own Rails linux servers, master -&gt; slave and master - master mysql clusters as well as your own virtualized Xen servers customized for scaling Rails and performance tuning your app with caching and avoiding pitfalls is not found anywhere else all packed up into one place.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jim Gagne</strong> &middot; <time datetime="2008-05-19T05:46:00+00:00">May 19, 2008 at 5:46 am</time></p>
      <p>I bought a pre-release PDF of _Deploying Rails Applications_ in December 2007 while I was trying to get my Rails management reporting system running on my iMac. I found the book unhelpful. I'm a self-taught programmer who spends most of my time making a living in another field.</p><p>My program downloads DBase files from a local Windows server, loads them into a MySQL database using the DBF Ruby gem, and then does a lot of data processing to help the people in our office figure where we're at financially. I needed a server setup that would run on my iMac and limit access to the application to people on the local intranet. The only program I could find that allows this (six months ago) was Apache, so I had to buy a couple of Apache books to figure out how to use it -- the documentation that comes with Apache is god-awful. (Actually, with a good book like _Pro Apache_, it's not hard.) Then I hooked Mongrel up to Apache. Once I knew how to use Apache, it turns out the best source on how to hook it all together is the chapter in _Agile Web Development With Rails_.</p><p>For me, _Deploying Rails Applications_ makes an assumption about its readers that made it useless to me: it assumes my Rails server is a distant Unix box I access with SSL, and the site will be open to the public. The book gives just enough information to be frustrating, and it's not comprehensive enough to be helpful.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
