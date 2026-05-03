---
title: 'Monk: A Ruby Glue-Framework for Web Development'
date: '2009-08-14'
author: Ric Roberts
author_slug: ricroberts
post_id: 2245
slug: monk-a-ruby-glue-framework-for-web-development-2245
url: "/monk-a-ruby-glue-framework-for-web-development-2245.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2009/08/monk.jpg" alt="monk" style="float:left; margin-right:12px; margin-bottom:12px;">I recently came across the interesting-looking <a href="http://github.com/monkrb/monk/tree/master">Monk</a> framework.  It allows you to specify a list of <a href="http://monkrb.com/dependencies">dependencies</a> for technologies to use in your project (in the form of git repositories or gems), and it will take care of extracting them into your application's <code>vendor</code> folder.</p>
<p>With the default <a href="http://monkrb.com/skeletons">skeleton</a> (for which you'll need a <a href="http://monkrb.com/help/redis">Redis</a> key/value database installed), you'll get a <a href="http://www.sinatrarb.com/">Sinatra</a> application with <a href="http://haml-lang.com/">Haml</a>, <a href="http://rack.rubyforge.org/">Rack</a>, <a href="http://github.com/citrusbyte/contest">Contest</a>, <a href="http://github.com/citrusbyte/stories/tree/master">Stories</a>, <a href="http://wiki.github.com/brynary/webrat">Webrat</a> and <a href="http://ohm.keyvalue.org/">Ohm</a>.  However, you can create your own skeleton with its own dependencies if you like.</p>
<p>You can install Monk with:</p>
<pre>gem install monk</pre>
<p>... and then initialize a project with the default skeleton:</p>
<pre>monk init myapp</pre>
<p>This will give you a familiar structure with helpers, models, routes, views, lib and vendor folders.</p>
<p>For more details, check out the <a href="http://monkrb.com/">Monk</a> website.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>bryanl</strong> &middot; <time datetime="2009-08-15T12:22:00+00:00">August 15, 2009 at 12:22 pm</time></p>
      <p>This article seems to be another in a growing trend of articles about nothing.  I would love some more meaty content.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-08-15T16:19:00+00:00">August 15, 2009 at 4:19 pm</time></p>
      <p>Bryan: Can you think of anything from our past that's the sort of thing you'd like to see going forward? Ruby Inside tends to be nearly all news and linking to other people's cool stuff - not about original content - but perhaps there's a middle ground we could strike.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ric</strong> &middot; <time datetime="2009-08-15T16:26:00+00:00">August 15, 2009 at 4:26 pm</time></p>
      <p>I just about to say something similar, Peter.  Bryan (and anyone else): please let us know what sort of stuff you'd like to see. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>bryanl</strong> &middot; <time datetime="2009-08-15T20:18:00+00:00">August 15, 2009 at 8:18 pm</time></p>
      <p>You know I really like the posts where you summarized a huge amount of links.  <a href="irb-lets-bone-up-on-the-interactive-ruby-shell-1771.html" rel="nofollow">http://www.rubyinside.com/irb-lets-bone-up-on-the-interactive-ruby-shell-1771.html</a> Is a good example.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>onesupercoder</strong> &middot; <time datetime="2009-08-16T04:37:00+00:00">August 16, 2009 at 4:37 am</time></p>
      <p>Hey I think this site has quality information about ruby and it's amazing gems.  You rock Ruby Inside!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Quitcher Bitchin</strong> &middot; <time datetime="2009-08-17T15:12:00+00:00">August 17, 2009 at 3:12 pm</time></p>
      <p>A little bit more depth on Monk might be nice, but saying this is an article about nothing is absurd.   It's all the more weird that you'd make a complaint like that when you just wrote this:<br>
<a href="http://smartic.us/2009/08/15/back-from-summer-vacation/" rel="nofollow">http://smartic.us/2009/08/15/back-from-summer-vacation/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-08-17T16:29:00+00:00">August 17, 2009 at 4:29 pm</time></p>
      <p>To be fair, that's his personal blog :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hubert Łępicki</strong> &middot; <time datetime="2009-08-17T21:42:00+00:00">August 17, 2009 at 9:42 pm</time></p>
      <p>Well, this looks nice. As a general note, I think Sinatra is great. I didn't use it that much, but it proved me to be useful for creating web services. You know, tiny controllers, big models, or filesystem stuff. I am still not cnvinced to use it for projects with heavy GUI requirements, maybe I need to dig into it a bit more, but well-structured code of Rails app makes me a bit more happy.</p><p>As it comes to Ruby Inside -- I am obsevring lack of interesting articles recenlty too. In Poland we say it's "cucumber season", which means it's summer holiday and all the newspapers/tv/blogs tend to cover shit stories. I hope this is the case and Ruby community is still growing and doing well.</p><p>Hope to see more things happening in Ruby world since September!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>q</strong> &middot; <time datetime="2009-08-18T15:16:00+00:00">August 18, 2009 at 3:16 pm</time></p>
      <p>The nice thing about Sinatra is your code is as well-structured as you choose to make it (and Monk seems to add the option of using someone else's structure if you prefer).</p><p>And if we're talking about the _internal_ structure of Sinatra's code then there's no comparison. ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Steve Roger</strong> &middot; <time datetime="2009-08-19T19:20:00+00:00">August 19, 2009 at 7:20 pm</time></p>
      <p>Hi Roberts..I have gone through the monk frame work.really it has a great flexibility to specify the dependencies..Nice article</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
