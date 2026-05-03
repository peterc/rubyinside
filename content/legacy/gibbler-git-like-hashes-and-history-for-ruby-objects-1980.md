---
title: 'Gibbler: Git-like Hashes and History for Ruby Objects'
date: '2009-07-13'
author: Ric Roberts
author_slug: ricroberts
post_id: 1980
slug: gibbler-git-like-hashes-and-history-for-ruby-objects-1980
url: "/gibbler-git-like-hashes-and-history-for-ruby-objects-1980.html"
categories:
- cool
- miscellaneous
- tools
---

{{< rawhtml >}}
<p><img style="float:left;margin-right:12px;margin-bottom:12px" src="/assets/2009/07/whoababy.gif" alt="gibbler">Inspired by <a href="http://git-scm.com/">Git</a> (the version control system), <a href="http://goldensword.ca/">Delano Mandelbaum</a> has come up with a library called <a href="http://github.com/delano/gibbler/tree/master">Gibbler</a>, which produces hashes and history for Ruby objects.</p>
<p>Calling the <code>gibbler</code> method on an object will produce a 40 character git-like SHA1 hash (or you can use <code>gibbler.short</code> to get just the first 8 chars).</p>
<p><code>my_object.gibbler.short         # =&gt; 4c558a56</code></p>
<p>Gibbler can also track changes to an object.  Every time you call <code>gibbler_commit</code>, it will create a clone of the current object and store it in an instance variable.  And just like with git, you can view or revert to any version in the history.  By default Gibbler supports history for Hashes, Arrays and Strings.</p>
<p>Get <a href="http://github.com/delano/gibbler/tree/master">Gibbler</a> and read the <a href="http://delano.github.com/gibbler/">documentation</a> on Github. Delano makes the disclaimer that his code is still very new and not particularly efficient (due to keeping everything in memory), but he invites others to play with it and submit patches.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Hristo Hristov</strong> &middot; <time datetime="2009-07-13T14:50:00+00:00">July 13, 2009 at 2:50 pm</time></p>
      <p>Actually, the gibbler method returns 20 bytes, which are represented with 40 hexadecimal characters. The same logic for the short version - 4 bytes / 8 hex characters.<br>
Thanks for sharing, it's nice idea and implementation!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ric Roberts</strong> &middot; <time datetime="2009-07-13T20:18:00+00:00">July 13, 2009 at 8:18 pm</time></p>
      <p>Thanks, Hristo.  I've edited the article to clear up the length issue.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John</strong> &middot; <time datetime="2009-07-13T21:08:00+00:00">July 13, 2009 at 9:08 pm</time></p>
      <p>This reminds me of acts_like_git.</p><p><a href="http://github.com/courtenay/acts_like_git/" rel="nofollow">http://github.com/courtenay/acts_like_git/</a></p><p>That library works pretty much as expected, with one glaring<br>
exception.  When you delete a single object under version control,<br>
it wipes out the entire repository, so all the other objects'<br>
revisions are lost.</p><p>I have tried to figure out how to patch it myself, but do<br>
not understand enough of the git internals.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Simon</strong> &middot; <time datetime="2009-07-14T09:44:00+00:00">July 14, 2009 at 9:44 am</time></p>
      <p>What would you use this for?</p><p>My first thought is that it would be a memory hog, since the garbage collector will see everything that has ever existed as referenced, and thus never free up any memory.</p><p>In other words, you would have to be somewhat courageous to use this in a production environment. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Delano Mandelbaum</strong> &middot; <time datetime="2009-07-14T12:35:00+00:00">July 14, 2009 at 12:35 pm</time></p>
      <p>John, thanks for mentioning acts_like_git. I hadn't seen it before. There's also a SHA1 digest implementation in Perl inside KiokuDB:</p><p><a href="http://github.com/nothingmuch/kiokudb/blob/master/lib/KiokuDB/Role/ID/Content.pm" rel="nofollow">http://github.com/nothingmuch/kiokudb/blob/master/lib/KiokuDB/Role/ID/Content.pm</a></p><p>Simon, I entirely agree with regards to maintaining history in memory. That part is a work in progress and I actually recommend in the readme to not use it in production. Also note that you need to explicitly require 'gibbler/history' so it's straightforward to use just the digests for things like checking when a complex Hash or Array has changed.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Simon</strong> &middot; <time datetime="2009-07-14T13:53:00+00:00">July 14, 2009 at 1:53 pm</time></p>
      <p>Ah, that's a pretty good use case, I guess. Thanks for the clarification.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Austin Ziegler</strong> &middot; <time datetime="2009-07-19T13:56:00+00:00">July 19, 2009 at 1:56 pm</time></p>
      <p>The history aspect looks similar in concept to my Transaction::Simple—which can be a memory hog with a complex object graph—with the addition of SHA1 hashes. Aside from object verification, I'm not convinced that the hashes are necessary if you were to support named transactions.</p><p>I haven't gitified the tree yet (it's a straight SVN import from RubyForge), but you can find Transaction::Simple at git://github.com/halostatue/transaction-simple.git under trans-simple/trunk.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
