---
title: 'Ruby Techniques Revealed: Autoload'
date: '2009-03-19'
author: Peter Cooper
author_slug: admin
post_id: 1652
slug: ruby-techniques-revealed-autoload-1652
url: "/ruby-techniques-revealed-autoload-1652.html"
categories:
- ruby-tricks
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2009/03/monster-with-torch.jpg" width="115" height="115" alt="monster-with-torch.jpg" style="float:left; margin-right:12px; margin-bottom:12px;">There's plenty of stuff in Ruby that I've either not noticed before, noticed but forgotten about, or otherwise failed to realize the utility of. Add to that all the awesome Ruby tricks and techniques I'm seeing in people's code over on Github lately and.. we need a new series here: <strong>Ruby Techniques Revealed!</strong></p>
<p><em>Disclaimer: I'm not promising you won't already know about anything I "reveal." A lot of you are far better than me at knowing all of Ruby's dark corners. I'm just going to shine a spotlight in the direction of things I don't see used very often that I think are cool.</em></p>
<h3>Autoload - Load stuff only when it's needed</h3>
<p>I was going through <a href="http://github.com/macournoyer/thin/blob/c8f4627bf046680abb85665f28ab926e36c931db/lib/thin.rb">the source</a> for <em>Thin</em> and noticed that instead of using <code>require</code>, Marc-Andre Cournoyer was using a method called <code>autoload</code> to load thin's constituent parts. Specifically:</p>
<pre><span class="ident">autoload</span> <span class="symbol">:Command</span><span class="punct">,</span>            <span class="punct">'</span><span class="string">thin/command</span><span class="punct">'</span>
<span class="ident">autoload</span> <span class="symbol">:Connection</span><span class="punct">,</span>         <span class="punct">'</span><span class="string">thin/connection</span><span class="punct">'</span>
<span class="ident">autoload</span> <span class="symbol">:Daemonizable</span><span class="punct">,</span>       <span class="punct">'</span><span class="string">thin/daemonizing</span><span class="punct">'</span>
<span class="ident">autoload</span> <span class="symbol">:Logging</span><span class="punct">,</span>            <span class="punct">'</span><span class="string">thin/logging</span><span class="punct">'</span></pre>
<p>This intrigued me so I hit Google and came across <a href="http://www.subelsky.com/2008/05/using-rubys-autoload-method-to.html">a little demo of autoload</a> by Mike Subelsky. <code>autoload</code> works in a similar way to <code>require</code>, but it only loads the file specified when a constant of your choosing is accessed/used for the first time. This constant would usually be the name of the class provided by the other source file (but it doesn't <em>have</em> to be, as Mike demonstrates).</p>
<p>Let's say you have a file called <code>mylibrary.rb</code> containing the following code:</p>
<pre><span class="ident">puts</span> <span class="punct">"</span><span class="string">I was loaded!</span><span class="punct">"</span>

<span class="keyword">class </span><span class="class">MyLibrary</span>
<span class="keyword">end</span></pre>
<p>Now, from <code>irb</code>, let's use <code>require</code> to load the "library":</p>
<pre>irb(main):001:0&gt; require 'mylibrary'
I was loaded!
=&gt; true</pre>
<p>Because <code>require</code> works straight away, the <code>puts</code> method gets executed immediately. So let's restart <code>irb</code> and see what happens if we use <code>autoload</code> instead:</p>
<pre>irb(main):001:0&gt; autoload :MyLibrary, 'mylibrary'
=&gt; nil
irb(main):002:0&gt; MyLibrary.new
I was loaded!
=&gt; #&lt;MyLibrary:0x0b1jef&gt;</pre>
<p>The <code>puts</code> method doesn't get executed until we try and use <code>MyLibrary</code>. <code>autoload</code> has prevented the loading of <code>mylibrary.rb</code> until we really needed it.</p>
<h3>Detecting Autoloadable Classes</h3>
<p>If you want to detect whether a certain class is awaiting autoloading, you can check, like so:</p>
<pre>autoload :X, 'x'
puts "X is awaiting loading" if autoload?(:X)</pre>
<h3>Just beware ye threads..</h3>
<p>Further Googling led me to some interesting discussions about <code>autoload</code>. Back in December 2008, a whole group of Ruby luminaries <a href="http://redmine.ruby-lang.org/issues/show/921">got into a discussion about autoload's issues with threads</a>. Turns out that even though several projects have been adopting autoload in anger recently, there are some concerns surrounding how thread safe autoload is. The proposed solution is to have a mutex between all autoloads, but I haven't yet established how far work on this (if any) has gone.</p>
<p>There was <a href="http://www.ruby-forum.com/topic/172385">a similar discussion back</a> in early 2008, started by Yehuda Katz (of Merb fame) that I'd advise you read if threading is going to be a big deal to you. He seems to imply that big issues only crop up under heavy concurrency situations, but the problem is there regardless. There seem to be <a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-core/19731">similar issues</a> around <code>require</code> too though so I'll be taking the "cross that bridge when I get to it" approach.. ;-)</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Matthew King</strong> &middot; <time datetime="2009-03-19T15:23:00+00:00">March 19, 2009 at 3:23 pm</time></p>
      <p>The AutoCode project, created by Dan Yoder, attempts to provide a more flexible suite of autoload-like methods.</p><p>  auto_load :Command, :directories =&gt; 'thin' </p><p>  auto_load true, :directories =&gt; [ 'thin' ]</p><p>  auto_load /[a-zA-Z]+Controller/, :directories =&gt; [ 'controllers' ]</p><p>  auto_create_class true, :Base # creates any missing constant as a child of ThisNamespace::Base</p><p>Most of the development of AutoCode is currently happening at <a href="http://github.com/dyoder/autocode/tree/master" rel="nofollow">http://github.com/dyoder/autocode/tree/master</a></p><p>I recently nudged AutoCode a few steps closer to thread safety.  Comments and criticisms welcome.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Richie Vos</strong> &middot; <time datetime="2009-03-20T02:24:00+00:00">March 20, 2009 at 2:24 am</time></p>
      <p>I wonder how this code relates to Rails on the fly const_missing auto requiring. For instance, looking at Matthew King's example, I wonder if things like auto_load /.*/, :directories =&gt; 'models' could be the implementation of loading the models dynamically.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2009-03-20T03:48:00+00:00">March 20, 2009 at 3:48 am</time></p>
      <p>What if you want to autoload 'Foo::MyLibrary' vs 'Bar::MyLibrary'? It doesn't seem to like that.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-03-20T04:30:00+00:00">March 20, 2009 at 4:30 am</time></p>
      <p>Riche: I haven't looked myself, but one of the comments in the links above says that Rails has been starting to use autoload a lot recently.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan Wedekind</strong> &middot; <time datetime="2009-03-20T10:57:00+00:00">March 20, 2009 at 10:57 am</time></p>
      <p>@Daniel Berger:<br>
