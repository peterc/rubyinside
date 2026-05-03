---
title: Google Bites Thumb at Ruby; Ports Rails to JavaScript
date: '2007-06-25'
author: Peter Cooper
author_slug: admin
post_id: 542
slug: google-bites-thumb-at-ruby-ports-rails-to-javascript-542
url: "/google-bites-thumb-at-ruby-ports-rails-to-javascript-542.html"
categories:
- cool
- news
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2007/06/yegge.jpg" height="203" width="292" border="1" hspace="4" vspace="4" alt="Yegge"></p>
<p>John Lam, a Foocamp attendee, <a href="http://www.iunknown.com/2007/06/steve-yegge-por.html">reports that Steve Yegge gave a presentation called "Google Rails Clone"</a> that looks into a JavaScript clone of Rails developed at Google. I can't find any other references yet, and John only mentions the basics, but if this is all true, it could eventually become a big deal.. especially if Google open sources it and JavaScript does become the "<em>next big language</em>".</p>
<p>It does sound rather unlikely that Yegge ported the entirety of Rails to JavaScript entirely by himself (although he <em>is</em> a coding god, and one of my own computer science heroes) but I'm guessing more news will leak out of the big G in the near future..</p>
<p><strong>(Update: Ignore previous update.. confusion reigns.</strong> <strong><a href="http://code.google.com/p/trimpath/wiki/TrimJunction">TrimJunction</a></strong> <strong>is a </strong><strong><em>similar</em></strong><strong> project by Steve Yen.</strong><strong>)</strong></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Duane</strong> &middot; <time datetime="2007-06-25T14:59:00+00:00">June 25, 2007 at 2:59 pm</time></p>
      <p>I'm sorry, I just have to jump in with a Bravo! on the Shakespeare (Romeo and Juliet) reference.  Bites its thumb at them?  Love it!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-06-25T15:17:00+00:00">June 25, 2007 at 3:17 pm</time></p>
      <p>Haha, thanks. I'm not sure why it was the first thing to come to mind.. must be going soft in my old age :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>adam</strong> &middot; <time datetime="2007-06-25T17:21:00+00:00">June 25, 2007 at 5:21 pm</time></p>
      <p>"...in familiar languages like JavaScript."</p><p>O_O familiar languages like JavaScript... right...</p><p>"If you know JavaScript, then all the good things you've been hearing about Rails is now becoming available to you through the Junction project. Except, you don't need to learn yet another programming language. You just need to re-learn JavaScript, casting aside your old stereotypes and misconceptions about the language."</p><p>Why not just learn Ruby instead of re-learning JavaScript? If anything Ruby introduces a lot of the concepts utilized in Rails. I would think learning Ruby would make one understand how JavaScript can be more like Ruby. I guess I disagree with his tone when he says, "...yet another programming language." </p><p>I like the fact that someone has taken the time to make something so cool in JavaScript, but I feel like he's just made an overcomplicated solution for environments that are not server and/or Ruby friendly. Not to mention JavaScript still looks hideous.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Anthony Eden</strong> &middot; <time datetime="2007-06-25T17:36:00+00:00">June 25, 2007 at 5:36 pm</time></p>
      <p>Makes sense to me that Google would attempt this considering how Google Gears works. Online and offline apps all in one language with a Rails clone could gather a decent following...still, I'd be hard pressed to use it only because Ruby is such a beautiful and enjoyable language.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jboss</strong> &middot; <time datetime="2007-06-25T17:46:00+00:00">June 25, 2007 at 5:46 pm</time></p>
      <p>crazy crazy Idea, who will use this?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-06-25T17:52:00+00:00">June 25, 2007 at 5:52 pm</time></p>
      <p>I'm guessing much of the official line goes around the limitation of "company wide" languages in Google to C++/Python/JS/Java. Of course, with those restrictions I wonder why they wouldn't just use Django.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stewie</strong> &middot; <time datetime="2007-06-25T18:46:00+00:00">June 25, 2007 at 6:46 pm</time></p>
      <p>I doubt they've ported Rails to JavaScript. But they may very well have written a Rails-Django-Pylons-whatever inspired web framework with a lot of good features also found in Rails.</p><p>ECMAscript 4 looks pretty good, so it should be interesting.</p><p>Although Steve Yegge is a good writer I'm surprised to see anyone call him a coding god... just about everything he has done (which is -probably- good, but I don't know) has been closed source at Amazon or Google, so far.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dogas</strong> &middot; <time datetime="2007-06-25T18:52:00+00:00">June 25, 2007 at 6:52 pm</time></p>
      <p>This is the missing widget that google gears needs for mass adoption.  They have successfully moved the data layer to the browser with gears, now all they need to do is port over a framework that handles requests, retrieves data, processes it, and sends it to the user.  What better framework than Rails?</p><p>This has the potential to be *huge*.</p><p>Imagine if, upon login, a webapp loaded your set of data into the browser's DB (through gears), and from then on you interacted with your data locally, ocasionally syncing with the server DB here and there.  At the very least that is a good solution to caching and server load.</p><p>That -really- blurs the line between desktop and server-based apps!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-06-25T19:01:00+00:00">June 25, 2007 at 7:01 pm</time></p>
      <p>Stewie: Yegge recently spoke about writing a cross-language compiler.. so it wouldn't surprise me if it was a Ruby-JavaScript convertor of sorts (to a very idiomatic JavaScript, I'd be guessing).</p><p>Donas: I agree, although the funny thing is that it'd be almost like coming full circle.. back in the late 90s there were quite a few apps (which were considered to be the "future" of how things would work) that worked from data on the net and let you also work offline (push clients, as one example). This sort of development is basically the same tech, but wrapped in the pane of a Web browser rather than the desktop ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>rabble</strong> &middot; <time datetime="2007-06-25T19:51:00+00:00">June 25, 2007 at 7:51 pm</time></p>
      <p>I was at foocamp, and created a rails based calendar of the events.</p><p><a href="http://foocal.crowdvine.com/" rel="nofollow">http://foocal.crowdvine.com/</a></p><p>There was no session about rails as far as i remember. I did write out all of the session titles, and build the calendar, so i'd know.  So i think you're confused... </p><p>If the session did happen and i missed it, then i'm an idiot. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Midas</strong> &middot; <time datetime="2007-06-25T20:06:00+00:00">June 25, 2007 at 8:06 pm</time></p>
      <p>Javascript on Junction doesn't roll off the tongue quite as easily as Ruby On Rails though, eh? :P</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tim Goh</strong> &middot; <time datetime="2007-06-25T21:27:00+00:00">June 25, 2007 at 9:27 pm</time></p>
      <p>Like the Shakespeare reference.  If I may:</p><p>google.find do |you|<br>
  you.name == "Steve Yegge"<br>
