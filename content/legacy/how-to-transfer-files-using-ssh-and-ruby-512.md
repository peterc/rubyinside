---
title: How to Transfer Files using SSH and Ruby
date: '2007-05-30'
author: Peter Cooper
author_slug: admin
post_id: 512
slug: how-to-transfer-files-using-ssh-and-ruby-512
url: "/how-to-transfer-files-using-ssh-and-ruby-512.html"
categories:
- elsewhere
- ruby-tricks
- tutorials
---

{{< rawhtml >}}
<p>Matthew Bass has written a tutorial, published by InfoQ, called "<a href="http://www.infoq.com/articles/ruby-file-upload-ssh-intro">Automating File Uploads with SSH and Ruby.</a>" It provides an in-depth look into building a small Ruby script that can backup files to a remote machine over SSH using the <a href="http://net-ssh.rubyforge.org/">Net-SSH</a> and <a href="http://raa.ruby-lang.org/project/net-sftp/">Net-SFTP</a> libraries. It goes into quite some depth, and provides source code for a recursive backup script. If you haven't had a dig into the Net-SSH and Net-SFTP libraries yet, it's worth a look to see how the basics work.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Axis</strong> &middot; <time datetime="2007-05-31T04:06:00+00:00">May 31, 2007 at 4:06 am</time></p>
      <p>Neat tutorial, but I would think most users would find the rsync utility more useful than that end result.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2007-06-01T20:53:00+00:00">June 1, 2007 at 8:53 pm</time></p>
      <p>Axis, if you created and published a pure Ruby rsync library, there would be many cheers amongst the Ruby community.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
