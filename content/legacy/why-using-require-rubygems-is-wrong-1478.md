---
title: Why Using require ‘rubygems’ Is Wrong
date: '2009-01-30'
author: Peter Cooper
author_slug: admin
post_id: 1478
slug: why-using-require-rubygems-is-wrong-1478
url: "/why-using-require-rubygems-is-wrong-1478.html"
categories:
- controversy
---

{{< rawhtml >}}
<p>Ryan Tomayko, currently known as one of the lead developers of <a href="http://www.sinatrarb.com/">Sinatra</a>, was definitely not mincing his words yesterday when he posted <a href="http://gist.github.com/54177">Why "require 'rubygems'" In Your Library/App/Tests Is Wrong</a>:</p>
<blockquote>
<p>You should never do this in a source file included with your library, app, or tests:</p>
<p>require 'rubygems'</p>
<p>The system I use to manage my $LOAD_PATH is not your library/app/tests concern. Whether rubygems is used or not is an environment issue. Your library or app should have no say in the matter. Explicitly requiring rubygems is either not necessary or misguided.</p>
</blockquote>
<p>But.. why?</p>
<blockquote>
<p>When I use your library, deploy your app, or run your tests I may not want to use rubygems. When you "require 'rubygems'" in your code, you remove my ability to make that decision. I cannot unrequire rubygems, but you can not require it in the first place.</p>
</blockquote>
<p>I hadn't thought of it this way before, but Ryan makes a lot of sense. The choice of library management system should be down to the environment and not enforced by a library or a single portion of a larger application.</p>
<p>Check out <a href="http://gist.github.com/54177">Ryan's post</a> for the deeper rationale and see what you think. He's definitely got me thinking twice about using <em>require 'rubygems'</em> in my own scripts, although as the slow migration over to Ruby 1.9 begins, perhaps it will become a non-issue, since RubyGems is included with Ruby 1.9 and loaded by default. Thoughts?</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Dave Burt</strong> &middot; <time datetime="2009-01-30T03:51:00+00:00">January 30, 2009 at 3:51 am</time></p>
      <p>If you go back in the ruby-talk archives, I suspect you'll find this position expressed early on in the development of RubyGems. The library was always intended to become part of the core, though, and "require 'rubygems'", a bit of a hack we're using in the meantime.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-01-30T03:59:00+00:00">January 30, 2009 at 3:59 am</time></p>
      <p>If anyone can find references on this, do post - much appreciated :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>postmodern</strong> &middot; <time datetime="2009-01-30T04:30:00+00:00">January 30, 2009 at 4:30 am</time></p>
      <p>There's also Minigems, so RubyGems is not the only show in town.</p><p>Although, RubyGems is integrating more code which helps packaging plugins as RubyGems even easier. Gem.find_files and Gem.searcher are both handy methods for finding files within other gems.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2009-01-30T04:54:00+00:00">January 30, 2009 at 4:54 am</time></p>
      <p>Unavoidable if you want to use one of the libraries that's part of the standard library but maintained separately, e.g. test-unit, rdoc and whatever else might show up.</p><p>I imagine this goes away in 2.x, though, with gems as part of the standard lib.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-01-30T05:17:00+00:00">January 30, 2009 at 5:17 am</time></p>
      <p>Is it unavoidable? I use RUBYOPT to automatically include rubygems so I don't have to use require 'rubygems' anywhere. I might be interpreting it wrong, but I think doing that is in the spirit of what Ryan's talking about.. that is, it's an environment thing, rather than forcing it into code other people might use.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2009-01-30T06:12:00+00:00">January 30, 2009 at 6:12 am</time></p>
      <p>Peter, what? If I want to use Test::Unit 2.x, I must call "gem 'test-unit'" to force it to use the gem instead of the stdlib, which means I must require rubygems. I mean, I suppose I could leave out an explicit require from the test file, but it's not going to work.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-01-30T06:38:00+00:00">January 30, 2009 at 6:38 am</time></p>
      <p>Tests are probably a bad example. I'm not entirely sure why Ryan included those in his list. Tests tend to be very much strapped to a specific implementation (as opposed to a library, which might need to fit in anywhere).</p><p>That said, if RUBYOPT is set to rubygems, though, then it should still work, since that makes the Ruby interpreter load RubyGems.. though it seems pointless to me since you're forcing the use of the gem with "gem" anyway ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Henrik N</strong> &middot; <time datetime="2009-01-30T07:08:00+00:00">January 30, 2009 at 7:08 am</time></p>
      <p>You can also require "rubygems" only on LoadError: <a href="http://github.com/henrik/slugalizer/blob/1e23d71cf1fdb0be269341137ced7fbf8ac73909/slugalizer.rb#L6-12" rel="nofollow">http://github.com/henrik/slugalizer/blob/1e23d71cf1fdb0be269341137ced7fbf8ac73909/slugalizer.rb#L6-12</a></p><p>I'm sure Ryan does not like that either, but it's something of a compromise. If you use something other than rubygems, you have a chance to load it without. If not, it works without needing e.g. RUBYOPT.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-01-30T07:34:00+00:00">January 30, 2009 at 7:34 am</time></p>
      <p>I personally find that quite agreeable, Henrik. Now you mention it, I've seen that pattern in code before :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sho</strong> &middot; <time datetime="2009-01-30T08:20:00+00:00">January 30, 2009 at 8:20 am</time></p>
      <p>I can see Ryan's point (kind of), but for 99.9% of people this is a complete non-issue. Rubygems may not be perfect, but for better or worse it's the system we have.</p><p>If Ryan wants to run in a non-rubygems environment, it seems to me the onus is on him to make it happen. Forcing everyone else to either explicitly require it on the command line every time they run anything at all, or set environment variables on their local machine, is just not going to happen.</p><p>Perhaps a more fruitful approach would be to lobby Ruby Core for a more customisable/overrideable load system. It is a bit hard-wired at the moment. However, it also works extremely well in the vast majority of cases, and I don't find Ryan's reasons to upset the status quo all that compelling.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-01-30T09:25:00+00:00">January 30, 2009 at 9:25 am</time></p>
      <p>I don't think Ryan's point is around whether RubyGems is any good or not - it's just that if you use require 'rubygems' you are forcing RubyGems' usage on someone who might not want it to be loaded up in certain situations (different versions of libraries between gems and local installs, etc).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Tomayko</strong> &middot; <time datetime="2009-01-30T10:55:00+00:00">January 30, 2009 at 10:55 am</time></p>
      <p>Yeah. The reason I wrote the piece in the first place was because people seemed to misunderstand my original tweet and assumed I meant, "rubygems is always bad." It's not. I use rubygems all over the place. I just think it's unnecessary or inappropriate to explicitly "require 'rubygems'" in 99% of the cases.</p><p>I'm working under the theory that people require it explicitly because they see everyone else require it explicitly and also as a sort of general thing to try when things don't work ("throw require 'rubygems' in there - maybe that'll fix it!"). I'm trying to put forward the idea that, when your environment is not setup correctly, it's best to try to fix it in the environment instead of ramming something into the code and potentially breaking other people's environments.</p><p>Also, because I want to run my code under rubygems in one place doesn't mean I won't want to run that same code without rubygems in another. For webapps, I sometimes develop with gems but manage the $LOAD_PATH manually in production. I don't like the extra weight gems add to my RSS and find managing a vendor directory and RUBYOPT variable to be a quite simple way of getting around it.</p><p>Henrik's suggestion of rescuing LoadError and requiring rubygems there is a good compromise, IMO. I use that sometimes in tests. Adding "warn 'foolib not found - requiring rubygems'" to the rescue clause makes it even better.</p><p>And finally, I'm surprised no one has pointed out the irony/hypocrisy in all of this yet. Follow the "Sinatra" link in the first sentence of the original post. There's five lines of code on that page and one of them is ... that's actually what led to my initial tweet that "require 'rubygems' is a code smell". I find it funny that suggesting people add use that idiom is perfectly acceptable but that suggesting people use "ruby -rubygems" is somehow ugly. It should be the other way around, IMO.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2009-01-30T11:04:00+00:00">January 30, 2009 at 11:04 am</time></p>
      <p>Sorry Peter but I see RUBYOPT for rubygems as something bad.</p><p>We with One-Click Installer project had several bug reports and really weird errors coming from users with that option defined.</p><p>This also made really impossible to trace under some situation what was wrong with the user code.</p><p>There is also the issue with specific dependencies.</p><p>How I'm supposed to keep my libs that depends on public or semi-public API of other libraries when they decide to change it between minor and teeny version bumps?</p><p>That happened to me with win32-service and mongrel_service gem.</p><p>For certain packages there is no standard setup.rb distribution.</p><p>In latest One-Click Installer we decided not to turn RUBYOPT=rubygems on.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan Wedekind</strong> &middot; <time datetime="2009-01-30T11:23:00+00:00">January 30, 2009 at 11:23 am</time></p>
      <p>I can sort of understand the reasoning for this objection. But I have several cases in my project where I try to load some optional libraries and I define some code integrating them if they exist. If this dependencies were not "soft", I could simply error out of course.</p><p>begin; require 'rubygems'; rescue LoadError; end<br>
