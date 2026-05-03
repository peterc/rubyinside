---
title: 'Interesting Ruby Tidbits That Don’t Need Separate Posts #15'
date: '2008-02-04'
author: Peter Cooper
author_slug: admin
post_id: 710
slug: interesting-ruby-tidbits-that-dont-need-separate-posts-15-710
url: "/interesting-ruby-tidbits-that-dont-need-separate-posts-15-710.html"
categories:
- compilations
- ruby-tricks
---

{{< rawhtml >}}
<p><big><b>Fixing Ruby &amp; Rails' slow performance with patches!</b></big></p>
<p>Gleb Arshinov has put together <a href="http://blog.pluron.com/2008/01/ruby-on-rails-i.html#patches">an information packed post about how to speed up Ruby's garbage collector</a>, particularly to speed up Rails applications, as well as how to speed up Rails by applying <a href="http://blog.pluron.com/2008/01/ruby-on-rails-i.html#patches">a few interesting monkey patches</a>. This is a compelling must read for performance junkies!</p>
<p><big><b>The Guerilla's Guide to Optimizing Rails Applications</b></big></p>
<p>Following on from this Ruby and Rails performance post (above), Gleb Arshinov moved on to writing <a href="http://blog.pluron.com/2008/01/guerrillas-way.html">The Guerilla's Guide to Optimizing Rails Applications</a>, another must read for Rails optimizing and performance junkies.</p>
<p><big><b>Scoped Structs for your classes</b></big></p>
<p>Mike Ferrier has created <a href="http://rethink.unspace.ca/2008/1/29/scoped-struct-feel-the-tingle">an interesting gem called scoped_struct</a> that provides you with the ability to roll out structs within sub-scopes of a class. As always, a code example demonstrates best:</p>
<p>
</p>
<pre><span class="keyword">class </span><span class="class">Player</span>
  <span class="ident">scope</span> <span class="symbol">:fumbles</span> <span class="keyword">do</span>
    <span class="keyword">def </span><span class="method">dropped</span><span class="punct">;</span> <span class="keyword">end</span>
    <span class="keyword">def </span><span class="method">lost</span><span class="punct">;</span> <span class="keyword">end</span>
    <span class="keyword">def </span><span class="method">recovered</span><span class="punct">;</span> <span class="keyword">end</span>
  <span class="keyword">end</span>

  <span class="ident">scope</span> <span class="symbol">:passes</span> <span class="keyword">do</span>
    <span class="keyword">def </span><span class="method">attempted</span><span class="punct">;</span> <span class="keyword">end</span>
    <span class="keyword">def </span><span class="method">completed</span><span class="punct">;</span> <span class="keyword">end</span>
  <span class="keyword">end</span>
<span class="keyword">end</span>

<span class="ident">my_player</span><span class="punct">.</span><span class="ident">passes</span><span class="punct">.</span><span class="ident">attempted</span>
<span class="ident">my_player</span><span class="punct">.</span><span class="ident">passes</span><span class="punct">.</span><span class="ident">completed</span>
<span class="ident">my_player</span><span class="punct">.</span><span class="ident">fumbles</span><span class="punct">.</span><span class="ident">recovered</span>
</pre>

<p><em>(Thanks to Pete Forde of Unspace for the lead.)</em></p>
<p><big><b>Solving data problems with Oracle SQL, Linux and Ruby</b></big></p>
<p>Casimir Saternos has written an article for Oracle that demonstrates <a href="http://www.oracle.com/technology/pub/articles/saternos-filtering.html">how to use Ruby along with Oracle SQL and Linux to solve problems</a> involving sets of data. If you want to know how to use an Oracle database with Ruby, it's worth a look, although it's not suited for those already particularly experienced with both Oracle and Ruby.</p>
<p><big><b>High Performance Event Library for Ruby 1.9</b></big></p>
<p>It's still early days, but <a href="http://rev.rubyforge.org/rdoc/files/README.html">Rev</a> is a high performance event library for Ruby 1.9 that uses the C library "libev".</p>
{{< /rawhtml >}}