end.bite_thumb ruby, sir?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Juixe</strong> &middot; <time datetime="2007-06-25T21:50:00+00:00">June 25, 2007 at 9:50 pm</time></p>
      <p>It is unfortunate that their are no details of his JavaScript port of Rails.  I have used his JavaScript Template library and tend to agree with Stewie when he says that it 'well have written a Rails-Django-Pylons-whatever inspired web framework.' </p><p>Even though there are not a lot of details there is a lot of code owned by Steve here: <a href="http://code.google.com/p/trimpath/" rel="nofollow">http://code.google.com/p/trimpath/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>CG</strong> &middot; <time datetime="2007-06-26T15:38:00+00:00">June 26, 2007 at 3:38 pm</time></p>
      <p>It seems that redoing Rails in another language is the new "Hello World" of this decade. I agree with the other comments about why do we need yet another implementation of Rails? If a developer is not able to learn another language how good are they anyway? Why would someone want to do a Rails app in another language in the first place - what are the advantages other than not wanting to learn a new language - which is something that every good programmer should want to do every year or two anyway.</p><p>I'm still waiting for the COBOL version of Rails- now that would rock!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>court3nay</strong> &middot; <time datetime="2007-06-26T19:54:00+00:00">June 26, 2007 at 7:54 pm</time></p>
      <p>I was also at foo camp, and while I didn't go to Steve's session, I did seek him out afterwards to offer my help.  (I spotted his nametag and performed an interception)  I really do love coding in JS.</p><p>As John Lam said, by porting rails to javascript, it allows adoption of the framework from within Google.  Steve told me that by doing a fairly straight port, they've actually developed several other javascript useful tools and frameworks, which they are working hard to extract.  Some of the code is based on internal tools, so they have to either open-source those tools, or remove the dependency.  One of these involves setting up a sort of static typing which is more warning that error-raising.</p><p>The main idea as I gleaned it is to allow rails developers to seamlessly transition their code to the goog framework.  I may have that completely wrong.</p><p>There will be more information on this over the next few months; I wouldn't be holding my breath for a release anytime this year.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Shadowfiend</strong> &middot; <time datetime="2007-06-26T23:39:00+00:00">June 26, 2007 at 11:39 pm</time></p>
      <p>The current advantages to doing this in JS could include  speed. I haven't seen any benchmarks of JS, of course, but it may be faster.</p><p>Moreover, this further proves the similarities between Javascript and Ruby in terms of power, abilities, and approach. Prototype first showed those similarities. And finally, while people may be willing to learn Ruby, there may still be those who prefer Javascript -- we all have our preferred language. Why not give them the same power if it's possible to do so?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Akbar</strong> &middot; <time datetime="2007-06-27T15:36:00+00:00">June 27, 2007 at 3:36 pm</time></p>
      <p>Stewie Said:<br>
