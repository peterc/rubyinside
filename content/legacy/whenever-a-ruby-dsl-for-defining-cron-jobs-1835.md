---
title: 'Whenever: A Ruby DSL for Defining Cron Jobs'
date: '2009-06-09'
author: Peter Cooper
author_slug: admin
post_id: 1835
slug: whenever-a-ruby-dsl-for-defining-cron-jobs-1835
url: "/whenever-a-ruby-dsl-for-defining-cron-jobs-1835.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2009/06/clock.png" width="48" height="48" alt="clock.png" style="float:left; margin-right:12px; margin-bottom:12px;"> It has always been a trend with Rubyists to take things that have poor interfaces and give them better ones. Javan Makhmali from <a href="http://inklingmarkets.com">Inkling Markets</a> has lived up to this trend, and given us <strong><a href="http://github.com/javan/whenever/tree/master">Whenever</a></strong><strong>, a library that wraps</strong> <a href="http://en.wikipedia.org/wiki/Cron#crontab_syntax"><strong>cron's syntax</strong></a> <strong>with a Ruby API</strong> (<a href="http://en.wikipedia.org/wiki/Cron">cron</a> being a UNIX task scheduling tool).</p>
<p><em>Whenever</em> can be tightly integrated with Rails (providing application specific commands such as "rake" and "runner" from the API – see an example <a href="http://wiki.github.com/javan/whenever/instructions-and-examples">here</a>), but can also be run as a standalone program. Whenever outputs valid crontab syntax, and can even write the crontab file for you!</p>
<p>Whenever helps you keep your cron jobs with your code so that there is no separation of logic. Since Whenever is a wrapper for cron, however, it's really focused on on UNIX and UNIX-like machines. While there are some cron implementations for Windows, Whenever wasn't really designed for this purpose.</p>
<p>If Whenever is of interest to you, check out the <a href="http://github.com/javan/whenever/tree/master">GitHub page</a>, the <a href="http://blog.inklingmarkets.com/2009/02/whenever-easy-way-to-do-cron-jobs-from.html">blog post</a> of Javan's workplace, and the <a href="http://railscasts.com/episodes/164-cron-in-ruby">Railscast</a> by Ryan Bates.</p>
<p><em>Note: This post was written by Ari Brown.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Stephen Stillwater</strong> &middot; <time datetime="2009-06-09T21:47:00+00:00">June 9, 2009 at 9:47 pm</time></p>
      <p>Something like this could probably be developed for Windows scheduled tasks. It is possible to import an XML document into the task scheduler from the command line to set up tasks.</p><p>If only there was a fast, delightful XML parser with a great library that could generate XML, and a way of making system calls in Ruby, we'd be golden.</p><p>*wink, wink*</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris Johnston</strong> &middot; <time datetime="2009-06-09T23:09:00+00:00">June 9, 2009 at 11:09 pm</time></p>
      <p>Doesn't work when there are multiple versions of Rails installed. See this bug: <a href="http://github.com/javan/whenever/issues#issue/1" rel="nofollow">http://github.com/javan/whenever/issues#issue/1</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Gilmartin</strong> &middot; <time datetime="2009-06-10T01:32:00+00:00">June 10, 2009 at 1:32 am</time></p>
      <p>The Perl folks when down this path of rewriting much of the Unix tools chain so as to take advantage of Perl's inherent goodness. But today we still use Vixie Cron and GNU grep, etc. Just learn the existing tools and be done with it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2009-06-10T11:21:00+00:00">June 10, 2009 at 11:21 am</time></p>
      <p>I already see 3 libraries on the RAA that provide a cron interface - cronedit, crontab and jobmanager. What does whenever do that they don't?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jason L Perry</strong> &middot; <time datetime="2009-06-10T14:28:00+00:00">June 10, 2009 at 2:28 pm</time></p>
      <p>@Daniel, I'm guessing tight Rails integration. Oh, it also has a cute name and it's on github.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Phil</strong> &middot; <time datetime="2009-06-10T23:58:00+00:00">June 10, 2009 at 11:58 pm</time></p>
      <p>Andrew: good point, except: vixie cron is pretty wretched. It doesn't set up the environment like you'd expect, and it totally malfunctions on files that don't end in newlines. We, as a civilization, can do better.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hubert Łępicki</strong> &middot; <time datetime="2009-06-11T08:43:00+00:00">June 11, 2009 at 8:43 am</time></p>
      <p>Biggest problem in setting up cron jobs for Rails apps is not cron's syntax itself. It's pretty easy to learn and use. What I find annoying is need for specifying PATH and other variables because not every cron setup does that. What I usually do is to set up wrapper (as shell script) around rake tasks I need to run and execute them from within cron.</p><p>I wonder if Whenever solves this issue...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andy Watts</strong> &middot; <time datetime="2009-06-19T03:36:00+00:00">June 19, 2009 at 3:36 am</time></p>
      <p>Been using cron for 20 years without a problem.<br>
Maybe the capistrano integration could make it worth a look.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
