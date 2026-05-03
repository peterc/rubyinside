---
title: Interview with TechCrunch Ruby Developer, Mark McGranaghan
date: '2008-07-26'
author: Peter Cooper
author_slug: admin
post_id: 966
slug: techcrunch-mark-mcgranaghan-interview-966
url: "/techcrunch-mark-mcgranaghan-interview-966.html"
categories:
- interviews
---

{{< rawhtml >}}
<p><img src="/assets/2008/07/17125v1.jpg" width="142" height="194" alt="17125v1.jpg" style="border:1px #000000 solid;"></p>
<p>Until last week, <strong><a href="http://www.markmcgranaghan.com/posts">Mark McGranaghan</a></strong> was a full-time Ruby developer for <a href="http://www.techcrunch.com/">TechCrunch</a>, the popular Web 2.0 news site. He worked extensively on <a href="http://www.crunchbase.com/">CrunchBase</a>, a wiki-style database of companies, people, and investors in the world of Web 2.0. His last assignment was the free-to-use <a href="http://www.crunchbase.com/help/api">CrunchBase API</a> which went live last week.</p>
<p>I caught up with Mark to ask him about his time working at one of the world's most famous blogs with one of the world's most famous bloggers! You might be surprised to learn that head <em>Cruncher</em> Michael Arrington - who is <a href="http://www.techcrunch.com/2008/04/23/amateur-hour-over-at-twitter/">never slow</a> to point out Twitter's downtime - is pretty cool with Rails and what works well for his developers works for him.</p>
<p><strong><em>Rails Inside:</em> Hi Mark. Thanks for agreeing to this interview. First, how did you get started with Ruby and Rails?</strong></p>
<blockquote>
<p><em>Mark McGranaghan:</em> I started with Ruby at the end of 2006 when I was a student at Bowdoin College. I stumbled on it randomly while I was exploring new programming languages and ended up using it a lot for writing programs for my discrete math class. At the time I also wanted to do some web programming but didn't like the web stacks offered by the other anguages that I knew - Java, Scheme, and Python - so I started looking into Rails. I got the AWDwR book, subscribed to a bunch of Rails blogs, and then just hacked my way from there.</p>
</blockquote>
<p><strong>How did you land the job with TechCrunch?</strong></p>
<blockquote>
<p>Henry [a co-developer] and I met Michael through a TechCrunch employee that we had known previously. When TechCrunch approached us about building out a structured wiki for the startup community, we were thrilled. I think that just communicating this excitement and showing that we understood why this was an important problem to solve went a long way in convincing Michael that we were right for the job. We also spoke to some seasoned developers that Michael knew; that conversation going well also gave Michael confidence in us. Michael was also very hands-off about our choice of Rails to implement the site - if it worked for us, it worked for him.</p>
</blockquote>
<p><strong>What was it like working at TechCrunch?</strong></p>
<blockquote>
<p>We had a lot of autonomy working on CrunchBase at TechCrunch. As the only full time developers, we had both the freedom of and responsibility to make all of the technical decisions. That put a lot of pressure on us, but it also allowed us to move quickly. We made a lot of good decisions, and when we didn't we had to quickly learn form our mistakes and recover.</p>
</blockquote>
<p><strong>CrunchBase existed for quite some time before you became involved with it, so what base did you have to work from?</strong></p>
<blockquote>
<p>CrunchBase previously existed as a PHP application. The site was very simple. There were only pages for companies, with no links to other entities, and search was implemented with MySQL LIKE queries. We scrapped the PHP code, but had to migrate the existing database. This was done with a 1000+LOC Ruby script that pulled everything out the old database, did a series of transformations in memory, and re-saved to a new database. It took us a long time to understand and normalize the data representations used by the old implementation, but it ended up OK. Being able to use ActiveRecord on both the new and the old tables helped a lot.</p>
</blockquote>
<p><strong>How is CrunchBase deployed? Does it scale well?</strong></p>
<blockquote>
<p>The CrunchBase Rails app is served by a single dedicated machine provided by MediaTemple. We have to contend with several scalability challenges. The first is the general traffic to CrunchBase.com; the site gets a lot of visitors because of its high Google rank and frequent TechCrunch links and the pages are expensive to generate. Fortunately, the site is very cacheable: most requests are served out of a view cache in a few milliseconds. We generally can't use page or action caching because different types of users see different version of each page - instead we use a custom caching mechanism that takes into account the authentication level of the user. Because of the interconnectedness of the CrunchBase data model, any individual piece of data may be cached in multiple webpages, widget objects, and API responses. When such a piece of data changes, all of the corresponding caches have to be expired.</p>
</blockquote>
<blockquote>
<p>Another major scalability concern is JavaScript and image requests from TechCrunch.com for the CrunchBase widget that we frequently embed on that site. We serve millions of these objects a day. Fortunately, we are able to serve almost all of them statically with <a href="http://www.lighttpd.net/">lighttpd</a>, which ends up being very cheap.</p>
</blockquote>
<p><strong>What was the motivation for the new CrunchBase API you just released?</strong></p>
<blockquote>
<p>We created the CrunchBase API because we believe it is in everyone's interest for this data to be free. It lets developers get convenient access to data [on Web 2.0 companies] and build interesting apps. It lets users find the data in new ways through these apps, and it gives us distribution and establishes us as the data hub. Also in the spirit of freedom, we've made the API as <a href="http://groups.google.com/group/crunchbase-api/web/api-v1-documentation">brain-dead-simple</a> to use as possible; just visit an API url (<a href="http://api.crunchbase.com/v/1/person/brad-fitzpatrick.js">example</a>) and get a pretty-printed JSON output <em>[Ed: This JSON pretty-printer</em> <a href="http://github.com/techcrunch/json_printer/tree/master"><em>has been open sourced</em></a> <em>by TechCrunch]</em>. We have no registration, no API keys, no requests limits and no throttling.</p>
</blockquote>
<p><strong>Is TechCrunch a good place to work? Are other Rails apps in the works and are Ruby / Rails developers being hired?</strong></p>
<blockquote>
<p>TechCrunch is a very interesting place to work as a developer since its at the center of the startup/tech industry. A lot of news, ideas, and even people from the tech industry flow through our office, and you can't help but pick up a lot of energy from that. We now have an opportunity to leverage our position as a hub as well as the TechCrunch brand to create some really cool apps. One new Rails app that we just launched is <a href="http://pitches.techcrunch.com/">TechCrunch Pitches</a>, which is a site for users to submit and vote on 1-minute elevator pitch videos from startup founders. In order to support our existing properties and develop new ones <a href="http://www.crunchboard.com/opening/detailjob.php?jid=4854">we are currently hiring Ruby developers</a>.</p>
</blockquote>
<p><strong>Now that you've left TechCrunch to return to school, will you continue to contribute to the Ruby community?</strong></p>
<blockquote>
<p>I've always liked doing independent work and research while I'm at school. This year I'm going to focus on open source: learning more from the existing projects and starting a few of my own. In particular I'd like to spend some time away from the Rails world - it's getting a little repetitive for me - and try some new things with Ruby and other languages. I've made a few steps in that direction by writing some components for a new Ruby web framework (<a href="http://github.com/mmcgrana">github.com/mmcgrana</a>). I'd like to bootstrap the framework by developing a few proof-of-concept open source apps against it. Other components of the Ruby/Rails stack that I'm growing frustrated with are RDoc, Rake, and Capistrano; I'll be looking closely at <a href="http://github.com/lsegal/yard/tree/master">YARD</a>, Thor, and <a href="http://rubyhitsquad.com/Vlad_the_Deployer.html">Vlad</a> over the next few months.</p>
</blockquote>
<p>Thanks, Mark! Best of luck with your forthcoming ventures. Mark can be followed on Twitter, if you wish to do so. His username is <a href="http://twitter.com/mmcgrana">mmcgrana</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Ujjwal Trivedi</strong> &middot; <time datetime="2008-07-29T06:59:00+00:00">July 29, 2008 at 6:59 am</time></p>
      <p>Thanks Peter! Its always nice to know what ruby developers around the world are thinking. And in form of an interview its been awesome. Hope to see more of such stuff.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
