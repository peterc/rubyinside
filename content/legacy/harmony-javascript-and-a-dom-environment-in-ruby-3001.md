---
title: 'Harmony: JavaScript And A DOM Environment In Ruby'
date: '2010-02-17'
author: Peter Cooper
author_slug: admin
post_id: 3001
slug: harmony-javascript-and-a-dom-environment-in-ruby-3001
url: "/harmony-javascript-and-a-dom-environment-in-ruby-3001.html"
categories:
- cool
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2010/02/harmony.png" width="91" height="94" alt="harmony.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"><a href="http://github.com/mynyml/harmony">Harmony</a>, from Martin Aumont, is a new Ruby DSL for executing JavaScript and DOM-using code from within Ruby apps. Why's that cool? Well, it enables you to build your own Ruby-level unit tests for JavaScript code within your Web applications - everything can be under one set of test suites!</p>
<p>Harmony sounds like a significant piece of engineering, but really it's a wrapper that stands on the shoulder of giants in the form of <a href="http://github.com/jbarnette/johnson/">Johnson</a>, which provides the Mozilla Spidermonkey Javascript runtime to Ruby, and <a href="http://github.com/thatcher/env-js">env.js</a>, a DOM environment recreated in JavaScript.</p>
<p>Harmony's "Hello World" example:</p>
<p><img src="/assets/2010/02/harmony2.png" width="313" height="217" alt="harmony2.png"></p>
<h3>HolyGrail: The Rails Plugin</h3>
<p>If you're using Rails, <a href="http://github.com/mynyml/holygrail">HolyGrail</a> is a plugin that brings the power of Harmony to your apps (so far in functional tests only). Some example tests with HolyGrail:</p>
<p><img src="/assets/2010/02/holygrailtest.png" width="521" height="200" alt="holygrailtest.png"></p>
<p><i>Note: This Harmony is not to be confused with</i> <a href="http://get.harmonyapp.com/"><i>the awesome Harmony CMS</i></a> <i>that esteemed Rubyist John Nunemaker is working on..</i></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Julio Cesar Ody</strong> &middot; <time datetime="2010-02-17T02:57:00+00:00">February 17, 2010 at 2:57 am</time></p>
      <p>I'm using it for a project of mine, as a way to be able to stay within RSpec land and test JS without relying on Selenium.</p><p><a href="http://github.com/juliocesar/shining/blob/master/spec/shining_spec.rb" rel="nofollow">http://github.com/juliocesar/shining/blob/master/spec/shining_spec.rb</a></p><p>If like me you're planning on writing tests/specs with harmony in the form of a local page acting as a fixture that includes some Javascript in the head, you might want to use Harmony::Page.fetch and pass a file URI (file:///) as a parameter.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Lori M Olson</strong> &middot; <time datetime="2010-02-18T18:15:00+00:00">February 18, 2010 at 6:15 pm</time></p>
      <p>Thanks for sharing that, Julio!  Having an RSpec example suddenly makes Harmony a LOT more interesting to me.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>george naing</strong> &middot; <time datetime="2010-02-22T04:44:00+00:00">February 22, 2010 at 4:44 am</time></p>
      <p>Thank you very much for your example of using Ruby as a DSL<br>
Cheers</p><p>george</p><p><a href="index.html" rel="nofollow">http://www.rubyinside.com/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>george naing</strong> &middot; <time datetime="2010-02-22T04:45:00+00:00">February 22, 2010 at 4:45 am</time></p>
      <p>did my comments go in?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>george naing</strong> &middot; <time datetime="2010-02-22T04:46:00+00:00">February 22, 2010 at 4:46 am</time></p>
      <p>did my comment go in?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brian Demant</strong> &middot; <time datetime="2010-02-26T19:48:00+00:00">February 26, 2010 at 7:48 pm</time></p>
      <p>Does Harmony handle AJAX, Events and other asynchronous?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>justin</strong> &middot; <time datetime="2010-03-19T00:39:00+00:00">March 19, 2010 at 12:39 am</time></p>
      <p>Thanks for the example, oh and George your comment went in!!!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
