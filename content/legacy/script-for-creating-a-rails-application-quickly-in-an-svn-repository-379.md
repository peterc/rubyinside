---
title: Script for Creating A Rails Application Quickly in an SVN Repository
date: '2007-02-06'
author: Peter Cooper
author_slug: admin
post_id: 379
slug: script-for-creating-a-rails-application-quickly-in-an-svn-repository-379
url: "/script-for-creating-a-rails-application-quickly-in-an-svn-repository-379.html"
categories:
- elsewhere
- ruby-on-rails
---

{{< rawhtml >}}
<p>Akhil Bansal has created <a href="http://webonrails.com/2007/01/10/bash-script-for-creating-new-rails-project-and-initial-svn-import-with-ignoringremoving-logother-files/">a cool bash script</a> that will create a new Rails project, import it to an SVN repository, then remove and ignore log files, sessions, temporary files, and set up database.yml correctly. I was previously using a Rake task for this, but installing this script at the OS level might prove easier for me in future.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Dr Nic</strong> &middot; <time datetime="2007-02-07T06:11:00+00:00">February 7, 2007 at 6:11 am</time></p>
      <p>Rewriting it as a bin executable in a gem (that is, in Ruby) would make it useful to non-unix environments, me thinks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>seedyjay</strong> &middot; <time datetime="2007-02-07T15:02:00+00:00">February 7, 2007 at 3:02 pm</time></p>
      <p>Wouldn't it be easier to just create a base project with everything you need, upload that to svn, and just svn copy it when you want to create a new project?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hendy Irawan</strong> &middot; <time datetime="2007-02-08T05:47:00+00:00">February 8, 2007 at 5:47 am</time></p>
      <p>Whooops!!</p><p>My previous comment was swallowed without "comment moderation" message. :-(</p><p>Mistakenly Akismet-treated perhaps?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hendy Irawan</strong> &middot; <time datetime="2007-02-08T05:51:00+00:00">February 8, 2007 at 5:51 am</time></p>
      <p>My comment was swallowed... again!!</p><p>Okay, so a even a single URL mention goes to the moderation queue... But at least a "your comment is awaiting moderation" message would be useful to have. :-)</p><p>BTW Peter, I'm eagerly waiting for your Beginning Ruby book! :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Akhil Bansal</strong> &middot; <time datetime="2007-02-08T13:51:00+00:00">February 8, 2007 at 1:51 pm</time></p>
      <p>Hey Nic,<br>
<a href="http://webonrails.com/2007/02/08/ruby-script-for-creating-new-rails-project-and-initial-svn-import-with-ignoringremoving-logother-files/" rel="nofollow">here</a> is the ruby script for that.<br>
<a href="http://webonrails.com/2007/02/08/ruby-script-for-creating-new-rails-project-and-initial-svn-import-with-ignoringremoving-logother-files/" rel="nofollow">http://webonrails.com/2007/02/08/ruby-script-for-creating-new-rails-project-and-initial-svn-import-with-ignoringremoving-logother-files/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2007-02-08T17:04:00+00:00">February 8, 2007 at 5:04 pm</time></p>
      <p>Is there SCM integration of any kind? I didn't see mention of it, but I may have missed it. Without that, I'm afraid this is a non-starter.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2007-02-08T17:05:00+00:00">February 8, 2007 at 5:05 pm</time></p>
      <p>What the...? Somehow my last comment ended up under the wrong post! Ignore.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
