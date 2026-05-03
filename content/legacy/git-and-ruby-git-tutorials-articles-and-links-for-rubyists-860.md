---
title: 'Git and Ruby: Git tutorials, articles and links for Rubyists'
date: '2008-04-13'
author: Peter Cooper
author_slug: admin
post_id: 860
slug: git-and-ruby-git-tutorials-articles-and-links-for-rubyists-860
url: "/git-and-ruby-git-tutorials-articles-and-links-for-rubyists-860.html"
categories:
- compilations
- miscellaneous
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2008/04/git-logo.jpg" width="72" height="27" alt="git-logo.png"></p>
<p>Following on from this weeks' launch of <a href="github-officially-launches-git-hosting-a-go-go-853.html">Github</a>, it's worth rounding up some of the best Ruby-related Git content out there.</p>
<p>For those who still aren't familiar with what it is, <a href="http://git.or.cz/">Git</a> is a distributed source code management / revision control system. It's vaguely similar to Subversion, CVS, Mercurial, or Bazaar in terms of managing source code, but with significant differences to all of these in varying areas. If you use any of these systems, however, Git will be of interest to you.</p>
<p><big><strong>Git Tutorials and Introductions</strong></big></p>
<div style="margin-left: 1.5em">
<p><a href="http://peepcode.com/products/git">The Git Screencast</a> - A tutorial type screencast and technical walkthrough by Geoffrey Grosenbach. Well worth the $9.</p>
<p><a href="http://git.or.cz/gitwiki/GitSvnComparsion">Git vs Subversion</a> - Are you a diehard Subversion user wondering what the hoopla's all about? Find out how Git compares to Subversion.</p>
<p><img src="/assets/2008/04/gitcheatsheet.jpg" width="233" height="170" alt="gitcheatsheet.png"><br>
  <a href="http://zrusin.blogspot.com/2007/09/git-cheat-sheet.html">Git Cheat Sheet</a> - A rather well designed and comprehensive "cheat sheet" that most Git users will find useful.</p>
<p><a href="http://www.youtube.com/watch?v=4XpnKHJAok8">Linus Torvalds on Git</a> - The famous / seminal video given by Linus Torvalds, the initial creator of Git, that introduced many of us to the tool.</p>
<p><a href="http://video.google.com/videoplay?docid=-3999952944619245780">Git: A Talk by Randal Schwartz</a> - An hour long Google TechTalk on Git given by Randal Schwartz (a prominent Perl developer). I've seen a few people suggesting that this talk is better than Linus', although I haven't watched it all myself yet.
</p>
</div>
<div style="margin-left: 1.5em">
  
</div>
<div style="margin-left: 1.5em">
  <br>
  <a href="http://git.or.cz/course/svn.html">Git Crash Course for Subversion Users</a> - A great introduction to Git focused at people already familiar with SVN.
</div>
<div style="margin-left: 1.5em">
  <br>
  <a href="http://tomayko.com/writings/the-thing-about-git">The Thing About Git</a> - An essay-like introduction to Git, including some motivations, questions, and basic examples.
</div>
<div style="margin-left: 1.5em">
  <br>
  <a href="http://www.robbyonrails.com/articles/2008/04/10/git-svn-is-a-gateway-drug">git-svn is a gateway drug</a> - Robby Russell looks at using git-svn to span the gap between migrating your projects from SVN to Git over time.
