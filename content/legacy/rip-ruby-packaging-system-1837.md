---
title: 'Rip: A Next Generation Ruby Packaging System – Watch Out RubyGems!'
date: '2009-06-12'
author: Peter Cooper
author_slug: admin
post_id: 1837
slug: rip-ruby-packaging-system-1837
url: "/rip-ruby-packaging-system-1837.html"
categories:
- cool
- news
- tools
---

{{< rawhtml >}}
<p><a href="http://hellorip.com/about.html"><img src="/assets/2009/06/rip.png" width="61" height="46" alt="rip.png" style="float:left; margin-right:12px; margin-bottom:12px;"></a>Earlier this week, <a href="http://hellorip.com/">Rip</a> quietly made its way into the world. It's a "next generation" Ruby packaging system, clearly meant to both work around some of the problems with RubyGems and also introduce some fresh ideas of its own. If you want to immediately jump and learn more, check out <a href="http://hellorip.com/about.html">the official About us page</a> for a tour.</p>
<p>Rip comes from the Github and Sinatra stables with the primary contributors being Chris Wanstrath, Jeff Hodges, Tom Preston-Werner, John Barnette, Blake Mizerany, Ryan Tomayko and Pat Nakajima. This is no "crazy renegade" project, although the developers are keen to stress the existing version is only a "development alpha" to be tested and built upon - not used in production.</p>
<p>Rip has a number of compelling features that make it worth considering for the future. Firstly, it provides another level of abstraction above existing RubyGems, Git repositories, and file structures, in the form of <i>packages</i>. It also supports the creation of <i>virtual environments</i> that can exist simultaneously but wherein different sets of libraries can be installed. Taking a cue from Git, Rip is also decentralized. There's no canonical server for Rip packages - they'll be retrieved from wherever the library developer specifies. This means you won't be able to do anything quite as simple as <i>gem install library</i>, but we're already used to using URLs for other forms of content, so why not library files?</p>
<p>Basically, Rip's a new tool with a whole new way of looking at Ruby packaging and library distribution, but it has a killer team behind it, some solid ideas, and it could well supersede RubyGems in many ways in the near future. We've had rapid tool switches before in the Ruby world (think how quickly Git became entrenched) so I wouldn't be surprised if Rip becomes a big deal over the next several months..</p>
<div style="background-color: #ffd; padding: 8px; font-family: verdana; font-size: 12px">
<a href="http://mobileorchard.com/inside" rel="nofollow"><img src="/assets/2009/06/rupho.png" width="74" height="40" alt="rupho.png" style="float:left; margin-right:12px;"></a><em>Also worth seeing.. </em><strong><a href="http://mobileorchard.com/inside" rel="nofollow">Beginning iPhone Programming Workshop For Rubyists</a>.</strong> A companion class to the FutureRuby conference. Toronto, July 9-10, <del>$1200</del> $699.</div>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2009-06-13T02:39:00+00:00">June 13, 2009 at 2:39 am</time></p>
      <p>I read over the About page. I'm afraid I don't see anything compelling there.</p><p>"Rip's support for a variety of package types means there is nothing to build and distribute."</p><p>How's that going to work? I don't want precompiled Windows binaries mixed in as part of my checked-in code. Or am I missing something here? And does rip work on Windows?</p><p>"Tag your Git repository and publicize the latest version, or just pass around Gists. Rip does not care."</p><p>So, it's designed around git...</p><p>"Rip makes it easy to have multiple environments with different versions of libraries."</p><p>You can already have multiple versions of libraries with rubygems and require the ones you need if you want to lock into a specific version or branch. What's compelling about this?</p><p>"Rip requires no changes to your code, only an optional deps.rip file added to the root of your project. As a result you do not force Rip on anyone else and individuals are free to re-package your code using other systems."</p><p>But only as long as they use git, right? Rubygems does not compel you to use any particular SCM.</p><p>"There is no canonical server for Rip packages, which may be good or bad."</p><p>Bad if we'll have to specify URL's explicitly. Oh, I'm sure that's fine for the Rails power users who know exactly where to look for every library they want. Everyone else? Too high a barrier to entry. Joe Schmoe system administrator or newbie programmer doesn't have a clue.</p><p>What am I missing?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bob Aman</strong> &middot; <time datetime="2009-06-13T04:23:00+00:00">June 13, 2009 at 4:23 am</time></p>
      <p>You know, I'm usually pretty pleased with stuff that that gang puts out.  I don't really care for RubyGems, it's got some serious design flaws, but I don't see how Rip is a significant improvement.  It does some stuff better, but I just don't see how any package manager can take over from RubyGems without just absolutely hitting one out of the park.  And at least from my perspective, Rip hasn't even come close to doing that.</p><p>That said, with some minor changes in direction perhaps, yeah, this could really be a big improvement.  I really dig the decentralization.  Github demonstrated the value of drop-dead-easy forking, and Rip embraces that future.  I like that.  I really like that Rip has the good sense not to monkey-patch require.  I hate the fact that Rip touched my .profile file without first asking politely or giving me the opportunity to opt out or handle it manually myself.  Especially because, for my environment anyways, it got the variables wrong.  I'm extremely worried about all packages in an environment sharing the same directory.  That seems like it'll inevitably lead to conflicts and namespace issues.  It's great that each package gets it's own completely separate directory in rip-packages, but merging everything together within the environment directory relies on too many assumptions for my tastes.  I don't really like the "active" symlink either.  It strikes me as a deployment distopia waiting to happen.</p><p>Daniel is wrong though about specifying URI's manually.  URI's are the preeminent tool in the decentralization toolbox.  They're easy to explain in a tutorial, and they do the job better than anything else.  Right now, the only advantage short gem names have over URIs is that there's fewer characters to type.  People don't guess gem names.  People don't know where to look for every library they want, not even power users.  We have Google for that.  There's nothing stopping any of us from picking up a URI off of a README found via Google.  We already do it for Rails plugins in fact.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Martijn</strong> &middot; <time datetime="2009-06-13T08:33:00+00:00">June 13, 2009 at 8:33 am</time></p>
      <p>Ugh.. all these choices: SVN/Git, Test::Unit/RSpec/Shoulda, ERb/Haml, Passenger/Mongrel/Glassfish/FastCGI and now RubyGems/RIP. Why do we keep making this stuff so complicated? This can really put new Ruby/Rails developers off.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>blaxter</strong> &middot; <time datetime="2009-06-13T09:35:00+00:00">June 13, 2009 at 9:35 am</time></p>
      <p>@Martijn, Are you new? Welcome to software development world.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2009-06-13T12:54:00+00:00">June 13, 2009 at 12:54 pm</time></p>
      <p>A rubygems plugin might be a kinder way...dunno<br>
