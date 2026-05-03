---
title: 'Riot: for fast, expressive and focused unit tests'
date: '2009-10-31'
author: Ric Roberts
author_slug: ricroberts
post_id: 2669
slug: riot-for-fast-expressive-and-focused-unit-tests-2669
url: "/riot-for-fast-expressive-and-focused-unit-tests-2669.html"
categories:
- cool
- miscellaneous
- ruby-on-rails
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2009/10/justin.jpg" alt="Justin" style="float:left; margin-right:12px; margin-bottom:12px;"><a href="http://github.com/thumblemonks/riot">Riot</a> is a new Ruby test framework by <a href="http://twitter.com/jaknowlden">Justin Knowlden</a> that focuses on <em>faster</em> testing.  Justin was frustrated with his slow running test suites, despite employing techniques such as using factories, mocks and avoiding database access.  He realized that a slow-running suite makes one reluctant to run it or expand it - not good.</p>
<p>With Riot, each test consists of a block which forms a single assertion on the <code>topic</code> of the test, keeping the tests focused. Tests run in a specific <code>context</code>, and the <code>setup</code> code is only run once per context, further contributing to the speed of your test suite, and unlike some Ruby test frameworks, such as <a href="http://www.thoughtbot.com/projects/shoulda/">Shoulda</a>, that rely on or are based on Test::Unit, Riot has taken a new approach for speed purposes. In Justin's own comparisons, Riot comes out about twice as fast as Test::Unit.  </p>
<p>Here's an example Riot test (from the README):</p>
<pre>
context "a new user" do
  setup { User.new(:email =&gt; 'foo@<!--*-->bar.com') }
  asserts("email address") { topic.email }.equals('foo@<!--*-->bar.com')
end
</pre>
<p>Riot's comprehensive <a href="http://github.com/thumblemonks/riot/blob/master/README.markdown">README</a> also includes lots of examples and details on how to modify your Rakefile to run your Riot test suite in different frameworks.  The full documentation is available online <a href="http://rdoc.info/projects/thumblemonks/riot">here</a>.</p>
<p>You can install Riot as a gem from <a href="http://gemcutter.org/">Gemcutter</a>:</p>
<pre>
sudo gem sources -a http://gemcutter.org
sudo gem install riot
</pre>
<p>Justin also has a spin-off project called <a href="http://github.com/thumblemonks/riot_rails">Riot Rails</a>, which includes some Rails-related macros for testing your Ruby On Rails code, and <a href="http://alexyoung.org/">Alex Young</a> has written a <a href="http://github.com/alexyoung/riotjs">Javascript port of Riot</a> which is worth checking out too. He also <a href="http://alexyoung.org/2009/10/26/riot-testing/">has his own look at Riot</a> and demonstrates how Riot can reduce redundancy in tests.</p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><a href="http://www.codebasehq.com/?utm_source=rubyinside&amp;utm_medium=footer&amp;utm_campaign=sep09" rel="nofollow"><img src="/assets/2009/09/CodebaseLogo-RI.png" width="118" height="37" style="float: right; margin-left: 12px; margin-bottom: 12px" alt="CodebaseLogo-RI.png"></a><em>[ad]</em> <a href="http://www.codebasehq.com/?utm_source=rubyinside&amp;utm_medium=footer&amp;utm_campaign=sep09" rel="nofollow"><b>Codebase</b></a> is a fast &amp; reliable <b>git, mercurial &amp; subversion hosting</b> service with complete project management built-in - ticketing, milestones, wikis &amp; time tracking - all under one roof. <a href="http://www.codebasehq.com/?utm_source=rubyinside&amp;utm_medium=footer&amp;utm_campaign=sep09" rel="nofollow">Click here to try it - free.</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Brian Takita</strong> &middot; <time datetime="2009-11-01T05:07:00+00:00">November 1, 2009 at 5:07 am</time></p>
      <p>So I need a suite of 10,000 tests to notice 0.9 second difference? Thats the problem with these benchmarks. To the majority of projects, the test framework lack of performance is negligible.</p><p>The only thing to judge this project by is syntax.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brian Takita</strong> &middot; <time datetime="2009-11-01T05:09:00+00:00">November 1, 2009 at 5:09 am</time></p>
      <p>That being said, Rubyspec could stand to benefit.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ric Roberts</strong> &middot; <time datetime="2009-11-01T12:22:00+00:00">November 1, 2009 at 12:22 pm</time></p>
      <p>You've got a point about the speed thing, Brian, but I also thing that Riot has got something to offer in terms of ease/style of coding - e.g. one assertion per test and a contextual setup.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Piotr Sarnacki</strong> &middot; <time datetime="2009-11-01T12:31:00+00:00">November 1, 2009 at 12:31 pm</time></p>
      <p>Riot shouldn't be advertised by its speed, if it doesn't really matter... My first thought was also: "wow, 1.5s is painfully slow execution of 10k tests... 0.7s *so much* faster". And after that I didn't even bother to go further and check syntax...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-11-01T12:36:00+00:00">November 1, 2009 at 12:36 pm</time></p>
      <p>It's probably not the strongest example, but cutting out time is still important at the lower end. Anything that makes testing more immediate makes testing more attractive. It's like a Web page loading in 1.5 seconds instead of 0.9 seconds - there's a cognitive difference, even if it's slight at first.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>kenny</strong> &middot; <time datetime="2009-11-01T13:32:00+00:00">November 1, 2009 at 1:32 pm</time></p>
      <p>Not compelling enough for a switch</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Botanicus</strong> &middot; <time datetime="2009-11-01T23:14:00+00:00">November 1, 2009 at 11:14 pm</time></p>
      <p>"..., despite employing techniques such as using factories, mocks and avoiding database access."</p><p>I've seen a huge amount of tests with mocks and in my opinion, mocks should be used *just* for simulating external interface like Twitter API or so. For example in my current job we have somewhat about 8 MB test code with mocks and it's really bloody painful to work with – as Yehuda Katz told on MerbCamp (great video about testing BTW) "Broken interface =&gt; broken tests. Working interface =&gt; passings tests". It's what with mocks just doesn't work.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Steve Molitor</strong> &middot; <time datetime="2009-11-02T02:34:00+00:00">November 2, 2009 at 2:34 am</time></p>
      <p>"...but cutting out time is still important at the lower end. Anything that makes testing more immediate makes testing more attractive."</p><p>Then write your unit tests in Java - they'll run faster.  You won't notice the difference but benchmarks will.</p><p>Seriously,random optimizations don't 'add up' - the trick to optimizing something that's too slow is to find the bottlenecks.  It doesn't sound like this addresses them.    So it's a waste of time.  Well, actually there may be other advantages to the framework but this post is so silly it works as negative advertising for the framework.  Your web site example doesn't really apply - shaving .6 seconds off one web request is perceptible; shaving the same amount off of 10,000 tests is not.</p><p><a href="http://martinfowler.com/ieeeSoftware/yetOptimization.pdf" rel="nofollow">http://martinfowler.com/ieeeSoftware/yetOptimization.pdf</a></p><p>Steve</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Piotr Sarnacki</strong> &middot; <time datetime="2009-11-03T08:41:00+00:00">November 3, 2009 at 8:41 am</time></p>
      <p>&gt;It's like a Web page loading in 1.5 seconds instead of 0.9<br>
&gt; seconds - there's a cognitive difference, even if it's slight at first.</p><p>I agree, but it would be great for 10, maybe 100 tests, not for 10,000. In this case we are talking about microseconds.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
