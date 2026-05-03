---
title: How to Significantly Speed Up Gem Installation
date: '2009-03-04'
author: Peter Cooper
author_slug: admin
post_id: 1605
slug: speed-up-gem-installs-significantly-1605
url: "/speed-up-gem-installs-significantly-1605.html"
categories:
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2009/03/speed.png" width="108" height="74" alt="speed.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"></p>
<p>Brian Dainton, a developer at FiveRuns, <a href="http://buddingrubyist.com/2009/02/14/how-to-speed-up-gem-installs-10x/">demonstrates "how to speed up gem installs 10x."</a> I don't buy that it's ten times faster, but disabling the generation of ri and rdoc documents does have a significant effect nonetheless.</p>
<p>Brian demonstrates that you can try it on an ad-hoc basis by adding <code>--no-ri --no-rdoc</code> to your <code>gem install</code> lines, or you can add <code>gem: --no-ri --no-rdoc</code> to your <code>~/.gemrc</code> file.</p>
<p>Sometimes it's the smaller, throwaway tips that can really brighten your day. Got any time-saving <code>.irbrc</code> or <code>.gemrc</code> tips to share?If we get enough, we could run a post full of them.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jerry Cheung</strong> &middot; <time datetime="2009-03-04T21:23:00+00:00">March 4, 2009 at 9:23 pm</time></p>
      <p>I just learned this same tip about a week earlier from our operations guy.  In a similar vein, pulling down gem docs and running 'gem server' locally can be a good productivity boost for development.</p><p><a href="http://whatcodecraves.com/articles/2009/02/28/rails_and_gems_documentation_anywhere" rel="nofollow">http://whatcodecraves.com/articles/2009/02/28/rails_and_gems_documentation_anywhere</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Erik</strong> &middot; <time datetime="2009-03-04T21:26:00+00:00">March 4, 2009 at 9:26 pm</time></p>
      <p>The only problem I've found with this idea is that you then have no RDocs locally for your gem. Most of the time, not a big deal. However, in the case of the 800lb gorilla, Rails, if you don't have the RDoc for your older versions, you can be lost when trying to code for your old site/program that uses an older API. I have run into this problem even just going from Rails 2.1 to 2.2. I was trying to do something with an ActiveRecord object and found a great option for has_many in the online RDoc...urg, why doesn't it work...oh, it was introduced in 2.2 and I'm on 2.1.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bruce Williams</strong> &middot; <time datetime="2009-03-04T21:31:00+00:00">March 4, 2009 at 9:31 pm</time></p>
      <p>This is especially useful on automated server installations (eg, with Chef), when you don't really need the documentation and would like to bootstrap a system quickly.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>iain</strong> &middot; <time datetime="2009-03-04T21:46:00+00:00">March 4, 2009 at 9:46 pm</time></p>
      <p>I use the tricks for .irbrc posted recently by thoughbot: <a href="http://giantrobots.thoughtbot.com/2008/12/23/script-console-tips" rel="nofollow">http://giantrobots.thoughtbot.com/2008/12/23/script-console-tips</a></p><p>I had syntax highlight in irb for a long time, but the logger in ./script/console was very useful addition!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ben Schwarz</strong> &middot; <time datetime="2009-03-05T00:49:00+00:00">March 5, 2009 at 12:49 am</time></p>
      <p>Its worth noting that Sprinkle does this out of the box, you can also re-enable rdoc and ri installation if you so wish to.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>szeryf</strong> &middot; <time datetime="2009-03-05T08:08:00+00:00">March 5, 2009 at 8:08 am</time></p>
      <p>Erik, try <a href="http://apidock.com/rails" rel="nofollow">http://apidock.com/rails</a>, they have docs for Rails since version 1.0.0.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>pete</strong> &middot; <time datetime="2009-03-05T17:50:00+00:00">March 5, 2009 at 5:50 pm</time></p>
      <p>@Erik: same thing as szeryf, but I prefer <a href="http://www.railsbrain.com/" rel="nofollow">Rails Brain</a>.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>cldwalker</strong> &middot; <time datetime="2009-03-05T21:06:00+00:00">March 5, 2009 at 9:06 pm</time></p>
      <p>A common irb 'trick' I use is reloading a file I've required: <a href="http://github.com/cldwalker/my_core/blob/36a995109fbf8ab58cb5f6a17ce9d98071d60f57/lib/my_core/object.rb#L20-23" rel="nofollow">http://github.com/cldwalker/my_core/blob/36a995109fbf8ab58cb5f6a17ce9d98071d60f57/lib/my_core/object.rb#L20-23</a></p><p>For example: If I want to reload a required path 'hirb/display', then I reload it with: irb&gt;&gt; reload 'hirb/display'</p><p>My irbrc files are at <a href="http://github.com/cldwalker/irbfiles/tree/master" rel="nofollow">http://github.com/cldwalker/irbfiles/tree/master</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matías</strong> &middot; <time datetime="2009-03-06T12:24:00+00:00">March 6, 2009 at 12:24 pm</time></p>
      <p>No documentation.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joshua Sierles</strong> &middot; <time datetime="2009-03-07T20:43:00+00:00">March 7, 2009 at 8:43 pm</time></p>
      <p>Another great way to speed up gem installs is to setup an internal gem mirror. It's dead simple: only requires a web virtual host and the gem command. This has an added benefit of allowing you to stage your own gems or add gems from other servers. Try your luck with the 'gem mirror' command, or use the following simpler method:</p><p><a href="http://rubyforge.org/docman/view.php/5/231/mirror_setup.html" rel="nofollow">http://rubyforge.org/docman/view.php/5/231/mirror_setup.html</a></p><p>Also see our Chef recipe for creating a mirror: <a href="http://tinyurl.com/bj6ubl" rel="nofollow">http://tinyurl.com/bj6ubl</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
