---
title: 'Prawn: The Pure Ruby PDF Generation Library'
date: '2008-08-04'
author: Peter Cooper
author_slug: admin
post_id: 987
slug: prawn-ruby-pdf-library-987
url: "/prawn-ruby-pdf-library-987.html"
categories:
- cool
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2008/08/prawn.jpg" width="136" height="136" alt="prawn.png" style="float:left; margin-right:12px;"></p>
<p><a href="http://prawn.majesticseacreature.com/">Prawn</a> is a new pure Ruby PDF generation library developed primarily by Gregory Brown.</p>

<p>Back in March, Gregory <a href="help-fund-a-ruby-developer-to-work-on-open-source-for-6-months-798.html">tried to raise $13000</a> so he could spend six months <a href="http://rubymendicant.wikidot.com/proposal">working on Ruby-related open source projects</a>. He eventually <a href="http://pledgie.com/campaigns/571">raised $5525</a> from the community (plus $5000 from <a href="http://www.rubycentral.org/">Ruby Central</a> and $500 from Mountain West RubyConf)  and has spent the last few months working on Prawn.</p>
<p>Prawn can be installed from <a href="http://github.com/sandal/prawn/tree/master">a pull from GitHub</a> or, for those of us who are less adventurous, with a <em>gem install prawn</em>. Once installed, you can give it a quick test run:</p>
<p>
</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">prawn</span><span class="punct">'</span>

<span class="constant">Prawn</span><span class="punct">::</span><span class="constant">Document</span><span class="punct">.</span><span class="ident">generate</span><span class="punct">("</span><span class="string">test.pdf</span><span class="punct">")</span> <span class="keyword">do</span>
  <span class="ident">font</span> <span class="punct">"</span><span class="string"><span class="expr">#{Prawn::BASEDIR}</span>/data/fonts/DejaVuSans.ttf</span><span class="punct">"</span>
  <span class="ident">text</span> <span class="punct">"</span><span class="string">this is a test </span><span class="punct">"</span> <span class="punct">*</span> <span class="number">100</span>
<span class="keyword">end</span></pre>

<p>Prawn comes with 11 typefaces, including Helvetica, Courier, DejaVuSans, Times, and everyone's favorite - <a href="http://www.youtube.com/watch?v=88lkFzBuPL4">Comic Sans</a>. It already supports image embedding, table drawing, and content positioning, but a lot more is yet to come. Prawn is now ripe for more community involvement and support, so if you want to help (Gregory's <a href="http://groups.google.com/group/prawn-ruby/t/257fbd9a13bdf78">looking for a logo!</a>) the <a href="http://groups.google.com/group/prawn-ruby">prawn-ruby Google Group</a> is a great place to start.</p>
<p><b>Update:</b> Gregory has created the "<a href="http://github.com/sandal/prawn-gallery/tree/master">Prawn Gallery</a>" on GitHub as a place for people to show off their Prawn-created PDFs.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>hk</strong> &middot; <time datetime="2008-08-04T16:08:00+00:00">August 4, 2008 at 4:08 pm</time></p>
      <p>For crying out loud, it is either this:</p><p>Prawn can be pulled using git</p><p>or </p><p>Prawn can be pulled from Github</p><p>Understand?</p><p>You can't "pull" from "Git". Git is a program. You might use it to pull something, although unless you have it already you'd probably clone first, THEN pull. Saying "pull from Git" is like saying "download from Safari". </p><p>Secondly, Github is NOT git. It is a great website (although beginning to suffer reliability problems) but it is not git itself. Can you please stop confusing the two? It's like people who think IE is the internet.</p><p>That said, prawn looks like a great tool and I look forward to trying it out.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-08-04T16:20:00+00:00">August 4, 2008 at 4:20 pm</time></p>
      <p><em>Can you please stop confusing the two?</em></p><p>It was a one-off typo. Thanks for pointing it out, but a patronizing diatribe wasn't necessary.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pavel</strong> &middot; <time datetime="2008-08-04T16:48:00+00:00">August 4, 2008 at 4:48 pm</time></p>
      <p>For me key question: does prawn support utf-8?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-08-04T16:54:00+00:00">August 4, 2008 at 4:54 pm</time></p>
      <p>Yes. Check out the main Prawn link above. It's the second section on the page.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gregory Brown</strong> &middot; <time datetime="2008-08-04T17:25:00+00:00">August 4, 2008 at 5:25 pm</time></p>
      <p>Hi Peter,</p><p>Thanks so much for posting this.  It's worth mentioning that Mountain West RubyConf also donated $500, not listed on the Pledgie.</p><p>-greg</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Smith</strong> &middot; <time datetime="2008-08-04T17:34:00+00:00">August 4, 2008 at 5:34 pm</time></p>
      <p>hk - every little outburst like that supports ***'s claim.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-08-04T17:59:00+00:00">August 4, 2008 at 5:59 pm</time></p>
      <p>Gregory: Didn't know that - added - thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>thorny_sun</strong> &middot; <time datetime="2008-08-05T01:43:00+00:00">August 5, 2008 at 1:43 am</time></p>
      <p>Hey Peter--<br>
