---
title: Ezra Gets Rails® On Rack
date: '2008-04-25'
author: Peter Cooper
author_slug: admin
post_id: 872
slug: rails-on-rack-872
url: "/rails-on-rack-872.html"
categories:
- cool
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2008/04/awirerack.jpg" width="230" height="230" alt="awirerack.jpg"></p>
<p><a href="http://brainspl.at/">Ezra Zygmuntowicz</a> (of <a href="http://merbivore.com/">Merb</a> and <a href="http://www.engineyard.com/">Engine Yard</a> fame) has been spending quite a bit time playing with Rails®, both by cleaning up parts of ActionPack but, more significantly, <a href="http://brainspl.at/articles/2008/04/25/hey-rails-nice-rack">porting Merb's Rack mechanics to Rails</a>. He has <a href="http://github.com/ezmobius/rails/commits/master">a personal fork of Rails on Github</a> where he's doing all the work.</p>
<p>It might not sound particularly impressive work from this description, but Ezra appears to be doing some good work in bringing the Rails dispatch system up to modern standards, and that can only help with Rails' performance and stability in future. Ezra has also made the mutex locks more granular which provides a "speed boost with standard Mongrel under concurrent load" although more thread-safety testing is, he readily admits, required.</p>
<p>Perhaps more developments on this front will lead to a much needed <em>mod_rack</em> to make deploying Ruby applications on the Web easier without workaround techniques like <a href="http://switchpipe.org/">SwitchPipe</a> or <a href="http://www.modrails.com/">mod_rails</a>. So, let's give Ezra some applause, and hope he (and maybe others) will keep up this great work :)</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Geoffrey Grosenbach</strong> &middot; <time datetime="2008-04-26T01:00:00+00:00">April 26, 2008 at 1:00 am</time></p>
      <p>This may seem like a very small step for developer-kind, but I think this is a momentous event. Hopefully it will encourage people to take advantage of Git and attempt massive improvements and refactorings of Rails.</p><p>Some of these attempts will fail, but others may gain support on their own. Rails developers have been extremely open to running off the Rails trunk. Going one step further and developing against a promising fork will probably appeal to many people.</p><p>Not to mention that EngineYard has several million USD reserved for open source projects like this.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-04-26T01:13:00+00:00">April 26, 2008 at 1:13 am</time></p>
      <p>Yesterday's development regarding GitHub serving up Ruby Gems is also pretty important (hope to post about it here shortly). They've definitely got the ball rolling on all of this stuff!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>taco</strong> &middot; <time datetime="2008-04-26T01:15:00+00:00">April 26, 2008 at 1:15 am</time></p>
      <p>nice rack</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Amaiko</strong> &middot; <time datetime="2008-04-26T02:50:00+00:00">April 26, 2008 at 2:50 am</time></p>
      <p>Seems COOL</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jon Egil Strand</strong> &middot; <time datetime="2008-04-27T17:15:00+00:00">April 27, 2008 at 5:15 pm</time></p>
      <p>This is indeed great news. Engineyard's skill and deployment experience combined with their resources makes this branch a viable alternative for high-volume rails apps. </p><p>This one-community-many-codebases is a fundamental shift in both mindset and flexibility and has the potential to greatly help all involved.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Koz</strong> &middot; <time datetime="2008-04-29T21:46:00+00:00">April 29, 2008 at 9:46 pm</time></p>
      <p>I think it's important to point out that ezra's not doing this work in some fork or vacuum.  We're working closely together and intend to merge this branch post 2.1.  One community-many codebases may well be an option to consider, but there's no need to here.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tim Dysinger</strong> &middot; <time datetime="2008-05-01T19:46:00+00:00">May 1, 2008 at 7:46 pm</time></p>
      <p>Another game-changing feature of of git &amp; github is <a href="http://gems.github.com" rel="nofollow">http://gems.github.com</a></p><p>Which might in the near future mean that anybody can fork rails (or any project) and then gem or vendor install their fork.  Awesome.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tim Dysinger</strong> &middot; <time datetime="2008-05-01T19:50:00+00:00">May 1, 2008 at 7:50 pm</time></p>
      <p>Lol oops I just saw peter cooper above already mentioned the automatic gems at github.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
