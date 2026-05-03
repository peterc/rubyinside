---
title: Capistrano Security Issue – SVN info often publicly viewable
date: '2007-03-06'
author: Peter Cooper
author_slug: admin
post_id: 415
slug: capistrano-security-issue-svn-info-often-publicly-viewable-415
url: "/capistrano-security-issue-svn-info-often-publicly-viewable-415.html"
categories:
- news
- ruby-on-rails
---

{{< rawhtml >}}
<p>Andrew Birkett has <a href="http://www.nobugs.org/blog/archives/2007/03/04/capistrano/">stumbled across an interesting side effect</a> of using SVN checkouts for deploying Rails applications in that, without adequate protection, SVN metadata is made available for all to see. In many cases this means you can see the revision number, the username of the last person to commit or update, and information about the SVN repository used. Andrew links to SVN files found at 37signals.com, Penny Arcade, and StrongSpace, which, at the time of writing, are all still viewable by the public. Luckily this problem is easily fixed by using <em>svn export</em> or a <em>mod_rewrite</em> rule. <em>(I haven't tested this yet, but in theory I think this rewrite rule could work:  <code>RewriteRule ^.*.svn.*$ [F]</code> )</em></p>
<p>I was going to e-mail some of these folks about it, but my mail program is not showing that I have addresses for any of the people at these companies, so.. this is the best way to get the news out especially since a lot of other readers are bound to have applications out there susceptible to this.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Dee Zsombor</strong> &middot; <time datetime="2007-03-06T06:24:00+00:00">March 6, 2007 at 6:24 am</time></p>
      <p>Or you could just use "svn export" instead of "svn co", this not only will be more secure but will yield a more snappier deploy too. Quite simple to implement by adding "set :checkout, :export" line into your capistrano deploy script.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>topfunky</strong> &middot; <time datetime="2007-03-06T06:26:00+00:00">March 6, 2007 at 6:26 am</time></p>
      <p>Dan Benjamin discovered this almost a year ago and presented a solution:</p><p><a href="http://hivelogic.com/narrative/articles/preventing_svn_exposure" rel="nofollow">http://hivelogic.com/narrative/articles/preventing_svn_exposure</a></p><p>The default RailsMachine install (available as a gem) inclues an Apache config that guards against this, so there are plenty of resources out there for people who want to deploy Rails safely.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ezra</strong> &middot; <time datetime="2007-03-06T07:16:00+00:00">March 6, 2007 at 7:16 am</time></p>
      <p>You can also just do this in your cap recipe:</p><p>set :checkout, 'export'</p><p>Then it will do an svn export with no .svn files.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Anatol Pomozov</strong> &middot; <time datetime="2007-03-06T09:15:00+00:00">March 6, 2007 at 9:15 am</time></p>
      <p>Ezra.</p><p>It should be done by default. I have no clue why Capistrano guys ignore this issue.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ted Han</strong> &middot; <time datetime="2007-03-06T14:43:00+00:00">March 6, 2007 at 2:43 pm</time></p>
      <p>I think what's most interesting to note is that if this is known, is that the .svn dirs are still accessible on so many sites that are explicitly known for using capistrano.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Philip Hallstrom</strong> &middot; <time datetime="2007-03-06T15:45:00+00:00">March 6, 2007 at 3:45 pm</time></p>
      <p>If using apache, add this to your configuration which will result in a nice 404 instead of a 403 (not authorized) result for anything in the .svn directories.</p><p>    ErrorDocument 403 /404.html<br>
    Order allow,deny<br>
    Deny from all<br>
    Satisfy All</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Philip Hallstrom</strong> &middot; <time datetime="2007-03-06T15:46:00+00:00">March 6, 2007 at 3:46 pm</time></p>
      <p>Argh.</p><p>  &lt;DirectoryMatch "^/.*/\.svn/"&gt;<br>
    ErrorDocument 403 /404.html<br>
    Order allow,deny<br>
    Deny from all<br>
    Satisfy All<br>
  &lt;/DirectoryMatch&gt;</p>
    </li>
      <li>
      <p class="comment-meta"><strong>cap noob</strong> &middot; <time datetime="2007-03-06T17:54:00+00:00">March 6, 2007 at 5:54 pm</time></p>
      <p>Ezra,<br>
I'm a cap noob, when you say cap recipe do you mean deploy.rb?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kevin</strong> &middot; <time datetime="2007-03-08T15:20:00+00:00">March 8, 2007 at 3:20 pm</time></p>
      <p>Props for thinking this through and coming to a logical conclusion, but some better googling would have shown this issue was raised and solved by using svn export over a year ago. If some 37 signals sites are still showing these files, then they screwed up. I agree that export should be the default - does a public site need to run from a working copy? Not usually.</p><p>You might need to google for 'switchtower' (the old name) to find the right info. <a href="http://clickablebliss.com/blog/2006/01/17/switchtower_0_10_now_offers_svn_export/" rel="nofollow">http://clickablebliss.com/blog/2006/01/17/switchtower_0_10_now_offers_svn_export/</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
