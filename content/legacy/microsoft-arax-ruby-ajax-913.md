---
title: Microsoft’s Latest Bad Idea? ARAX – Ruby-powered AJAX
date: '2008-06-06'
author: Peter Cooper
author_slug: admin
post_id: 913
slug: microsoft-arax-ruby-ajax-913
url: "/microsoft-arax-ruby-ajax-913.html"
categories:
- controversy
- news
- microsoft-windows
---

{{< rawhtml >}}
<p>Microsoft's got plans for Ruby beyond the fine <a href="http://www.ironruby.net/">IronRuby</a> project <a href="http://www.eweek.com/c/a/Application-Development/Move-Over-AJAX-ARAX-is-Here/?kc=EWKNLEDP060608A">in the shape of "ARAX"</a> (Asynchronous Ruby and XML), a Ruby-flavored variety of the popular <a href="http://en.wikipedia.org/wiki/AJAX">AJAX</a> Web development techniques. Microsoft's <a href="http://silverlight.net/">Silverlight</a> plugin will be able to process and run Ruby code that's directly within Web pages similar to how browsers process JavaScript. This allows Ruby developers to write Ruby code instead of the equivalent JavaScript as they do now.</p>
<p>eWeek <a href="http://www.eweek.com/c/a/Application-Development/Move-Over-AJAX-ARAX-is-Here/?kc=EWKNLEDP060608A">interviewed</a> John Lam, creator of and program manager for IronRuby, to find out more about the project. Lam seems to feel that Ruby developers aren't happy with using multiple languages and dealing with context shifts:</p>
<blockquote>
<p>[A]t some point you might have to add some JavaScript code that adds some custom functionality on the client yourself. So there's always that sense of, 'Now I'm in another world. And wouldn't it be nice if I have this utility class I wrote in Ruby…' Today if I want to use it in the browser I have to port it to JavaScript. Now I can just run it in the browser.</p>
</blockquote>
<p>On the other hand, though, he seems to have no issue with HTML and CSS:</p>
<blockquote>
<p>It's a known thing and people understand this technology. The part that [is important], at least as far as Rails programmers are concerned with, is they would like to be able to do some Ruby on the client. JavaScript is no longer the ugly stepchild that it used to be, but it's quirky in certain ways. That's not to say that Ruby isn't, but Ruby has more 'oohs and ahs' about it than JavaScript does.</p>
</blockquote>
<p>Naturally, the success of this idea rests on the success of Silverligh, but it remains to be seen whether Silverlight will take off. Silverlight's dynamic language support is exciting and innovative but whether it'll actually prove worthwhile to developers in the long run is doubtful. Microsoft already seems to have enough issues with .Net 3.x (.Net 3.5's runtime is a 190MB download - almost an operating system in its own right!) and IE 7 adoption on the operating systems it actually controls updates for.</p>
<p>An amusing part of eWeek's article was a fine shot across the bow from <a href="http://loudthinking.com/">David Heinemeier Hansson</a>:</p>
<blockquote>
<p>It's great to see Microsoft making progress on IronRuby. Just like JRuby provides people who are stuck with an inventory of Java infrastructure and programs an easy way into Ruby, so does IronRuby for those who are still sitting on a Microsoft stack. As with JRuby, though, I don't expect a lot of Ruby programmers with no existing connection to Microsoft to go gaga over it.</p>
</blockquote>
<p>Let's just cross our fingers and hope it doesn't become another proprietary rehash (JScript, J#) and that Silverlight isn't abandoned or dumbed down on non-MS platforms (as Internet Explorer, Media Player, Messenger and Office were or are).</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>leethal</strong> &middot; <time datetime="2008-06-06T21:40:00+00:00">June 6, 2008 at 9:40 pm</time></p>
      <p>The comments on slashdot are awesome!</p><p><a href="http://tech.slashdot.org/article.pl?sid=08/06/06/156258" rel="nofollow">http://tech.slashdot.org/article.pl?sid=08/06/06/156258</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sam Smoot</strong> &middot; <time datetime="2008-06-06T21:43:00+00:00">June 6, 2008 at 9:43 pm</time></p>
      <p>It sounds like a rehash of the VBScript in the browser idea. Except I suppose this time it's not IE only. So it might stand a better chance at success.</p><p>I don't want to say it's a terrible idea, because as much as I like JavaScript, this could provide some advantages.</p><p>But I don't think it's really Ruby FTW. It's the ability to tap a much more robust stdlib (the trusted bits anyways), and most likely the ability to download and cache your own libs in the run-time.</p><p>Great JS libraries like jQuery make this less of an issue with JS, but it's still a bit limiting to have to concern yourself with the download/eval performance of your custom scripts. It's not an issue you have to think of at all server-side, and I suspect this is where Silverlight may ease some pain.</p><p>That's a lot of suspicions and assumption though, and truth is, it's still probably not enough to get me to try it. To make that happen, MS would have to publish some great tutorials on doing some Silverlight work with Textmate.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>FlySwat</strong> &middot; <time datetime="2008-06-06T21:51:00+00:00">June 6, 2008 at 9:51 pm</time></p>
      <p>Odd, I updated one of our servers to .NET 3.5 last night and the installer was around 2.5 megs. This installer then downloaded 60 megs of files.</p><p>A far cry from 190 megs.</p><p>Where did you get that number?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-06-06T21:58:00+00:00">June 6, 2008 at 9:58 pm</time></p>
      <p>FlySwat: <a href="http://www.google.com/search?q=%22.net+3.5%22+%22150..250+mb%22" rel="nofollow">http://www.google.com/search?q=%22.net+3.5%22+%22150..250+mb%22</a></p><p>The 197MB version is the full redistributable which, unfortunately, is often necessary to make available to ensure successful installation. But still, even 60 megabytes is crazy.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-06-06T22:14:00+00:00">June 6, 2008 at 10:14 pm</time></p>
      <p>Just installed Silverlight on my Mac again (first time out it was unstable, crashed all the time) and, unsurprisingly, I see artefacts in their animations, the text rendering is poor, and items aren't clipped properly (shapes overlap live areas, etc). This strikes me as poor for a year's effort..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>mike</strong> &middot; <time datetime="2008-06-06T22:31:00+00:00">June 6, 2008 at 10:31 pm</time></p>
      <p>I think a few people do not reckon that Javascript is the real problem.</p><p>When you have a big ecosystem build in ruby, then why would you want to go and use ANOTHER language when the one you already use (ruby) is much better than i.e. javascript? Sure, currently we can only use javascript. But why cant people OPTIONALLY choose another language?<br>
Like ruby. Or python.</p><p>Javascript syntax does _nothing_ better than ruby syntax.</p><p>Javascript's prototype based approach is a joke at best (The Io Language has a better idea towards prototypes than Javascript ever will), and ruby is very close to the prototype language camp as well (since you can reshape any object at any time, if you so desire.).</p><p>Javascript won't quickly go away, and there are many important libraries written in javascript. But I tell you this, with the coming web == desktop revolution (okok... a mini revolution) we will see apps exploding in number. And then it is simply better to use a language that has a much broader usage scenario than javascript ever will.</p><p>I think CSS is fine so I am not at all talking about changing CSS. HTML is ugly but no big deal, we can live with it.<br>
The problem is really Javascript IMHO, and every step away from Javascript is an improve, even if its a tiny one. A language that is always restricted to a client-server "chit-chat" will inherently suck.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Lam</strong> &middot; <time datetime="2008-06-06T23:08:00+00:00">June 6, 2008 at 11:08 pm</time></p>
      <p>Silverlight 2 is a one-time 4.5MB download. That's for a complete CLR implementation with the standard .NET libs and the media stuff.</p><p>To get IronRuby + DLR, it will require around another one-time download of 1.5MB or so using today's bits.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris Kilmer</strong> &middot; <time datetime="2008-06-06T23:58:00+00:00">June 6, 2008 at 11:58 pm</time></p>
      <p>"JavaScript is no longer the ugly stepchild that it used to be, but it’s quirky in certain ways."</p><p>It's not really JavaScript that is quirky, it's the individual browser implementation.  Sad to see that MS just doesn't get it.  Embrace standards, put out a product that supports those standards well and walk away from  proprietary software.</p><p>They won't come up with anything revolutionary following the proprietary path.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark</strong> &middot; <time datetime="2008-06-07T00:46:00+00:00">June 7, 2008 at 12:46 am</time></p>
      <p>I really don't see why this is a bad idea.  They may or may not see wide spread adoption, but that's not the point.  Not everyone enjoys context switching between a server side language and JS, and MS providing support for languages like Ruby/Python/PHP in the browser context (not just IE7) is excellent.</p><p>At Railsconf there was a tutorial on testing methods written in JS that had already been written in Rails in order to speed things up.  Using Silverline (Rails plugin for Silverlight) this was a non-issue and a simple as declaring a method to be executed in the client instead of the server.  This is the type of innovation that got people excited about Ruby/Rails in the first place.  </p><p>Whether it lives up to the (anti)hype, time will tell.  I do think the name is dumb tho.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jim Deville</strong> &middot; <time datetime="2008-06-07T06:05:00+00:00">June 7, 2008 at 6:05 am</time></p>
      <p>Sam,</p><p>"and truth is, it’s still probably not enough to get me to try it. To make that happen, MS would have to publish some great tutorials on doing some Silverlight work with Textmate."</p><p>I am the tester for IronRuby, and I think that is actually a great idea. I'll keep that in mind and try to get some time to add (or get someone to help me add) some tutorials on doing Silverlight development with Mono on a Mac to the IronRuby site.</p><p>Feel free to email suggestions to me at jdeville@&lt;&gt;.com</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jim Deville</strong> &middot; <time datetime="2008-06-07T06:44:00+00:00">June 7, 2008 at 6:44 am</time></p>
      <p>That  was meant to be &lt;&lt;youknowwhere&gt;&gt;</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brandon Zylstra</strong> &middot; <time datetime="2008-06-07T07:08:00+00:00">June 7, 2008 at 7:08 am</time></p>
      <p>Actually I don't see why this is such a bad idea.  As much as I dislike the RJS approach (write Ruby that writes your JavaScript for you), and as much as I vomit over the idea that we should be afraid of JavaScript (if you're afraid of JavaScript don't write web apps!) I still think it would be *nice* if we could use Ruby in the browser instead of JavaScript. </p><p>The biggest problems with JavaScript have been the inconsistencies across browsers, the pain of which is greatly reduced by good libraries.  But what if Ruby were ubiquitous in browsers?  I think that would be great.  The best problem I see, however, is that it will be a LONG time before Silverlight is installed on 99% of browsers.  (Even Flash does not, in my experience, have the degree of penetration that Adobe claims...)</p><p>So I think it'll be JavaScript for the foreseeable future.  Not because the idea is bad, but because actually achieving the universality needed to make it work is unlikely to happen for a very very long time.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brandon Zylstra</strong> &middot; <time datetime="2008-06-07T07:10:00+00:00">June 7, 2008 at 7:10 am</time></p>
      <p>(oops: that should be "biggest problem")</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Srdjan Pejic</strong> &middot; <time datetime="2008-06-08T00:07:00+00:00">June 8, 2008 at 12:07 am</time></p>
      <p>This is a bad idea. No disrespect to John Lam, but this is purely Microsoft thinking again. Let's do everything with one programming language. Let's stay away from the "bad kid on the block". This is MS pushing Silverlight down developers' throats again. </p><p>If you can't be bothered to learn Javascript, why are you developing for the web? This is the type of person who will find this appealing. Every programming language has its quirks and its problems. If anyone here who thinks this is a good idea had bothered to truly learn Javascript, you'd notice that it itself will incite the oohs and ahhs that the article speaks about. </p><p>I'm sorry, but this seems like a ploy to marginalize Javascript. The age of polyglot programming is here. To be an effective web developer, or for that matter, a good programmer, one must know more than one programming language. That is modern reality, deal with it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Thomas Hansen</strong> &middot; <time datetime="2008-06-08T00:18:00+00:00">June 8, 2008 at 12:18 am</time></p>
      <p>Ohhhh....<br>
When will they learn...!! :S</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nazgum</strong> &middot; <time datetime="2008-06-08T13:48:00+00:00">June 8, 2008 at 1:48 pm</time></p>
      <p>While it is interesting, there is no way I would ever touch this; as someone else mentioned, this is classic microsoft; rather then actually fixing their browser, they leave it broken and try to create new ways for you to make webapps (silverlight/arax) - their way - then once everyone is on it they will attempt to lock out the other browsers.</p><p>Too bad I've seen that movie play out 10x already and don't feel like paying the admission charge again..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Csaba</strong> &middot; <time datetime="2008-06-08T16:16:00+00:00">June 8, 2008 at 4:16 pm</time></p>
      <p>Hi all,</p><p>Hmmmm, I think some of these comments are kneejerk comments.</p><p>Regards<br>
Csaba</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matt</strong> &middot; <time datetime="2008-06-08T22:37:00+00:00">June 8, 2008 at 10:37 pm</time></p>
      <p>Oh man, I can't wait to laugh at ARAX the same way I did with VBScript! Imagine, add all the open-source communities that hate Ruby developers to all the people that hate Silverlight...</p><p>Finally some action John! Can't wait, can't wait!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>FidelCastro</strong> &middot; <time datetime="2008-06-09T08:37:00+00:00">June 9, 2008 at 8:37 am</time></p>
      <p>@Srdjan Pejic<br>
So you rational for not using it is because you thing the web should be limited to JavaScript? So if a better idea or technology comes along you're going to disregard it because it isn't JavaScript or because its from MS? You yourself say that programmers should know multiple languages, so why not allow Ruby for Silverlight development? Microsoft aren't forcing developers to use ARAX, its a *choice*. It seems some people are hell bent on knocking MS regardless of what they do. The first reaction of these people is, lets think of a way to knock them, i'll look cool.<br>
My suggestion is that you just use what works for you and rather than keeping a closed mind about what should/shouldn't be used to actually try out new stuff to see if does indeed "work for you".</p>
    </li>
      <li>
      <p class="comment-meta"><strong>devdanke</strong> &middot; <time datetime="2008-06-09T10:12:00+00:00">June 9, 2008 at 10:12 am</time></p>
      <p>i don't think using ruby as a replacement for javascript is a bad idea.  i think javascript is, was, and will be a bad idea.  that fact that javascript sucks is one reason flash has done so well.  it's also a big reason that google's gwt is getting tracktion.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>wekempf</strong> &middot; <time datetime="2008-06-09T12:56:00+00:00">June 9, 2008 at 12:56 pm</time></p>
      <p>Srdjan Pejic</p><p>I don't use Ruby on the server side.  I've developed using JavaScript for over ten years.  I even spent 3 years using JavaScript exclusively to implement a very large desktop application, not to script a simple web page.  That said, it's worth rejoicing that you no longer are stuck with JavaScript!  As powerful as JavaScript can be, it's still an ugly language to work in.  Polyglot programming has nothing to do with it (and there IS something to be said to reduce the number of technologies one uses within a project, whether or not the current trend in the industry is polyglot programming).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Srdjan Pejic</strong> &middot; <time datetime="2008-06-09T17:20:00+00:00">June 9, 2008 at 5:20 pm</time></p>
      <p>FidelCastro: I am not against Ruby for Silverlight development, I am against Silverlight. Ruby is just a hook for the current generation of web developers. I don't like what Silverlight is and what MS's agenda for it is. That's all. There's a whole lot of cool technologies that do not require you to encumber yourself with the complexity that are Microsoft's tools.</p><p>wekempf: Polyglot programming is not a trend, but a reality. A lot of much smarter people than myself have reached the same conclusion and you might want to read up on it before proclaiming it a trend. </p><p>It's awesome that you managed to use Javascript in ways that I haven't heard about, such as the desktop application. Javascript can get ugly, but so can any other language and I'm currently looking into the eyes of a VB.NET monster. That is up to the programmer, not the language itself. I don't agree with reducing a number of technologies for a certain project, though. Especially, for the development of web applications. Each technology is well-suited for its domain. Don't overstep its domain and you'll enjoy doing stuff on the web. Hell, even compensating for various browser deficiencies is not too bad.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>wekempf</strong> &middot; <time datetime="2008-06-09T17:54:00+00:00">June 9, 2008 at 5:54 pm</time></p>
      <p>Trends are still reality.  I know around 14 different programming languages, and can consider myself professionally fluent in at least half of those (as in, multiple years of using them professionally).  I fully grok polyglot programming.  Distributed computing has brought a TREND for polyglot programming.  Note that I'm not saying a thing about the longevity of this trend.  You can not, however, deny that it is a trend, regardless.</p><p>Another mistake your making here is an assumption that JavaScript is the only and/or the best solution for the domain.  Like I said, I don't use Ruby on the server side.  I use C#, Java, C++ and COBOL.  So with ARAX I'd still be doing polyglot programming.  But I STRONGLY believe that I'd be using a better language for the client side scripting.  THAT is the most important point that the naysayers are missing here.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Srdjan Pejic</strong> &middot; <time datetime="2008-06-09T18:00:00+00:00">June 9, 2008 at 6:00 pm</time></p>
      <p>Hmmm, I guess time will tell, as it does always.  </p><p>I don't think that Javascript is the only solution for the domain, but I do believe that currently it's better than the rest. However, I won't push my point any further as everyone is allowed to have their own opinion.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Klimzk</strong> &middot; <time datetime="2008-06-10T03:16:00+00:00">June 10, 2008 at 3:16 am</time></p>
      <p>Funny how people become CLOSE-minded after intensive usage of OPEN-standard languages like Javascript. Not everyone likes to switch between different languages when developing web apps. That's exactly the same reason why some people are designing server-side javascript. Just face it and stop bitching about a product just b/c M$ made it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Woodhouse</strong> &middot; <time datetime="2008-06-12T13:39:00+00:00">June 12, 2008 at 1:39 pm</time></p>
      <p>"almost an operating system in its own right!"</p><p>That got me thinking back to the good old early 90s, when everything came on floppies. MS-DOS was what? Three disks? Putting Windows 3.1 on top was about the same.</p><p>And to think we thought we had an operating system loaded on our 100MB hard drives.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ed</strong> &middot; <time datetime="2008-06-13T07:14:00+00:00">June 13, 2008 at 7:14 am</time></p>
      <p>Silverlight 1.0 has been agreed as part of our 'core' system and subsequently there are a potential 35,000 developers, though in reality it is more likely to be a number between 20 and 200.</p><p>I myself have looked at Silverlight and it does interest me greatly; more and more applications are browser-based, Silverlight gives more potential to that.</p><p>Adobe made a mistake by trying to market Air as a rival when it is not, Air has a different agenda. Adobe should instead concentrate on beefing up ActionScript and Flash so that it can compete and beat Silverlight, otherwise Adobe have lost this battle before it has begun!</p><p>As for ARAX? What's wrong with AJAX? It works, why change.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alan</strong> &middot; <time datetime="2008-06-16T22:24:00+00:00">June 16, 2008 at 10:24 pm</time></p>
      <p>I could care less about which language I'm using at any given time. It all depends on what I'm trying to do. If Microsoft creates a tool that allows me to be more flexible and have more choices in creating my applications, more power to them.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
