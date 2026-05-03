---
title: The Ruby Standard Library To Be Converted to Gems for Ruby 2.0?
date: '2011-11-07'
author: Peter Cooper
author_slug: admin
post_id: 5586
slug: the-ruby-standard-library-to-be-converted-to-gems-for-ruby-2-0-5586
url: "/the-ruby-standard-library-to-be-converted-to-gems-for-ruby-2-0-5586.html"
categories:
- miscellaneous
- news
---

{{< rawhtml >}}
<p><img src="/assets/2011/11/stdlib-gem.gif" alt="" title="stdlib-gem" width="140" height="128" class="alignnone size-full wp-image-5588" style="float: right; margin-left: 18px; margin-bottom: 18px; border: 1px solid #999">The Ruby standard library (a.k.a. stdlib) is a collection of Ruby libraries that, at one time or another, have been considered useful enough to include with the MRI Ruby implementation by standard. Due to the popularity of these libraries, other Ruby implementations have then tended to re-implement or include the standard library too.</p>
<p>As part of the <a href="ruby-2-0-implementation-work-begins-what-is-ruby-2-0-and-whats-new-5515.html">march toward Ruby 2.0</a>, the state of Ruby's 'standard library' has come up for discussion. A popular line of thinking (and IMHO, very likely to actually happen) is that <em>the standard library should be 'gemified' for Ruby 2.0.</em></p>
<h3>Why Gemify the Standard Library?</h3>
<p>The standard library approach has a significant flaw. Due to being a large and critical piece of software, MRI's release cycle is slow, yet some libraries require faster updates, perhaps for security or API updates. It would be better, therefore, to have the standard libraries maintained and distributed <em>separately</em> while still being included 'by default' with Ruby implementations.</p>
<p>We have already seen this sort of approach with <em>RubyGems</em> itself. For example, RubyGems is (at the time of writing) at version 1.8.11, yet the barely 2 week old Ruby 1.9.3p0 comes with RubyGems 1.8.10. While RubyGems is not itself distributed as a gem, it demonstrates the value of having something included with Ruby <em>and</em> still updateable separately.</p>
<h3>Aaron Patterson (of the MRI Ruby Core Team) Explains</h3>
<p>In <a href="http://vimeo.com/26507951">his talk at RubyKaigi</a>, Aaron <em>tenderlove</em> Patterson spoke about working out which parts of Ruby are 'third party libraries' and how to extract them. After such extraction, Ruby core should be able to commit to or change <em>anything</em> within MRI, but also reference third party gems that are included and installed by default on new installations. Aaron noted that being able to 'iterate faster' was a significant benefit of this approach.</p>
<p>Aaron also explained that with less coupling between Ruby implementations and the libraries they depend upon, it could be possible in future to upgrade your Ruby <em>interpreter</em> while still maintaining existing versions of the libraries you depend upon. This could help you migrate more gradually <em>or</em> merely help you maintain existing compatibility.</p>
<h3>Further Reading</h3>
<p>The <a href="https://redmine.ruby-lang.org/projects/ruby/wiki/StdlibGem">process of gemifying the Ruby standard library</a> is explained on the Ruby implementation wiki with the proposal, implementation, and a list of to do items already laid out. A more <a href="http://redmine.ruby-lang.org/issues/5481">extensive discussion</a> (which you can join) is also taking place on the official MRI Ruby issue tracker.</p>
<p>This process is still in its early stages and there are likely to be opportunities to help maintain or even become the maintainer for certain standard libraries, if you want to get involved.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>ilmari</strong> &middot; <time datetime="2011-11-07T17:38:00+00:00">November 7, 2011 at 5:38 pm</time></p>
      <p>Congrats, you've discovered <a href="https://metacpan.org/module/perlsource#Core-modules" rel="nofollow">dual-life modules</a>!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike</strong> &middot; <time datetime="2011-11-07T20:23:00+00:00">November 7, 2011 at 8:23 pm</time></p>
      <p>We shouldn't do this until Ruby has a better packaging system than RubyGems. As it is, RubyGems is an embarrassment.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-11-07T22:09:00+00:00">November 7, 2011 at 10:09 pm</time></p>
      <p><img src="http://no.gd/p/someoneelse-20111107-220429.jpg"></p>
    </li>
      <li>
      <p class="comment-meta"><strong>postmodern</strong> &middot; <time datetime="2011-11-07T22:09:00+00:00">November 7, 2011 at 10:09 pm</time></p>
      <p>Can we add Fiddle (<a href="http://rubydoc.info/stdlib/fiddle/1.9.3/frames" rel="nofollow">http://rubydoc.info/stdlib/fiddle/1.9.3/frames</a>) to the list? Fiddle was added in 1.9, even though DL and FFI already existed. DL could also be moved out, since it is a UNIX specific API (Windows has no dlopen).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike</strong> &middot; <time datetime="2011-11-08T12:18:00+00:00">November 8, 2011 at 12:18 pm</time></p>
      <p>Believe me, Peter, if I thought I could at this point I would. But just because I can't doesn't mean that my point isn't valid, and that this might not be a good idea.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aziz Light</strong> &middot; <time datetime="2011-11-08T14:59:00+00:00">November 8, 2011 at 2:59 pm</time></p>
      <p>Mike, there is already an alternative to Rubygems called RPG (<a href="https://github.com/rtomayko/rpg" rel="nofollow">https://github.com/rtomayko/rpg</a>).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-11-08T15:34:00+00:00">November 8, 2011 at 3:34 pm</time></p>
      <p>Haha, I wasn't actually responding to you Mike! :-) Sorry about that, I see how it looked that way.</p><p>I posted it based on a discussion on IRC I was involved with which implied that a more sinister motive for this re-architecture is so that "someone else" can deal with the supposedly crufty libraries rather than core ;-)</p><p>In terms of needing a better packaging system than RubyGems, I disagree, but don't have enough to say on the matter to discuss it in any interesting way. At the very least, I believe RubyGems should be the better RubyGems, not something else.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luke</strong> &middot; <time datetime="2011-11-14T10:30:00+00:00">November 14, 2011 at 10:30 am</time></p>
      <p>In theory this is a great idea; in practice I'm not sure...  We could end up with a versioning nightmare where you need different versions of gems for different patch levels of Ruby e.g. Want to use CSV 1.1? for that you need Ruby 1.9.3p120 but it wont work with 1.9.3p115.</p><p>I can definitely see the bright-side though in that it makes Ruby-core a bit more nimble and we may well see a lot more collaboration (&amp; competition) for the standard lib gems.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sean</strong> &middot; <time datetime="2011-12-27T04:16:00+00:00">December 27, 2011 at 4:16 am</time></p>
      <p>I think there is a misunderstanding here about exactly what a stdlib is supposed to be.  It is actually not supposed to be "nimble and dynamic".  It is in fact supposed to be boring, predictable, standardized and reliable and not updated every time a hacker farts.  It should be a foundation for other things to be built upon.  Breaking it out into gems will result in a messy unpredictable "foundation" where Ruby 193p115 (for example) is not nearly as tightly defined as it should be.  In the end the practical result of this will be more gem management headaches, "platform" incompatibilities, and fresh kind of "DLL hell" experienced by Window dev's in the '90's.  I'm highly unconvinced that this is a net benefit for Ruby technology.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
