---
title: 'Heroku Gets Add-Ons: Serious Ruby Webapp Hosting Made Easy'
date: '2009-10-28'
author: Peter Cooper
author_slug: admin
post_id: 2664
slug: heroku-gets-add-ons-serious-ruby-webapp-hosting-made-easy-2664
url: "/heroku-gets-add-ons-serious-ruby-webapp-hosting-made-easy-2664.html"
categories:
- enterprise
- news
---

{{< rawhtml >}}
<p><img src="/assets/2009/10/heroku.png" width="123" height="59" alt="heroku.png" style="float:left; margin-right:12px; margin-bottom:12px;"><a href="http://heroku.com/">Heroku</a> is a Ruby webapp hosting service that <a href="heroku-an-online-rails-development-and-app-hosting-environment-647.html">we first mentioned</a> about two years ago. It started off as an online IDE of sorts, but is now a complete cloud platform for running Ruby webapps. You can develop locally and then, with a single command, deploy your app to their metered service. Well, Heroku got in touch with me last week to talk about <a href="http://addons.heroku.com/">their new "Add-Ons" feature</a> and they've really kicked things up a notch for people wanting to quickly roll out webapps online.</p>
<p>Till now, Heroku has provided basic functionality on a semi-metered basis. You pay a monthly fee for a basic rate of service and then pay an hourly rate for more concurrency. Now, you can also add on a bunch of other features which Heroku are calling "Add-ons." Here are just a few of the more interesting ones:</p>
<ul>
<li>
<a href="http://aws.amazon.com/rds/"><b>Amazon RDS</b></a> <b>(Relational Database Service)</b> - This add-on is free from Heroku's point of view but you'll be paying Amazon.</li>
<li>
<b>Bundles</b> - A "snapshot" type backup system. You get a single bundle for free or can pay $20 for unlimited bundles.</li>
<li>
<b>Cron</b> - Daily and hourly crons can be set up with a couple of clicks.</li>
<li>
<b>Memcached</b> - You can boost your app's performance with in-memory caching provided by Memcached. The key here is that Heroku totally manages the Memcached instance - no server setup needed, etc. Currently this feature is only in private beta though..</li>
<li>
<b>New Relic</b> - Most readers should be familiar with <a href="http://www.newrelic.com/">New Relic</a>'s application performance tools by now and Heroku makes it easy to get them running directly on your Heroku-hosted apps. (As an aside, New Relic rolled out <a href="http://blog.newrelic.com/2009/10/19/announcing-new-relic-rpm-version-2-with-enhanced-ui-support-for-java-hourly-billing-option-and-more/">a significant update</a> last week - version 2 of their flagship RPM system.)</li>
<li>
<b>SSL</b> - Get https:// URLs on your Heroku app with a choice between piggyback SSL (free), SNI SSL ($5 per month) or full-blown custom SSL ($100 per month).</li>
<li>
<b>Websolr</b> - A no-setup-needed Solr instance so you can get quick and easy full text indexing and search functionality in your apps.</li>
</ul>
<p><i>Note: You can learn more about all the different Add-ons at Heroku's dedicated</i> <a href="http://addons.heroku.com/"><i>Add-ons page</i></a><i>.</i></p>
<h3>Impressive but Expensive?</h3>
<p>As impressive as Heroku's one-command-deploy and add-ons features are, though, I can't quite put my finger on Heroku's market - they're kinda pricey. Perhaps it'd be good for professional developers who want to do a test deployment of an app on a live server without getting mired in server configuration?</p>
<p>For full time use, Heroku doesn't strike me as very competitive. For example, for the "Crane" 500MB storage option (billed as <i>"perfect for a small biz app"</i>) with the recommended 4 "Dynos" the fee comes to an estimated $158 per month, and that's without any add-ons. For the entry level "dedicated" option with the recommended 8 dynos, the cost goes to $452.</p>
<p>Despite the cost, though, what Heroku offers is a very simple "no hassles" hosting service that, crucially, can handle significant workloads. You could rig up something similar with VPSes, dedicated boxes elsewhere, or even Amazon EC2, but you're going to be spending time doing server configuration. If playing sysadmin isn't tricky for you (I enjoy it, personally), Heroku might not be for you and you should be looking at companies like <a href="http://www.webbynode.com/">Webbynode</a> or <a href="http://www.linode.com/">Linode.</a> But if you're just a 100% developer who wants to get something up and running and doesn't want to worry about scalability too much, Heroku could be worth the extra expense.</p>
<p><strong>Update: Oren Teich of Heroku got in touch with some notes regarding Heroku's value proposition versus the comparisons I made above. I quote verbatim:</strong></p>
<p>
</p>
<blockquote> I wanted to point out that we have many users running huge sites on the free version, serving up hundreds of thousands of hits per month, and that they pricing is deceptive - for that $150 you get an AMAZINGLY high powered service, capable of serving &gt;10 millions requests per day.
<p>We don't do a great job right now of making it clear just how powerful a single dyno is, or what you get with the platform.  We're working on improving the pricing to be clearer.  In the meantime, getting the right message out on this is really important to us.</p>
<p>Also keep in mind, that the DB pricing is for DB usage only - it doesn't include your code, files on disk, etc.  That said, we know we need to right size the DB pricing, but it's amazing how far 500, or even 50 MB of pure DB usage will take you.</p>
<p>Heroku has many users running huge sites on the free version, serving up hundreds of thousands of hits per month.  The pricing can be deceptive, for that $150 you get an AMAZINGLY high powered service, capable of serving &gt;10 millions requests per day.</p>
</blockquote>
<p>He also noted that there's no charge for bandwidth, although there are some soft limits that haven't been hit by any users yet.</p>
<p><em>Disclaimer: Webbynode and Linode are currently Ruby Inside sponsors. Heroku, however, has no financial connection with Ruby Inside and vice versa.</em></p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><a href="http://devver.net/caliper" rel="nofollow"><img src="/assets/2009/10/caliper-logo.png" width="98" height="42" alt="caliper-logo.png" style="float:right; margin-bottom:8px; margin-left:12px;"></a><em>[ad]</em> Find duplication, code smells, complex code and more in your Ruby code with <a href="http://devver.net/caliper" rel="nofollow">Caliper!</a> The metrics are free and setup takes just one click. <a href="http://devver.net/caliper" rel="nofollow">Get started!</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Daniel Huckstep</strong> &middot; <time datetime="2009-10-28T17:40:00+00:00">October 28, 2009 at 5:40 pm</time></p>
      <p>Personally, I love Heroku. I enjoy doing sysadmin stuff too (run my own server at home, play with EC2, etc), but I'd much rather be coding, and Heroku gets rid of all the sysadmin crap. I find sysadmin stuff is fun if you've never done it before, but after you setup one memcached server, setting up the second is not as much fun. Diminishing returns sort of thing.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-10-28T17:55:00+00:00">October 28, 2009 at 5:55 pm</time></p>
      <p>@Daniel: I've done a lot of sysadmin but it tends to be in burst months apart (other than the minor day to day stuff) - so that's kinda enjoyable. I suspect if you had to do it week in, week out, it'd get kinda dull :-) Since I tend to be on different operating systems or setting up different things each time, though, it's more of a learning experience each time.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matt</strong> &middot; <time datetime="2009-10-28T18:11:00+00:00">October 28, 2009 at 6:11 pm</time></p>
      <p>I too kind of enjoy the sysadmin stuff, but also too hate repeating myself.  Thus when it came time for me to build up a deployment system from scratch, I made sure that as much as possible was automated.  That is, by setting up a memcached server once, it would be automated and I'd never have to do it again :)</p><p>Check out the fruits of my labor at <a href="http://wiki.github.com/wr0ngway/rubber" rel="nofollow">http://wiki.github.com/wr0ngway/rubber</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bill Lapcevic</strong> &middot; <time datetime="2009-10-28T18:28:00+00:00">October 28, 2009 at 6:28 pm</time></p>
      <p>The concept of "expensive" platforms for EC2 is an interesting one in my opinion.  Take the Heroku example you gave:  $158 per month without add-ons.   Compared to an individual small EC2 server (which until recently was $72 per month) it is about twice as expensive.  But taking a closer look, all the major Rails Platform as a Service offerings (EY's Public Cloud offering, Heroku, etc) pass through this cost as part of their price.  The right equation to be considering should be:  Is $86/month for a small business app (Heroku's $158 price point less the cost of an EC2 small instance) worth the time savings (less sys admin, super easy deploys -- I've seen people deploy apps in seconds --), uptime, free tools, service, support, etc that are provided by the Heroku Platform?  I venture to guess that for any application out there that has any kind of revenue flowing through it...the answer is a resounding YES (especially when you consider the additional charges for bigger servers on EC2 and the myriad of other costs associated with disk, bandwidth, etc that you incur when running on an EC2 instance).  </p><p>I worry that our community continues to compare prices of high quality services like Heroku and Engine Yard to the price of a server when a cloud server is probably the least expensive part of successfully running an application in the cloud.  Shouldn't we also be looking at people costs, time costs, development costs, the cost of downtime, the cost of "figure it out yourself type support"?  When you add all that up, services like Heroku and Engine Yard are a huge bargain.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-10-28T19:44:00+00:00">October 28, 2009 at 7:44 pm</time></p>
      <p>I know it's not quite on topic, but if you want to run your own gear/VPS/etc and you want to automate a lot of the deployment, check out Chef - we <a href="chef-tasty-server-configuraiton-2162.html" rel="nofollow">ran an article on it recently.</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-10-28T19:46:00+00:00">October 28, 2009 at 7:46 pm</time></p>
      <p>@Bill: You're definitely right in the cases where there isn't someone around who'd be doing the sysadmin "anyway." Like.. if a group of developers roll out their own app.. sys admin isn't a big deal. But if it's a small business that gets an app developed and doesn't want to be paying big retainers to keep the app maintained, services like Heroku and Engine Yard are certainly good value (proven by how successful they are).</p><p>I have more words on this from Heroku themselves and will be adding them to the post shortly.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>JohnB</strong> &middot; <time datetime="2009-10-28T20:58:00+00:00">October 28, 2009 at 8:58 pm</time></p>
      <p>you simply can't compare a single Amazon instance to the Heroku platform - you'd need a good handful of instances to replicate the functionality of Heroku, clustering, caching layer, load balancing, clustered db and then a heap of time to configure and administer it!!!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Damien</strong> &middot; <time datetime="2009-10-28T23:07:00+00:00">October 28, 2009 at 11:07 pm</time></p>
      <p>I'm using the free version of Heroku combined with Amazon S3 for assets storage doing a "small" web service that may grow... Heroku is simply perfect for that. And I'm sure I won't need to pay for additional dynos for a very long time!</p><p>Great article, very interesting. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joe Van Dyk</strong> &middot; <time datetime="2009-10-28T23:28:00+00:00">October 28, 2009 at 11:28 pm</time></p>
      <p>Keep in mind that heroku uses varnish for http caching.  If your pages can be cached, and you don't have many slow actions, you can do a huge amount of traffic off 1 or 2 dynomoes or whatever they call them.</p><p>I'm not sure if heroku's varnish setup supports ESI, but if they did, that would be huge.  You could break up a page into cacheable and non-cacheable parts, and varnish would smartly assemble the page.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>nateleavitt</strong> &middot; <time datetime="2009-10-29T05:14:00+00:00">October 29, 2009 at 5:14 am</time></p>
      <p>As a small business owner and developer myself.. I've often wondered about the best way to do things.  We have a small application that runs on a linode vps.  I've done all the sysadmin up to this point (memcached, db, etc..).  Nothing fancy.. but it's gotten the job done up to this point, and is a much cheaper way to start.  It's also been a great learning tool. </p><p>However, as our application and client base continues to grow, I often have thoughts as to moving it to some service like this.. which I'm assuming is more of a managed (or maybe capable is appropriate) type of service that will help me focus more on the application instead of worrying about how to manage our systems efficiently.</p><p>Has anyone had experience with this service?.. and what it's capabilities and limitations are?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonathan Markwell</strong> &middot; <time datetime="2009-10-29T08:43:00+00:00">October 29, 2009 at 8:43 am</time></p>
      <p>Heroku is the only business critical service I use that makes me smile almost everyday. I wish my telephone company, ISP and bank could provide such an excellent product with the same levels of customer service.</p><p>This week I finished migrating the last of my clients' applications over to Heroku from SliceHost. This has dropped the hosting fees for most of them down to zero while at the same time really impressing my clients with significant speed increases. I might have been able to get the same performance increase out of SliceHost if I was more skilled at sysadmin but I'm not a sysadmin.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>JohnB</strong> &middot; <time datetime="2009-10-29T08:55:00+00:00">October 29, 2009 at 8:55 am</time></p>
      <p>@nateleavitt once you get over the read only file system so apps have to store uploads/assets externally (we use s3 via Paperclip) then it's a great platform. </p><p>Initially we thought this was going to be a big hurdle but in the end it's been pretty painless. We've looked at others namely EngineYard, Brightbox but all have a high cost of entry for a similar feature set and have decided to use Heroku.</p><p>How much simpler can;</p><p>git push heroku master</p><p>make a deployment? Leaves us to worry about the application and code and not the servers the apps are running on! :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Emanuele</strong> &middot; <time datetime="2009-10-29T08:58:00+00:00">October 29, 2009 at 8:58 am</time></p>
      <p>Heroku? It's just AMAZING! I decided to give them a try after being 'sad' with the performances of my DreamHost private server... At the beginning I was scared by Heroku pricing, but all my applications are running incredibly fast for free and the deployment has something magic. I'll be happy to pay the day my business needs to scale!!! :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sergio Kozlov</strong> &middot; <time datetime="2009-10-29T09:14:00+00:00">October 29, 2009 at 9:14 am</time></p>
      <p>For me Heroku is just the simplest way to push something to the web. I know almost nothing about sysadmin work [that's probably bad] but i can deploy my Sinatra application in a matter of minutes - and this will be free of charge.</p><p>I would advise Heroku team to put more information about "power of Dyno" on their site - it's not so intuitive that it's working as fast as mentioned above by Oren.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-10-29T09:56:00+00:00">October 29, 2009 at 9:56 am</time></p>
      <p>Not to tread on the toes of one of my sponsors, but it strikes me that Heroku would be very well suited for those "build a complete app in 24 hours/2 days/whatever" type competitions in our field. No server setup, just a quick deploy, and everyone would be in the same boat leaving more time for the coding..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Eliot Sykes</strong> &middot; <time datetime="2009-10-29T14:36:00+00:00">October 29, 2009 at 2:36 pm</time></p>
      <p>I'd not considered Heroku seriously before, but after all the comments I was keen to take a look.</p><p>Things were looking good for the Free dyno offering with maybe the $15p/m database level until I looked at the SSL fees.  Both the projects I was thinking of hosting with Heroku require the $100 *per month!* SSL package which is just waaaay out there compared to my current hosts.</p><p>So if any Heroku guys are reading this, sounds like a really great service, would love to consider it further, but for apps that require the *full* on SSL cert from the *start* of their lives you may be hard pushed to get developers for that particular case $100 per month for SSL is a lot to stump up for many of us.</p><p>(I looked at the other SSL cert offers, they're not comprehensive enough for what I need unfortunately).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>nateleavitt</strong> &middot; <time datetime="2009-10-31T03:33:00+00:00">October 31, 2009 at 3:33 am</time></p>
      <p>So with Heroku.. I'm also assuming that you can't run things like RobustThread?  You have to use cron jobs instead?  I'm also curious as to how the email system performs. </p><p>Thanks for the responses.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hubert Łępicki</strong> &middot; <time datetime="2009-10-31T09:09:00+00:00">October 31, 2009 at 9:09 am</time></p>
      <p>Heroku looks like really nice service -- but I will probably never try it out myself. I find it cheaper and more flexible to get a dedicated server (I use hetzner.de) and set up my own "cloud" of Xen machines on top of this if needed. I enjoy sysadmins stuff and I would not be very happy to loose all the flexibility: you choose and install your own software. If I need MongoDB I just install it. If I need custom firewall - I do it. If I need a background "daemon" process - not a problem. It's kinda fun to run your own servers IMHO :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Eliot Sykes</strong> &middot; <time datetime="2009-11-02T12:11:00+00:00">November 2, 2009 at 12:11 pm</time></p>
      <p>Heroku have added an explanation of the custom SSL pricing, they are working on a solution:</p><p><a href="http://docs.heroku.com/ssl#faq" rel="nofollow">http://docs.heroku.com/ssl#faq</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
