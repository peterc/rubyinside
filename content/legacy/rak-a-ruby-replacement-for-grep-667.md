---
title: 'Rak: A Ruby replacement for “grep”'
date: '2007-12-07'
author: Peter Cooper
author_slug: admin
post_id: 667
slug: rak-a-ruby-replacement-for-grep-667
url: "/rak-a-ruby-replacement-for-grep-667.html"
categories:
- ruby-tricks
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2007/12/rak.png" width="325" height="228"></p>
<p><a href="http://rak.rubyforge.org/">Rak</a>, by Daniel Lucraft, is billed as a "grep replacement in pure Ruby." Even though it's a reasonably generic system tool simply written in Ruby, it actually has a bunch of features that are useful to Ruby and Rails developers specifically. It'll ignore the .svn, .cvs and pkg directories that might be present in your projects. It uses ANSI to give color highlighted output (as seen in the screenshot above). It also accepts Ruby syntax regular expressions and even lets you perform basic Ruby operations on the displayed output. There are a bunch of examples at the <a href="http://rak.rubyforge.org/">official Rak site</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>hgs</strong> &middot; <time datetime="2007-12-07T11:40:00+00:00">December 7, 2007 at 11:40 am</time></p>
      <p>Glark pre-dates this by a good while.  It doesn't automatically filter the .svn (etc) directories by default (IIRC), but it will do a lot of work that find does, will process paths rather than just directories, handle context like GNU grep does, and more.<br>
<a href="http://www.incava.org/projects/glark/" rel="nofollow">http://www.incava.org/projects/glark/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Lucraft</strong> &middot; <time datetime="2007-12-07T15:18:00+00:00">December 7, 2007 at 3:18 pm</time></p>
      <p>Thanks for the post. I'd like to develop Rak further by adding more features useful to Ruby developers specifically, so if anyone has any further ideas....</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Todd Werth</strong> &middot; <time datetime="2007-12-07T17:45:00+00:00">December 7, 2007 at 5:45 pm</time></p>
      <p>I just gave it a whirl, and it seems to work well; I like the format of the output and the defaults (except -a should default to true IMHO).  I then checked out glark, as I've never heard of it before.  </p><p>From my 10 minutes of playing with both, I think I like Rak better, but that opinion is hardly useful without me using both for a decent amount of time.</p><p>However, I will give glark props for a comment in the log.rb file:</p><p>  # All kids love log.<br>
  class Log</p><p>That brings back memories.  Blammo!</p><p>If all you want is color output while skipping certain types of folders, that's easy to do with a simple alias to grep in bash.  Of course I can easily modify Rak if I need to, as it's in Ruby, so that's a plus.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
