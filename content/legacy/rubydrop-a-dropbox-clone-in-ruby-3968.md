---
title: 'RubyDrop: A Dropbox Clone in Ruby'
date: '2010-11-26'
author: Peter Cooper
author_slug: admin
post_id: 3968
slug: rubydrop-a-dropbox-clone-in-ruby-3968
url: "/rubydrop-a-dropbox-clone-in-ruby-3968.html"
categories:
- cool
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2010/11/rubydrop.png" width="100" height="100" alt="rubydrop.png" style="float:left; margin-right:12px; margin-bottom:12px;"> Ever used <a href="https://www.dropbox.com/referrals/NTg0MTgwNjk?src=ab_global6">Dropbox</a>? It's awesome. A cross-platform (Windows, Mac, Linux, and even mobile) file syncing and backup service with 2GB for free (or 2.25GB if you sign up with <a href="https://www.dropbox.com/referrals/NTg0MTgwNjk?src=ab_global6">this link</a>). Well, if you'd like to roll out your own system on your own infrastructure, send some thanks to <a href="http://meltingice.net/">Ryan LeFevre</a>, the creator of <a href="https://github.com/meltingice/RubyDrop">RubyDrop</a>, an open source Dropbox clone based on Ruby and git.</p>
<p>Cloning Dropbox sounds like a tall order and in reality, "Dropbox clone" is a big stretch. <a href="https://github.com/meltingice/RubyDrop">RubyDrop</a> is quite simple under the hood and focuses on the file syncing part of the problem. A Ruby process monitors a folder for changes and uses Git to do the heavy lifting and change management between your clients and a defined central server.</p>
<p>RubyDrop is not without its flaws. What happens when files are changed on multiple nodes and then clash? Your mileage may vary. What's good, though, is that Ryan seems keen to improve the system and has already planned a centralized server and is considering integrating rsync to make file syncing smoother. Ryan is a systems engineer at TwitPic with a background in PHP, JavaScript, and C but RubyDrop is his <i>first</i> Ruby project. I look forward to seeing more both from him and RubyDrop.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Nate</strong> &middot; <time datetime="2010-11-27T05:36:00+00:00">November 27, 2010 at 5:36 am</time></p>
      <p>Sparkle Share (<a href="http://sparkleshare.org/" rel="nofollow">http://sparkleshare.org/</a> ) is a similar solution.  I think the real problem with both solutions is the use of a DVCS for the file storage/management.  Multiple versions of binaries really start to add up and eat disk space over time.  Understandably, some system has to keep the versions, but DVCS means all your systems will be eating up that space.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Igor Wiedler</strong> &middot; <time datetime="2010-11-27T07:35:00+00:00">November 27, 2010 at 7:35 am</time></p>
      <p>While not written in ruby, there is also SparkeShare: <a href="http://sparkleshare.org/" rel="nofollow">http://sparkleshare.org/</a> Which is definitely worth looking at.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>RTG</strong> &middot; <time datetime="2010-11-27T10:28:00+00:00">November 27, 2010 at 10:28 am</time></p>
      <p>iFolder is also worth to have a look at...<br>
Great to see some ruby activities on this topic<br>
would be great to see this working e.g with redmine</p>
    </li>
      <li>
      <p class="comment-meta"><strong>fak3r</strong> &middot; <time datetime="2010-11-29T21:57:00+00:00">November 29, 2010 at 9:57 pm</time></p>
      <p>I've done a bit of work on this with simple rsync over ssh<br>
<a href="http://fak3r.com/2009/09/14/howto-build-your-own-open-source-dropbox-clone/" rel="nofollow">http://fak3r.com/2009/09/14/howto-build-your-own-open-source-dropbox-clone/</a></p><p>but I agree with the above poster, while git can work, it's not good with large files, and from what I can see, the only thing sparkleshare is (supposed to) bring to the table is a UI and maybe cross-platform, but again, we need to see it first. I'm now working on a redo of my post and will include one to many, or basically the functionality that dropbox has, so files are not in conflict. the server part is the center of the hub, it contains all the knowledge of the files and dates; then clients are the spokes - 1 client, 10 clients, should all be the same. putting it up on github in a few weeks. I'm curious if what sparkleshare is doing could hook into my backend and use that - we'll see.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Frank</strong> &middot; <time datetime="2010-12-01T20:54:00+00:00">December 1, 2010 at 8:54 pm</time></p>
      <p>Sounds interesting...but like a lot of work! Why not just use something already developed, like FilesDIRECT? (<a href="http://www.filesdirect.com" rel="nofollow">http://www.filesdirect.com</a>)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>unixboy</strong> &middot; <time datetime="2010-12-28T19:47:00+00:00">December 28, 2010 at 7:47 pm</time></p>
      <p>@Frank I guess if anyone was going to use a closed-source service, they'd use Dropbox.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Frank</strong> &middot; <time datetime="2011-01-06T17:32:00+00:00">January 6, 2011 at 5:32 pm</time></p>
      <p>@unixboy - It's definitely a popular choice, but I've found it limited, especially in terms of storage...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://bowr.de/blog/?p=123" rel="external nofollow" class="url">Augenmusik » Blog Archive » SubversiveBox: Your own Dropbox for Subversion</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