Although Steve Yegge is a good writer I'm surprised to see anyone call him a coding god... just about everything he has done (which is -probably- good, but I don't know) has been closed source at Amazon or Google, so far.</p><p>I say:<br>
Steve Yegge has write this.....<br>
<a href="http://www.cabochon.com/" rel="nofollow">http://www.cabochon.com/</a> (down for now)<br>
It's not opensource. </p><p>Reference:<br>
<a href="http://steve-yegge.blogspot.com/2006/07/get-famous-by-not-programming.html" rel="nofollow">http://steve-yegge.blogspot.com/2006/07/get-famous-by-not-programming.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>court3nay</strong> &middot; <time datetime="2007-06-27T18:58:00+00:00">June 27, 2007 at 6:58 pm</time></p>
      <p>see <a href="http://steve-yegge.blogspot.com/2007/06/rhino-on-rails.html" rel="nofollow">http://steve-yegge.blogspot.com/2007/06/rhino-on-rails.html</a> for a proper update.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>tiro</strong> &middot; <time datetime="2007-06-28T09:03:00+00:00">June 28, 2007 at 9:03 am</time></p>
      <p>My coding gods: <a href="http://ocsigen.org" rel="nofollow">http://ocsigen.org</a> (and JavaScript is evil ...)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>CG</strong> &middot; <time datetime="2007-06-28T20:13:00+00:00">June 28, 2007 at 8:13 pm</time></p>
      <p>Actually it is kind of cool that we have groovy and other Ruby clones and various ports of Rails to other languages - imitation is indeed the most sincere form of flattery. Keep the feedback and good work coming. I actually loved Smalltalk and it is a shame it never got the credit it was/is due - I guess because people didn't want to deviate too far from the C bandwagon at the time.<br>
I actually use JavaScript on a daily basis writing several thousand lines of test scripts (unfortunately Ruby is not an option here) and I think it is good - but it is no Ruby - if it were I would be writing several hundred lines of code instead of several thousand - of course your mileage may vary.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike</strong> &middot; <time datetime="2007-07-05T01:57:00+00:00">July 5, 2007 at 1:57 am</time></p>
      <p>JavaScript rocks. I've written a complete runtime in it for generating single-page apps. I'm writing a BNF based javascript parser for transforming the codebase and generating documentation from it using Rhino.</p><p>Porting the Rails code to JavaScript seems like a logical choice to me. I can't use Ruby on the day job, but the MVC pattern in Rails is solid. Why mess with it?</p><p>You guys seem to forget that Ruby is not an option at Google. Google only allows programmers to do C++, Python, Java or JavaScript. I don't work at Google, but where I work the choices are limited to C#, Java and JavaScript. I actively veto attempts to introduce new languages, because we'd end up with a mess of Delphi, Python, Perl, Haskell and of course Ruby (my favorite).</p><p>Limiting languages is a good strategy. If this means porting an existing framework in another language to something you can integrate into your existing codebase, so be it. (My non-day-job is all Ruby and JavaScript, of course).</p><p>Port Rails to JavaScript and you can run it on the client or on the server. Rhino is a solid piece of work - I'm using it to script up most of the Java server side as well.</p><p>Anyway, JavaScript and Ruby have enough in common that porting code one way or the other is pretty easy.</p><p>JavaScript will be more verbose, explicit and clumsy than Ruby. Unless you feel like adding or overriding functions in the base objects... Which I refuse to do because you'll end up being incompatible with future versions of the language, have nasty conflicts with library code you import and generally provide a much steeper learning curve to people not familiar with your codebase and conventions.</p><p>So Yay! More Ruby love from a Ruby-unfriendly environment (Google).</p><p>Can't wait to see what this guy gets up to next.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
