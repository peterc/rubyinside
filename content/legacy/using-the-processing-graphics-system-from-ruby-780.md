---
title: Using the Processing Graphics System from Ruby
date: '2008-02-29'
author: Peter Cooper
author_slug: admin
post_id: 780
slug: using-the-processing-graphics-system-from-ruby-780
url: "/using-the-processing-graphics-system-from-ruby-780.html"
categories:
- cool
- os-x-specific
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2008/02/processing-ruby.jpg" width="285" height="293" alt="processing-ruby.png"></p>
<p><a href="http://processing.org/">Processing</a> is a popular, open source graphics framework and programming language. It's used by thousands of artists, researchers, and students to put together graphics-focused applications, art, and other visual experiments. It's like a more powerful <a href="http://en.wikipedia.org/wiki/NodeBox">NodeBox</a>, if you're familiar with that project.</p>
<p>Processing typically relies on scripts written in Java, but now, thanks to <a href="http://jruby.codehaus.org/">JRuby</a>, it's possible to interact with the Processing framework directly from regular Ruby code. You're going to need a fully working JRuby installation for this, and it seems to have only been tested on OS X (which I've also tested it on - it works well!), but the interface code, along with two examples, <a href="http://www.the-shoebox.org/apps/44">are available at The Shoebox</a>. If you want to put together quirky art apps, graphical experiments, or just doodle around, it's well worth trying.</p>
<p><span style="font-style: italic;">(Many thanks to John Weir - who was, at one time, working on something similar called Dynamite - for the pointer to this new project.)</span></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Dan Fitch</strong> &middot; <time datetime="2008-02-29T15:26:00+00:00">February 29, 2008 at 3:26 pm</time></p>
      <p>I also have a very-beta JRuby Processing library, here: <a href="http://code.google.com/p/jankity/" rel="nofollow">http://code.google.com/p/jankity/</a></p><p>Good doodlings to all!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