-=r</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2009-06-14T02:37:00+00:00">June 14, 2009 at 2:37 am</time></p>
      <p>@roger, I agree. Rubygems plugin.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2009-06-14T05:40:00+00:00">June 14, 2009 at 5:40 am</time></p>
      <p>Hi Bob,</p><p>The active symlink is a convenience for the shell user. When running Ruby processes and daemons you'll want to specify the ripenv explicitly.</p><p>This is how you achieve multiple daemons running different versions of the same library in a conflict free manner.</p><p>Cheers,</p><p>Chris</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2009-06-14T05:42:00+00:00">June 14, 2009 at 5:42 am</time></p>
      <p>Hi Daniel,</p><p>Rip does not require Git and is not designed around Git.</p><p>Cheers,</p><p>Chris</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2009-06-14T05:59:00+00:00">June 14, 2009 at 5:59 am</time></p>
      <p>Hi Martijn,</p><p>Rip is backwards compatible with RubyGems. You can continue to use both, just one, or neither.</p><p>They complement one another nicely and should not be seen as mutually exclusive.</p><p>Cheers,</p><p>Chris</p>
    </li>
      <li>
      <p class="comment-meta"><strong>grantmichaels</strong> &middot; <time datetime="2009-06-14T16:50:00+00:00">June 14, 2009 at 4:50 pm</time></p>
      <p>i'd like to see this evolved to not utilize gems that require native extensions so that it's alternative implementation friendly, until then, i'm better off not becoming entangled with it ...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dr Nic</strong> &middot; <time datetime="2009-06-15T04:32:00+00:00">June 15, 2009 at 4:32 am</time></p>
      <p>I hate being confused about new shiny tools, but I am.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ben</strong> &middot; <time datetime="2009-06-16T10:37:00+00:00">June 16, 2009 at 10:37 am</time></p>
      <p>change is cool; but still, rubygems is kind of a core tool…<br>
more powerful rubygems, more reliable ?<br>
nope, here's some new stuff…<br>
@doc : I get lost too.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>wiz21</strong> &middot; <time datetime="2009-06-19T14:24:00+00:00">June 19, 2009 at 2:24 pm</time></p>
      <p>a GEM replacement will never be of any use to me if it's not able to go through that NTLM Microsoft proxy horror (that is, forcing me to spend hours in hacking a proxy here and there to be able ton install gems on my company's PC (which is forbidden, but heck, Ruby's so great I can't miss it))</p>
    </li>
      <li>
      <p class="comment-meta"><strong>dylan clendenin</strong> &middot; <time datetime="2009-06-19T15:13:00+00:00">June 19, 2009 at 3:13 pm</time></p>
      <p>I am really surprised that no one mentioned Python virtualenv since afterall that seems to be a fairly strong inspiration for rip—that is, a tool for creating isolated environments. To supplement this discussion you should read Yehuda Katz's recent blog post on Rubygems issues and potential solutions: <a href="http://yehudakatz.com/2009/06/15/rubygems-problems-and-proposed-solutions/" rel="nofollow">http://yehudakatz.com/2009/06/15/rubygems-problems-and-proposed-solutions/</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
