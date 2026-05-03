---
title: 'Gemcutter: A New Gem Hosting Repository Taking Aim At RubyForge and GitHub'
date: '2009-08-20'
author: Ric Roberts
author_slug: ricroberts
post_id: 2281
slug: gemcutter-a-fast-and-easy-approach-to-ruby-gem-hosting-2281
url: "/gemcutter-a-fast-and-easy-approach-to-ruby-gem-hosting-2281.html"
categories:
- controversy
- miscellaneous
- tools
---

{{< rawhtml >}}
<p><img style="float:left; margin-right:12px; margin-bottom:12px" src="/assets/2009/08/gemcutter.jpg" alt="ready set go"><a href="http://gemcutter.org/">Gemcutter</a> is a new gem hosting repository that aims to replace <a href="http://rubyforge.org/">RubyForge</a> as the canonical repository for gems. The project has been around for a couple of months, but <a href="http://www.thoughtbot.com">Thoughtbot</a> recently announced <a href="http://robots.thoughtbot.com/post/165832471/gemcutter-org-redesign-preview">they're helping out with a forthcoming redesign of the site</a>.  </p>
<p>As part of the plan to get everyone using it as their main gem repository, Gemcutter has already imported all of the gems that were on <a href="http://rubyforge.org/projects/rubygems/">RubyForge</a> - meaning there are over 5000 gems on there already.</p>
<p>After installing Gemcutter (with <code>gem install gemcutter</code>), consumers of gems just need one command to set Gemcutter up as their primary source:</p>
<pre>gem tumble</pre>
<p>As a publisher, you can just use the git-esque "<code>gem push</code>" command to release a new version of your gem.  </p>
<pre>gem push yourgem-0.0.1.gem</pre>
<p>If you had a gem on Rubyforge and it has been migrated across, then there's a <a href="http://gemcutter.org/pages/migrate">simple procedure</a> for claiming it.</p>
<p>Other than ease of publishing, other benefits of Gemcutter include the way it sidesteps the confusion surrounding Github's naming policy for gems (i.e. prepending the Github username to the gem), and that it provides easy, obvious access to project-pages for the gems.</p>
<p>When I first came accross Thoughtbot's post on the <a href="http://robots.thoughtbot.com/"><em>Giant Robots</em> blog</a>, I originally thought that Gemcutter belonged to them, and great as Thoughtbot are, I was still a little bit worried about a single company taking ownership of a large slice of Ruby-community real-estate.  <a href="http://litanyagainstfear.com/">Nick Quaranto</a>, the owner of the <a href="http://github.com/qrush/gemcutter/tree/master">Gemcutter Github repo</a> (and intern at Thoughtbot) has assured me, though, that it belongs to the community first and foremost.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jeremy</strong> &middot; <time datetime="2009-08-20T14:39:00+00:00">August 20, 2009 at 2:39 pm</time></p>
      <p>I don't mean to be rude, but what exactly is the superiority of this over Rubyforge?  OK, there are a few extra scripts.  Patch RubyGems, problem solved.  This seems to just duplicate the functionality of RubyForge without all the fancy features...? </p><p>Even worse, if someone pushes my gem that I have on Github to gemcutter before I do, they now own it.  I guess that's a problem on Rubyforge, too, but at least that's manually reviewed (do they still do that?).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nick Quaranto</strong> &middot; <time datetime="2009-08-20T14:57:00+00:00">August 20, 2009 at 2:57 pm</time></p>
      <p>Jeremy: first off, it's an open source effort done totally in Ruby, so if there's something that you want in the site, that can now happen easier. The point was to make a gem host without all of the extra stuff that RubyForge offered. Other sites do a much better job of the other features now (mailing lists, source code hosting, bug tracking, etc). By limiting the scope of what the site can do, I feel we've created a better service that the community can enjoy.</p><p>As for reviewing gems on RubyForge, I'm not aware of how that works, but they do auto-approve new gems now. On Gemcutter, the site currently pulls down the latest gems from RubyForge on a nightly basis, and I plan to do the same with GitHub gems as well eventually.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-08-20T14:59:00+00:00">August 20, 2009 at 2:59 pm</time></p>
      <p>Regarding the review stage on RubyForge, I recall reading something in the last month or so that it's all now automated.. I could be wrong.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>raggi</strong> &middot; <time datetime="2009-08-20T15:42:00+00:00">August 20, 2009 at 3:42 pm</time></p>
      <p>Sorry, but, I think rubyforge is going to persist longer than this will.</p><p>The fact is, github has not been nearly as stable as rubyforge, and there's absolutely no reason to believe that a company can afford to support such a thing in all situations.</p><p>What really upsets me about this kind of thing is that support / money could have been sent to rubyforge, but I get the feeling that this wasn't even considered.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-08-20T16:09:00+00:00">August 20, 2009 at 4:09 pm</time></p>
      <p><em>What really upsets me about this kind of thing is that support / money could have been sent to rubyforge, but I get the feeling that this wasn't even considered.</em></p><p>That's a variant of the "Why start a new project instead of helping an existing one?" argument that crops up often online. It's easier and often more effective to create your own new projects than help existing ones that are run by people who might disagree with you or otherwise not let you improve it in ways they don't like.</p><p>I believe RAA predated RubyForge and a similar argument could have been made then. git.or.cz and Gitorious (I believe) existed before GitHub, etc, etc.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>raggi</strong> &middot; <time datetime="2009-08-20T17:35:00+00:00">August 20, 2009 at 5:35 pm</time></p>
      <p>"I get the feeling that this wasn't even considered"</p><p>As a rubyist who actively carries over 100 installed gems, having 3 regular sources is a real pain in the butt.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>raggi</strong> &middot; <time datetime="2009-08-20T17:38:00+00:00">August 20, 2009 at 5:38 pm</time></p>
      <p>Also, I'd rather a not for profit was in control. I don't want to find a failing company suddenly starts charging on what has become "the" canonical source for gems. That would kill more than my chi.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>GR</strong> &middot; <time datetime="2009-08-20T17:38:00+00:00">August 20, 2009 at 5:38 pm</time></p>
      <p>I am excited about this for the simple reason that their focus is on doing one thing and doing it well.  Anyone who has actually used rubyforge (for anything other than indirect usage with a 'gem install') will know that RubyForge is a total POS.  The interface is a mess, it has seen almost zero change or improvement in years, and it does everything it does badly (except simple hosting of gem files).</p><p>Additionally, publishing and hosting on RubyForge was so painful that developers have been getting lazy and not even publishing 'official' releases on RubyForge anymore.  Choosing to rely instead on bleeding edge versions of gems built from GitHub repo's.  This was unhealthy and RubyForge did nothing to alleviate the problem.</p><p>The only thing that surprises me is that GitHub made no moves at all to become the canonical source for gems.</p><p>I predict that if they play their cards right, gemcutter will be THE source for official releases of gems in a year.  Remember how fast we all switched to Git?  And that was a much harder transition.</p><p>PS - GemCutter guys.  Don't make us rely on the gemcutter gem to set things up.  Give us a standard gem source add command as well.  Also, incorporating information from isitruby19 and isitjruby websites would be helpful.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2009-08-20T17:43:00+00:00">August 20, 2009 at 5:43 pm</time></p>
      <p>I had the thought the other day "rubyforge is a poor fit for ruby projects" -- it just feels awkward somehow.  Thankfully github has come around with a much better fit, maybe this will also help it die.  RAA should die, too, now that I think about it.  </p><p>@raggi: maybe gems should be specified by more than just name--like url+name?  That would be nice.<br>
