---
title: 'Mack 0.7.0: A Significant Update to A Powerful Ruby Web App Framework for
  Distributed Apps'
date: '2008-08-26'
author: Peter Cooper
author_slug: admin
post_id: 1107
slug: mack-distributed-ruby-web-application-framework-releases-070-1107
url: "/mack-distributed-ruby-web-application-framework-releases-070-1107.html"
categories:
- interviews
- miscellaneous
- news
---

{{< rawhtml >}}
<p><img src="/assets/2008/08/macklogo.jpg" width="137" height="52" alt="macklogo.png" style="float:left; margin-right:12px; margin-bottom:12px;"> We <a href="mack-a-fast-best-of-the-rest-web-app-framework-856.html">first covered Mack in April</a>, when I billed it as a "<em>fast, best of the rest, Web app framework.</em>" Mack, a Ruby-based Web application framework, developed by a team led by Mark Bates, has continued to grow over the past several months and today <a href="http://www.mackframework.com/2008/08/25/release-070/">announced</a> a significant release, <a href="http://www.mackframework.com/2008/08/25/release-070/">Mack 0.7.0</a>.</p>
<p><a href="http://www.mackframework.com/"><strong>Mack</strong></a> <strong>is a unique Ruby Web app framework due to its heavy focus on reusability across multiple applications.</strong> Mack supports <em>distributed objects</em> - yes, between multiple applications, <em>distributed views and layouts</em>, and even <em>distributed routing</em> (all of your Mack apps can be aware of each other's routing). Mack has <a href="http://groups.google.com/group/mack-framework">a Google group</a> for discussion purposes, and Mark has put together a great screencast demonstrating <a href="http://screencasts.mackframework.com/Mack%20Distributed%20Demo.mov">how to create a simple application with the framework</a>.</p>
<p>I caught up with developer Mark Bates to ask a few questions about the framework:</p>
<p><strong>Why would you recommend someone try Mack over the alternatives (Merb, Rails, Ramaze, Sinatra, etc.)?</strong></p>
<blockquote>
<p><strong><em>Mark Bates:</em></strong> I would recommend that people try a lot of different frameworks before they decide which one to go with - that's what I did. I tried over a dozen frameworks back in January 2008 when we decided to move away from Rails. None of them were right for the problems we had to solve. If you're looking for a framework that is simple, fast, easy to use, and yet powerful, than Mack might be right for you.</p>
<p>Mack has a large focus on giving developers the tools to build SOA, distributed, and portal-like applications. Mack is easily extensible and easy to configure to suite your projects. The core of Mack is small and lightweight. The <em>mack-more</em> series of gems allows people to pull in the extras that absolutely need.</p>
</blockquote>
<p><strong>What are the new features in Mack 0.7.0?</strong></p>
<blockquote>
<p>The two biggest features in 0.7.0 would have to be Distributed Objects and Distributed Views/Layouts, which round out the three big distributed features, along with distributed routes. These features are what really set Mack aside from all the other frameworks out there right now. Using the power of Rinda we're able to have a bunch of Mack applications talking seamlessly together with almost zero configuration.</p>
<p>In addition to the new distributed features, we've added a ton of helpers, including a whole suite of form helpers, Transactional support for tests using Active Record, DataMapper was already supported. Great improvements to the mack-data_factory content generating system, including a ton of new content types. A whole slew of bug fixes, and general overall improvements. A bunch of new generators and enhancements to existing ones.</p>
</blockquote>
<p><strong>What have you learned / discovered in the process of developing Mack?</strong></p>
<blockquote>
<p>One of the biggest things that I've learned since I've started developing Mack is that I truly believe in the KISS philosophy, Keep It Simple Stupid, and that it is the only way to code. One of big frustrations I've had with other frameworks, and one in particular, has been that if you crack open the source code to try and track down a bug it's nearly impossible. There are just thousands of lines of code, and eight levels of redirection before you find the things you're looking for. When I talk to people who want to commit that's the first thing I tell them, keep it simple. I want people to be able to open the source and be able to very quickly follow it through. Keeping things simple also has other side effects, apart from readability. It helps keep things fast, and helps keeps the bugs to a minimum.</p>
</blockquote>
<p><strong>Is deploying Mack applications as easy as Rails or Merb apps?</strong></p>
<blockquote>
<p>Since Mack is a Rack application at heart, it deploys with <a href="http://www.modrails.com/">Phusion Passenger</a> with just a simple config.ru file that Passenger requires. If you're using Thin, there's a Mack adapter built in, so it's very easy to deploy with a Thin cluster. <a href="http://Mackwiki.com">Mackwiki.com</a> (a new Mack-based wiki) is hosted using a cluster of 3 Thin servers behind Nginx. Again, KISS, is evident here. I want Mack apps to be easy to deploy. I've fought through some tough deployments with other frameworks, and I don't want other people to have to go through that.</p>
</blockquote>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Ashley Williams</strong> &middot; <time datetime="2008-08-26T16:27:00+00:00">August 26, 2008 at 4:27 pm</time></p>
      <p>Wow love the distributed objects and routes, they really are fantastic!</p><p>Personally I'm not sure I'm ready to use Mack for anything serious, I like rails...but I really hope Rails  does something like distributed objects, or somebody writes a gem which fits into rails!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
