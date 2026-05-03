---
title: Easy Git External Dependency Management with Giternal
date: '2008-11-12'
author: Mike Gunderloy
author_slug: mikeg1
post_id: 1322
slug: giternal-easy-git-external-dependency-management-1322
url: "/giternal-easy-git-external-dependency-management-1322.html"
categories:
- miscellaneous
- tools
---

{{< rawhtml >}}
<p><img class="size-medium wp-image-1324" src="/assets/2008/11/icicles3jpg-jpeg-image-472x400-pixels.png" alt="icicles" width="145" height="198" style="float: left; margin: 0px 12px 12px 0px">Anyone building up a project with many dependencies - and in the Ruby community, with so much functionality wrapped up in gems and plugins, it's hard to imagine not having external dependencies! - must face the issue of managing the situation in source code control. How do you maintain everything you need in your own repository, while still being able to update your dependencies from their own repository? How do you set things up so you can even contribute to the projects you depend on?</p>
<p>If you're using <a href="http://git.or.cz/">git</a>, the right answer is often the <a href="http://www.kernel.org/pub/software/scm/git/docs/howto/using-merge-subtree.html">subtree merge strategy</a> - but remembering the necessary commands can be a nuisance, especially if you rarely use them. There are several projects out there designed to make this easier for you: Tim Dysinger published some <a href="http://dysinger.net/2008/04/29/replacing-braid-or-piston-for-git-with-40-lines-of-rake/">rake tasks</a> to handle subtrees, and <a href="http://github.com/evilchelu/braid/wikis/home">Braid</a> is a more full-featured tool to manage both git- and svn-based vendor branches. 37signals have also released <a href="http://github.com/37signals/cached_externals/tree/master">cached_externals</a> which provides a somewhat different solution to the problem using symbolic links and separated checkouts.</p>
<p>After trying all of those approaches, though, I've settled on Pat Maddox's <a href="http://github.com/pat-maddox/giternal/tree/master">giternal</a> tool for my own work. With giternal, you add a YAML file with details on your project's dependencies, similar to this:</p>
<pre>
<span class="ident">delayed_job</span><span class="punct">:</span>
<span class="ident">  repo</span><span class="punct">:</span> <span class="ident">git</span><span class="punct">:/</span><span class="punct">/</span><span class="ident">github</span><span class="punct">.</span><span class="ident">com</span><span class="punct">/</span><span class="ident">tobi</span><span class="punct">/</span><span class="ident">delayed_job</span><span class="punct">.</span><span class="ident">git</span>
<span class="ident">  path</span><span class="punct">:</span> <span class="ident">vendor</span><span class="punct">/</span><span class="ident">plugins</span>
<span class="ident">paperclip</span><span class="punct">:</span>
<span class="ident">  repo</span><span class="punct">:</span> <span class="ident">git</span><span class="punct">:/</span><span class="punct">/</span><span class="ident">github</span><span class="punct">.</span><span class="ident">com</span><span class="punct">/</span><span class="ident">thoughtbot</span><span class="punct">/</span><span class="ident">paperclip</span><span class="punct">.</span><span class="ident">git</span>
<span class="ident">  path</span><span class="punct">:</span> <span class="ident">vendor</span><span class="punct">/</span><span class="ident">plugins</span>
</pre>
<p>After that, there are just three commands to remember: <code>giternal update</code> to update all of your dependencies, <code>giternal freeze</code> to create a self-contained deploy tag with all externals at a known version, and <code>giternal unfreeze</code> to go back to live subtrees. If you've been shying away from dealing with externals in your git repositories, give it a shot.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Artūras Šlajus</strong> &middot; <time datetime="2008-11-12T15:08:00+00:00">November 12, 2008 at 3:08 pm</time></p>
      <p>What about pushing back changes you made into (let's say plugin) original repo? It's the only thing I'm missing with braid.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>phil</strong> &middot; <time datetime="2008-11-12T15:29:00+00:00">November 12, 2008 at 3:29 pm</time></p>
      <p>does git submodules not solve this?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>niko</strong> &middot; <time datetime="2008-11-12T15:41:00+00:00">November 12, 2008 at 3:41 pm</time></p>
      <p>good question! +1</p>
    </li>
      <li>
      <p class="comment-meta"><strong>bruno</strong> &middot; <time datetime="2008-11-12T16:50:00+00:00">November 12, 2008 at 4:50 pm</time></p>
      <p>Haven't looked at giternal yet, but git's submodules does a good job of this, and yes, it does allow you to push back into the project. I use it for all my CommunityEngine deploys.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>grosser</strong> &middot; <time datetime="2008-11-12T17:05:00+00:00">November 12, 2008 at 5:05 pm</time></p>
      <p>i use piston for that since it also works with svn</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Gunderloy</strong> &middot; <time datetime="2008-11-12T17:07:00+00:00">November 12, 2008 at 5:07 pm</time></p>
      <p>Arturas - Yes, you can push back changes to the original plugin repo. With giternal, until you freeze, you're maintaining each plugin as its own little repo, ignored from your project's repo. giternal freeze then plays some games to merge everything together for deployment.</p><p>Phil et al - Yes, submodules also provide a solution for this same issue. But I happily admit that submodules fall into the "seldom used and hard to remember" bucket for me, and I haven't found a tool yet that wraps them up into a useful (and simple) strategy for those who aren't deeply into git commands.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike</strong> &middot; <time datetime="2008-11-12T17:12:00+00:00">November 12, 2008 at 5:12 pm</time></p>
      <p>"I haven't found a tool yet that wraps them up into a useful (and simple) strategy for those who aren't deeply into git commands."</p><p>git submodule add  path/to/submodule</p><p>git submodule init<br>
git submodule update</p><p>Those aren't simple enough to remember?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike</strong> &middot; <time datetime="2008-11-12T17:13:00+00:00">November 12, 2008 at 5:13 pm</time></p>
      <p>sorry used brackets in the last post and it came out wrong</p><p>git submodule add (remote repo) path/to/submodule</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tom</strong> &middot; <time datetime="2008-11-12T17:16:00+00:00">November 12, 2008 at 5:16 pm</time></p>
      <p>Uh, does the word "submodule" mean anything to you?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-11-12T17:24:00+00:00">November 12, 2008 at 5:24 pm</time></p>
      <p>I know pretty much nothing about this topic, which is why I'm letting Mike take the lead here (note: Mike is a new Ruby Inside and Rails Inside writer, so do say hi!)</p><p>However, if Git submodules are already easy and suitable for this task (and I'm not arguing if they are or not) then what is the true motivation for giternal? On the project page it says giternal offers "non-sucky git externals".</p><p>Perhaps this post didn't elaborate on why giternal is "non-sucky" compared to Git's home-baked alternative, but it's clear someone / some people find a difference, so check it out anyway..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Gunderloy</strong> &middot; <time datetime="2008-11-12T17:43:00+00:00">November 12, 2008 at 5:43 pm</time></p>
      <p>I think we're talking about a number of different pain points here. As a Rails developer, one of my big pain points is always deployment - and that's one spot where (as far as I know) git submodules don't offer a great solution. While current Capistrano builds are submodule aware, using submodules requires Capistrano to scurry around and collect bits from every repository the project is connected to at deployment time. I don't like having that much external-server dependency. For me, any usable solution has to have some sort of freeze/unfreeze mechanism.</p><p>But if you don't need freeze/unfreeze, and don't find help in having a single file listing all the extra repo dependencies - then, yes, learning how to use submodules may be the way to go.</p><p>Mike, I take your point on the simplicity of the git submodule subcommands; I was misremembering the amount of fuss required. That may be because the official help on that command is as opaque as much of the rest of the git help.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Harry Seldon</strong> &middot; <time datetime="2008-11-12T19:00:00+00:00">November 12, 2008 at 7:00 pm</time></p>
      <p>I am quite new to git and I agree with Mike. Anything simplifying the git submodules is good to take. So I will happily have a look at giternal. I tried the git submodules to help developing a plugin (namely OFC/rails) but I have not found yet some very convincing tutorials about it.</p><p>Peter, thanks a lot for rubyinside and railsinside. These blogs are awesome. I have known them only for 2 months but I wished I had known them for longer. They are really my number one resources to get news about Ruby and Rails. </p><p>About git, this question of submodules is quite "advanced". For the newcomers to git, I wrote a post that explains why git is so useful and how to use it along with github on an open source project: <a href="http://harryseldon.thinkosphere.com/2008/11/08/grand-gardening-with-git" rel="nofollow">http://harryseldon.thinkosphere.com/2008/11/08/grand-gardening-with-git</a><br>
