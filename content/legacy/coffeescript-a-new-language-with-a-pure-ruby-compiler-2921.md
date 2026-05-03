---
title: 'CoffeeScript: A New Language With A Pure Ruby Compiler'
date: '2010-01-04'
author: Peter Cooper
author_slug: admin
post_id: 2921
slug: coffeescript-a-new-language-with-a-pure-ruby-compiler-2921
url: "/coffeescript-a-new-language-with-a-pure-ruby-compiler-2921.html"
categories:
- cool
---

{{< rawhtml >}}
<p><img src="/assets/2010/01/coffeescript.png" width="59" height="69" alt="coffeescript.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"> <a href="http://jashkenas.github.com/coffee-script/">CoffeeScript</a> <sup>(<a href="http://github.com/jashkenas/coffee-script/">GitHub repo</a>)</sup> is a new programming language with a pure Ruby compiler. Creator Jeremy Ashkenas calls it "JavaScript's less ostentatious kid brother" - mostly because it compiles <i>into</i> JavaScript and shares most of the same constructs, but with a different, tighter syntax.</p>
<p><em>Interesting trivia: Jeremy was inspired to create CoffeeScript based on code he saw while reading <a href="http://8dc2fg6673tfx6f6ea1yt90uf1.hop.clickbank.net/">Create Your Own Programming Language</a> by Marc Andre Cournoyer!</em></p>
<p>To get a feel for the language, check out this example code (CoffeeScript on the left, resulting JavaScript on the right):</p>
<p><img src="/assets/2010/01/cofeescriptdemo.png" width="640" height="485" alt="cofeescriptdemo.png"></p>
<p>As a Ruby project, you can get the CoffeeScript compiler installed with a simple <code>gem install coffee-script</code> or check out <a href="http://github.com/jashkenas/coffee-script/">the code from/on GitHub</a>. The code is worth a look as it's notably quite vanilla with hand crafted Ruby covering the lexer and code generation and <a href="http://i.loveruby.net/en/projects/racc/doc/">Racc</a> built code for the parser.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>sasuke</strong> &middot; <time datetime="2010-01-04T23:25:00+00:00">January 4, 2010 at 11:25 pm</time></p>
      <p>really nice project. in github there is like example the rewrite of underscore,js in coffee</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeremy Ashkenas</strong> &middot; <time datetime="2010-01-04T23:27:00+00:00">January 4, 2010 at 11:27 pm</time></p>
      <p>For folks who'd like to see where the language is headed, I'd recommend checking out the source and running "rake gem:install" -- I'm hoping to have version 0.2.0 out soon, which includes significant whitespace, object comprehensions, better conversion of statements into expressions, and a whole host of other goodies, most of which you can read about here:</p><p><a href="http://github.com/jashkenas/coffee-script/issues/closed" rel="nofollow">http://github.com/jashkenas/coffee-script/issues/closed</a></p><p>Have fun.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ric Roberts</strong> &middot; <time datetime="2010-01-05T10:02:00+00:00">January 5, 2010 at 10:02 am</time></p>
      <p>Hi Peter. Good post - this looks interesting.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Juvenn Woo</strong> &middot; <time datetime="2010-01-05T11:36:00+00:00">January 5, 2010 at 11:36 am</time></p>
      <p>Seems everything in CoffeScript is an object, function is, too. Right?<br>
It's cute!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonas Nicklas</strong> &middot; <time datetime="2010-01-05T17:59:00+00:00">January 5, 2010 at 5:59 pm</time></p>
      <p>I've created a very simple plugin for using CoffeeScript from Rails, might be useful:</p><p><a href="http://github.com/jnicklas/bistro_car" rel="nofollow">http://github.com/jnicklas/bistro_car</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Benedict Eastaugh</strong> &middot; <time datetime="2010-01-06T09:48:00+00:00">January 6, 2010 at 9:48 am</time></p>
      <p>Juvenn: as in JavaScript, yes, functions are objects.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Zach Dennis</strong> &middot; <time datetime="2010-01-06T18:50:00+00:00">January 6, 2010 at 6:50 pm</time></p>
      <p>This looks very interesting indeed! Very cool project Jeremy, great post Peter,</p>
    </li>
      <li>
      <p class="comment-meta"><strong>batman</strong> &middot; <time datetime="2010-01-09T19:07:00+00:00">January 9, 2010 at 7:07 pm</time></p>
      <p>you have to explain what is the differnce between this and Ruby. i.e why should someone use this new language ? what are the benefits?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Beoran</strong> &middot; <time datetime="2010-01-13T10:25:00+00:00">January 13, 2010 at 10:25 am</time></p>
      <p>Although Coffeescript feels a bit pythonic, it's a nice idea. Makes me wonder how the various Ruby-to-Javascript compilers are doing.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