</div>
<p><big><strong>Git and Ruby</strong></big></p>
<div style="margin-left: 1.5em">
<p><a href="http://drnicwilliams.com/2008/04/08/git-for-rubyforge-accounts/">Git on RubyForge</a> - Do you publish libraries on RubyForge? If so, you might be aware they support both CVS and SVN for source code management.. but Dr Nic fills us in that they now support Git too! Dr Nic continues to explain how to set it all up to work.</p>
<p><img src="/assets/2008/04/gitnub-070.jpg" width="235" height="169" alt="gitnub-0.7.0.png"><a href="http://github.com/Caged/gitnub/wikis/home"></a></p>
<p><a href="http://github.com/Caged/gitnub/wikis/home">GitNub</a> - A "pretty Git repository browser" for OS X. It's not particularly powerful yet, but has proven a great demonstration of how Git and Github are driving people to work together. It's also a cute example of a RubyCocoa application, forgetting the Git side of things!</p>
<p><a href="http://www.intridea.com/2008/4/1/ruby-github-simple-access-to-the-github-api">Ruby-Github</a> - A Ruby library that provides access to Github's API.</p>
<p><a href="http://jointheconversation.org/rubygit/">Ruby/Git</a> - A Ruby library that interacts with Git repositories generally.</p>
<p><a href="http://weblog.rubyonrails.org/2008/4/11/rails-premieres-on-github">Rails moves from SVN to Git</a> - David Heinemeier Hansson's announcement of the movement of the Rails source code from a public SVN repository to Github.</p>
<p><a href="http://www.infoq.com/news/2008/04/ruby-git-roundup-rails-rubyforge">InfoQ's Ruby and Git Roundup</a> - InfoQ have their own Git and Ruby roundup, like this post. It's pretty good but, as acknowledged in the Github post, I only noticed it after starting this post.. so, you get two roundups for the price of one!</p>
<p><a href="http://codeintensity.blogspot.com/2008/04/setting-up-cruisecontrolrb-withfor-git.html">Setting up CruiseControl.rb with Git</a> - Chris Bailey demonstrates how to use Git along with CruiseControl.rb, the continuous integration tool.</p>
<p><a href="http://weblog.techno-weenie.net/2007/12/25/moving-to-git">Rake task to move from SVN to Git</a> - Technoweenie presents an interesting Rake task that can export code from SVN and bring it into a new Git repository in one hit.</p>
</div>
<p><span style="font-size: 14px; font-weight: bold;">General Git Resources</span></p>
<div style="margin-left: 1.5em">
<p><a href="http://www-cs-students.stanford.edu/~blynn/gitmagic/">Git Magic</a> - A ridiculously indepth list of Git related resources and tips.</p>
<p><a href="http://www.simplisticcomplexity.com/2008/03/05/cleanly-migrate-your-subversion-repository-to-a-git-repository/">Cleaning Migrate Your Subversion Repository to a Git Repository</a> - A handy guide to moving an SVN repository over to Git. Short and sweet!</p>
<p><a href="http://www.simplisticcomplexity.com/2008/03/13/show-your-git-branch-name-in-your-prompt/">Show your Git branch name on your command line</a> - This is incredibly useful. A short shell script that shows your current Git branch within your command prompt (if you're within a Git repository, of course).</p>
<p><a href="http://www.kernel.org/pub/software/scm/git/docs/howto-index.html">Git HOWTO Index</a> - Links to a handful of interesting posts from the Git mailing list. Mostly focused on more advanced topics.</p>
<p><a href="http://nubyonrails.com/articles/a-three-finger-salute-to-git">A Three Finger Salute to Git</a> - Rubyist Geoffrey Grosenbach (of Peepcode fame) comes up with a clever technique to use the new MacBook Pro / MacBook Air "multi touch" functionality to make pulling and pushing to a Git repository a "three finger" operation! A little wacky, but very clever.</p>
<p><a href="http://github.com/jnewland/github-campfire/tree/master">Github-Campfire</a> - A Sinatra app that pushes your Github commit info to a Campfire chat room.</p>
</div>
<p><big><strong>Git Hosting</strong></big></p>
<div style="margin-left: 1.5em">
<p><a href="http://www.github.com/">GitHub</a> isn't the only Git repository hosting option out there. There are two other significant ones:</p>
<p><a href="http://repo.or.cz/">repo.or.cz</a> - The grandaddy of Git repository hosts. Free, public, and the first centralized Git host. It's nearly entirely used by open source projects.</p>
<p><a href="http://gitorious.org/">Gitorious</a> - An older, Githubesque Git repository host which, sadly, didn't quite get the attention it should have. Still used by quite a few projects though, and is free to use.</p>
</div>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>David Parker</strong> &middot; <time datetime="2008-04-13T19:54:00+00:00">April 13, 2008 at 7:54 pm</time></p>
      <p>Great list Peter.  I'd also like to say that Geoffrey Grosenbach's peepcode episode on Git is an excellent resource as well.<br>
<a href="http://peepcode.com/products/git" rel="nofollow">http://peepcode.com/products/git</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-04-13T20:05:00+00:00">April 13, 2008 at 8:05 pm</time></p>
      <p>Wow, how could I have forgotten that! I enjoyed that screencast myself quite a while back :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tim Carey-Smith</strong> &middot; <time datetime="2008-04-13T21:01:00+00:00">April 13, 2008 at 9:01 pm</time></p>
      <p>You should provide the option of hosting the git repositories yourself.<br>
Gitosis [1] is a good option for this, also having a look at git-shell2 [2] as a simpler solution. </p><p>[1] <a href="http://scie.nti.st/2007/11/14/" rel="nofollow">http://scie.nti.st/2007/11/14/</a> hosting-git-repositories-the-easy-and-secure-way<br>
[2] <a href="http://ftp.frugalware.org/pub/other/people/vmiklos/vmexam/git/" rel="nofollow">http://ftp.frugalware.org/pub/other/people/vmiklos/vmexam/git/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Vitalie Lazu</strong> &middot; <time datetime="2008-04-13T21:12:00+00:00">April 13, 2008 at 9:12 pm</time></p>
      <p>Good resource collection, it seems that ruby community is moving with rails to Git ;-)</p><p>I want to add another great site for free Git hosting: <a href="http://www.assembla.com/orientation" rel="nofollow">http://www.assembla.com/orientation</a></p><p>It gives you Git with Trac or Git with integrated tickets.</p><p>Besides Git, it offers subversion, mercurial, chat, scrum, free 500Mb for open-source/private projects.</p><p>Nowadays you can not use only SCM for the projects, you need some more, this where Assembla can help with. One place with most needed tools...</p><p>Another killing feature that was implemented recently: Pre-configured spaces:<br>