Thanks</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike</strong> &middot; <time datetime="2008-11-12T20:11:00+00:00">November 12, 2008 at 8:11 pm</time></p>
      <p>Mike G &amp; Harry - I agree, the official git docs are not always the easiest reads, especially for newcomers.  I wrote a post about a month ago on setting up a rails project with submodules rather than script/plugin install.</p><p><a href="http://mikecostanza.blogspot.com/2008/09/git-submodule-scriptplugin-install.html" rel="nofollow">http://mikecostanza.blogspot.com/2008/09/git-submodule-scriptplugin-install.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Cristi Balan</strong> &middot; <time datetime="2008-11-12T23:45:00+00:00">November 12, 2008 at 11:45 pm</time></p>
      <p>@mike: Thanks for the mention of "braid":<a href="http://github.com/evilchelu/braid/wikis/home" rel="nofollow">http://github.com/evilchelu/braid/wikis/home</a> and the roundup. It looks like ginternal doesn't use subtree merges tho. It appears to just help with the quick case of dumping repositories in. The nice thing about braid is that you can just start hacking on a mirror directly in your own repo and still be able to update with code from upstream.</p><p>@arturas: Allowing to push from a braid mirror is planned for 0.6. We have the diff already and now we need to tweak the generated patch a bit so it can be sent.</p><p>@grosser: Braid has been able to mirror botth git and svn repos since it was created. And because it uses git and git-svn, to take advantage of all the work done on those tools, it is intended to only be used if your main repository is on git.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jacob Radford</strong> &middot; <time datetime="2008-11-13T03:10:00+00:00">November 13, 2008 at 3:10 am</time></p>
      <p>Another alternative is ext - <a href="http://github.com/azimux/externals/tree/master" rel="nofollow">http://github.com/azimux/externals/tree/master</a></p><p>He as a good explanation of his problems with git submodules too - <a href="http://nopugs.com/2008/09/04/why-ext" rel="nofollow">http://nopugs.com/2008/09/04/why-ext</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brandon</strong> &middot; <time datetime="2008-11-13T05:06:00+00:00">November 13, 2008 at 5:06 am</time></p>
      <p>@Mike Gunderloy: I love your writing elsewhere so welcome to RubyInside!  I'm sure you'll be a great addition to an already excellent site.</p><p>@Mike (#7):<br>
Yeah, it's really simple once you have the commands in front of you, but are they things you'll use every day?  week?   </p><p>$ cheat git | grep  submodule<br>
turns up nothing, which is too bad.   But that's easily remedied... okay, I've added the three commands you mentioned to the git cheat sheet.  Please add any explanatory notes you think would be helpful.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pat Maddox</strong> &middot; <time datetime="2008-11-13T06:03:00+00:00">November 13, 2008 at 6:03 am</time></p>
      <p>The advantage of giternal over git submodules is that the references in giternal are weaker than with submodules.  We experienced some problems on the RSpec project because submodules not only point to a repo, but also a particular version of the repo.  This becomes a problem when active development occurs in the submodule, as we were doing with RSpec.</p><p>David was working on something, and I was working on another unrelated change.  We both committed to the submodule locally, and then pushed out the changes.  Then we updated the references in the superproject.  Now my superproject says the submodule ref is at commit abc123, and David's says it's at def456.  When one of us pulls from the other, we get a merge conflict _only about the submodule ref sha_.  That is, we made completely valid, non-conflicting changes everywhere, but we *still* have to deal with a merge conflict here.</p><p>Another thing is that when you "git submodule update" a repo, it will just blow away the existing one, so any work you've done but not pushed goes *poof*</p><p>Now with giternal the only time you get conflicts is if you were to both freeze the external at different points, and then each commit.  And you want that conflict anyway, because then you can unfreeze, merge your externals, and then freeze it back up.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pat Maddox</strong> &middot; <time datetime="2008-11-13T06:06:00+00:00">November 13, 2008 at 6:06 am</time></p>
      <p>Short answer, which I didn't really say, is that yes there are tools for tracking upstream changes, and yes there are some tools for tracking upstream changes as well as your own changes, but I've not seen another tool that allows you to collaborate on those changes as well.  Giternal is all about tracking and collaborating on external repos.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike</strong> &middot; <time datetime="2008-11-13T15:35:00+00:00">November 13, 2008 at 3:35 pm</time></p>
      <p>Pat - "The advantage of giternal over git submodules is that the references in giternal are weaker than with submodules. We experienced some problems on the RSpec project because submodules not only point to a repo, but also a particular version of the repo. This becomes a problem when active development occurs in the submodule, as we were doing with RSpec."</p><p>I thought pointing to a specific version of a submodule was one of the biggest advantages of using submodules in the first place.  For example, I started a project using RSpec for testing when the latest version was 1.1.4.  I wrote a bunch of integration tests using stories, but now the latest RSpec has deprecated stories into a separate gem.  Since I already wrote a bunch of tests for this project, I don't feel like rewriting those tests to accommodate RSpec changes - I'll just stick with 1.1.4 for that project.  Correct me if I'm wrong, but isn't that a more common scenario than a project with external dependencies that are in continuous development?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pat Maddox</strong> &middot; <time datetime="2008-11-13T17:17:00+00:00">November 13, 2008 at 5:17 pm</time></p>
      <p>@Mike - well you can use giternal for that as well.  You simply don't update the external repo.  In your case, I'd giternalize the rspec repo, check it out to the 1.1.4 tag, then freeze it.  Done.</p><p>"Correct me if I'm wrong, but isn't that a more common scenario than a project with external dependencies that are in continuous development?"</p><p>Perhaps, but that's not my typical use case.  And the good thing about giternal is that you can use it just to track externals, and then if you decide to develop on them at all you have that freedom.  That's something that's possible with submodules, but is a major headache if you're making frequent changes to the externals</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Cristi Balan</strong> &middot; <time datetime="2008-11-13T19:24:00+00:00">November 13, 2008 at 7:24 pm</time></p>
      <p>Pat - "Short answer, which I didn't really say, is that yes there are tools for tracking upstream changes, and yes there are some tools for tracking upstream changes as well as your own changes, but I've not seen another tool that allows you to collaborate on those changes as well. Giternal is all about tracking and collaborating on external repos."</p><p>I wonder what do you mean by "allows you to collaborate on those changes as well". </p><p>Braid mirrors are commited as code in the project. Other people working on the project don't even need braid to change the mirrored code. They only need it if they want to run braid update to get new code from upstream.</p><p>So, yes, it definitely allows collaboration on those changes. If I understand the meaning of "those" correctly :).</p><p>Could you please clarify your use case? I'm interested in adding support for it in braid, if possible.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Cristi Balan</strong> &middot; <time datetime="2008-11-13T19:28:00+00:00">November 13, 2008 at 7:28 pm</time></p>
      <p>@pat: Here's a brief example of braid usage between two developers.</p><p>There's nothing braid related here besides adding the mirror. Should there be?</p><p>dev1:</p><p>braid add blah<br>
echo 123 &gt; blah/moo<br>
git add . &amp;&amp; git commit -m "moo" &amp;&amp; git push</p><p>@dev2:</p><p>git pull<br>
echo 456 &gt;&gt; blah/moo<br>
git push</p><p>@dev1:</p><p>git pull<br>
cat blah/moo # =&gt; 123\n456</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pat Maddox</strong> &middot; <time datetime="2008-11-13T19:33:00+00:00">November 13, 2008 at 7:33 pm</time></p>
      <p>@Cristi - here's my use case.  I have my Rails app, and I've used giternal to add rspec and rspec-rails.  I commit to my Rails app, which is my code.  I also commit to rspec and rspec-rails, and I push those rspec and rspec-rails changes upstream.  So this way I can use the latest rspec code in my rails app, as well as push changes to rspec.  Make sense?</p><p>giternal is not just about tracking dependencies, or even making changes in them.  It's about having multiple complete, fully-functional git repos, and associating them together to create a full project.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Cristi Balan</strong> &middot; <time datetime="2008-11-14T12:00:00+00:00">November 14, 2008 at 12:00 pm</time></p>
      <p>@Pat: Thanks. it's clear now. You want to track projects where you have commit access and be able to easily commit to them. I've been wanting that too :). However, that only works when you're a commiter and know your patches will go in. For normal people, one would have to fork and use the fork with giternal. And then manually update their fork when they need upstream changes.</p><p>Indeed, you can't do this easily with braid. It will be possible tho once we do braid push. I'll also have a look and see if we can steal anything from giternal ;), tho I think the approaches are quite incompatible.</p><p>Otherwise, I'll try and see if one could easily convert mirrors from one style to the other, as both have their specific advantages.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pat Maddox</strong> &middot; <time datetime="2008-11-14T16:04:00+00:00">November 14, 2008 at 4:04 pm</time></p>
      <p>"You want to track projects where you have commit access and be able to easily commit to them."</p><p>Exactly</p><p>"However, that only works when you're a commiter and know your patches will go in. For normal people, one would have to fork and use the fork with giternal. And then manually update their fork when they need upstream changes."</p><p>True.  But it would be trivial to add another remote in the yaml file.  I've just haven't had the need for that quite yet.  Maybe I'll do that today :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Cristi Balan</strong> &middot; <time datetime="2008-11-15T04:59:00+00:00">November 15, 2008 at 4:59 am</time></p>
      <p>@pat: Sure, you can use any remote you want :). But, my point was that you'd have to have a fork of each project you want to track with giternal. And I'm assuming people don't want to fork all 15 plugins they use in their rails app.</p><p>That's why I was thinking about a way to make it easy for people to use giternal for some mirrors, braid for other mirrors and then be able to switch between them.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ben</strong> &middot; <time datetime="2008-11-16T02:19:00+00:00">November 16, 2008 at 2:19 am</time></p>
      <p>hi all,<br>
