---
title: 'Amp: A Revolution in Source Version Control (in Ruby!)'
date: '2009-11-27'
author: Peter Cooper
author_slug: admin
post_id: 2857
slug: amp-ruby-source-control-revolution-2857
url: "/amp-ruby-source-control-revolution-2857.html"
categories:
- cool
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2009/11/amp.png" width="98" height="120" alt="amp.png" style="float:left; margin-right:12px; margin-bottom:12px;"> <a href="http://amp.carboni.ca/">Amp</a> is a new Ruby based project that aims to "change the way we approach VCS" (version control systems). Currently it's basically a port of the <a href="http://en.wikipedia.org/wiki/Mercurial">Mercurial</a> version control system - a common alternative to the Git system that's more popular in Rubyland - but it aims to abstract things to the point where it could be used in place of Git, Bazaar, SVN, CVS, Darcs, and so forth.</p>
<p>The creators of Amp believe that while there are lots of great repository formats out there, none of the official clients are "truly good <i>software</i>" and so they're aiming to build something that abstracts away all of the pain into a heavily customizable Ruby library and client. Even now you can <a href="http://amp.carboni.ca/about/commands.html">add your own commands to Amp or adjust those that already exist</a>, meaning you can totally customize a powerful source control tool to your own taste.</p>
<p>One of the points that's constantly stressed on <a href="http://amp.carboni.ca/">Amp's rather well designed official site</a> is that the project is actively <a href="http://amp.carboni.ca/contribute/">looking for new contributors and help</a>. They have <a href="http://github.com/michaeledgar/amp">a repo on GitHub</a> if you want to fork and issue pull requests, as well as an IRC channel on Freenode, <a href="irc://irc.freenode.net/#amp">#amp</a>.</p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><a href="http://devver.net/caliper" rel="nofollow"><img src="/assets/2009/10/caliper-logo.png" width="98" height="42" alt="caliper-logo.png" style="float:right; margin-bottom:8px; margin-left:12px;"></a><em>[ad]</em> Find duplication, code smells, complex code and more in your Ruby code with <a href="http://devver.net/caliper" rel="nofollow">Caliper!</a> The metrics are free and setup takes just one click. <a href="http://devver.net/caliper" rel="nofollow">Get started!</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>seydar</strong> &middot; <time datetime="2009-11-27T21:19:00+00:00">November 27, 2009 at 9:19 pm</time></p>
      <p>Hey</p><p>Thanks for the post! However, we actually would prefer people to fork from the bitbucket repository (<a href="http://bitbucket.org/carbonica/amp" rel="nofollow">http://bitbucket.org/carbonica/amp</a>) instead of the github repo.</p><p>Thanks,<br>
Ari Brown / seydar</p>
    </li>
      <li>
      <p class="comment-meta"><strong>kenny</strong> &middot; <time datetime="2009-11-27T21:55:00+00:00">November 27, 2009 at 9:55 pm</time></p>
      <p>so pointless</p>
    </li>
      <li>
      <p class="comment-meta"><strong>AW</strong> &middot; <time datetime="2009-11-28T05:39:00+00:00">November 28, 2009 at 5:39 am</time></p>
      <p>Shorter version of Amp's description: multi-VCS scripting language.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stuart Ellis</strong> &middot; <time datetime="2009-11-28T12:45:00+00:00">November 28, 2009 at 12:45 pm</time></p>
      <p>I hope that this project does well. Git is an incredible piece of technology, and I don't want to go back to Subversion, but I do feel that we lost some things in the transition. Git is built by UNIX hackers for hackers, and that approach runs all the way through from the architecture to the rather bare-metal interfaces, so graphical tools built specifically for Git are probably always going to be what John Gruber calls spray-on usability - <a href="http://daringfireball.net/2004/04/spray_on_usability" rel="nofollow">http://daringfireball.net/2004/04/spray_on_usability</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jack</strong> &middot; <time datetime="2009-11-30T13:48:00+00:00">November 30, 2009 at 1:48 pm</time></p>
      <p>On Ubuntu Karmic Koala, I get the following:</p><p>extconf.rb:22: libz2 not found (RuntimeError)</p><p>when installing the gem. However, no libz2 is available via apt.</p><p>Is this tied to Mac currently?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ashley Moran</strong> &middot; <time datetime="2009-11-30T14:57:00+00:00">November 30, 2009 at 2:57 pm</time></p>
      <p>I  don't see the point of re-implementing every existing VCS.  The only marginal one I can see is darcs, as attempting an OO implementation of it's patch engine may produce some useful knowledge (largely as documentation of its patch algebra).  But even that is hard to sell without a more compelling reason.  Isn't this a huge duplication of effort?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>seydar</strong> &middot; <time datetime="2009-12-01T04:25:00+00:00">December 1, 2009 at 4:25 am</time></p>
      <p>@Jack - there is already a bug posted on the lighthouse tracker and we are working to fix it.</p><p>@Ashley - have you ever wanted to extend a VCS? Use it from Ruby? Also, there is s0 much to learn by writing Amp. Amp isn't about just duplicating effort. The duplication part, really, was to bring us up to speed with the implementation. The real purpose is in going beyond.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>seydar</strong> &middot; <time datetime="2009-12-01T04:26:00+00:00">December 1, 2009 at 4:26 am</time></p>
      <p>Also, our IRC channel is #amp-vcs (still on irc.freenode.net), if anyone cares.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>JB</strong> &middot; <time datetime="2009-12-02T01:05:00+00:00">December 2, 2009 at 1:05 am</time></p>
      <p>@seydar: we do care...don't let naysayers get you down. ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brandon</strong> &middot; <time datetime="2009-12-11T20:13:00+00:00">December 11, 2009 at 8:13 pm</time></p>
      <p>"Currently it's basically a port of the Mercurial version control system - a common alternative to the Git system that's more popular in Rubyland" </p><p>Are you kidding!?  Git is far more popular in Ruby land than Mercurial.  I'm not knocking Mercurial, but I really doubt it comes anywhere close to Git in popularity.  SVN (as much as its users don't want to admit it) might surpass Git's popularity, but not Mercurial.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-12-12T08:35:00+00:00">December 12, 2009 at 8:35 am</time></p>
      <p>Brandon, you've highlighted the ambiguity in my phrasing, but it means the opposite ;-) </p><p>I could change "a common alternative to the Git system that's more popular in Rubyland" to<br>
"a common alternative to Git, a more popular system in Rubyland". But basically I'm saying Git is more popular in Rubyland.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
