---
title: Gemcutter Is The New Official Default RubyGem Host
date: '2009-10-26'
author: Peter Cooper
author_slug: admin
post_id: 2659
slug: gemcutter-is-the-new-official-default-rubygem-host-2659
url: "/gemcutter-is-the-new-official-default-rubygem-host-2659.html"
categories:
- cool
- news
---

{{< rawhtml >}}
<p><img src="/assets/2009/10/rubygems.png" width="113" height="113" alt="rubygems.png" style="float:left; margin-right:12px; margin-bottom:12px;">Just two months ago <a href="gemcutter-a-fast-and-easy-approach-to-ruby-gem-hosting-2281.html">we posted about Gemcutter</a>, a new RubyGem hosting repository that, we said, was <i>"taking aim at <a href="http://rubyforge.org/">RubyForge</a> and <a href="https://github.com/">GitHub</a>."</i> It only took six weeks <a href="http://github.com/blog/515-gem-building-is-defunct">for GitHub to give up on building gems</a> and to start recommending Gemcutter instead. Today, RubyForge is toppled also. Gemcutter developer Nick Quaranto has <a href="http://update.gemcutter.org/2009/10/26/transition.html">announced that Ruby Central has given the thumbs up</a> to replacing <code>http://gems.rubyforge.org/</code> with <code>http://rubygems.org/</code> (the new Gemcutter URL) as the default gem host in RubyGems.</p>
<p>The transition from RubyForge to Gemcutter/RubyGems.org isn't an overnight deal and gem publishing from RubyForge will continue to work for the time being, but within the next couple of months, RubyForge accounts will be merged with Gemcutter and an update will be made to change the canonical gem source (though, of course, you can use Gemcutter already if you like by following <a href="http://gemcutter.org/">their instructions</a>).</p>
<p>What all of this means for you as a Ruby developer is that if you want to release your own RubyGems (or "gems") in future, things will become a lot easier. Gemcutter, if you haven't checked it out, is definitely a refined evolution in terms of gem hosting - you can "push" a built gem to their server with a single command. If you want to learn how, check out <a href="http://railscasts.com/episodes/183-gemcutter-jeweler">Ryan Bates' awesome Gemcutter &amp; Jeweler screencast</a> that demonstrates how to create a gem and deploy it with Gemcutter.</p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><a href="http://www.codebasehq.com/?utm_source=rubyinside&amp;utm_medium=footer&amp;utm_campaign=sep09" rel="nofollow"><img src="/assets/2009/09/CodebaseLogo-RI.png" width="118" height="37" style="float: right; margin-left: 12px; margin-bottom: 12px" alt="CodebaseLogo-RI.png"></a><em>[ad]</em> <a href="http://www.codebasehq.com/?utm_source=rubyinside&amp;utm_medium=footer&amp;utm_campaign=sep09" rel="nofollow"><b>Codebase</b></a> is a fast &amp; reliable <b>git, mercurial &amp; subversion hosting</b> service with complete project management built-in - ticketing, milestones, wikis &amp; time tracking - all under one roof. <a href="http://www.codebasehq.com/?utm_source=rubyinside&amp;utm_medium=footer&amp;utm_campaign=sep09" rel="nofollow">Click here to try it - free.</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Danny Tatom</strong> &middot; <time datetime="2009-10-27T02:07:00+00:00">October 27, 2009 at 2:07 am</time></p>
      <p>I, for one, welcome our new gemcutter overloards.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-10-27T02:12:00+00:00">October 27, 2009 at 2:12 am</time></p>
      <p>So do I! I think it's awesome news. Tom has been doing a great job maintaining RubyForge but this seems like a good time to pass the torch on the gem front - if only to reinvigorate the idea of releasing gems.. :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tj</strong> &middot; <time datetime="2009-10-27T02:49:00+00:00">October 27, 2009 at 2:49 am</time></p>
      <p>If you work with Github check out <a href="http://github.com/visionmedia/gh" rel="nofollow">http://github.com/visionmedia/gh</a> it will help speed up releasing to Gemcutter as well as github, many cool bash utilities for Rubyists</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-10-27T02:53:00+00:00">October 27, 2009 at 2:53 am</time></p>
      <p>@Tj: Nice! I like the look of that. Did you post about it to RubyFlow yet? I think it might work there too.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ian Tindale</strong> &middot; <time datetime="2009-10-27T08:14:00+00:00">October 27, 2009 at 8:14 am</time></p>
      <p>Will this mean an awful lot of errata and corrections to existing books, which, in explaining things to a beginner, use this or that gem from a rubyforge project in their examples?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Juvenn Woo</strong> &middot; <time datetime="2009-10-27T10:04:00+00:00">October 27, 2009 at 10:04 am</time></p>
      <p>cheers and enjoy</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gimi Liang</strong> &middot; <time datetime="2009-10-27T12:36:00+00:00">October 27, 2009 at 12:36 pm</time></p>
      <p>Good job! Guess a new rubygems with gemcutter as its default repository is coming? Or maybe gems.rubyforge.org/gems will redirect you to gemcutter.org? so there will be no pain for new blood.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nick Quaranto</strong> &middot; <time datetime="2009-10-27T13:38:00+00:00">October 27, 2009 at 1:38 pm</time></p>
      <p>Ian: The existing links from RubyForge will continue to work, so hopefully there shouldn't be any trouble.</p><p>Gimi: Yes, soon.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2009-10-27T19:51:00+00:00">October 27, 2009 at 7:51 pm</time></p>
      <p>RubyForge isn't going anywhere soon. You can still push your gems there, and it does bug tracking, mailing lists, wiki, etc. Stuff gemcutter doesn't do.</p><p>Really, I see gemcutter as the final nail in the coffin of the RAA, not RubyForge.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Arj</strong> &middot; <time datetime="2009-10-28T00:21:00+00:00">October 28, 2009 at 12:21 am</time></p>
      <p>This will be a problem :(</p><p>Company has firewall policies blocking access to all data hosting services, Amazon S3 included which renders gemcutter useless.</p><p>Better go and bug the manager again...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>type</strong> &middot; <time datetime="2009-10-28T01:38:00+00:00">October 28, 2009 at 1:38 am</time></p>
      <p>RubyForge is great.I like it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-10-28T06:16:00+00:00">October 28, 2009 at 6:16 am</time></p>
      <p>@Daniel: Are there any projects that really use those RF features in anger? Of all the libraries I've checked out in the last year, I can't think of any examples where I've gone to RubyForge.</p><p>@Arj: Yeah, you might want to look into that - a lot of things are hosted on S3 now. It's not as if it's a piracy-heavy destination like some of the "file hosting" services.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2009-10-28T13:41:00+00:00">October 28, 2009 at 1:41 pm</time></p>
      <p>@Peter Cooper: Sometimes the libraries you look are not the ones that everybody uses.</p><p>The whole win32utils project (driven by Daniel) is a CVS repository, all the mailing list and the bugs and patches are handle there.</p><p><a href="http://rubyforge.org/projects/win32utils" rel="nofollow">http://rubyforge.org/projects/win32utils</a></p><p>Or RubyInstaller (known as OneClick), which contains releases that can go back to Ruby 1.8.2.</p><p>I've already expressed the concerns about the massive shift and shutdown of these sections, which led to segmentation more than making easy for people find tools that are not gems.</p><p>(Taking in consideration that several Linux distribution repackage gems to work in their systems).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-10-28T13:44:00+00:00">October 28, 2009 at 1:44 pm</time></p>
      <p>@Luis: I do realize that ;-) That's why I was asking the question. I'd still say, though, that those projects that do use RF features in anger are at least a tiny, tiny minority of all of the typically new projects I see. I'd guess the majority I see are using GitHub's equivalent features.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2009-10-28T16:01:00+00:00">October 28, 2009 at 4:01 pm</time></p>
      <p>Peter, I'm not sure what you mean by "in anger". RF, and the majority of my projects, predate github by several years. It was better than anything else available for the Ruby community by far in 2003 when it went online.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-10-28T16:10:00+00:00">October 28, 2009 at 4:10 pm</time></p>
      <p>Sorry, "in anger" is a colloquialism. By using it "in anger" I'm referring to projects that use the wiki, bug tracker, and mailing list features of RF with vigor in the present day. I'm not saying it doesn't happen; I just don't see it.</p><p>I can't recall seeing a RF project where the forum wasn't something like "2 messages" - though I'm sure there must be some popular ones still.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2009-10-29T13:30:00+00:00">October 29, 2009 at 1:30 pm</time></p>
      <p>Peter, indeed, there are some popular ones on RF. Such as Rubygems. :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-10-29T13:39:00+00:00">October 29, 2009 at 1:39 pm</time></p>
      <p>Haha, touché! :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