One can autoload 'Foo::MyLibrary' and 'Bar::MyLibrary' as follows.</p><p># foo.rb<br>
module Foo<br>
  class MyLibrary<br>
    def initialize<br>
      print "autoload"<br>
    end<br>
  end<br>
end</p><p># bar.rb:<br>
module Bar<br>
  class MyLibrary<br>
    def initialize<br>
      puts " works"<br>
    end<br>
  end<br>
end</p><p># main program<br>
module Foo<br>
  autoload :MyLibrary, 'foo'<br>
end<br>
module Bar<br>
  autoload :MyLibrary, 'bar'<br>
end<br>
Foo::MyLibrary.new<br>
Bar::MyLibrary.new</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2009-03-21T03:10:00+00:00">March 21, 2009 at 3:10 am</time></p>
      <p>@Jan, thanks. I think autoload should be smarter about scoped classes, though.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>raggi</strong> &middot; <time datetime="2009-03-24T08:11:00+00:00">March 24, 2009 at 8:11 am</time></p>
      <p>If you're *really* paranoid about thread safety....</p><p>Here's a brutal but effective solution...</p><p>ObjectSpace.each_object(Module) { |m| m.constants.each { |c| m.const_get c } }</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ab5tract</strong> &middot; <time datetime="2009-03-25T16:50:00+00:00">March 25, 2009 at 4:50 pm</time></p>
      <p>@2</p><p>Autocode was developed to provide Waves with the ability to dynamically load default models (which can be user defined) based on the tables present in a database. What you are saying is not necessarily the same as that, but with Autocode would probably look something like that and should be relatively easy to implement.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