<a href="http://www.assembla.com/wiki/show/breakoutdocs/Preconfigured_Spaces" rel="nofollow">http://www.assembla.com/wiki/show/breakoutdocs/Preconfigured_Spaces</a></p><p>You can copy a rails space with svn repository ready (code that contains user authentication/deploy scripts) and wiki pages how to setup rails and deploy.</p><p>Everyone can  create workspace templates and copy/use them for later projects.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Neil Wilson</strong> &middot; <time datetime="2008-04-14T08:40:00+00:00">April 14, 2008 at 8:40 am</time></p>
      <p>I knocked a quick tip together about how to use branching effectively.</p><p><a href="http://www.3spoken.co.uk/2008/04/rails-and-git-clean-branch-and-merge.html" rel="nofollow">http://www.3spoken.co.uk/2008/04/rails-and-git-clean-branch-and-merge.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Johan Sørensen</strong> &middot; <time datetime="2008-04-14T12:08:00+00:00">April 14, 2008 at 12:08 pm</time></p>
      <p>You make it sound like Gitorious is a dead and abandoned project? That's very far from the actual truth! While it certainly doesn't have the bandwagon/dogpile-effect github is, we're still trucking along just fine and having fun exchanging fun new ideas in the community formed around the site.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-04-14T12:11:00+00:00">April 14, 2008 at 12:11 pm</time></p>
      <p>I'm sure I didn't. By "didn’t quite get the attention it should have" I mean from the public. That is, you didn't get the, as you say, "dogpile effect" Github has. I didn't mean that you weren't giving it enough attention :)</p><p>Tell me what you want it to say next to the link and I will certainly change it!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Johan Sørensen</strong> &middot; <time datetime="2008-04-14T13:24:00+00:00">April 14, 2008 at 1:24 pm</time></p>
      <p>No worries, I just got hung up on the wording there ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Garry</strong> &middot; <time datetime="2008-04-15T05:34:00+00:00">April 15, 2008 at 5:34 am</time></p>
      <p>The gitosis tutorial link above got broken in a newline.  Should be:</p><p><a href="http://scie.nti.st/2007/11/14/hosting-git-repositories-the-easy-and-secure-way" rel="nofollow">http://scie.nti.st/2007/11/14/hosting-git-repositories-the-easy-and-secure-way</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://www.opensourcery.co.za/2008/04/24/cheating-git/" rel="external nofollow" class="url">Open Sourcery</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://fromnorth.blogspot.com/2008/06/git.html" rel="external nofollow" class="url">北から南や西を見て思うこと</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
