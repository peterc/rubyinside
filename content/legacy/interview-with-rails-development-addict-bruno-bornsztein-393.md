---
title: Interview with Rails development addict, Bruno Bornsztein
date: '2007-02-21'
author: Peter Cooper
author_slug: admin
post_id: 393
slug: interview-with-rails-development-addict-bruno-bornsztein-393
url: "/interview-with-rails-development-addict-bruno-bornsztein-393.html"
categories:
- cool
- elsewhere
- miscellaneous
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2007/02/snapballot.jpg" height="253" width="337" border="1" hspace="4" vspace="4" alt="Snapballot"></p>
<p>This week <a href="http://www.missingmethod.com/">Bruno Bornsztein</a> got in touch with me to mention his new Rails-powered Web application, <a href="http://www.snapballot.com/">Snapballot</a>. It's a quick and easy poll / survey creation service that works using Flash and Rails. I quickly realized how many projects I'd seen coming from Bruno lately (12 at the last count) and decided to quiz him on his addiction to Rails and the development of Web apps.</p>
<p><strong><em>Ruby Inside:</em></strong><strong> You started out in Web application development with </strong><strong><a href="http://www.feedmarker.com/">FeedMarker.com</a></strong><strong>, an online RSS news reader with tagging and bookmarking features. What was involved in its construction and operation?</strong></p>
<blockquote>
<p><em>Bruno Bornsztein</em>: When I started building Feedmarker, I didn't know much about web development (and I had only just heard of Rails). I had built lots of HTML/CSS sites and played around with WordPress and B2Evolution, so it was natural to use PHP. The first version of Feedmarker was a great learning experience, and I looked at lots of open-source PHP projects to figure out things like authentication and RSS parsing. </p>
<p>During the next year I picked up Rails; my first impression was confusion, followed by absolute love. I had been lost in PHP-land, trying to use components like PEAR to make things easier. Rails provided a structure within which I could develop. It told me where to put templates, how to separate model and controller code, and made things like authentication dead-simple. I decided to re-write Feedmarker in Rails, and completed it in about three weeks. </p>
</blockquote>
<p><strong>You've worked on a lot of projects in a short period of time. Where do you typically get your ideas? Are you the type of developer who loves quick release schedules and agile techniques?</strong></p>
<blockquote>
<p>I'm a 'scratch-your-own-itch' developer; my ideas are usually things I want to use but don't exist. Feedmarker came about because I wanted a cross between del.icio.us and bloglines, <a href="http://www.snapballot.com/">SnapBallot.com</a> (my latest side-project), came about because I wanted a simple, quick embeddable flash poll (and couldn't find any good ones out there).</p>
<p>I don't think in terms of release schedules. I just code as fast as I can and deploy. I'm not fastidious about releasing my own apps, I just get them halfway done and out there, and then fix problems as they come up. I'm more careful when it comes to client work, but even then, I like to be as fast agile as possible, and let my tests be my safety net. </p>
</blockquote>
<p><strong>How long did SnapBallot take to develop to its current stage?</strong></p>
<blockquote><p>SnapBallot took less than a week to build. Most of that was spent on the Flash portion, which I built in <a href="http://www.openlaszlo.org/">OpenLaszlo</a> (it was my first time using it so there was a bit of a learning curve).</p></blockquote>
<p><strong>Have you used Rails for all of your Web applications since FeedMarker? If so, do you attribute any of your success and speed to Ruby / Rails?</strong></p>
<blockquote>
<p>I've used Rails for almost every project since Feedmarker. The exceptions are <a href="http://freewordsearch.teacherly.com">freewordsearch.teacherly.com</a> and <a href="http://visforvalentine.com">visforvalentine.com</a> (PHP + javascript). For of those are one page apps that really don't merit the whole framework behind them. They might have been good candidates for using <a href="http://camping.rubyforge.org/">Camping</a>, though ... maybe next time! <em>(Ruby Inside adds: Don't forget </em><em><a href="http://merb.rubyforge.org/">Merb</a></em><em>!)</em></p>
<p>Rails allows me to develop and deploy a lot of ideas because it removes barriers from the path. Getting a simple idea to the point where it's usable in Rails is a matter of hours, so there isn't a lot of cost/risk in trying things out. </p>
</blockquote>
<p><img src="/assets/2007/02/curbly.jpg" height="209" width="341" border="1" hspace="4" vspace="4" alt="Curbly"></p>
<p><strong><a href="http://www.curbly.com/">Curbly</a></strong><strong> looks like your most serious project to date. Give us a quick overview about it and the technology behind the site.</strong></p>
<blockquote>
<p>Curbly is a community for people who love where they live. It's a place where people can share pictures of their homes, get design inspiration, and connect with home-improvement experts.</p>
<p>Curbly was built in Rails by two people (me and Ben Moore) in just under a month, using the new REST conventions and a TDD approach. We use mongrel and Apache2 to serve it, and we backup our database and user-generated content to Amazon's S3.</p>
</blockquote>
<p><strong>What advice would you give to developers wanting to build Web applications as you have? What things have you learned along the way that you wish you'd known in advance?</strong></p>
<blockquote>
<p>Build something! Just go out and build it. Anything, whether it's a new idea or an old idea or a something that's been done a million times. Just get something to the point where you can launch it on a server and show it to people. That's a huge accomplishment, but one that people often don't reach because they spend too much time planning, researching, and talking and not enough time coding. </p>
<p>Things I wish I'd known: TDD is worth it (especially when you're a solo developer). When you're walking a high-wire, you need a safety net, and that's your tests. If you're tests are good, you can be agile, you can deploy often, and you can make changes to your app with confidence. </p>
</blockquote>
<p><strong>What are your impressions of Rails 1.2 and REST? Are you integrating REST techniques into your applications yet?</strong></p>
<blockquote><p>I love them. Everything I've built since Curbly has been on EdgeRails using REST conventions. It guides your development and forces you to think about your controller logic. I look back at old code now and by comparison it just looks so ... ugly. </p></blockquote>
<p><strong>What do you see happening in the near future with your Ruby and Rails developments?</strong></p>
<blockquote><p>Right now, Curbly is still my main focus. But I won't hesitate to build new ideas when they come to me. I'd like to spend a little time in the near future re-writing Feedmarker (it's open-source!), as that code is pretty crusty, and I'd also like to start contributing more of my work to the community via plugins or open-sourcing some of my apps.</p></blockquote>
<p>Thanks to Bruno for a great interview! I don't know where he gets the time for all of these great projects. Surprisingly he also runs a Rails consultancy, <a href="http://www.missingmethod.com/">MissingMethod</a>, so if you need a project developing quickly but with agile practices in mind, it might be a great place to try.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-02-22T06:49:00+00:00">February 22, 2007 at 6:49 am</time></p>
      <p>Noticing an Application Error on FeedMarker.com. This seems to happen a lot after RubyInside features ;-)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
