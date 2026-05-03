---
title: 'Ruby Style Guides and Tools: How to Write Good Looking Ruby'
date: '2008-10-27'
author: Peter Cooper
author_slug: admin
post_id: 1272
slug: ruby-style-guides-and-tools-how-to-write-good-looking-ruby-1272
url: "/ruby-style-guides-and-tools-how-to-write-good-looking-ruby-1272.html"
categories:
- reference
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2008/10/style.png" width="101" height="86" alt="style.png" style="float:left; margin-right:12px; margin-bottom:12px;">Last week, Noel Rappin of Pathfinder Development wrote <a href="http://www.pathf.com/blogs/2008/10/elements-of-ruby-style/">Elements of Ruby Style</a> - an attempt at producing a Ruby "style guide." After some initial feedback to this, he's followed up with <a href="http://www.pathf.com/blogs/2008/10/ruby-stylista/">a response</a> to some of the initial criticisms and suggestions.</p>
<p>Noel isn't the first to try to develop a Ruby style guide. In an attempt to promote Ruby's use within Google, Ian Macdonald wrote <a href="http://www.caliban.org/ruby/rubyguide.shtml">an extensive Ruby style guide</a> back in 2006 (rather sadly, it appears his attempt did not work out).</p>
<h3>What's a "Style Guide" then?</h3>
<p>For those unfamiliar with style guides, the most famous for the English language are probably Strunk &amp; White's <em>The Elements of Style</em> and <em><a href="http://www.chicagomanualofstyle.org/home.html">The Chicago Manual of Style</a></em> (my personal favorite) - both attempt to define how to write and lay out English texts properly. Style guides for programming languages, however, usually attempt to not only define the "correct" way to write and lay out code but also the right idioms to use in certain situations.</p>
<h3>Other Tools</h3>
<p>Ruby style and "code smells" have become topics of interest for many Ruby developers recently:</p>
<ul>
<li>Last month, Kevin Rutherford released <a href="http://silkandspinach.net/2008/09/23/reek-a-code-smells-detector-for-ruby/">reek</a>, a "code smells detector"</li>
<li>Marty Andrews released <a href="http://www.martyandrews.net/blog/2008/09/roodi_checkstyle_for_ruby.html">Roodi</a>, a tool that checks Ruby code for complexity<a href="http://ruby.sadi.st/Flog.html"></a>
</li>
<li>
<a href="http://ruby.sadi.st/Flog.html">flog</a> is also a popular Ruby tool for testing and showing the complexity of your Ruby code.</li>
</ul>
<p class="s" style="background-color:#FFFFAA;color:#000000;font-family:verdana;font-style:italic;padding:8px;font-size: 12px"><strong>Supported by <a href="http://media72.net/">Media72 Hosting</a>: Looking for reliable <a href="http://media72.net/uk_rails_hosting">UK Ruby on Rails hosting</a>?</strong> Packages start from just £7/month on our mod_rails/apache stack hosted on fast UK servers and include free 24/7 support.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Giles Bowkett</strong> &middot; <time datetime="2008-10-27T15:24:00+00:00">October 27, 2008 at 3:24 pm</time></p>
      <p>Blatant self-promotion, and it's still mostly experimental status, but there's also Towelie, my repetition detector. It's on GitHub and my blog. It finds duplicate method definitions effortlessly, and reports them cleanly. It can also find highly similar method definitions, but both the interface and the reporting for that are very clumsy. Lots of rough edges on this code but it works very well for finding cut-and-paste in legacy codebases.</p><p><a href="http://gilesbowkett.blogspot.com/search?q=towelie" rel="nofollow">http://gilesbowkett.blogspot.com/search?q=towelie</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Giles Bowkett</strong> &middot; <time datetime="2008-10-27T15:51:00+00:00">October 27, 2008 at 3:51 pm</time></p>
      <p>There's also Flay, although the project hasn't released any code yet:</p><p><a href="http://blog.zenspider.com/2008/09/flay-is-coming.html" rel="nofollow">http://blog.zenspider.com/2008/09/flay-is-coming.html</a></p><p>This is a repetition detector like Towelie, but they didn't just copy the idea. It also can recognize when different code does the same thing, and mark that as repetition. That's something Towelie can't do. Unfortunately it still has unicorn status until they release something. :-p</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Eric Duminil</strong> &middot; <time datetime="2008-10-27T15:55:00+00:00">October 27, 2008 at 3:55 pm</time></p>
      <p>As always, nothing to say about the interesting content.<br>
But could you please stop leaving colored ads in <a href="http://planetrubyonrails.com/?" rel="nofollow">http://planetrubyonrails.com/?</a></p><p>Thanks,<br>
Eric</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-10-27T17:59:00+00:00">October 27, 2008 at 5:59 pm</time></p>
      <p>Eric: Unfortunately I've had to add styles directly to the paragraph because otherwise it doesn't work in feeds. PlanetRubyOnRails.com seems to take the code in feeds as verbatim for HTML purposes (which has caused the whole front page to end up in bold today, as someone posted a broken item to their feed) so all that goes through with it. Ideally PlanetRubyOnRails would sanitize the HTML formatting.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2008-10-28T15:37:00+00:00">October 28, 2008 at 3:37 pm</time></p>
      <p>I find duplicate method definitions with -w.</p><p>And fsck that 2 space indentation crap. Just because that's what the Rails core developers use, doesn't mean you should shut your brain off and do what they do.</p><p>I'm not giving up 3 space indentation. I don't give a crap what the Rails core developers (or Matz) do. My style is my own.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Phil</strong> &middot; <time datetime="2008-10-30T16:10:00+00:00">October 30, 2008 at 4:10 pm</time></p>
      <p>Personally I love how the Ruby community has unconditionally decided on 2 spaces for indentation. It sidesteps soooo many tedious arguments that other languages are bogged down with.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
