---
title: 'Interesting Ruby Tidbits That Don’t Warrant Separate Posts #1'
date: '2007-09-11'
author: Peter Cooper
author_slug: admin
post_id: 600
slug: interesting-ruby-tidbits-that-dont-warrant-separate-posts-1-600
url: "/interesting-ruby-tidbits-that-dont-warrant-separate-posts-1-600.html"
categories:
- compilations
- cool
- miscellaneous
- ruby-tricks
- tools
- tutorials
---

{{< rawhtml >}}
<p>Welcome to the first "Interesting Ruby Tidbits That Don't Warrant Separate Posts"! This is going to be a somewhat regular feature of all the reasonably interesting things I'm e-mailed about or discover that aren't getting as much attention as they should, but which aren't captivating enough to warrant an entire post on their own. So without further ado..<strong>thread-dump library</strong><a href="http://rubyforge.org/projects/thread-dump/">thread-dump</a> is an interesting library that lets you to get a dump of thread activity when a Ruby process quits by Greg Fodor. In his own words:<br>
</p>
<blockquote>It allows you to send a SIGQUIT to a ruby process to get a dump of the running threads to STDERR or a file. This is *incredibly* useful for diagnosing hung or slow processes, since you can introspect the ruby process on demand. This is a feature built into the JVM, and has always been an essential part of the diagnostic toolkit.</blockquote>
<p><strong>Using 64 bit primary keys with Rails migrations</strong>Got an app that needs more IDs than the standard 32 bit amount? MySQL can use BIGINT columns, but, as Sanjay Vakil says, "it is a little tricky to convince Rails and Migrations to use it." So Sanjay has come up with <a href="http://snippets.dzone.com/posts/show/4422">a set of instructions and code on how to solve the problem</a>.<strong>How to customize attachment_fu file names</strong>attachment_fu is one of the most popular "file upload" plugins for Rails applications nowadays, but it can prove a little tricky to work out how to get it to use custom file names. Patrick Crowley <a href="http://the.railsi.st/2007/8/21/how-to-customize-attachment_fu-file-names">to the rescue with plenty of code!</a><strong>Using Amazon S3 from Amazon EC2 with Ruby</strong>Exactly what it says in its title. A <a href="http://developer.amazonwebservices.com/connect/entry.jspa?externalID=931">great, comprehensive article</a> by Jack Herrington.<strong>Webistrano - Easier Capistrano Deployment</strong><img src="/assets/2007/09/projects.jpg" alt="Projects" vspace="4" hspace="4" border="1" width="241" height="135"><a href="http://blog.innerewut.de/webistrano/">Webistrano</a> is a Web-based interface for managing Capistrano deployments by Jonathan Weiss. There are two screencasts available to demonstrate its use.<strong>10 Reasons to Learn Ruby</strong>A well written, comprehensive <a href="http://www.h3rald.com/articles/10-reasons-to-learn-ruby/">look at ten reasons to learn Ruby</a>. I didn't post this separately as it's going to be second nature to most Ruby Inside readers, but it's a good read that deserves some eyeballs nonetheless.<strong>macaddr - MAC address retrieval library</strong>macaddr is a cross-platform library by Ara Howard that lets you retrieve the MAC network interface addresses from the local machine. Just use <em>gem install macaddr</em> and then require <em>macaddr</em> in and use <em>Mac.addr</em> and <em>Mac.addr.list. </em>Works on OS X, Windows and Linux.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2007-09-11T13:24:00+00:00">September 11, 2007 at 1:24 pm</time></p>
      <p>Hmm, the "don't warrant separate posts" feels a bit negative... :-p</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-09-11T14:46:00+00:00">September 11, 2007 at 2:46 pm</time></p>
      <p>The first thing I started with "That Don't Deserve Separate Posts" sounded worse, so I changed it to this. It's not that they don't deserve it, they just don't warrant it. I admit the difference will be subtle to many.</p><p>The truth of the matter is, though, if I didn't have this new series, then these things simply wouldn't be posted about on Ruby Inside (except Webistrano, probably). It's blunt, it's truthful, but it's a way to get some of the more interesting niche things to a bigger audience without turning people off with 5 - 10 posts a day on random stuff :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-09-11T14:46:00+00:00">September 11, 2007 at 2:46 pm</time></p>
      <p>That said.. if people have better suggestions for the name of this series of post, I'm all ears, so post here :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dylan</strong> &middot; <time datetime="2007-09-11T14:53:00+00:00">September 11, 2007 at 2:53 pm</time></p>
      <p>Little Rocks</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jay Levitt</strong> &middot; <time datetime="2007-09-11T15:22:00+00:00">September 11, 2007 at 3:22 pm</time></p>
      <p>I don't think it sounds harsh, but for those who do, how about "...that don't justify separate posts"?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-09-11T16:45:00+00:00">September 11, 2007 at 4:45 pm</time></p>
      <p>That's a good suggestion but it sounds at the same level as "warrant" to me. I guess "justify" is what I really meant to say at the time but "warrant" was the word that came out. Justify/warrant imply that the items are too small or niche to require a post without passing a value judgment.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jay Levitt</strong> &middot; <time datetime="2007-09-11T18:18:00+00:00">September 11, 2007 at 6:18 pm</time></p>
      <p>Yeah, you're right.  OK, "Interesting Tidbits That Fluffy Unicorn Rainbows Separate Posts" it is.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>topfunky</strong> &middot; <time datetime="2007-09-11T21:48:00+00:00">September 11, 2007 at 9:48 pm</time></p>
      <p>How about "RubyInside Ruby Tidbits of the Week for Rubyists!"</p><p>Then it sounds like an achievement.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2007-09-12T01:27:00+00:00">September 12, 2007 at 1:27 am</time></p>
      <p>tumbles.rubyinside.com ?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>vincent</strong> &middot; <time datetime="2007-09-12T14:59:00+00:00">September 12, 2007 at 2:59 pm</time></p>
      <p>little gems to know about</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sean</strong> &middot; <time datetime="2007-09-12T21:14:00+00:00">September 12, 2007 at 9:14 pm</time></p>
      <p>The Big Ruby Grab Bag!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
