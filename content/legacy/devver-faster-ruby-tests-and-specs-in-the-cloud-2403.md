---
title: 'Devver: Run Your Tests or Specs 3 Times Faster (On A Cloud Of Servers)'
date: '2009-08-30'
author: Peter Cooper
author_slug: admin
post_id: 2403
slug: devver-faster-ruby-tests-and-specs-in-the-cloud-2403
url: "/devver-faster-ruby-tests-and-specs-in-the-cloud-2403.html"
categories:
- interviews
- news
- tools
---

{{< rawhtml >}}
<p><img style="border:1px #000000 solid;" src="/assets/2009/08/devverflow.png" alt="devverflow.png" width="400" height="75"></p>
<div class="note warning">This post is OUT OF DATE. Sadly, Devver went out of business.</div>
<p><a href="http://devver.net/">Devver</a> is a new Ruby testing service that lets you run your tests in parallel on their cloud of servers. This means your tests (or specs, both Test::Unit and <a href="http://rspec.info/">RSpec</a> are supported) could run in a third of the time as usual (depending on your setup) and it's as easy as copying a Rakefile into your project and entering a few settings. Devver stresses that "<em>you won't have to alter a single line of your code.</em>" Devver is currently in public beta.</p>
<p><img style="float:right; margin-bottom:12px; margin-left:12px; border:1px #000000 solid;" src="/assets/2009/08/devver-dudes.png" alt="devver-dudes.png" width="171" height="118"></p>
<p>I got in touch with Devver cofounder Benjamin Brinckerhoff (pictured first in the image to the right) to get some background on the service, the reason for it being created, and how the whole thing works:</p>
<p><strong>How did you guys come together to build Devver?</strong></p>
<blockquote>
<p>Back in 2007, my co-founder and I were building a product review site in Rails. We wrote a lot of tests, which had all the benefits you'd expect. However, we found that once the test suite took over about ninety seconds to run, it became significantly less useful. We started developing all these bad habits: we'd only run a small portion of tests before committing and then let CI handle the rest, we'd get distracted and check email while tests were running, we'd run tests less often, and we started to write fewer tests.</p>
<p>We realized that since testing best practices advocate creating completely independent tests, it would be possible to significantly improve performance running them in parallel. That was what led us to create Devver.</p>
</blockquote>
<p><strong>How did you build the prototype of Devver?</strong></p>
<blockquote>
<p>We had a week where we didn't have anything really scheduled and were discussing what we should work on. We decided that it might be interesting to try to build a prototype of the distributed testing idea we had.</p>
<p>We actually completed the first version in a little over a week. It ran on the eight computers that we had in our house (our various servers, laptops, and a bunch of old computers we found in our closets). It was incredibly hacky - you had to manually log in and set up a ton of stuff on each computer. There was no automatic code distribution, our communication between components was a hugely inefficient system we built on top of Rinda, and it only worked for our specific code base. But it did speed things up! Even that early version cut around 60% of the time off our big functional test suite.</p>
</blockquote>
<p><strong>What convinced you that Devver was worth going ahead with full-time? It's not the usual sort of developer service..</strong></p>
<blockquote><p>We did a demo of that early prototype for <a href="http://techstars.org">TechStars</a> and were fortunate enough to be accepted into the program for the summer of 2008. Once we got accepted into TechStars, we knew we wanted to work on developer tools that were based in the cloud, but we weren't sure our idea of test acceleration was interesting by itself. The thing that convinced us was <a href="http://pivotallabs.com/talks/11-devver">a talk we gave at Pivotal Labs.</a> The project was still in its infancy, but the feedback we got was clear - many Ruby developers really wanted a tool that would enable them to run their tests quickly so they could run them more often.</p></blockquote>
<p><strong>What surprises have have you found with Devver so far?</strong></p>
<blockquote>
<p>We always expected Devver to be a challenging project, but making it as compatible as we'd like has been even more difficult than we anticipated. Early on, we had a plan (which, at the time, we considered extremely clever) to make Devver work on a ton of open-source projects in order to improve our compatibility. We got many open-source projects working and thought we were in good shape. Of course, as soon as we started bringing on additional closed-source projects, we quickly learned they were quite different from open-source ones!</p>
<p>One nice surprise has been the degree to which Rubyists write highly independent tests. Early on, we expected that many test suites would contain hidden dependencies - that is, you'd have to run the tests in a certain order. It's really easy to miss these dependencies when your tests always run in the same order on your local machine. But in practice, we've seen virtually zero suites that have interdependent tests. As a result, the tests parallelize well and we can run them very quickly, which is great.</p>
</blockquote>
<p><strong>What stack are you using for Devver? (i.e. Ruby version(s), libraries, daemons, anything like that)</strong></p>
<blockquote><p>We run on <a href="http://aws.amazon.com/ec2/">Amazon EC2</a> instances running Linux and use their <a href="http://aws.amazon.com/simpledb/">SimpleDB</a> for our storage. We currently run Ruby 1.8.6 (but we'd eventually like to let the user determine if we run their tests using 1.8.6, 1.8.7, or 1.9). We use <a href="http://xph.us/software/beanstalkd/">Beanstalkd</a> for our job queues. We have components built on top of <a href="http://rubyeventmachine.com/">EventMachine</a> and <a href="http://sinatrarb.com/">Sinatra</a>, and some that are entirely custom.</p></blockquote>
<p><strong>Where do you see Devver going in a year's time?</strong></p>
<blockquote>
<p>First and foremost, we want to make our core experience as awesome as possible. That means making Devver even easier to set up and compatible with more projects. As a quick example, we don't currently support <a href="http://cukes.info/">Cucumber</a>, but we'd like to. After that, we'd like to beef up our web site to display some metrics that individual developers and teams would find useful. For instance, we'd like to track code coverage over time or give you a report that lets you view your slowest tests.</p>
<p>But of course, we'll stay flexible and keep listening to what our users want. We love any and all feedback. If there is a reason that a user or team can't or won't use Devver, or a feature they'd like to see, we'd love to know about it so we can continue to make Devver better!</p>
</blockquote>
<p><em>Disclaimer: You might have seen a couple of footer ads on Ruby Inside advertising Devver - though this writeup is in no way dependent on that; it's a cool tool!</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Aslak Hellesøy</strong> &middot; <time datetime="2009-08-31T12:43:00+00:00">August 31, 2009 at 12:43 pm</time></p>
      <p>Looks awesome. Let me know if you need changes in Cucumber to be able to support it.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
