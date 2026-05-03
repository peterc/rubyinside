---
title: Ruby-Core Speaks on Ruby 1.8.8, 1.9.3 and 2.0
date: '2011-01-07'
author: Peter Cooper
author_slug: admin
post_id: 4172
slug: ruby-core-speaks-on-ruby-1-8-8-1-9-3-and-2-0-4172
url: "/ruby-core-speaks-on-ruby-1-8-8-1-9-3-and-2-0-4172.html"
categories:
- miscellaneous
- news
- nonsense
---

{{< rawhtml >}}
<p><img src="/assets/2011/01/ruby-core.png" width="85" height="87" alt="ruby-core.png" style="float:left; margin-right:12px; margin-bottom:12px;">You may imagine that <a href="http://blade.nagaokaut.ac.jp/ruby/ruby-core/index.shtml">the ruby-core mailing list</a> is a 24/7 programming disco dealing with core Ruby implementation topics.. but no, it's usually a low-traffic list with calm discussion of bugs and patches. This week, however, some Interesting Stuff™ has happened and the kimono has been lifted on a few issues including, notably, a potential Ruby 1.8.8.</p>
<p>Yui Naruse, one of the <a href="http://rubycommitters.org/">core Ruby committers</a>, was trying to dispel myths that the Japanese-language <a href="http://blade.nagaokaut.ac.jp/ruby/ruby-dev/index.shtml">ruby-dev mailing list</a> is a hotbed of illicit Ruby implementation activity by inviting people to ask any implementation-related questions they liked in <code>ruby-core</code>. From <a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-core/34066">the results of this</a>, we can pick up a few tidbits:</p>
<p><b>What's going on with Ruby 1.9.1?</b></p>
<blockquote class="stylized"><p>Still alive but is less active because of yugui's resource. I think, it will die soon.</p></blockquote>
<p><cite>Yui Naruse</cite></p>
<p><b>When will Ruby 1.9.3 be released?</b></p>
<blockquote class="stylized"><p>Not decided but we want to release 1.9.x every 1.5 years (to prevent 1.9.2 become too stable one like 1.8.6). So it may be released in 2011-12-25 or 2012.</p></blockquote>
<p><cite>Yui Naruse</cite></p>
<p><b>What about Ruby 2.0?</b></p>
<blockquote class="stylized"><p>See <a href="http://confreaks.net/videos/430-rubyconf2010-keynote-3">Matz's presentation at RubyConf 2010</a>. [..] But when we relase Ruby 2.0 is not decided. I think it takes <i>several years</i> [PC: emphasis mine].</p></blockquote>
<p><cite>Yui Naruse</cite></p>
<p>Yes, several years. Ruby 2.0 is our Perl 6.</p>
<h3>Ruby 1.8.8 - Another Update to the 1.8 Branch?</h3>
<p>Yui also let slip that that there could be a Ruby 1.8.8 waiting in the wings and the next day Shota Fukumori posted <a href="http://blade.nagaokaut.ac.jp/cgi-bin/vframe.rb/ruby/ruby-core/34171?34021-34224+split-mode-vertical">Let's begin a talk for "1.8.8"</a>, an English translation of <a href="http://redmine.ruby-lang.org/issues/show/4207">a Japanese ruby-dev post</a>. It's a little hard to read but the general points are:</p>
<ul>
<li>Ruby 1.9.0 came out 3 years ago and Ruby 1.8.7 will be 3 years old in June 2011. This is the longest it has been between significant releases.</li>
<li>Ruby 1.9.2 is recommended for new development but, it is claimed, many "can't use 1.9.x in actuality" because "extension libraries" do not work [I'm not au fait with libraries used in Japan but most of the mainstream ones now are fine IME].</li>
<li>Ruby 1.8 must not become "uncontrolled" [Unmaintained, I'm assuming..]</li>
</ul>
<p>From these points, Shota proposes three ways forward:</p>
<ol>
<li>1.8.8 could be created as a "better 1.8.7" with a release date of Summer 2011.</li>
<li>1.8.8 can be worked on until it is "ideal" and users are not affected. A release date of 2020 is proposed. [This is the joke entry, I take it.]</li>
<li>No 1.8.8 ever.</li>
</ol>
<p>The ultimate question, though, is "What do we do?" Ultimately it's for the community to decide. Matz himself has said:</p>
<blockquote class="stylized"><p>We haven't have any consensus yet. Maybe it's good time to start discussion. I myself don't think 1.8.8 is needed. But there might be demand for 1.8.8 or later.</p></blockquote>
<p><cite>Matz</cite></p>
<p>So if this is something you care strongly for, get discussing. IMHO, I want to encourage people onto 1.9.2 as much as possible. The water's warm, the libraries are (finally) friendly, and Ruby 1.9 is better in many ways.</p>
<h3>And if you're not yawning yet..</h3>
<p>In other <code>ruby-core</code> news, Lucas Nussbaum kicked off <a href="http://blade.nagaokaut.ac.jp/cgi-bin/vframe.rb/ruby/ruby-core/34091?34021-34224+split-mode-vertical">a heated debate about the virtues of moving MRI development to Git</a> (it ain't gunna happen) and Ryan "zenspider" Davis <a href="http://blade.nagaokaut.ac.jp/cgi-bin/vframe.rb/ruby/ruby-core/34043?34021-34224+split-mode-vertical">proposes that gem_prelude should die</a> (based on the RubyGems team's experiences with Ruby 1.9.2 and the <a href="http://blog.zenspider.com/2010/12/rubygems-141-has-been-released.html">new RubyGems 1.4</a>).</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Mark Carey</strong> &middot; <time datetime="2011-01-07T17:22:00+00:00">January 7, 2011 at 5:22 pm</time></p>
      <p>Actually a weekly/monthly summary/review of what's going on in ruby-core &amp; ruby-dev and possibly irc would be an awesome addition to rubyinside.  I remember a few years ago when I first was getting into ruby, someone doing that and it was really helpful in keeping up.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-01-07T19:29:00+00:00">January 7, 2011 at 7:29 pm</time></p>
      <p>I don't think I'd do it weekly but "every now and then" would be interesting (i.e. most months but not a tight schedule). I'll keep it in mind and keep my eyes peeled on any interesting goings ons ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2011-01-07T20:53:00+00:00">January 7, 2011 at 8:53 pm</time></p>
      <p>No, Ruby 2.0 is not our Perl 6. Ruby 1.9 effectively -is- Ruby 2 IMO, and some people have been using it in production for a while. Unfortunately, the ruby-core dev team appears to be treating "2.0" as some sort of Platonic ideal that can never be reached. That, or I don't know what the roadmap is to achieve 2.0 status.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>WT</strong> &middot; <time datetime="2011-01-07T23:30:00+00:00">January 7, 2011 at 11:30 pm</time></p>
      <p>Daniel has a point.</p><p>Perl 5.0 to 6.0 is going to be &gt; 14 years. I know it was just an offhand comment, but the analogy isn't apt.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-01-08T00:33:00+00:00">January 8, 2011 at 12:33 am</time></p>
      <p>@WT: Ruby 1.0 to 2.0 will be &gt; 14 years too. Ruby 1.0 came out in 1996.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Grimm</strong> &middot; <time datetime="2011-01-08T05:39:00+00:00">January 8, 2011 at 5:39 am</time></p>
      <p>Did Perl 5 continue to develop even while Perl 6 was Duke Nukem Forevering?</p><p>"a hotbed of illicit Ruby implementation activity" - is this referring to the recent complaint by the Debian ex-maintainer?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-01-08T06:26:00+00:00">January 8, 2011 at 6:26 am</time></p>
      <p>@Andrew: Yes. In fact, Perl 5 is <a href="http://blog.urth.org/2010/11/what-versions-of-core-perl-should-module-authors-support.html" rel="nofollow">still under heavy development.</a> Perl 6 has essentially turned out to be a whole new language separate from the idea of Perl 5. It wouldn't surprise me if this split occurred with Ruby 1.8/9 vs the elusive Ruby 2.0 given the further syntax changes that have been posited.</p><p>Regarding the "hotbed of illicit Ruby implementation activity" - sort of, though it was more a joke.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>khelll</strong> &middot; <time datetime="2011-01-09T07:48:00+00:00">January 9, 2011 at 7:48 am</time></p>
      <p>Seriously, what's Ruby 2.0? I don't see a point of mentioning it every while and then since there is no clear roadmap for it. </p><p>Another thing that bothers me is the need of translation to understand everything planned in Ruby world. It's becoming a pain in the ass. </p><p>ppl behind Ruby should grow up. We are in 2011 and the whole community seems to be controlled by Matz and 2-3 other guys behind YARV. </p><p>Seriously guys, either let's fork Ruby and start a professional way of working instead of this slow weird way of development or there should be a whole group following up the state of Ruby and working for it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Zeno Davatz</strong> &middot; <time datetime="2011-01-09T17:29:00+00:00">January 9, 2011 at 5:29 pm</time></p>
      <p>Thanks for this blog post. What I find interesting is, that Matz officially says that consistency is not necessarily a goal for him: <a href="http://bit.ly/Y1bQT" rel="nofollow">http://bit.ly/Y1bQT</a></p><p>I think it should be a goal - very important goal at least for Ruby 1.8.x up to Version 2.0 - 2.0 can be a complete new thing. Lucas Nussbaum does have a point <a href="http://url.ba/vets" rel="nofollow">http://url.ba/vets</a> saying that there are a lot of branches out there. Ruby-Core should really focus on keeping the flock together. Linus Torvalds calls it "herding cats" ;).</p><p>Also I do not understand why Ruby does not switch to GIT. That should happen asap IMHO.</p><p>Best<br>
Zeno</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Davis</strong> &middot; <time datetime="2011-01-21T20:35:00+00:00">January 21, 2011 at 8:35 pm</time></p>
      <p>Peter,</p><p>No, the analogy isn't apt as the two languages have completely different versioning schemes. perl's 5.y.z is equivalent to ruby's 1.8.y.pZ. See [ruby-core:34527].</p><p>Comparing ruby 1.0 to 2.0 is like comparing perl 5.0 to 15.0. That's an exaggeration as the versioning scheme has changed at least once--but the point is still valid.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