Hope you don't mind the plug, but it seemed relevant.  Just in case you didn't know, there also exists an unofficial but worthy rails sister plugin-- prawnto.  It lets you create compiled pdf views leveraging the prawn library.<br>
<a href="http://cracklabs.com/prawnto" rel="nofollow">http://cracklabs.com/prawnto</a><br>
<a href="http://github.com/thorny-sun/prawnto.git" rel="nofollow">http://github.com/thorny-sun/prawnto.git</a></p><p>hope it helps the rails folks out there... enjoy!<br>
-thorny_sun</p>
    </li>
      <li>
      <p class="comment-meta"><strong>thorny_sun</strong> &middot; <time datetime="2008-08-05T01:45:00+00:00">August 5, 2008 at 1:45 am</time></p>
      <p>oops-- that last github link was meant to be:<br>
<a href="http://github.com/thorny-sun/prawnto" rel="nofollow">http://github.com/thorny-sun/prawnto</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sean</strong> &middot; <time datetime="2008-08-05T13:49:00+00:00">August 5, 2008 at 1:49 pm</time></p>
      <p>Insanity Prawn Boy -- exactly what I think of every time this library gets mentioned :).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gregory Brown</strong> &middot; <time datetime="2008-08-05T14:56:00+00:00">August 5, 2008 at 2:56 pm</time></p>
      <p>Oh man... I've never seen that cartoon before.  Disturbing and wonderful all at the same time.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Markus Arike</strong> &middot; <time datetime="2008-08-05T16:23:00+00:00">August 5, 2008 at 4:23 pm</time></p>
      <p>hk - your role as "language police" is not at all becoming, especially since this is a free website that Mr. Cooper is good enough to provide for us and with which he does a remarkable job.  </p><p>I installed Prawn PDF library last night.  It works as advertised on Leopard.  Nice work and congratulation to Gregory Brown.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Herculano P. Chavez</strong> &middot; <time datetime="2008-08-05T16:26:00+00:00">August 5, 2008 at 4:26 pm</time></p>
      <p>I'm testing the Rghost is cool to use the ttf fonts inside of pdf</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Captain Semantics</strong> &middot; <time datetime="2008-08-06T02:39:00+00:00">August 6, 2008 at 2:39 am</time></p>
      <p>You can checkout from subversion, so why can't you pull from git?  Discrimination?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>carlity</strong> &middot; <time datetime="2008-08-06T03:02:00+00:00">August 6, 2008 at 3:02 am</time></p>
      <p>I cant image why one would want a rails plugin for prawn. I really dislike all these little small rails plugins. just use the original library!!!!! on a site note, i hate installing from github with name-gem.git  then require gem.git.    what a mess.    All these ruby innovations are great, but not the huge mess its creating.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-08-06T03:58:00+00:00">August 6, 2008 at 3:58 am</time></p>
      <p>Captain Semantics: To be fair to hk's original point, if someone were to be as technically pedantic as he was then "checkout from subversion" should really be "checkout from [a/this/their/our] Subversion repository." Of course, we're not that pedantic, so we'll all let it slide ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Johannes Fahrenkrug</strong> &middot; <time datetime="2008-08-06T16:15:00+00:00">August 6, 2008 at 4:15 pm</time></p>
      <p>This looks great, thanks for your work, Gregory!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gregory Brown</strong> &middot; <time datetime="2008-08-06T17:46:00+00:00">August 6, 2008 at 5:46 pm</time></p>
      <p>@carlity,</p><p>Prawnto just makes templates a little easier.  Not exactly something that I feel I need, but useful for those who like that sort of thing.</p><p>Also, I agree, the name-gem thing on Git is a little weird.  Very useful for *unofficial* gems but I can't see hosting a project that way officially.  So Prawn is not using that feature, it has a normal gem on RubyForge.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ricardo</strong> &middot; <time datetime="2008-08-08T15:17:00+00:00">August 8, 2008 at 3:17 pm</time></p>
      <p>Just one thing:</p><p>can I put  in one line a text with 2 or more color like:</p><p>Name:  My Name </p><p>?</p><p>regards</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ricardo</strong> &middot; <time datetime="2008-08-08T15:19:00+00:00">August 8, 2008 at 3:19 pm</time></p>
      <p>ops</p><p>like:</p><p>| blue | Name: | \ blue | | green | My name | \ green |</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Zach</strong> &middot; <time datetime="2008-08-09T05:44:00+00:00">August 9, 2008 at 5:44 am</time></p>
      <p>What great timing; I was going to implement PDF generation this weekend. Thanks Gregory!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tom Dickie</strong> &middot; <time datetime="2008-08-14T11:24:00+00:00">August 14, 2008 at 11:24 am</time></p>
      <p>Any one actually know how to put this into a Rails app? Sorry if this is totally stupid of me, but I don't know if this code goes in the controller or the view or model or where... sorry. The docs don't appear to say either unless I've missed something...</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
