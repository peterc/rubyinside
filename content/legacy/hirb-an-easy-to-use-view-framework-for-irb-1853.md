---
title: 'Hirb: An Easy-to-Use View Framework for irb'
date: '2009-06-28'
author: Ric Roberts
author_slug: ricroberts
post_id: 1853
slug: hirb-an-easy-to-use-view-framework-for-irb-1853
url: "/hirb-an-easy-to-use-view-framework-for-irb-1853.html"
categories:
- miscellaneous
- tools
---

{{< rawhtml >}}
<p><a href="/assets/2009/06/hirb.jpg"><img style="float:left;margin-right:12px; margin-bottom:12px;" title="hirb" src="/assets/2009/06/hirb.jpg" alt="hirb" width="60" height="61"></a> The Interactive Ruby Shell (<a href="http://en.wikipedia.org/wiki/Interactive_Ruby_Shell">irb</a>) and the Rails console are great for interacting and experimenting with your ruby application code, but sometimes it's hard to visualize the output. Gabriel Horner has come to the rescue with <a title="Hirb" href="http://tagaholic.me/hirb/">Hirb</a>: a 'mini view framework' for irb which is designed to improve the default output to make it more human-readable.</p>
<p>Hirb does this by formatting console output according to its type, and paging if there's more than a screenful to display. For example, Hirb will automatically display ActiveRecord model instances in a non-wrapping, table-like view.<br>
<code><br>
irb&gt;&gt; Tag.last<br>
+-----+-------------------------+-------------+<br>
| id  | created_at              | description |<br>
+-----+-------------------------+-------------+<br>
| 907 | 2009-03-06 21:10:41 UTC | blah        |<br>
+-----+-------------------------+-------------+<br>
1 row in set<br>
</code><br>
There's also a helper provided which displays a collection of arrays or hashes as a tree. This might be useful for visualizing class inheritance trees, nested classes or relationships between ActiveRecord models (as <a href="http://tagaholic.me/2009/03/18/ruby-class-trees-rails-plugin-trees-with-hirb.html">this blog post</a> describes).</p>
<p>In addition to the defaults you can specify your own reusable views, <a href="http://tagaholic.me/hirb/doc/classes/Hirb/Helpers/Tree.html">as the author explains</a> in the documentation, leading you through an example of displaying hashes as <a href="http://en.wikipedia.org/wiki/YAML">YAML</a>.</p>
<p>Hirb prints to the standard output by default, but you can configure it to write to anywhere you like, such as a log file.</p>
<p>The source code is on <a href="http://github.com/cldwalker/hirb/tree/master">Github</a> (or it can be installed as a gem), with documentation available on the <a href="http://tagaholic.me/hirb/doc/index.html">author's site</a>. Hirb users are invited to share any views they have written by forking the Github repository and adding them into the project structure.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>cldwalker</strong> &middot; <time datetime="2009-06-30T03:24:00+00:00">June 30, 2009 at 3:24 am</time></p>
      <p>Thanks for the mention! Glad others are finding Hirb useful.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>David Sousa</strong> &middot; <time datetime="2009-06-30T15:43:00+00:00">June 30, 2009 at 3:43 pm</time></p>
      <p>I want to say thanks to RubyInside. Always bringing useful posts.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
