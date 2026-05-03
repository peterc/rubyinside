---
title: 'PoolParty: One Ruby Gem = Easy EC2 Computing Cloud'
date: '2008-06-06'
author: Peter Cooper
author_slug: admin
post_id: 915
slug: pool-party-poolparty-ruby-ec2-cloud-library-915
url: "/pool-party-poolparty-ruby-ec2-cloud-library-915.html"
categories:
- cool
- miscellaneous
- ruby-tricks
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2008/06/poolpartylogo.jpg" width="300" height="93" alt="poolpartylogo.jpg" style="border:1px #000000 solid;"></p>
<p><a href="http://poolpartyrb.com/">Pool Party</a> is a new tool by Ari Lerner (of <a href="http://rubyforge.org/projects/processorpool/">ProcessorPool</a> fame) that makes it easy to automate the deployment, monitoring (using <a href="http://www.tildeslash.com/monit/">monit</a>), persistent storage (using <a href="http://sourceforge.net/projects/s3fuse/">S3Fuse</a>), and load balancing (using <a href="http://haproxy.1wt.eu/">HAProxy</a>) of EC2 instances. While intended to be application agnostic, there's naturally a major slant towards Ruby applications in general, with support for Rake tasks a core feature.</p>
<p>Ari's <a href="http://blog.citrusbyte.com/2008/6/5/announcing-pool-party">announcement blog post</a> gives more in-depth details. Development is <a href="http://github.com/auser/pool-party/tree/master">taking place on Github</a> (where the <span style="font-style: italic;">README</span> is somewhat more readable than with RDoc!) along with discussions at <a href="http://groups.google.com/group/poolpartyrb">a Google group</a>.</p>
<p>Ari presented PoolParty at RailsConf last week, and his slides are available to view below (or <a href="http://www.scribd.com/doc/3253193/pool-party-presentation">at Scribd</a>):</p>
<p><object codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" id="doc_40318687425716" name="doc_40318687425716" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" align="middle" height="300" width="100%"><param name="movie" value="http://documents.scribd.com/ScribdViewer.swf?document_id=3253193&amp;access_key=key-2ekznsio0u65pzgedip2&amp;page=&amp;version=1&amp;auto_size=true">
<param name="quality" value="high">
<param name="play" value="true">
<param name="loop" value="true">
<param name="scale" value="showall">
<param name="wmode" value="opaque">
<param name="devicefont" value="false">
<param name="bgcolor" value="#ffffff">
<param name="menu" value="true">
<param name="allowFullScreen" value="true">
<param name="allowScriptAccess" value="always">
<param name="salign" value="">
<embed src="http://documents.scribd.com/ScribdViewer.swf?document_id=3253193&amp;access_key=key-2ekznsio0u65pzgedip2&amp;page=&amp;version=1&amp;auto_size=true" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" play="true" loop="true" scale="showall" wmode="opaque" devicefont="false" bgcolor="#ffffff" name="doc_40318687425716_object" menu="true" allowfullscreen="true" allowscriptaccess="always" salign="" type="application/x-shockwave-flash" align="middle" height="300" width="100%"></embed></object></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Anthony Eden</strong> &middot; <time datetime="2008-06-07T16:26:00+00:00">June 7, 2008 at 4:26 pm</time></p>
      <p>Ari has already merged in my changes to the README to make it more readable, so the RDoc will be better the next time he publishes it, I'm sure.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rafael</strong> &middot; <time datetime="2008-06-09T17:50:00+00:00">June 9, 2008 at 5:50 pm</time></p>
      <p>Another nice thing:<br>
<a href="http://jointheconversation.org/2008/06/06/fuzed-and-ec2/" rel="nofollow">http://jointheconversation.org/2008/06/06/fuzed-and-ec2/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>elliottcable</strong> &middot; <time datetime="2008-06-20T01:22:00+00:00">June 20, 2008 at 1:22 am</time></p>
      <p>If only it used God instead of Monit! I'd totally jump in feet first!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ari Lerner</strong> &middot; <time datetime="2008-06-25T22:34:00+00:00">June 25, 2008 at 10:34 pm</time></p>
      <p>It's written with the intention of being as flexible as possible. In fact, you can use god if you want to use god. It makes as few assumptions about your setup as possible.</p><p>The latest changes include a healthy rewrite of the configuration system, a delicious plugin system and more.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
