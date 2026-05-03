---
title: 'Infinity Test: Flexible Continuous Testing with Multiple Ruby Implementations'
date: '2010-09-29'
author: Peter Cooper
author_slug: admin
post_id: 3846
slug: infinity-test-flexible-continuous-testing-with-multiple-ruby-implementations-3846
url: "/infinity-test-flexible-continuous-testing-with-multiple-ruby-implementations-3846.html"
categories:
- miscellaneous
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2010/09/infinity.jpg" alt="" title="infinity" width="100" height="100" class="alignleft size-full wp-image-3847" style="float: left; margin-right: 10px; margin-bottom: 10px; border: 1px solid #333"></p>
<p><a href="http://github.com/tomas-stefano/infinity_test">Infinity Test</a> is a new library by Tomas D'Stefano that pitches itself as a "flexible alternative to <a href="http://ph7spot.com/musings/getting-started-with-autotest">Autotest</a>." If you want your project's tests (both RSpec or Test::Unit are supported) to be automatically run when changes are made, this is a great place to start.</p>
<p>The big benefit of Infinity Test is the support for testing across multiple Ruby implementations, powered by <a href="http://rvm.beginrescueend.com/">RVM</a> (a candidate for Ruby project of the year, if ever there were one). For example, if you have some Test::Unit tests that you want to be run on Ruby 1.8.7, JRuby, Ruby Enterprise Edition, and Ruby 1.9.2, you could run:</p>
<pre><code>infinity_test --test-unit --rubies=1.8.7,jruby,ree,1.9.2</code></pre>
<p>There's also a <a href="http://github.com/tomas-stefano/infinity_test/wiki/Customize-Infinity-Test">configuration file system</a> with its own DSL to build more complex automated testing systems with customized notification systems and callbacks.</p>
<p class="s" style="padding: 8px; font-size: 12px; background-color: #ff9"><em>[ad]</em> Ruby Inside's newest sponsor is <a href="http://recurly.com/?utm_source=rr&amp;utm_medium=ri_post&amp;utm_campaign=rr" rel="nofollow">Recurly</a>, a recurring billing service. They promise "subscription billing in 3 easy steps" and you can start <a href="http://recurly.com/?utm_source=rr&amp;utm_medium=ri_post&amp;utm_campaign=rr" rel="nofollow">a free trial</a> right now. Their API is Ruby friendly and <a href="http://github.com/recurly/recurly-client-ruby">on GitHub!</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Andrew Grimm</strong> &middot; <time datetime="2010-09-30T00:28:00+00:00">September 30, 2010 at 12:28 am</time></p>
      <p>Interesting project.</p><p>About the image: does the facial expression in the "Bush infinity" photoshop look like the same one as in the <a href="http://gopandthecity.blogspot.com/2004/10/kerryedwards-office-distributes-flyer.html" rel="nofollow">Bush Special Olympics</a> photoshop?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Bethany</strong> &middot; <time datetime="2010-10-11T20:14:00+00:00">October 11, 2010 at 8:14 pm</time></p>
      <p>It's a shame it uses RVM. Apparently many people have had nothing but success with RVM but I can only speak to my own experience with RVM; for me it has been an unequivocally failure. I've only tried it in OS X though, possibly it's much better in a more straight Unix distro like Ubuntu. When I use Linux I use virtual machines trimmed down to only the software needed for the server so I don't need 4 versions of Ruby.</p><p>I love the concept it's just the execution that is lacking, it needs a lot more work before it's actually usable. I've had it delete gem libraries, corrupt Ruby installs, and other odd little issues that make using it, for me, a lot like playing hot potato with a hand grenade.</p><p>I truly hate to be so negative, I desperately hope it becomes usable soon. Even with all the problems I still always suggest it when someone asks, "How can I test multiple versions of Ruby on one machine?" but I also add, "Back up your system first and be prepared for it to hose your Ruby install's at least once or twice."</p><p>Two of the major problems are a lack of up-to-date and a usable forum for discussion. The "we want features" forum is not a good place for discussing fixes and work arounds. You have to Google any bugs you come up with and hope the fixes are still relevant.</p><p>It's a shame because the one of the major features of Infinity Test, auto-testing multiple Ruby versions, sounds fantastically useful.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-11-05T16:03:00+00:00">November 5, 2010 at 4:03 pm</time></p>
      <p>Posting this on Wayne's behalf:</p><p>Mike,</p><p>Forums and blog posts are not the place to discuss features and bugs, but rather by joining #rvm in irc.freenode.net during the daytime EDT and work it out with me in *real time*. </p><p>Yes this is in opposition to some time lagged forum / email thread that will be outdated and mislead users in the future who think it is the most recent on the topic (There IS a community google group for the community by the community for RVM, however IRC is the proper means of communication for RVM).  </p><p>If it is something that should be noted for future use then it should go in the documentation on the website (for which anyone can clone and contribute on github).</p><p>For everyone reading this, be sure to read the RVM installer output for information on getting started with IRC and ask questions in #rvm on irc.freenode.net before googling for outdated and potentially misleading and/or simply incorrect information (be sure to stick around on IRC, I WILL respond, or at least check back later as I do leave messages for people as well).</p><p>  ~Wayne</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
