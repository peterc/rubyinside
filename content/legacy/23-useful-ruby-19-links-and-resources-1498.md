---
title: 23 Useful Ruby 1.9 Links and Resources
date: '2009-02-09'
author: Peter Cooper
author_slug: admin
post_id: 1498
slug: 23-useful-ruby-19-links-and-resources-1498
url: "/23-useful-ruby-19-links-and-resources-1498.html"
categories:
- compilations
- elsewhere
- reference
---

{{< rawhtml >}}
<p><img style="float:left; margin-right:12px; margin-bottom:12px;" src="/assets/2009/02/ruby-1-9-1.gif" alt="ruby-1-9-1.gif" width="87" height="87">It's approaching two weeks now since <a href="ruby-191-released-first-production-release-of-the-fastest-ruby-ever-1480.html">Ruby 1.9.1 was released</a>, bringing with it not only a whole stack of extra performance and a new VM, but also a lot of compatibility issues. No pain, no gain!</p>
<p>Thankfully, the Ruby community in its typical way has got to blogging, writing scripts, and what not, resulting in a flurry of useful links and resources for those brave enough to test the Ruby 1.9.1 waters. So here come 23 useful Ruby 1.9.1 links and resources! If you have any others you wish to add, please leave a comment as people will be checking those out too.</p>
<h3>Ruby 1.9.1 Specifically..</h3>
<div style="margin-left: 1.5em">
<p><a href="http://gist.github.com/59130"><strong>build_ruby19.sh</strong></a> - A quick shell / bash script that downloads Ruby 1.9.1 from ruby-lang.org then untars and installs it. It uses a "program suffix" of "19" so it shouldn't overwrite your existing Ruby 1.8 programs. Instead you'll end up with <em>ruby19</em>, <em>gem19</em>, <em>irb19</em>, and so forth. This strategy makes it a cakewalk to run two versions of Ruby at the same time. Want a script that installs <em>both</em>? Try <a href="http://gist.github.com/59216">this</a> instead (it makes the 1.9 versions the "default" though). All somewhat based around <a href="http://wonko.com/post/how-to-compile-ruby-191">these similar Web-based instructions</a> by Ryan Grove.</p>
<p><a href="http://drnicwilliams.com/2008/12/11/future-proofing-your-ruby-code/"><strong>Future proofing your Ruby code. Ruby 1.9.1 is coming.</strong></a> - Australian superhero Dr Nic Williams takes a look at using multiruby to run Ruby 1.9 and 1.8 on the same system. This is quite a different approach to just installing them separately with different suffixes and might suit your workflow better.. Ken Collins has also written <a href="http://www.metaskills.net/2009/1/20/multiruby-the-macports-way-testing-your-rails-apps-with-ruby-1-9">MultiRuby The MacPorts Way</a> which takes a slightly different approach.</p>
<p><a href="http://blog.phusion.nl/2009/02/02/getting-ready-for-ruby-191/"><strong>Getting ready for Ruby 1.9.1</strong></a> - The Phusion guys (behind the excellent <a href="http://www.modrails.com/">Passenger / mod_rails</a>) give <strong>some tips regarding running Rails apps on Ruby 1.9.1.</strong> They explain that you <em>must</em> move on up to <a href="http://www.railsinside.com/news/222-rails-23-release-candidate-1-released-whats-new.html">Rails 2.3</a>, that you'll need to patch a ton of gems, but that the latest build of Phusion Passenger will work happily with Ruby 1.9.1.</p>
<p><a href="http://blog.kineticweb.com/articles/2009/01/30/ruby-1-9-1-the-other-features"><strong>Ruby 1.9.1 - The Stuff It Gives Us</strong></a> - Justin Reagor presents an overview of 8 new features / differences (with code examples). For example, you can now overload operators like !, !=, and !~, hashes preserve their order, and newlines can go where no newline has gone before.</p>
<p><a href="http://isitruby19.com/"><strong>Is It Ruby 1.9</strong></a> - A community site where you can track gem compatibility with Ruby 1.9 (Ruby 1.9.1 specifically, though) as well as make reports of your own. If you want to contribute to the community in any way right now, this is a good place to do it. Get those reports and fixes in!</p>
<p><!-- a href="http://frozenplague.net/2009/01/ruby-191-rubygems-rails/"><strong>Ruby 1.9.1 &amp; Friends Walkthrough</strong> - Radar presents a walkthrough of his experiences in getting Ruby 1.9 working. It's worth checking out because he explains exactly what he did at each stage to get various things working. Curiously instead of using Rails 2.3, he explains how he patched Rails 2.2.2 to work with Ruby 1.9.1 (beware if you try this yourself). --></p>
<p><a href="http://www.rubyhead.com/2009/01/14/installing-ruby-191-from-source-on-ubuntu-screencast/"><strong>Installing Ruby 1.9.1 &amp; Rails from Source on Ubuntu Screencast</strong></a> - A 7 minute walkthrough of installing Ruby 1.9.1 and Rails from source on Ubuntu (rather than via <em>apt-get</em>) by Joon You. This should work on Debian as well.</p>
<p><a href="http://svn.ruby-lang.org/repos/ruby/tags/v1_9_1_0/NEWS"><strong>Ruby 1.9.1 Release News</strong></a> - The official "NEWS" list from the 1.9.1 release. It doesn't go into details but presents a gigantic list that expresses what's new and what changed in Ruby 1.9.1 versus 1.8. Certainly worth a quick scan.</p>
</div>
<h3>Ruby 1.9 Generally..</h3>
<div style="margin-left: 1.5em">
<p><strong><span style="font-weight: normal;"><a href="http://slideshow.rubyforge.org/ruby19mig.html"><strong><a title="Migrating to Ruby 1.9" href="migrating-to-ruby-19-876.html">Migrating to Ruby 1.9</a></strong></a> - Bruce Williams' presentation covering Ruby 1.9 at a high level. Lots of pithy code examples, M17N is covered, etc. A great resource if you get bored quickly as you can just flick through in a few minutes.</span><br>
</strong></p>
<p><a href="http://blog.nuclearsquid.com/writings/ruby-1-9-encodings"><strong>Working with Encodings in Ruby 1.9</strong></a> - A very solid introduction to M17N (multilingualization) support in Ruby 1.9 with examples.</p>
<p><strong><a href="http://eigenclass.org/hiki/Changes+in+Ruby+1.9">Changes in Ruby 1.9</a></strong> - A classic guide to the changes in Ruby 1.9 by Mauricio Fernandez. Sadly it's not been updated since 2007 but it's such a gigantic list packed with excellent code examples that it should still be essential reading.</p>
<p><a href="http://dablog.rubypal.com/2009/1/14/10-things-to-be-aware-of-in-moving-to-ruby-1-9"><strong>10 things to be aware of in moving to Ruby 1.9</strong></a> - David A Black (of RubyCentral and Ruby for Rails fame) highlights 10 "gotchas" that could bite you in the ass when moving to Ruby 1.9. Includes <code>String#each</code>, block variables scope and semantics, the <code>*</code> operator, and more.</p>
<p><a href="http://pragdave.blogs.pragprog.com/pragdave/2008/10/fun-with-ruby-19-regular-expressions.html"><strong>Fun with Ruby 1.9 Regular Expressions</strong></a> - Dave Thomas (of Pickaxe fame) presents a very compelling code example showing how regular expressions have grown up in Ruby 1.9. You can now write some pretty advanced parsers using the new features.</p>
<p><a href="http://blog.grayproductions.net/articles/getting_code_ready_for_ruby_19"><strong><a title="Getting Code Ready for Ruby 1.9" href="getting-code-ready-for-ruby-19-686.html">Getting Code Ready for Ruby 1.9</a></strong></a> - James Edward Gray II wrote a year ago about some of the changes you'll need to take into account when moving from Ruby 1.8 to 1.9. Still good reading and the plentiful comments make it worth the trip.</p>
<p><a href="http://evand.org/2009/02/04/benchmarking-ruby/"><strong>Benchmarking Ruby</strong></a> - Evan DiBiase has <em>just</em> (as in, a few days ago) performed some benchmarks on JRuby 1.1.6 (and an early build of 1.2), MacRuby, Ruby 1.8.6, and Ruby 1.9.1. Benchmarks are always hard to get right, but he finds that while Ruby 1.9.1 is significantly faster than 1.8.6, JRuby is faster still. (I have found this to be true in my own work.. JRuby is on fire!)</p>
<p><a href="http://antoniocangiano.com/2008/12/09/the-great-ruby-shootout-december-2008/"><strong>The December 2008 Great Ruby Shootout</strong></a> - Antonio Cangiano's famous Ruby benchmarking shootout. It wasn't without flaws (what benchmarks are?) but it showed us that Ruby 1.9 is approximately double the speed of 1.8.</p>
<p><a href="http://pragdave.blogs.pragprog.com/pragdave/2007/12/pipelines-using.html"><strong>Pipelines Using Fibers in Ruby 1.9</strong></a> - It's from all the way back in 2007 but Dave Thomas shows how to use Ruby 1.9's "fibers" feature to implement a pipeline of operations. Note that it leads on to a second part too.</p>
<p><a href="http://blog.majesticseacreature.com/archives/2009.01/prawn_and_ruby19.html"><strong>Why you should use Ruby 1.9 with Prawn</strong></a> - Gregory Brown explains with Ruby 1.9 is so awesome for his Prawn PDF library. The tests run in half the time and Ruby 1.9's text encoding features make life a lot easier.</p>
<p><a href="http://codefluency.com/articles/2008/08/17/arrow-lambdas-a-ruby-1-9-vignette/"><strong>Arrow Lambdas, a Ruby 1.9 Vignette</strong></a> - A code-driven walkthrough of lambdas in Ruby 1.9 by Bruce Williams. This is the best casual walkthrough of the new lambda syntax(es) for 1.9 I've seen so far.</p>
<p><a href="http://pragdave.blogs.pragprog.com/pragdave/2008/12/ruby-19-can-check-your-indentation.html"><strong>Ruby 1.9 can check your indentation</strong></a> - No, no, this isn't the start of a process leading to a Ruby/Python merger with Ruby 3.0 (though never say never).. it's just that Ruby 1.9 can now see if indentation is mismatched on things like if statements or method definitions and give you better warnings when you get things wrong. Another great post by Dave Thomas.</p>
</div>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Gregory Brown</strong> &middot; <time datetime="2009-02-09T15:36:00+00:00">February 9, 2009 at 3:36 pm</time></p>
      <p>Peter, thanks for mentioning my article.  Unfortunately I had to follow it up with an apology:</p><p><a href="http://blog.majesticseacreature.com/archives/2009.02/lies_and_statistics.html" rel="nofollow">http://blog.majesticseacreature.com/archives/2009.02/lies_and_statistics.html</a></p><p>Just because Ruby 1.9 has a better Makefile isn't a cause for me to get so excited.  That having been said, I think Prawn will still be faster on Ruby 1.9 generally, I just haven't had time to put together concrete tests.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Antonio Cangiano</strong> &middot; <time datetime="2009-02-09T16:20:00+00:00">February 9, 2009 at 4:20 pm</time></p>
      <p>Peter, the flaws you mention were fixed a long time ago.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-02-09T17:32:00+00:00">February 9, 2009 at 5:32 pm</time></p>
      <p>I guess I should have kept an eye out. Almost every article that includes benchmarks nowadays seems to get a followup ;-) ! :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Tomayko</strong> &middot; <time datetime="2009-02-09T18:17:00+00:00">February 9, 2009 at 6:17 pm</time></p>
      <p>Markus Prinz has a couple of useful 1.9 related articles:</p><p><a href="http://blog.nuclearsquid.com/writings/ruby-1-9-what-s-new-what-s-changed" rel="nofollow">http://blog.nuclearsquid.com/writings/ruby-1-9-what-s-new-what-s-changed</a><br>