I installe the giternal gem, but it complainted "-bash: giternal: command not found".<br>
what's the problem? </p><p>thanks in advance.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Fritzek</strong> &middot; <time datetime="2008-11-19T12:06:00+00:00">November 19, 2008 at 12:06 pm</time></p>
      <p>@pat and @cristi: I just contribute on basis of a fork to bruno's communityengine. the submodule trick was a bit too tricky to me. tekkub @github shares this opinion. your both tools seem to me feasible to do my stuff. short explanation: part of the superproject is the ce as a plugin/engine, at the moment I develop both separately (as separate local repos) and just symlink the ce into superproject; not to mention that deployment is a bit ... How would you use your tool to get both parts together, manage separate dev and joined deployment?</p><p>@pat How to use giternal inside a cap recipe? As external system call?</p><p>Thanks in advance<br>
Fritzek</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pat Maddox</strong> &middot; <time datetime="2008-11-19T17:22:00+00:00">November 19, 2008 at 5:22 pm</time></p>
      <p>Ben - I think it's that the gem on rubyforge is old.  Try installing from github instead.  Will push an update to rubyforge soon</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Cristi Balan</strong> &middot; <time datetime="2008-11-21T11:27:00+00:00">November 21, 2008 at 11:27 am</time></p>
      <p>@fritzek: I'm assuming the following:</p><p>1. You have normalCE that has plugins in it. These are repos you don't have commit access to.<br>
2. You have superCE that has normalCE in it.<br>
3. You want to work on both.</p><p>IMO, the solution is to use braid to manage the plugins in normalCE and then use ginternal to get normalCE into superCE.</p><p>If there are no plugins in normalCE and they are included directly in superCE, you can still use braid to manage those in superCE alongside using ginternal to manage normalCE.</p><p>HTH</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Cristi Balan</strong> &middot; <time datetime="2008-11-21T11:28:00+00:00">November 21, 2008 at 11:28 am</time></p>
      <p>@peter: The autorefreshing the page just ate my comment and I had to retype it. Boo :'(</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
