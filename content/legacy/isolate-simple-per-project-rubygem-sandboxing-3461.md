---
title: Isolate – Simple, per-project RubyGem sandboxing
date: '2010-06-23'
author: Peter Cooper
author_slug: admin
post_id: 3461
slug: isolate-simple-per-project-rubygem-sandboxing-3461
url: "/isolate-simple-per-project-rubygem-sandboxing-3461.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<blockquote class="stylized">
<p><a href="http://github.com/jbarnette/isolate">Isolate</a> is a tool for managing RubyGems by including them within the project that requires them. At Goldstar, we recently switched from Bundler to Isolate for managing our gem dependencies.</p>
<p>[..]</p>
<p>Though we ended up switching to what I consider to be a technically superior product based on simplicity, we arrived there because of poor community interaction on the part of the Bundler developers.</p>
</blockquote>
<p><cite>Steven Baker</cite></p>
<p><a href="http://github.com/jbarnette/isolate">Isolate</a>, developed by John Barnette, seems to be a less opaque alternative to Bundler where gems are built and installed within a single Ruby project, in a "vendorized" fashion.</p>
<p>Steven's adoption and advocacy of Isolate stems from a bitter and <a href="http://stevenrbaker.com/blog/2010/04/15/from-bundler-to-open-and-inclusive-software-communities.html">fundamental disagreement between Steven, BJ Clark, and an un-named Bundler developer.</a> Ah, the intrigue!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Andrew Grimm</strong> &middot; <time datetime="2010-06-23T04:23:00+00:00">June 23, 2010 at 4:23 am</time></p>
      <p>(Posting here, as the blog's "contact" link is broken, and it doesn't allow comments)</p><p>BJ's blog is empty apart from an example post. Was the criticism so bad the blog was taken down?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-06-23T05:09:00+00:00">June 23, 2010 at 5:09 am</time></p>
      <p>I think that might have been temporary. It loads for me. I've taken <a href="http://skitch.com/petercooper/djpss/bundler-oh-the-fail-i-know-marked-as-pertinent" rel="nofollow">a screenshot</a>, too, "just in case."</p>
    </li>
      <li>
      <p class="comment-meta"><strong>BJ Clark</strong> &middot; <time datetime="2010-06-23T17:20:00+00:00">June 23, 2010 at 5:20 pm</time></p>
      <p>My site wasn't "taken down" by the man, or anything like that, I've been doing some maintenance and moving hosts. This just happened to be posted on the same day I changed some DNS settings. The blog should be back up for everyone.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Barnette</strong> &middot; <time datetime="2010-06-25T20:41:00+00:00">June 25, 2010 at 8:41 pm</time></p>
      <p>A bit of clarity: Isolate wasn't written in reaction to Bundler's perceived lack of stability (or overall complexity, or coding style or whatever). It was extracted from production code that I've had floating around for years, copy/pasting between projects. Ryan finally embarrassed me in to generalizing and releasing it last year.</p><p>It's much less powerful than Bundler. Most importantly, it does *no* dependency resolution beyond what RubyGems offers. It also doesn't provide autorequires, support for vendoring, or Git integration. It's the smallest possible code on top of RubyGems that solves my deployment and collaboration problems, and YM definitely MV.</p><p>I'm very happy that people are enjoying Isolate, but please keep in mind that it's not (and will never be) a "better Bundler." Bundler's overall intent and philosophy are ambitious. Isolate is a stupid Gem sandbox, and I plan to keep it that way.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