<a href="http://blog.nuclearsquid.com/writings/ruby-1-9-encodings" rel="nofollow">http://blog.nuclearsquid.com/writings/ruby-1-9-encodings</a></p><p>The second article brought me up to speed on Ruby's encoding changes very quickly.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Radar</strong> &middot; <time datetime="2009-02-09T20:43:00+00:00">February 9, 2009 at 8:43 pm</time></p>
      <p>The guide on my site does not show how to use 2.2.2, what I'm patching there is actually rack (a requirement of 2.3/edge rails). I had issues with 2.2.2 (which unfortunately I didn't document), hence why I use edge.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>elliottcable</strong> &middot; <time datetime="2009-02-10T08:56:00+00:00">February 10, 2009 at 8:56 am</time></p>
      <p>The advantage of my approach (regarding the build script linked) is that you can *chose* which of the two versions is run when you run the non-prefixed commands - e.g. `irb` can be linked to `irb19` or `irb18`, depending on your needs. And you can change your decision later without re-building everything!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>khelll</strong> &middot; <time datetime="2009-02-11T23:55:00+00:00">February 11, 2009 at 11:55 pm</time></p>
      <p>I suggest this nice post to install multiple ruby versions on ubuntu</p><p><a href="http://blog.michaelgreenly.com/2008/08/multiple-versions-of-ruby-on-ubuntu-2.html" rel="nofollow">http://blog.michaelgreenly.com/2008/08/multiple-versions-of-ruby-on-ubuntu-2.html</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
