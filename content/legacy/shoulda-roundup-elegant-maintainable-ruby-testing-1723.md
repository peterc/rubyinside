---
title: 'Shoulda Roundup: Elegant, Maintainable Ruby Testing'
date: '2009-05-05'
author: Matthew Lang
author_slug: mlang
post_id: 1723
slug: shoulda-roundup-elegant-maintainable-ruby-testing-1723
url: "/shoulda-roundup-elegant-maintainable-ruby-testing-1723.html"
categories:
- compilations
- elsewhere
- miscellaneous
---

{{< rawhtml >}}
<p><span><a href="/assets/2009/05/images.jpeg"><img class="alignnone size-medium wp-image-1742" src="/assets/2009/05/images.jpeg" alt="" style="float: left; margin: 0px 12px 12px 0px" width="89" height="91"></a>It's been a few weeks since <a href="http://www.thoughtbot.com/projects/shoulda/">Shoulda's</a> 2.10 release so it's a good time to round up some of the new features and the best articles covering Shoulda.</span></p>
<p><span>For those unfamiliar with it, Shoulda is a library that allows you to write better and more understandable tests for your Ruby application. It's like overdrive for Test::Unit and RSpec.  Shoulda allows you to provide context to your tests so that you can group tests according to a specific feature or scenario your testing.</span></p>
<p><span>In the latest release of Shoulda a couple of key features should be mentioned.  Firstly, you now have matchers to use in controller specs, much like RSpec.</span></p>
<p><span>A second nice feature in this release is the ability to use block arguments within those macros that require expected strings.  By using blocks, you can now separate the Ruby code you're testing away from the individual test macro.</span></p>
<p><span><a href="http://giantrobots.thoughtbot.com/2009/2/20/mixing-cucumber-with-test-unit">Mixing Cucumber with Test::Unit/Shoulda</a> - If you're a Cucumber user, you might not know that BDD frameworks can also be used with Shoulda. The thoughtbot blog has an article highlighting the steps involved in setting up Cucumber with Shoulda that should allow you to get up and running in no time.</span></p>
<p><span><a href="http://railstips.org/2009/2/21/shoulda-looked-at-it-sooner">Shoulda looked at it sooner</a> - John Nunemaker has written up his thoughts on using Shoulda and how his experience of toe dipping into Shoulda turned into becoming a hooked fan of the testing framework. Shoulda’s ability to be used with or without RSpec is a great for those new to the framework.  Instead of fully committing to Shoulda, you can gradually immerse yourself in it’s features over a period of time.</span></p>
<p><span><a href="http://github.com/maxim/shmacros/tree/master">Shmacros</a> - Maxim Chernyak has released some custom macros he uses as part of Shoulda. With macros for delegates, callbacks and nested attributes, this would make a great extension to your application's tests.</span></p>
<p><span><a href="http://www.justinball.com/2008/10/02/using-shoulda-to-test-login-should_require_login/">Using Shoulda to test login</a> - Justin Ball, has been looking into using Shoulda to test authentication.</span></p>
<p><span><a href="http://technicalpickles.com/posts/test-or-die-validates-uniqueness-of-shoulda-and-factory-girl-edition">Test Or Die: Validates Uniqueness Of, Shoulda and Factory Girl Edition</a> - Finally Josh Nichols has been looking at applying Shoulda to an article by John Nunemaker.  Josh's post is a great read for those looking to start out with Shoulda.</span></p>
<p><em>Post by <a href="http://matthewlang.co.uk">Matthew Lang</a> - Matthew Lang is an ERP developer with a keen interest in Ruby and Rails programming.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Zoran Rilak</strong> &middot; <time datetime="2009-05-05T18:51:00+00:00">May 5, 2009 at 6:51 pm</time></p>
      <p>Matt, please, correct the apostrophes: "your" is the genitive of "you", not "you are".  "You are" is "you're".  Also, "It's" is a shorthand for "it is", not the genitive of "it".  Genitives don't use apostrophes, except in plural: "The Beatles's music".</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Zoran Rilak</strong> &middot; <time datetime="2009-05-05T18:52:00+00:00">May 5, 2009 at 6:52 pm</time></p>
      <p>Er, I botched it.  Genitives of pronouns don't use apostrophes. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>José Valim</strong> &middot; <time datetime="2009-05-05T18:57:00+00:00">May 5, 2009 at 6:57 pm</time></p>
      <p>It would be nice to have a reference to Remarkable as well!</p><p><a href="http://github.com/carlosbrando/remarkable" rel="nofollow">http://github.com/carlosbrando/remarkable</a><br>
<a href="http://remarkable.rubyforge.org/" rel="nofollow">http://remarkable.rubyforge.org/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-05-05T19:41:00+00:00">May 5, 2009 at 7:41 pm</time></p>
      <p>Sorry, I dropped the editing ball. I'm at RailsConf so I'm rather resource poor. I've updated the piece on Matt's behalf.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
