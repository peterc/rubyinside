---
title: 'Interesting Ruby Tidbits That Don’t Need Separate Posts #22'
date: '2009-04-24'
author: Peter Cooper
author_slug: admin
post_id: 1702
slug: interesting-ruby-tidbits-that-don’t-need-separate-posts-22-1702
url: "/interesting-ruby-tidbits-that-don’t-need-separate-posts-22-1702.html"
categories:
- compilations
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2009/04/email.png" width="64" height="64" alt="email.png" style="float:left; margin-right:12px; margin-bottom:12px;"> It's been just over a year since <a href="interesting-ruby-tidbits-that-dont-need-separate-posts-21-849.html">the last</a> Interesting Ruby Tidbits That Don’t Need Separate Posts post (number <a href="interesting-ruby-tidbits-that-dont-need-separate-posts-21-849.html">21</a>, specifically). I think I felt that <a href="http://www.rubyflow.com/">RubyFlow</a> filled the gap for quick-fire group posts, but.. it doesn't, quite (even though it's going great guns!) There are still a lot of awesome things out there that should be highlighted here but that, perhaps, don't need their own post. So.. the series is back.</p>
<p>Enjoy!</p>
<h3 style='\"clear:' left>How to Write a RubyGems Command Plugin</h3>
<p><img src="/assets/2009/04/rubygems1.png" width="50" height="50" alt="rubygems.png" style="float:right; margin-bottom:12px; margin-left:12px;"> Following on from our news about the new version of RubyGems and its plugin functionality, Gabriel Horner has put together <a href="http://tagaholic.me/2009/04/23/how-to-write-a-rubygem-command-plugin.html">a great tutorial that covers how to create your own plugin from scratch</a>.</p>
<h3>Mocks and Stubs - A Presentation by Brian Guthrie</h3>
<p>A <a href="http://atlrug.org/news-pixie/posts/100-Mocks-and-Stubs-Brian-Guthrie-Thoughtworks">presentation (in video format)</a> by Brian Guthrie on testing using mocks and stubs. It's a heavy download (193MB) but Brian strikes the right balance between code and theory with some good examples. If "mock" and "stub" are jargon words to you, check it out.</p>
<h3>What Nick Quaranto Uses for Testing in Ruby and Rails</h3>
<p><img src="/assets/2009/04/blueprint-sticky.png" width="48" height="48" alt="blueprint sticky.png" style="float:right; margin-bottom:12px; margin-left:12px;"> Nick Quaranto of Thoughtbot has put together <a href="http://giantrobots.thoughtbot.com/2009/4/24/internbot-chronicles-3-2">a list of the testing tools</a> - with accompanying notes - that he uses in his daily work. Mentioned are <a href="http://thoughtbot.com/projects/shoulda/">Shoulda</a>, <a href="http://mocha.rubyforge.org/">Mocha</a>, <a href="http://github.com/thoughtbot/factory_girl/tree/master">factory_girl</a>, <a href="http://cukes.info/">Cucumber</a>, <a href="http://fakeweb.rubyforge.org/">FakeWeb</a>, and testing from the command line.</p>
<h3>Mio: A Tiny Io-subset Interpreter written in Ruby<br>
</h3>
<p>This one is for the code voyeurs out there! <a href="http://macournoyer.com/blog/">Marc-André Cournoyer</a> has put together <a href="http://gist.github.com/100503">a small interpreter (in pure Ruby)</a> that will execute a subset of the <a href="http://www.iolanguage.com/">Io language</a>. It's an interesting bit of code to look at, rather than something you're going to be using anytime soon.</p>
<h3>Fibers for Ruby 1.8.6/1.8.7</h3>
<p>Fibers are light-weight non-preemptible threads that are provided as a feature in Ruby 1.9 (think of Ruby 1.8's threads but strip away the scheduling). Joe Damato has <a href="http://timetobleed.com/fibers-implemented-for-ruby-1867/">implemented fibers for Ruby 1.8.6 and 1.8.7.</a> It's a patch directly against the MRI source code though, so you'll need to be pretty brave or interested to get going. Awesome work nonetheless.</p>
<h3>MRI_Instrumentation: DTrace Hooks for MRI</h3>
<p><a href="http://github.com/methodmissing/mri_instrumentation/tree/master">mri_instrumentation</a> is an interesting piece of work by Lourens Naudé. It provides a set of C level probes that can be used to interrogate and otherwise wrestle with the internals of any version of Ruby 1.8 MRI on a platform that supports <a href="http://en.wikipedia.org/wiki/DTrace">DTrace</a> (OS X and Solaris, primarily). This is particularly useful for low-level profiling.</p>
<h3>
<img src="/assets/2009/04/dreamhost.png" width="137" height="40" alt="dreamhost.png" style="float:right; margin-bottom:12px; margin-left:12px;"> Dreamy: A Dreamhost API Library for Ruby</h3>
<p>Dreamhost is a popular budget, shared hosting ISP amongst Rubyists. It's cheap and easy to get Rack-powered apps (including Rails and Sinatra apps) running, even if they can be a little slow from time to time. Still, an interesting place to put apps if you're aware of the issues.</p>
<p>Recently Dreamhost launched <a href="http://wiki.dreamhost.com/API">an API</a> that can be used to programatically access Dreamhost's control panel's functionality, and Jerod Santo has put together <a href="http://blog.jerodsanto.net/2009/04/so-dreamy/">a Ruby library called Dreamy</a> to access it.</p>
<h3>
<img src="/assets/2009/04/kcalc.png" width="46" height="46" alt="kcalc.png" style="float:right; margin-bottom:12px; margin-left:12px;"> Weigh Your Gems</h3>
<p><a href="http://adam.blog.heroku.com/past/2009/1/12/gem_weight/">gemweight.rb</a> is a script that calculates the memory use and load time of a given RubyGem. Works only on Linux.</p>
<h3>Validating Data with Regular Expressions in Ruby</h3>
<p>Brightbox's Caius Durling looks at <a href="http://swedishcampground.com/validating-data-with-regular-expressions-in-ruby">some gotchas with using regular expressions to validate data</a> in Ruby (and Rails).</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>George McGrumble</strong> &middot; <time datetime="2009-04-25T01:10:00+00:00">April 25, 2009 at 1:10 am</time></p>
      <p>I for one very much appreciate you occasionally making a post like this. There are so many new things every day that it helps to narrow the focus.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>w2tags</strong> &middot; <time datetime="2009-04-27T05:25:00+00:00">April 27, 2009 at 5:25 am</time></p>
      <p>try this...</p><p>W2TAGS is HAML for ERB (reach v0.9.4)</p><p><a href="http://github.com/wharsojo/w2tags/tree/master" rel="nofollow">http://github.com/wharsojo/w2tags/tree/master</a><br>
<a href="http://groups.google.com/group/w2tags/browse_thread/thread/6891e7d5111feed0?hl=en" rel="nofollow">http://groups.google.com/group/w2tags/browse_thread/thread/6891e7d5111feed0?hl=en</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
