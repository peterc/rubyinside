---
title: Ruby Command Line One Liners
date: '2006-07-13'
author: Peter Cooper
author_slug: admin
post_id: 141
slug: ruby-command-line-one-liners-141
url: "/ruby-command-line-one-liners-141.html"
categories:
- linux-specific
- os-x-specific
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2006/07/oneliners.jpg" height="120" width="516" border="1" hspace="4" vspace="4" alt="Oneliners"></p>
<p>Perl is particularly well known for its one-liners from the command prompt, but Ruby is pretty adept at it too. David P Thomas has put together a collection of about <a href="http://www.fepus.net/ruby1line.txt">100 Ruby one-liners in a single text file</a> for us all to enjoy.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>hgs</strong> &middot; <time datetime="2006-07-13T10:47:00+00:00">July 13, 2006 at 10:47 am</time></p>
      <p>Or one could just use glark <a href="http://www.incava.org/projects/glark/" rel="nofollow">http://www.incava.org/projects/glark/</a>  which is ruby grep with (optionally) highlighted output, ruby regexps,  many features from gnu grep and the find command.</p><p>glark '/foo.*bar.*baz/' file<br>
glark '/foo|bar|baz/' file<br>
glark -0 regexp file<br>
glark -0 --and=1 foo --and=1 bar baz file<br>
glark -0 'foo.*bar.*baz' file</p><p>should do the above.</p><p>For other one liners there is:<br>
<a href="http://wiki.rubygarden.org/Ruby/page/show/OneLiners" rel="nofollow">http://wiki.rubygarden.org/Ruby/page/show/OneLiners</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael</strong> &middot; <time datetime="2006-07-13T17:02:00+00:00">July 13, 2006 at 5:02 pm</time></p>
      <p>None of those above examples SHOULD require "cat", should they?  (Hearkening back to Randal Schwartz' "Useless use of 'cat'" awards days..."</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
