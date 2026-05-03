---
title: 'TinyRB: A Young, Tiny Ruby VM for Us to Play With'
date: '2009-02-13'
author: Peter Cooper
author_slug: admin
post_id: 1507
slug: tinyrb-a-young-tiny-ruby-vm-for-us-to-play-with-1507
url: "/tinyrb-a-young-tiny-ruby-vm-for-us-to-play-with-1507.html"
categories:
- cool
---

{{< rawhtml >}}
<p><a href="http://macournoyer.com/blog/2009/02/12/tinyrb/"><img src="/assets/2009/02/tinyrb.jpg" width="123" height="62" alt="tinyrb.jpg" style="float:left; margin-right:12px; margin-bottom:12px;"></a> Marc-André Cournoyer has proven that almost anything is possible by developing a small, functional, and surprisingly "unslow" Ruby VM called <a href="http://macournoyer.com/blog/2009/02/12/tinyrb/">TinyRB</a>. Some basic testing shows that it's faster than 1.8 on a Fibonacci benchmark, though slightly slower than JRuby, Rubinius, and YARV (Ruby 1.9).</p>
<p>Coming in at just 1541 lines of code so far, TinyRB is <em>not</em> going to be replacing your usual Ruby interpreter anytime soon. While it supports most of the keywords and some base classes including Class, Object, Fixnum, Symbol, and String, there's no support for Array, Module, Float, and a whole ton of essential stuff.</p>
<p>TinyRB, in its current state, is a <em>playground</em> for you to mess around in. In <a href="http://rubyconf2008.confreaks.com/keynote.html">his last keynote</a> at RubyConf 2008, Dave Thomas suggested we "fork Ruby" in many different ways, and TinyRB enables you to do that on a small scale. So newbies.. move on - but if the thought of experimenting and playing with a Ruby VM is something that gets you putting in a major Red Bull and pizza order.. <a href="http://macournoyer.com/blog/2009/02/12/tinyrb/">dive in</a>.</p>
<p>In other fringe implementation news, Brian Ford talks about how some new tweaks have <a href="http://blog.brightredglow.com/2009/2/12/all-shiny-and-new">increased Rubinius' performance <strike>four-fold</strike> two-fold</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>macournoyer</strong> &middot; <time datetime="2009-02-13T12:58:00+00:00">February 13, 2009 at 12:58 pm</time></p>
      <p>yay! thx for the post Peter.</p><p>I just want to add that I plan to add support for some of those shiny essentials, specially the ones named here, maybe not Regexp, too much trouble... We'll see</p>
    </li>
      <li>
      <p class="comment-meta"><strong>pjm</strong> &middot; <time datetime="2009-02-13T12:59:00+00:00">February 13, 2009 at 12:59 pm</time></p>
      <p>Err, you might want to check out Brian's retraction of the 4x claims: </p><p><a href="http://blog.brightredglow.com/2009/2/12/this-is-not-cold-fusion" rel="nofollow">http://blog.brightredglow.com/2009/2/12/this-is-not-cold-fusion</a></p><p>Drats...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-02-13T13:03:00+00:00">February 13, 2009 at 1:03 pm</time></p>
      <p>First off, thanks pjm ;-)</p><p>Secondly.. THAT'S IT!! No more posts about speed increases! Every damn time I've posted something benchmark related in the last year, it's always been retracted or changed. My conclusion.. either no-one knows how to benchmark properly or statistics is a nightmare subject. I'll be steering clear ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>cbmeeks</strong> &middot; <time datetime="2009-02-13T13:35:00+00:00">February 13, 2009 at 1:35 pm</time></p>
      <p>@macournoyer</p><p>I was having trouble getting webrick to run Rails 2.3.  It would run, but it would take 40 seconds per request!  Even for simple "Hello world" templates.</p><p>So I installed Thin and now start my server like:<br>
./script/server thin</p><p>BAM!  Instant rendering.</p><p>Great job!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sebastian</strong> &middot; <time datetime="2009-02-13T17:49:00+00:00">February 13, 2009 at 5:49 pm</time></p>
      <p>@Peter: maybe you can benchmark how fast people retract based on which VM they're running? :P</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gregory Brown</strong> &middot; <time datetime="2009-02-13T21:17:00+00:00">February 13, 2009 at 9:17 pm</time></p>
      <p>@Peter, I'm think both statements are true :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>hasham2</strong> &middot; <time datetime="2009-02-23T07:17:00+00:00">February 23, 2009 at 7:17 am</time></p>
      <p>I think this could be great for limited memory devices like cell phones etc</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Игнат</strong> &middot; <time datetime="2009-02-26T04:49:00+00:00">February 26, 2009 at 4:49 am</time></p>
      <p>Действительно, на самом деле все очень просто :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
