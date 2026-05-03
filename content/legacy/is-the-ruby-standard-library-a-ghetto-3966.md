---
title: Is the Ruby Standard Library a Dump?
date: '2010-11-22'
author: Peter Cooper
author_slug: admin
post_id: 3966
slug: is-the-ruby-standard-library-a-ghetto-3966
url: "/is-the-ruby-standard-library-a-ghetto-3966.html"
categories:
- controversy
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2010/11/mikeperham.png" width="86" height="89" alt="mikeperham.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;">In <a href="http://www.mikeperham.com/2010/11/22/the-ruby-stdlib-is-a-ghetto/">The Ruby Stdlib is a Ghetto</a>, Mike Perham argues that Ruby's "standard library" (all the libraries that come by default with Ruby installs) is old and crufty and suggests some parts that should be removed.</p>
<h3>The Problem</h3>
<p>In case you're unfamiliar with the term, the ever authoritative <i>Urban Dictionary</i> <a href="http://www.urbandictionary.com/define.php?term=ghetto">lists ghetto</a> as, among other things:</p>
<blockquote><p>
  an impoverished, neglected, or otherwise disadvantaged residential area of a city, usually troubled by a disproportionately large amount of crime
</p></blockquote>
<p>Anyone's who recently looked up documentation for stdlib-dwelling libraries has probably been a little frustrated. I see rants and raves from time to time on IRC and Twitter and I'm often surprised at how much isn't documented. Frequently, documentation advocates like James Britt will encourage people to start contributing documentation in an attempt to tidy up their own back yard, but the process is, IMHO, reasonably arcane compared to that of other open source projects.</p>
<h3>A Solution?</h3>
<p>Mike's suggests that we remove most of the substantial libraries, like Net::* (including the popular Net::HTTP), DRb, REXML, RSS, and even WEBrick, and to have them as separate, RubyGems-installable libraries.</p>
<p>I agree. Even forgetting the technical aspects, freeing these libraries from the clutches of the standard library and having defined maintainers (on, say, GitHub) could encourage more developers to engage with them, fork them, provide patches, and so forth, as we see with other popular Ruby libraries.</p>
<p>The sticking point? The "standard library" is called "standard" for good reason. You can install Ruby 1.8.7, 1.9.2, JRuby 1.5, or any mainstream implementation and expect to run <code>require 'drb'</code> successfully out of the box. Taking libraries out of the standard library would change this and, of course, require significant community agreement and discussion, not least from the Japanese Ruby high guard.</p>
<p>I applaud Mike for <a href="http://www.mikeperham.com/2010/11/22/the-ruby-stdlib-is-a-ghetto/">kicking off the discussion</a>, though. In a year or two's time, we might get to look back at the discussion much as we can now look back at 2008's "<a href="no-true-mod_ruby-is-damaging-rubys-viability-on-the-web-693.html">No True 'mod_ruby' is Damaging Ruby's Viability On The Web</a>" and breathe a sigh of relief.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Hubert Łępicki</strong> &middot; <time datetime="2010-11-22T20:24:00+00:00">November 22, 2010 at 8:24 pm</time></p>
      <p>Yep, I also agree. This would also help projects that target running Ruby on mobile devices, or other low resource machines.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Damien</strong> &middot; <time datetime="2010-11-22T20:57:00+00:00">November 22, 2010 at 8:57 pm</time></p>
      <p>Yep we don't want an API keeping old decisions for backward compatibility's sake... that's how some other languages do and get a cluttered Standard Library...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>postmodern</strong> &middot; <time datetime="2010-11-22T22:32:00+00:00">November 22, 2010 at 10:32 pm</time></p>
      <p>Yep it is.</p><p>Splitting out REXML makes sense since it has competitors (libxml and nokogiri), but I couldn't live without Net::HTTP.</p><p>Another part of the solution would be to (re-)document parts of stdlib, such as Pty (<a href="http://www.ruby-doc.org/stdlib/libdoc/pty/rdoc/index.html" rel="nofollow">http://www.ruby-doc.org/stdlib/libdoc/pty/rdoc/index.html</a>).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Grimm</strong> &middot; <time datetime="2010-11-22T22:43:00+00:00">November 22, 2010 at 10:43 pm</time></p>
      <p>I would have posted this at his blog, but his website wouldn't let me.</p><p>I once found a problem in documentation (I suspect caused by Japanese people having difficulty with a confusing part of English) and filed bug report 2345, and they accepted the change. At least for me, patches were welcomed.</p><p>I didn't like the change from Test::Unit to Minitest between 1.8 and 1.9, so making a lot of the standard library non-standard would be mildly concerning. </p><p>Anyway, isn't "batteries included" the default for scripting languages?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>postmodern</strong> &middot; <time datetime="2010-11-22T22:49:00+00:00">November 22, 2010 at 10:49 pm</time></p>
      <p>Also, I should point out the obligatory blog-post by Eric Hodel about Net::HTTP:<br>