begin; require 'Qt4'; rescue LoadError; end<br>
begin; require 'Qt4'; rescue LoadError; end<br>
begin; require 'narray'; rescue LoadError; end</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ulisses</strong> &middot; <time datetime="2009-01-30T11:56:00+00:00">January 30, 2009 at 11:56 am</time></p>
      <p>The fact that Rubygems installs each gem under a different directory violates the Linux FHS (<a href="http://www.pathname.com/fhs/" rel="nofollow">http://www.pathname.com/fhs/</a>), as well as being source-intrusive. The Debian project describes these and many other issues in their Ruby packaging page:</p><p><a href="http://pkg-ruby-extras.alioth.debian.org/rubygems.html" rel="nofollow">http://pkg-ruby-extras.alioth.debian.org/rubygems.html</a></p><p>Of course having Rubygems in the Ruby ecosystem has allowed for a lot of third party contributed code, but when we look at the Python and Perl equivalents, which do not share many of Rubygems design choices, I cannot avoid questioning whether we could have done a better job at it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Geoff Youngs</strong> &middot; <time datetime="2009-01-30T13:30:00+00:00">January 30, 2009 at 1:30 pm</time></p>
      <p>A classic example of this is on debian/ubuntu where many of the most commonly used libraries are available via the standard s/w installation mechanism.  It is easy to get fed up with having to patch the source of a library because it didn't cross the author's mind that the library their library depends on might be installed when rubygems isn't.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kent</strong> &middot; <time datetime="2009-01-30T16:00:00+00:00">January 30, 2009 at 4:00 pm</time></p>
      <p>rubygems is the worst thing that ever happened to Ruby. Period. Whoever invented this library has no idea regarding managing software packages on multiple servers.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2009-01-31T13:41:00+00:00">January 31, 2009 at 1:41 pm</time></p>
      <p>@Kent</p><p>Cool, then provide an alternative mechanism (ala: stop ranting).</p><p>Go beta test and pay for debgem then, noone forces you to use rubygems.</p><p>You can download source packages and pretty much do whatever you want with them.</p><p>I heard noone complains about Perl CPAN (oh, except from Debian/Ubuntu guys), neither of Python Eggs (again except for the same folks).</p><p>Don't want rubygems installed? fake it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Phil</strong> &middot; <time datetime="2009-02-02T20:17:00+00:00">February 2, 2009 at 8:17 pm</time></p>
      <p>Requiring users of your library to set RUBYOPT is very onerous. Things should work out of the box. Period.</p><p>Rubygems is *in* Ruby now. The debate is over. There's no reason to change your codebase to pacify people who haven't accepted this.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brian Takita</strong> &middot; <time datetime="2009-02-08T18:48:00+00:00">February 8, 2009 at 6:48 pm</time></p>
      <p>I find using the gem method to be a very common and sane way to do dependency management. I do not see a commonly used alternative in the ruby world.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