gem.dependency ['github', 'some_gem']</p><p>thoughts?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>raggi</strong> &middot; <time datetime="2009-08-20T17:47:00+00:00">August 20, 2009 at 5:47 pm</time></p>
      <p>We already have to deal with that way too much roger, since github came along. Now there's an above average disparity between gem names and the actual libs they provide. Furthermore, when github is the only canonical source for a particular gem, which is becoming *very* common in the sinatra subculture, having github down can be a massive pain.</p><p>That's a commercial problem. In my entire time in ruby, rubyforge has been down less than a handful of times. Maybe that's down to the way it's run, or average load, or whatever, but a language centric service to be used by millions of people on a weekly basis really needs to be both commercially independent and very stable. To date, only Rubyforge has delivered this.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>raggi</strong> &middot; <time datetime="2009-08-20T17:48:00+00:00">August 20, 2009 at 5:48 pm</time></p>
      <p>Props to Tom Copeland, who deserves it, bigtime.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>raggi</strong> &middot; <time datetime="2009-08-20T17:57:00+00:00">August 20, 2009 at 5:57 pm</time></p>
      <p>And there's a big big point here.</p><p>If you're *really* trying to make *my* life easier, and not looking for *profit* you could sync both ways.</p><p>The rubyforge gem makes this trivial, and is older than most of us have been doing ruby.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>raggi</strong> &middot; <time datetime="2009-08-20T19:00:00+00:00">August 20, 2009 at 7:00 pm</time></p>
      <p>Had an interesting chat with defunkt on this topic. From what he said, there are talks being started up between Tom and the rest of the rubygems team, to talk about moving over the main gems service to a gemcutter base.</p><p>If this happens, and gems.rubyforge.org is moved, or the gemcutter source is added by default, then I will have much less of a problem with this whole area.</p><p>If everything gets sync'd up accordingly, then I welcome this facelift to the main ruby software repositories.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tom Copeland</strong> &middot; <time datetime="2009-08-21T05:45:00+00:00">August 21, 2009 at 5:45 am</time></p>
      <p>Thanks to Sun for the hardware donations.  RubyForge is running on an X4200 M2 that they gave us... good stuff.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tom Copeland</strong> &middot; <time datetime="2009-08-21T06:15:00+00:00">August 21, 2009 at 6:15 am</time></p>
      <p>And when I say "Sun", I mean specifically "Tim Bray".</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ben</strong> &middot; <time datetime="2009-08-21T09:55:00+00:00">August 21, 2009 at 9:55 am</time></p>
      <p>"That's a variant of the "Why start a new project instead of helping an existing one?" argument that crops up often online. It's easier and often more effective to create your own new projects than help existing ones that are run by people who might disagree with you or otherwise not let you improve it in ways they don't like."</p><p>yeah, but if it's for doing the almost same thing; that just sucks.</p><p>honestly, there was a time in here (ruby in general, this website) when things seemed to be innovative, but we end up with the "i almost done the same stuff, but i got reasons to have lost my time because mine is better".</p><p>it is not to your project, but it is disappointing.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nick Quaranto</strong> &middot; <time datetime="2009-08-21T12:55:00+00:00">August 21, 2009 at 12:55 pm</time></p>
      <p>GR: You don't need to use the Gemcutter gem in order to make it your primary Gem source, all that `gem tumble` does is add <a href="http://gemcutter.org" rel="nofollow">http://gemcutter.org</a> as the first source in the list while keeping the rest. There doesn't seem to be a way to do this now with `gem sources` short of editing your ~/.gemrc, so `gem tumble` is there to make this easier.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ric</strong> &middot; <time datetime="2009-08-21T14:48:00+00:00">August 21, 2009 at 2:48 pm</time></p>
      <p>Nick: thanks for clearing that up. I did think that it was a bit of a paradoxical requirement to have to install a gem (from Rubyforge) to be able to use Gemcutter! :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Bates</strong> &middot; <time datetime="2009-08-21T17:23:00+00:00">August 21, 2009 at 5:23 pm</time></p>
      <p>I love the idea of Gemcutter - a simple gem host which doesn't try to do everything.</p><p>However, I want to keep my gems a single "gem install" command away from anyone receiving them. Therefore I will continue to host the gems on RubyForge. I think it's  worth the extra effort on the publisher's side to present a clean, simple installation experience on the consumer's side.</p><p>That said, if RubyForge adopts Gemcutter as the official gem repo (so it is a single "gem install" away) then that would be awesome!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ben</strong> &middot; <time datetime="2009-08-23T06:31:00+00:00">August 23, 2009 at 6:31 am</time></p>
      <p>Should have at least kept the rails-marketing-style kind of names, like gemcuttr or som', maybe "gemkillr" would've been more relevant.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ben</strong> &middot; <time datetime="2009-08-23T06:33:00+00:00">August 23, 2009 at 6:33 am</time></p>
      <p>But in the end the saddest seem that rails people seem more focused on reinventing the (their own wheel) wheel rather than than putting stuff in production.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
