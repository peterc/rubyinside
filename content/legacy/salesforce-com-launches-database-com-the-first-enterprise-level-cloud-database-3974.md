---
title: 'Salesforce.com Launches Database.com: The First Enterprise-Level Cloud Database?'
date: '2010-12-07'
author: Peter Cooper
author_slug: admin
post_id: 3974
slug: salesforce-com-launches-database-com-the-first-enterprise-level-cloud-database-3974
url: "/salesforce-com-launches-database-com-the-first-enterprise-level-cloud-database-3974.html"
categories:
- news
---

{{< rawhtml >}}
<p><img src="/assets/2010/12/ib49.gif" alt="databasecom.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;">Many infrastructure companies have recently adopted a drip-feed pricing model - consider renting servers from Amazon EC2 or monitoring our servers with New Relic RPM. The cloud database industry is still in its infant stages but today Salesforce.com has kicked things up a notch in offering all of its enterprise-scale database technology in a new cloud database service, <a href="http://database.com/"><b>Database.com</b></a>.</p>
<p>Last week, engineers at Salesforce gave me a briefing and ran through the system. I was impressed. With its public API and networked nature, Database.com is truly Ruby friendly and the <a href="https://github.com/luigi/activerecord-activesalesforce-adapter/">ActiveSalesForce adapter for ActiveRecord</a> can get things running quickly if you're an ActiveRecord user. It's especially an ideal fit with platforms like Heroku if you want a powerful database behind your app.</p>
<p><img src="/assets/2010/12/dbdesign.png" width="480" height="311" alt="dbdesign.png" style="border:1px #000000 solid;"></p>
<p>Database.com features a powerful visual online schema designer (though you can stick to doing DB design through migrations, etc, if you like) and boasts automatic scaling and "to the transaction" reliability. It's essentially the same fault tolerant, ACID-compliant, high performance relational database system that powers <i>all</i> of Salesforce.com. Want more buzzwords? Automatic elasticity in scaling, OAuth or SAML authentication, row level security, enterprise-level full text search..</p>
<p>The basic pricing plan is <i>free</i> for up to 3 users with 100,000 records and 50,000 transactions per month, with a charge of $10/month for each set of 100,000 records beyond the free 100k, and another $10/month for each set of 150,000 transactions beyond the free 50k.</p>
<p><em><strong>Update:</strong> <a href="http://www.softwareadvice.com/crm/">Software Advice</a> has <a href="http://www.softwareadvice.com/articles/crm/database-com-launch-interview-with-eric-stahl-1120710/">done a video interview with Eric Stahl of SalesForce.com</a> on the launch and Database.com in general.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Denis Hennessy</strong> &middot; <time datetime="2010-12-07T15:36:00+00:00">December 7, 2010 at 3:36 pm</time></p>
      <p>I don't see how this is in any way better than using a regular SQL (or non-SQL) database. Pretty much every hosting provider from GoDaddy to Heroku to Amazon already offer this (and much, much cheaper than salesforce. The schema designer is sortof cute but other than that I'm underwhelmed.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-07T15:51:00+00:00">December 7, 2010 at 3:51 pm</time></p>
      <p>Since Salesforce aren't paying me (shame!) I didn't want to "sell" it too much, but from their POV, the major selling point of their system is the scalability and reliability. That's what the "enterprise" tag is based upon, it seems. They told me that the reliability is basically "up to the transaction" whereas AWS RDS can only go to 5 minutes. Scaling is also seamless with Salesforce - I believe you have to change instance type with Amazon as you scale up.</p><p>If you can go from a handful of records to billions with Salesforce without doing any serious architecture work, that's a big win.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Steven Soroka</strong> &middot; <time datetime="2010-12-07T17:01:00+00:00">December 7, 2010 at 5:01 pm</time></p>
      <p>The big downside here is that Salesforce's tech support support sucks big time.  Good luck talking to anyone who knows what they're talking about if you run in to problems.  Big fail, imo</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-07T17:39:00+00:00">December 7, 2010 at 5:39 pm</time></p>
      <p>Ah, on that front I have no idea ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>cbmeeks</strong> &middot; <time datetime="2010-12-08T16:14:00+00:00">December 8, 2010 at 4:14 pm</time></p>
      <p>How much did they pay for that domain name?  Jeesh.  </p><p>I'm just not sure how great a remote DB would be for a large app.  Could you see Digg or FaceBook using a 3rd party provider like that?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>zebekias</strong> &middot; <time datetime="2010-12-08T17:04:00+00:00">December 8, 2010 at 5:04 pm</time></p>
      <p>@cbmeeks: no!</p><p>I can see how they make money from cloud based POS apps, but cloud database? I don't think so.  Imagine trying to bcp over the network! LOL</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
