---
title: Wikipedia Needs Rubyists to Flesh Out Mobile Vision
date: '2009-01-12'
author: Peter Cooper
author_slug: admin
post_id: 1444
slug: wikipedia-needs-rubyists-to-flesh-out-mobile-vision-1444
url: "/wikipedia-needs-rubyists-to-flesh-out-mobile-vision-1444.html"
categories:
- cool
- miscellaneous
- news
---

{{< rawhtml >}}
<p><img src="/assets/2009/01/hcatlin.png" width="105" height="130" alt="hcatlin.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"></p>
<p>You might know <a href="http://hamptoncatlin.com/">Hampton Catlin</a> as the Rubyist who invented the <a href="http://haml.hamptoncatlin.com/">Haml</a> markup system (as used in many Ruby web apps), <a href="http://haml.hamptoncatlin.com/docs/rdoc/classes/Sass.html">Sass</a> or <a href="http://mr.hamptoncatlin.com/">make_resourceful</a>. What you might not know, however, is that Hampton went on to develop a successful Wikipedia iPhone app (iPedia née iWik - listen to <a href="http://www.mobileorchard.com/podcast-interview-with-hampton-catlin/">this podcast about its development</a>) and was then <strong>hired by Wikipedia</strong> to lead the development of the <a href="http://en.m.wikipedia.org/">mobile Wikipedia site</a> (powered by Ruby!)</p>
<p>Hampton has been taking Ruby into Wikipedia in a big way and he needs the help of other Rubyists to keep the momentum going. I caught up with Hampton to find out what he's doing at Wikipedia, what Wikipedia needs, and how Rubyists can get involved:</p>
<p><strong><em>Ruby Inside:</em> What are you responsible for at Wikipedia?</strong></p>
<blockquote>
<p><em><strong>Hampton Catlin:</strong></em> My title there is "Mobile Development Lead" and basically I'm responsible for making sure that people with mobile devices have access to Wikimedia projects. Initially we are focusing on Wikipedia, but since all of the Wikimedia projects run on basically the same code base, we are going to be covering most of the projects.</p>
<p>My main responsibility is to grow open source communities around the different mobile projects. Wikipedia is the fourth most popular site in the world and most of the programming is done via open source channels. Initially, I'm doing a lot of the foundational programming and will be responsible for maintaining code quality, but into the future, we are really looking for people to help and take charge of different components.</p>
</blockquote>
<p><strong>How is Ruby involved in the work being done at Wikipedia?</strong></p>
<blockquote>
<p>Ruby is being used via Merb (Rails 3?) and a whole series of Ruby libraries that are focused on the back end formatting services. Actually, we just launched them last week, and they are still a little rough, but the foundations are solid. Basically, the Ruby app is responsible for providing custom-formatted article pages to different mobile apps. The service is currently live at <a href="http://en.m.wikipedia.org">http://en.m.wikipedia.org</a></p>
</blockquote>
<p><strong>How would you (and Wikipedia) like Rubyists to get involved?</strong></p>
<blockquote>
<p>Go grab the code at <a href="http://github.com/hcatlin/wikimedia-mobile/tree/master">http://github.com/hcatlin/wikimedia-mobile/tree/master</a> then run <em>rake todo:list</em>. Viola! Pretty soon we are going to have a full bug tracker, but at the moment, its a pretty early stage in the project and bugzilla is a bit overkill.</p>
<p>I think this is a huge opportunity for people. How often do you get to do work that is seen by <em>so many people</em> and potentially <em>so many more?</em> It's a very simple project to dive into. I've put a LOT of work into making sure that it is absolutely as simple and logical as possible. I've also put a lot of work into documentation to ensure that people don't get confused when diving in. And if you are just learning, its actually a good project to look at.</p>
<p>Beyond general help with the project, I'm also looking for people to help work on adding new mobile formats. Initially we are focusing on "XHTML" and "WebKit" as the two major supported platforms. That is the same thing as "Anything Modern" and "iPhone/Android". However, if you have a Blackberry and you want to see stuff on Wikipedia that is totally perfect for your phone, then its pretty easy to do! Just add a device to our list, figure out its user agent, and then go create the views! Its stupid simple. Also, you can brag at dinner parties "Oh, you have a Blackberry... look at what I did this weekend!" ;)</p>
<p>The final thing we need help with is press. We need to get the word out to regular users! If you know people that run a mobile conference or work in the press, please try and help us out. One of the major failures of the first-generation of Wikipedia Mobile was that no one knew about it. Its part of my job to make sure they know about this.</p>
</blockquote>
<p><strong>What new technologies or services do you anticipate being created for or by Wikipedia in the next year? <em>(that are relevant to Rubyists)</em></strong></p>
<blockquote>
<p>Beyond the mobile services, not too much! We just need to keep growing them with press (tell your friends!), bug reporting, and new formats. Oh, and if you want to learn iPhone development, grab our edge branch of the iPhone app at <a href="http://github.com/hcatlin/wikipedia-iphone/tree/master">http://github.com/hcatlin/wikipedia-iphone/tree/master</a></p>
<p>At the time of writing this, its a little rough but its what I'm doing this week! We also need people who know Java development to help with a native Android app. And, for Ruby stuff... I'm looking to have an entire Mediawiki Ruby library done. But, it's not the kind of thing I've very good at, so at the moment its taken a back seat. If anyone wants to create one, shoot me an email (at <em>hcatlin -at- wikimedia.org</em>). We can make it "official".</p>
</blockquote>
<p><strong>Update: You can also discuss this on IRC on irc.freenode.net on channel #wikimedia-mobile</strong></p>
<p class="s" style="font-family:verdana;font-style:italic;padding:8px;font-size: 12px"><strong>Support from: <a href="http://www.brightbox.co.uk/">Brightbox</a> - Europe's leading provider of <a href="http://www.brightbox.co.uk/rails-hosting-pricing">Ruby on Rails hosting</a>.</strong> Now with Phusion Passenger support, each Brightbox server comes with access to a managed MySQL cluster and redundant SAN storage. Brightbox also provides managed services for large scale applications and dedicated clusters. — <strong>Special Offer: 50% off all new Brightboxes!</strong> For a limited period, get a <a href="http://www.brightbox.co.uk/rails-hosting-pricing">Brightbox from £19.50 a month...</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Apostlion</strong> &middot; <time datetime="2009-01-13T16:43:00+00:00">January 13, 2009 at 4:43 pm</time></p>
      <p>First thing first: Hampton is, along with _why, one of the few inherently cool Ruby dev.</p><p>But, since getting this cool gig at Wikipedia, I'm seeing to much Catlin in my feeds — knowing the Wikimedia Foundation well, I'm sure there's much PR work going on here.</p><p>Wikipedia's making a mobile app? Open source one? O RLY? Should I be creaming my pants because of this? With all the awesomeness of the Wikipedia content and people who wrote it (and yes, back in the day when it was still underground, I have been contributing quite heavily to it), it is backward technically. Much more backward than a foundation that routinely fills multi-million dollar fundraising drives should be.</p><p>I'm severely underwhelmed by the offering all the hype is for and just slightly disappointed Hampton got himself into it. Well, proceed, dudes.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hampton</strong> &middot; <time datetime="2009-01-13T18:38:00+00:00">January 13, 2009 at 6:38 pm</time></p>
      <p>@Apostlion: I have appeared in two blogs and that was by my own PR efforts to get help on the project.</p><p>Much thanks to Peter for this, because now we have help.</p><p>I'm not really sure what your critique is?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brandon</strong> &middot; <time datetime="2009-01-13T20:00:00+00:00">January 13, 2009 at 8:00 pm</time></p>
      <p>@Hampton:  I'm guessing his beef is that he doesn't think this is newsworthy, perhaps because it's not about new Ruby techniques/'technology' that he can use in projects.  </p><p>@Apostlion: did I paraphrase you fairly?  I'm not trying to start (or feed) a fight, just trying to clarify.</p><p>I beg to differ with that opinion, however, because (if I could squeeze in the time!) I'd love to get involved.  But that's just me.  I have no idea how the rest of the rubisphere sees this.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-01-13T20:40:00+00:00">January 13, 2009 at 8:40 pm</time></p>
      <p>My guess is that the beef is about Wikipedia being reasonably non-progressive technology wise. Hampton's project is an exception, but generally they do seem a little "backward technically" (as Apostlion says) especially given the money they have coming in.</p><p>That said, if newer, more progressive systems can be built that pull data from the cruftier old parts, that sounds good to me, and that appears to be what Hampton is involved in doing.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Apostlion</strong> &middot; <time datetime="2009-01-14T17:22:00+00:00">January 14, 2009 at 5:22 pm</time></p>
      <p>I think I gotta rephrase me some.</p><p>@Brandon—no, it's not about this. I'm having quite a tight attention span, so I can freely ingest any kind of information off my feeds/Reddits, so I do not have anything against this material and -the other one- (Hampton sorry, but I do not really remember where the other one was).</p><p>@Peter, yes, you are right as always. Thank you Hampton for replying, and since it's really your own partisan effort I'm completely ok with that, but at first that seemed to me like a total win of hype over substance — concerning that everything cool technically about Wikipedia in last years has been done by volunteers, the first really crisp project actually -sponsored- by Wikipedia seems to have a fair amount of hype.</p><p>Seemed to be quite a superfluous Wikimedia guys PR job. Turns out it's not, I bring my apologies for crying wolf.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-01-14T19:22:00+00:00">January 14, 2009 at 7:22 pm</time></p>
      <p>I do not get on too well with PR pitches, so you don't have to worry too much about that :) But if this were a PR pitch, it'd have been the slowest one ever, Hampton took a month to respond to my questions, lol ;-)</p><p>There is always a risk, of course, of appearing corporate or appearing PR-esque and this is a reminder of that. I certainly don't like to look at that way and want to keep things as authentic as possible, so appreciate your criticisms nonetheless as they help keep things in check :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Adam</strong> &middot; <time datetime="2009-01-16T01:24:00+00:00">January 16, 2009 at 1:24 am</time></p>
      <p>Hampton (and Peter),</p><p>Hmmm... why not write the true native mobile version of Wikipedia (for iPhone, BlackBerry, Windows Mobile, Symbian, Android) with Rhodes (<a href="http://github.com/rhomobile/rhodes/tree/master" rel="nofollow">http://github.com/rhomobile/rhodes/tree/master</a>)?   It's open source and would seem to be a great way to leverage all your Ruby background. We'd even consider adding HAML support for a project of this stature.    </p><p>- Adam</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ben ciceron</strong> &middot; <time datetime="2009-01-16T01:41:00+00:00">January 16, 2009 at 1:41 am</time></p>
      <p>s/viola/voila</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Apostlion</strong> &middot; <time datetime="2009-01-17T10:50:00+00:00">January 17, 2009 at 10:50 am</time></p>
      <p>@Adam - such a project without pervasive testing? Sorry, what (aka “lolwut”)?</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