<a href="http://blog.segment7.net/articles/2010/05/07/net-http-is-not-slow" rel="nofollow">http://blog.segment7.net/articles/2010/05/07/net-http-is-not-slow</a></p><p>(Can anyone else post comments on Mike's blog? It says I'm logged in as Mike but requires name/email.)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan Wedekind</strong> &middot; <time datetime="2010-11-22T23:27:00+00:00">November 22, 2010 at 11:27 pm</time></p>
      <p>I think the real problem is that Ruby is managed with SVN. Using a Git repository would allow the core developers to work like Linus Torvalds. There are lead developers responsible for different parts of the project and there is a hierarchy of trust. I.e. lead developers don't need to spend time reviewing changes from developers they can trust. Every Git checkout is also a repository. SVN in contrast is very limited. There is only a central repository and either you have write permission or not. And everybody who has write permission can break the code in that repository.</p><p><a href="http://lwn.net/Articles/246313/" rel="nofollow">http://lwn.net/Articles/246313/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>rubiii</strong> &middot; <time datetime="2010-11-22T23:55:00+00:00">November 22, 2010 at 11:55 pm</time></p>
      <p>@postmodern net/http also has quite a few competitors. just look at <a href="http://rubygems.org/gems/httpclient" rel="nofollow">http://rubygems.org/gems/httpclient</a> is one example. i know what you mean, but it seems difficult to decide about whether some library should belong to the stdlib by looking at the number or quality of competing libraries.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>rubiii</strong> &middot; <time datetime="2010-11-22T23:56:00+00:00">November 22, 2010 at 11:56 pm</time></p>
      <p>@Jan Wedekind sorry, but that's just not the problem.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>zimbatm</strong> &middot; <time datetime="2010-11-23T00:24:00+00:00">November 23, 2010 at 12:24 am</time></p>
      <p>I think it would be nice to start a documentation team actually.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>zimbatm</strong> &middot; <time datetime="2010-11-23T00:40:00+00:00">November 23, 2010 at 12:40 am</time></p>
      <p>@Jan Wedekind : actually there is an official git repo listed on <a href="http://www.ruby-lang.org/en/community/ruby-core/#git-ruby" rel="nofollow">http://www.ruby-lang.org/en/community/ruby-core/#git-ruby</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>zimbatm</strong> &middot; <time datetime="2010-11-23T00:53:00+00:00">November 23, 2010 at 12:53 am</time></p>
      <p><a href="https://github.com/ruby/ruby/" rel="nofollow">https://github.com/ruby/ruby/</a> is actually the official git repo.</p><p>What I might also add is that if stuff get removed from the stdlib, we might as well for a "ruby distribution" that lists and maintains a set of official gems, because not all gems are equal and it is sometimes hard to find a good quality gem.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonathan Rochkind</strong> &middot; <time datetime="2010-11-23T02:37:00+00:00">November 23, 2010 at 2:37 am</time></p>
      <p>No way, the standard library is what keeps us being able to share each others code, because it's all written on a common platform. If you get rid of the standard library, it gets much harder to share code libraries or gems, because they're each going to come with their own seperate dependencies, and you wind up with a mountain of dependencies when combining libraries/gems/frameworks from different sources. </p><p>And ruby's standard library is by and large really great -- with some notable exceptions like net::http, which is just embaressingly bad. </p><p>The solution is to fix the awful parts of the standard library, not to get rid of it. The stagnation of the ruby standard library, where bad API's and bad implementations don't get fixed, is the problem, not it's existence. The solution is to figure out ways to lower the bar for submitting patches that get considered for the stdlib.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Zhaptor Milin</strong> &middot; <time datetime="2010-11-23T04:36:00+00:00">November 23, 2010 at 4:36 am</time></p>
      <p>If you remove large pieces of the standard library, you ensure that Ruby will be far less usable in some environments.</p><p>The Ruby standard library needs some frigging documentation! it took me a day to figure out exactly how OptionsParser was usable for a particular usage -- and it has some of the best documentation in the standard library, which is not saying much, unfortunately.</p><p>I mean, feel free to deprecate crufty bits and replace them with more capable bits, but how can you tell which is which without documentation?</p><p>I agree that git is a great tool, but the problem is one of human management, not SCM tools. Somebody needs to own the standard library.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alex</strong> &middot; <time datetime="2010-11-23T06:34:00+00:00">November 23, 2010 at 6:34 am</time></p>
      <p>Agreed, there are lots of old and unused things</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2010-11-23T13:57:00+00:00">November 23, 2010 at 1:57 pm</time></p>
      <p>Heh, this is old news. I've harped on this in the past. Heres my short list of things that ought to be ripped out.</p><p>abbrev - Dumb library. Never seen it used in the wild.<br>
