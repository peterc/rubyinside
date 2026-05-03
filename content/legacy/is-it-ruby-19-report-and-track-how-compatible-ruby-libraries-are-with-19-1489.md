---
title: 'Is It Ruby 1.9: Report and Track How Compatible Ruby Libraries Are With 1.9'
date: '2009-02-06'
author: Peter Cooper
author_slug: admin
post_id: 1489
slug: is-it-ruby-19-report-and-track-how-compatible-ruby-libraries-are-with-19-1489
url: "/is-it-ruby-19-report-and-track-how-compatible-ruby-libraries-are-with-19-1489.html"
categories:
- tools
---

{{< rawhtml >}}
<p><a href="http://isitruby19.com/"><img src="/assets/2009/02/isitruby19.png" width="190" height="60" alt="isitruby19.png" style="float:right; margin-bottom:12px; margin-left:12px;"></a></p>
<p><a href="ruby-1-9-1-preview-released-why-its-a-big-deal-1280.html">Ruby 1.9.1 was released last week</a> but due to the significant changes between the 1.8 and 1.9 versions of MRI, not all libraries and gems work with it. The trouble is.. which do and which don't? My advice last week was to just start playing and not to switch anything serious across until you could guarantee all of your preferred libraries worked.</p>
<p><a href="http://isitruby19.com/">Is It Ruby 1.9</a> - developed by Rails host <a href="http://www.brightbox.co.uk/">Brightbox</a> - helps with the process of tracking gem compatibility with Ruby 1.9. It's a place for the Ruby community to both report and track compatibility for all public gems. For example, I can see that so far 3 people have reported <a href="http://isitruby19.com/hpricot">success with Hpricot</a> and 2 have reported failures. If you visit <a href="http://isitruby19.com/hpricot">the Hpricot specific page</a>, you can read the reports users have given to find out how to get it working on 1.9.1. The same applies for every other gem..</p>
<p>This is a great resource and if you're savvy enough to play with 1.9.1 and to try installing gems, get on to <a href="http://isitruby19.com/">Is It Ruby 1.9</a> now and report your own results. A lot of gems have no reported failures or successes yet, so there's a lot of opportunity to help the community out. Alternatively, if you just want to get help and monitor progress, you can also subscribe to RSS feeds for the gems you're most interested in.</p>
<p><em>Disclaimer: Brightbox is a Ruby Inside sponsor, though this post is not connected to that :)</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>MarquisDeBad</strong> &middot; <time datetime="2009-02-06T15:20:00+00:00">February 6, 2009 at 3:20 pm</time></p>
      <p>Sorry, this is a waste of time.</p><p>Take Hpricot. 5 comments on 3 versions on 3 or maybe 4 setups. 3 marked as working - except one of those actually states in the comment it's failing - and 2 marked as failing. Apparently something's been fixed, apparently it hasn't been fixed, and - oh - and good luck tracking progress cos there aren't any dates.</p><p>So is Hpricot ready for Ruby 1.9? I am none the wiser.</p><p>Would the lighthouse/official mailing list/support forums be a better focus of this energy? Definitely.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-02-07T00:42:00+00:00">February 7, 2009 at 12:42 am</time></p>
      <p>It does show that someone installed the 0.9.x version from Github successfully on 1.9.1, so I consider that useful. I've also learned that the inability to build is something to do with fast_xs and that there is progress on that being fixed.</p><p>This isn't a "find out how to install every gem on 1.9.1 right now" type thing.. it's a share knowledge, check out what's going on, and hopefully we can figure it out sort of thing.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Steve Murbach</strong> &middot; <time datetime="2009-02-09T15:48:00+00:00">February 9, 2009 at 3:48 pm</time></p>
      <p>I am not sure I get the whole point of releasing Ruby 1.9 at this stage.  Why should they say that this latest release is STABLE and then come back to tell us that many of the libraries and gems do not work with it?  Is that the kind of frustration and lack of common sense we should to be offering to the Ruby community if we claim that Ruby is a "great and very-much-at-ease" language that it is meant to be?  Now I am not in a position to proudly show off Ruby's latest realese to other developers.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-02-09T17:50:00+00:00">February 9, 2009 at 5:50 pm</time></p>
      <p>Steve: It's a chicken and egg situation. If a release of 1.9 hadn't gone stable then library developers wouldn't bother developing against it. So.. it takes a slightly shaky stable in order to get people to actually start using it.</p><p>Ruby 1.9 has been around in some form or another for well over a year now yet the libraries are STILL not done for it.. so just keeping things in development mode does not work whatsoever for encouraging people to bring their code up to standard :(</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
