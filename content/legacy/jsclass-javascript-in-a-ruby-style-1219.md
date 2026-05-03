---
title: JS.Class – JavaScript in a Ruby Style
date: '2008-09-26'
author: Peter Cooper
author_slug: admin
post_id: 1219
slug: jsclass-javascript-in-a-ruby-style-1219
url: "/jsclass-javascript-in-a-ruby-style-1219.html"
categories:
- cool
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2008/09/jsclass.jpg" width="127" height="69" alt="jsclass.png" style="float:left; margin-right:12px; margin-bottom:12px;"> <a href="http://jsclass.jcoglan.com/">JS.Class</a> is an attempt at making JavaScript more Ruby-like. More specifically, it's a library that makes object oriented development easier in JavaScript (in comparison to JS's prototype technique, at least) by implementing Ruby's core object, module, and class systems as well as <a href="http://jsclass.jcoglan.com/hooks.html">some of Ruby's meta-programming techniques</a>.</p>
<p>As well as ports of Enumerable, Observable, Comparable, and Forwardable, you get <a href="http://jsclass.jcoglan.com/classes.html">subclassing</a>, <a href="http://jsclass.jcoglan.com/modules.html">mixins</a>, <a href="http://jsclass.jcoglan.com/reflection.html">reflection</a>, late-binding arguments, <a href="http://jsclass.jcoglan.com/singletonmethods.html">singleton methods</a>, <a href="http://jsclass.jcoglan.com/binding.html">method binding</a>, and Ruby-like <a href="http://jsclass.jcoglan.com/inheritance.html">inheritance</a>. Of course, JavaScript gives access to many of these elements already, but JS.Class presents things with a Ruby flavor.</p>
<p>The <a href="http://jsclass.jcoglan.com/">official JS.Class site</a> is particularly well done and each main area is well documented.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Alex Young</strong> &middot; <time datetime="2008-09-26T11:15:00+00:00">September 26, 2008 at 11:15 am</time></p>
      <p>This looks like an excellent library.  Whilst Prototype has some Ruby influences it's always great to see a different take.  The JS.StackTrace utility class looks especially useful for debugging.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>draegtun</strong> &middot; <time datetime="2008-09-29T13:47:00+00:00">September 29, 2008 at 1:47 pm</time></p>
      <p>For an alternative check out <a>Joose</a></p><p>Also it isn't tied into Prototype which I think is a good thing ;-)</p><p>/I3az/</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James Coglan</strong> &middot; <time datetime="2008-10-02T10:11:00+00:00">October 2, 2008 at 10:11 am</time></p>
      <p>Hi guys, thanks for the plug, very much appreciated. Just wanted to point out that JS.Class is not tied to Prototype, it has no external dependencies on other JS libraries. I assume Alex was drawing a comparison, but if the site gives the impression that Prototype is required, do let me know where so I can correct it.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