dbm, gdbm, sdbm - Rarely used old unixy cruft reliant on 3rd party libs.<br>
ftools - Deprecated by fileutils, and not as reliable.<br>
nkf - Language specific libraries do not belong in the standard lib.<br>
ping - Generally useless. See net-ping.<br>
tmpdir - One method? Just merge it into Dir.</p><p>There are definitely better replacements for some of the standard libraries, but the stuff that's in there at least serves as a good starting point.</p><p>Dan</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Drew</strong> &middot; <time datetime="2010-11-23T16:27:00+00:00">November 23, 2010 at 4:27 pm</time></p>
      <p>It may be the 'standard' library but change is not without precedent. Take for example, FileUtils. This library is not part of the standard lib until 1.8.7 so if you're writing backwards compatible code you have to remember to require it for 1.8.6 users. Making the standard library smaller is good for everyone because it forces developers to be more explicit about what exactly they're using.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2010-11-23T16:44:00+00:00">November 23, 2010 at 4:44 pm</time></p>
      <p>@Drew, fileutils has been in the standard library since 1.8.0.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Steve Smith</strong> &middot; <time datetime="2010-11-24T14:54:00+00:00">November 24, 2010 at 2:54 pm</time></p>
      <p>I'm really in two minds about this and I can't decide which side of the fence is right. Taking Net::HTTP as an example on one side I'd like to see dramatic improvement to the library something that would be achieved by doing what Mike says. On the other hand there are a bunch of great libraries that do this and almost all rely on the standard library in the first place. Having worked in other languages where the standard libraries often have a much greater functionality than Ruby, it seems to me there must be a better way to improve the standard library whilst still allowing for inovation? I agree that something can be done but I'm not sure removing things is the solution.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Martin B</strong> &middot; <time datetime="2010-11-24T21:29:00+00:00">November 24, 2010 at 9:29 pm</time></p>
      <p>Peter, not quite on topic, but when you write:</p><p>...we can now look back at 2008's "No True 'mod_ruby' is Damaging Ruby's Viability On The Web" and breathe a sigh of relief...</p><p>can you expand on that just a bit?  That is, I tried to use mod_ruby a couple of years back and experienced some significant pain.  I haven't revisited it, so I'm not up-to-date.  What's changed?  You imply that things are better.  Can you say how or give me a couple of references?  Thanks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-11-25T11:14:00+00:00">November 25, 2010 at 11:14 am</time></p>
      <p>@Martin B: Two months later we got Passenger which essentially superseded mod_ruby and gave us close to PHP levels of ease of deployment.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aaron M</strong> &middot; <time datetime="2010-11-26T21:13:00+00:00">November 26, 2010 at 9:13 pm</time></p>
      <p>I can see where this is coming from. Definitely want to use more modern code. However, i do like the net/http library, as curb doesn't work so well on windows. Why am I on windows you ask? I run a windows machine at work, which I have a small rails app on for QA'ing some websites we build. It uses net/http to retrieve the source code of a web page.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
