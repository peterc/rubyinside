---
title: Pledgie – A new Rails powered donations site
date: '2007-03-03'
author: Peter Cooper
author_slug: admin
post_id: 412
slug: pledgie-a-new-rails-powered-donations-site-412
url: "/pledgie-a-new-rails-powered-donations-site-412.html"
categories:
- cool
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2007/03/Picture%205.jpg" height="245" width="398" border="1" hspace="4" vspace="4" alt="Picture 5"><br>
<a href="http://www.pledgie.com/">Pledgie</a> is a new Rails-powered Web site that allows anyone to raise funds online for meaningful causes. There is no charge for the service. Instead, Pledgie's goal is to create an online version of the personal, one-on-one interactions that traditionally are at the heart of successful grassroots volunteerism. Pledgie has recently been successful in helping Rick Olson and Justin Palmer raise some money to support their <a href="http://mephistoblog.com/">Mephisto</a> blogging system.</p>
<p>Pledgie was created by <a href="http://www.locusfoc.us">Mark Daggett</a> and <a href="http://scie.nti.st/">Garry Dolley</a>. Mark Daggett is a Social Software artist and researcher. Garry Dolley is a professional programmer and open source software advocate. Both are very active in the Ruby community and I took the opportunity to ask them some questions about their Rails development experiences.</p>
<p><strong>Who's behind Pledgie and how did you meet?</strong></p>
<blockquote>
<p><em>Mark:</em> Garry and I met each other while working for <a href="http://www.revver.com/">Revver.com</a>. Revver has a very progressive and open-minded team who care very much about the content creators that post to revver.com. It was nice coming to work and knowing that you were doing something different than 99% of the rest of the social software websites, which use user-submitted work mainly and intellectual property and data mining fodder. Revver also contracted with a few A-listers of the Rails world. As a result I got to work with, and learn from people including Court3nay of <a href="http://blog.caboo.se/">Caboo.se</a> fame.</p>
<p>Through our day to day interactions Garry and I realized that we share many things in common including a mutual passion for open source software and Rails development. When I decided to leave Revver to pursue a PhD, Garry and I agreed to keep each other up-to-date on opportunities to collaborate in the future.</p>
</blockquote>
<p><strong>Why did you decide to develop Pledgie when there are already several incumbents in the market? What does Pledgie bring to the table that, perhaps, others don't?</strong></p>
<blockquote>
<p>There are several other projects, which have online fund-raising as their goal. When researching the need for a project like Pledgie we found most of these projects underemphasized an essential component in fund raising, which is the level to which they empower their community. Many of these sites required you to be a non-profit corporation or be pre-approved before you can start collecting donations.</p>
<p>Pledgie seeks to be as open and transparent as possible, which means we do no prescreening of campaigns or vetting of content (except for things like hate speech). Pledgie instead relies on the community to weed out fraud and scams, much in the same way other successful communities including craigslist.org and wikipedia.org do. Pledgie also tries to encourage discourse between the campaign owner and potential donors. For example, anyone has the ability to comment on a campaign regardless if they have donated or not, and the campaign owner cannot remove those comments, though they can respond to them.</p>
</blockquote>
<p><strong>Have there been any success stories on the funding front yet?</strong></p>
<blockquote>
<p>As luck would have it our first "real" campaign came from a fund-raising drive I created for Rick Olson's and Justin Palmer's <a href="http://mephistoblog.com/">Mephisto</a> project. Mephisto is a free and open-source blogging system that is used by probably thousands of people online. Yet, I felt that Justin and Rick were only being rewarded by "Digg posts", which as you know can't buy beer (yet). Even though they had a button to donate using PayPal, I felt Mephisto would be a great test run for Pledgie.</p>
<p>I created <a href="http://www.pledgie.com/campaign/show/7">the campaign</a> with a really modest goal of $250.00, and then prodded the people on #mephisto to make a small donation to show Rick and Justin that they valued their work. I went to bed, and when I woke up it was like Christmas, all of the traffic from Rick's blog was hammering Pledgie.com. In less than six hours (from the time I went to be from the time I woke up) the Mephisto campaign met their goal. Over the next couple of days they kept receiving donations and now they are close to doubling the initial goal.</p>
<p>In terms of actual development dollars $250.00 will not go very far, however what did impress me was how quickly people were willing to rally around Rick and Justin. I think it shows that they have a tremendous amount of goodwill within the Ruby on Rails community. Simultaneously, it shows that Pledgie is an effective platform to express that goodwill.</p>
</blockquote>
<p><strong>How is Pledgie deployed?</strong></p>
<blockquote><p><em>Garry:</em> Pledgie is deployed by a simple shell script which stops lighttpd, updates the codebase to the latest revision, and starts lighttpd again.  Nothing fancy, very plain.  We don't use Capistrano because we felt it was overkill for the job.  Capistrano is good when your setup is a little more involved than ours, especially with multiple servers that need parallel updates. When Mark and I started, we agreed on a "no yak shave" policy, so for deployment I felt it unnecessary to spend the time setting up Capistrano when a 2 minute shell script would do just as well for what we had.</p></blockquote>
<p><strong>What's your background with Ruby and Rails?</strong></p>
<blockquote>
<p><em>Garry:</em> I discovered Ruby on Rails in fall 2005 when he was researching more efficient methods of developing web applications. After reading Agile Web Development with Rails, his research was done.  I chose Rails to make my next application, which was a web-based eBay auction manager.  In order to support this application, I wrote <a href="http://rubyforge.org/projects/ebay4r">eBay4R</a>, a Ruby library for eBay's Web Services SOAP API, because Ruby had no support for eBay's API at the time.  Later mark and I collaborated on RAM (Ruby Asset Manager - <a href="ram-open-source-ruby-asset-manager-308.html">previously covered</a> on <em>Ruby Inside</em>), another great Rails power-application.  At Revver, I maintain their RoR-based video portal and also the <a href="http://rubyforge.org/projects/activerevver/">ActiveRevver</a> library.</p>
<p><em>Mark:</em> As Garry mentioned, Revver and RAM were my first large scale Rails projects. Now, Pledgie takes up the majority of my free-time, but I do manage to extract some of Pledgie's functionality into plug-ins, which I post on my site <a href="http://www.locusfoc.us">LocusFocus</a>. As part of my academic research I am working on a voice over IP application, which runs using rails and the Voxio service.</p>
</blockquote>
<p><strong>What do you see in the future for you, your Rails development, and Pledgie?</strong></p>
<blockquote>
<p><em>Garry:</em> In the future, I see myself doing pretty much the same thing, which is coding, learning, and working on cars.  As new fathers, we both hope to have more time to spend with our families. I hope to continue learning more and more about Rails (RESTful routes is next on my list) and contributing back to the community. For Pledgie our goal is to continue to improve the functionality, and user experience. Pledgie, has a very slim code-base, which we have worked hard to keep clean and lean; as we add features we'll be equally focused on refactoring where needed to prevent the code from getting bloated.</p>
<p>Mark: I love Ruby because of the semantic beauty of the language. I love Rails because of the conceptual rigger that is used to organize the framework. For those reasons, I cannot see myself using anything other than RoR in the future. While Pledgie is surging right now in its growth, and there is lots of positive buzz around the site the real test of the idea will be what people do with the money they make. My focus in the near term on Pledgie will be to give the donors and campaign creators ways to document how their money was used. It is exciting to be interviewed for Ruby Inside because your readers are all first-movers in the RoR space. I know I speak for Garry when I say we'd be very thankful for any feedback from your readers on their experiences using <a href="http://www.pledgie.com/">Pledgie.com</a>.</p>
</blockquote>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>PledgieAreNoobs</strong> &middot; <time datetime="2007-03-03T09:54:00+00:00">March 3, 2007 at 9:54 am</time></p>
      <p>What a joke.  They have less than 90 "users" and less than 60 events.  The "tag cloud" is mostly empty and made up too.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-03-03T15:00:00+00:00">March 3, 2007 at 3:00 pm</time></p>
      <p>Would you like the word "new" redrawn in big shiny Web 2.0 letters? :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
