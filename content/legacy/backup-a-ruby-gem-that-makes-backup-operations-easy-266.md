---
title: Backup – A Ruby Gem that makes backup operations easy
date: '2006-10-12'
author: Peter Cooper
author_slug: admin
post_id: 266
slug: backup-a-ruby-gem-that-makes-backup-operations-easy-266
url: "/backup-a-ruby-gem-that-makes-backup-operations-easy-266.html"
categories:
- elsewhere
- miscellaneous
- ruby-tricks
- tools
---

{{< rawhtml >}}
<p>Some user mail from Nathan Murray:</p>
<blockquote>
<p>I just wanted to let you guys know I've just released the first version of my Backup Gem. You can read the manual here:<br>
<a href="http://tech.natemurray.com/backup/">http://tech.natemurray.com/backup/</a></p>
<p>BackupGem aims to be the easiest and most flexible backup, archive and rotate tool. It’s a beginning-to-end solution for scheduled backups in a clean ruby package that is simple use and powerful when customized.</p>
<p>A configuration as simple as:</p>
<p>  set :backup_path, "/var/local/backups/my_old_logs"<br>
  action :content,  :is_contents_of =&gt; "/var/my_logs"</p>
<p>Will compress, encrypt, deliver, and rotate the contents of /var/my_logs. But this is just a taste of the power this gem has.</p>
</blockquote>
<p>You can install the gem easily with <em>gem install backup</em> and <a href="http://tech.natemurray.com/backup/">the official documentation</a> is very complete and full of examples. From what I can see so far, it's a very complete and flexible backup library that you can use to create your own backup systems with a minimum of fuss. Even better that it uses Ruby :)</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Alex MacCaw</strong> &middot; <time datetime="2006-10-13T10:48:00+00:00">October 13, 2006 at 10:48 am</time></p>
      <p>Is there something like this for ActiveRecord (&amp; Rails), that'll export the database (perhaps into yaml) and backup it?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jon Maddox</strong> &middot; <time datetime="2006-10-13T14:06:00+00:00">October 13, 2006 at 2:06 pm</time></p>
      <p>for the record, its: sudo gem install backupgem</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Scott Becker</strong> &middot; <time datetime="2006-10-13T16:44:00+00:00">October 13, 2006 at 4:44 pm</time></p>
      <p>Alex - Yep, the handy ar_fixtures plugin written by Geoffrey Grosenbach does exactly that:</p><p><a href="http://nubyonrails.com/articles/2005/12/27/dump-or-slurp-yaml-reference-data" rel="nofollow">http://nubyonrails.com/articles/2005/12/27/dump-or-slurp-yaml-reference-data</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://rubyedge.com/story/1/" rel="external nofollow" class="url">Anonymous</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
