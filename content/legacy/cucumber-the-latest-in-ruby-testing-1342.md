---
title: 'Cucumber: The Latest in Ruby Testing'
date: '2008-11-19'
author: Mike Gunderloy
author_slug: mikeg1
post_id: 1342
slug: cucumber-the-latest-in-ruby-testing-1342
url: "/cucumber-the-latest-in-ruby-testing-1342.html"
categories:
- tools
---

{{< rawhtml >}}
<p><img class="alignleft size-medium wp-image-1344" style="margin: 0px 8px 8px 0px; float: left" src="/assets/2008/11/cucumber.png" alt="" width="129" height="91">Testing is a firmly ingrained part of the Ruby culture: you probably ran across <a href="http://stdlib.rubyonrails.org/libdoc/test/unit/rdoc/classes/Test/Unit.html">Test::Unit</a> not long after you first started writing Ruby code (though it wouldn't be surprising if you ignored it for a while). But it hasn't been a static part of Ruby - we've seen the simple availability of tests evolve into test-driven development (TDD) that in turn gave rise to behavior-driven development (BDD). Along the way, Ruby has spawned a variety of testing tools and frameworks.<strong> The latest, Aslak Hellesoy's</strong> <strong><a href="http://github.com/aslakhellesoy/cucumber/tree/master">Cucumber</a>, is the latest addition to the RSpec family of tools.</strong></p>
<p><em>Cucumber is designed to allow you to execute feature documentation written in plain text (often known as "stories").</em> I've been experimenting with it as a replacement for integration tests in Rails. With Cucumber, you can write tests that look like this:</p>
<pre><code>
Scenario: See all vendors
    Given I am logged in as a user in the administrator role
    And There are 3 vendors
    When I go to the manage vendors page
    Then I should see the first 3 vendor names
</code></pre>
<p>With Cucumber, that it an executable specification that you can discuss with the customer and then use to verify the correct behavior of tests. Behind the scenes, you make it work by writing "steps," which are regex matchers that execute Ruby code. Here's one of the steps for that scenario:</p>
<pre><span class="constant">Given</span> <span class="punct">/</span><span class="ident">there</span> <span class="ident">are</span> <span class="punct">(</span><span class="ident">d</span><span class="punct">+)</span> <span class="ident">vendors</span><span class="punct">/</span><span class="ident">i</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">n</span><span class="punct">|</span>
  <span class="constant">Vendor</span><span class="punct">.</span><span class="ident">transaction</span> <span class="keyword">do</span>
    <span class="constant">Vendor</span><span class="punct">.</span><span class="ident">destroy_all</span>
    <span class="ident">n</span><span class="punct">.</span><span class="ident">to_i</span><span class="punct">.</span><span class="ident">times</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">n</span><span class="punct">|</span>
      <span class="constant">Factory</span><span class="punct">.</span><span class="ident">create</span><span class="punct">(</span><span class="symbol">:vendor</span><span class="punct">,</span> <span class="symbol">:business_name</span> <span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">Vendor <span class="expr">#{n}</span></span><span class="punct">")</span>
    <span class="keyword">end</span>
  <span class="keyword">end</span>
<span class="keyword">end</span></pre>
<p>Ideally, you'll do this all in true BDD fashion: write the Cucumber features first, watch them fail, implement code to make them pass (with lower-level tests written with RSpec or Test::Unit), and repeat.</p>
<p>Cucumber is under rapid development, but it's already a useful part of my testing toolbox. In addition to integrating with RSpec and Rails, it works with Merb, Sinatra, and the Webrat web-testing framework (as well as, of course, pure Ruby projects). It also has translations into 20 languages and the ability to run FIT-style tabular tests. If you're looking for a higher level of abstraction in your tests, it's definitely worth checking out.</p>
<p class="s" style="font-family:verdana;font-style:italic;padding:8px;font-size: 12px">Supported by: <strong><a href="http://gearsquare.com/actiongear/">ActionGear</a> is a menu-bar app for task management on your Mac.</strong> It's lightweight, quick, and helps you get stuff done. <strong><a href="http://gearsquare.com/actiongear/">Try it out for free.</a></strong></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2008-11-19T19:47:00+00:00">November 19, 2008 at 7:47 pm</time></p>
      <p>Brandon Keepers gave a talk on Cucumber at the Great Lakes Ruby Bash 2008. In case anyone is interested his slides are available online at:</p><p><a href="http://www.slideshare.net/bkeepers/behavior-driven-development-with-cucumber-presentation" rel="nofollow">http://www.slideshare.net/bkeepers/behavior-driven-development-with-cucumber-presentation</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-11-19T20:36:00+00:00">November 19, 2008 at 8:36 pm</time></p>
      <p>Awesome, thanks Daniel!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark Wilden</strong> &middot; <time datetime="2008-11-19T21:03:00+00:00">November 19, 2008 at 9:03 pm</time></p>
      <p>"you probably ran across Test::Unit not long after you first started writing Ruby code (though it wouldn't be surprising if you ignored it for a while)"</p><p>Then there are those of us who've been TDDing for 10 years and came to Ruby and RoR precisely *because* of its support for testing.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bart ten Brinke</strong> &middot; <time datetime="2008-11-19T21:28:00+00:00">November 19, 2008 at 9:28 pm</time></p>
      <p>Does cucumber do the same thing as <a href="http://github.com/foeken/webrat_story_steps/" rel="nofollow">http://github.com/foeken/webrat_story_steps/</a> ? Only without the selenium integration? Or am I missing the point here?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kevin Mears</strong> &middot; <time datetime="2008-11-19T22:21:00+00:00">November 19, 2008 at 10:21 pm</time></p>
      <p>I came across a great write up of the nitty gritty of getting started on "Craig's Site":<a href="http://barkingiguana.com/2008/11/16/writing-a-story-why-when-where-who-what-how-and-a-bunch-of-other-questions-and-answers" rel="nofollow">http://barkingiguana.com/2008/11/16/writing-a-story-why-when-where-who-what-how-and-a-bunch-of-other-questions-and-answers</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>rue</strong> &middot; <time datetime="2008-11-19T23:14:00+00:00">November 19, 2008 at 11:14 pm</time></p>
      <p>COBOL, is that you? :)</p><p>I am a bit apprehensive of this direction.. but it would not be the first time I turned out to be wrong.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chad Humphries</strong> &middot; <time datetime="2008-11-20T00:36:00+00:00">November 20, 2008 at 12:36 am</time></p>
      <p>Cucumber also works well with test/spec and test::unit as well.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bruce Williams</strong> &middot; <time datetime="2008-11-20T21:16:00+00:00">November 20, 2008 at 9:16 pm</time></p>
      <p>It seems to work well with pretty much any testing framework (I've been using it with matchy, as well).  It's a shame it has [what seems to be an unnecessary] gem runtime dependency on rspec and that the documentation thus far seems skewed in using it in that way.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>anonymouse</strong> &middot; <time datetime="2008-11-21T16:28:00+00:00">November 21, 2008 at 4:28 pm</time></p>
      <p>@rue: No, COBOL had only a few predetermined templates like "ADD x TO y GIVING z". This language lets you write your own templates (and define your own routines to implement the templates).  Not even in the same class.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeremy Jarvis</strong> &middot; <time datetime="2008-11-21T17:50:00+00:00">November 21, 2008 at 5:50 pm</time></p>
      <p>My colleague Rahoul has also just posted a step by step intro to using Rspec, Cucumber and Stories...</p><p><a href="http://blog.brightbox.co.uk/posts/using-rspec-cucumber-and-user-stories-to-build-our-internal-systems" rel="nofollow">http://blog.brightbox.co.uk/posts/using-rspec-cucumber-and-user-stories-to-build-our-internal-systems</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aslak Hellesøy</strong> &middot; <time datetime="2008-11-23T17:56:00+00:00">November 23, 2008 at 5:56 pm</time></p>
      <p>Cucumber <a href="http://github.com/aslakhellesoy/cucumber/commit/fc584ebf871cc002c7f83c7eabcab6215c89732a" rel="nofollow">no longer depends on RSpec</a>, and I have added an example showing <a href="http://github.com/aslakhellesoy/cucumber/commit/aea226ce893a33a5f5f65b4becf5636fecdd0a5f" rel="nofollow">how to use plain Test::Unit assertions</a> inside step definitions.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
