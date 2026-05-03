---
title: 'Ruby’s New FFI Library: Calling External Libraries Just Got A Whole Lot Easier'
date: '2008-11-01'
author: Peter Cooper
author_slug: admin
post_id: 1293
slug: ruby-ffi-library-calling-external-libraries-now-easier-1293
url: "/ruby-ffi-library-calling-external-libraries-now-easier-1293.html"
categories:
- cool
- jruby
- ruby-tricks
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2008/11/ffi-useful.png" width="137" height="122" alt="ffi-useful.png" style="float:left; margin-right:12px; margin-bottom:12px;"> <a href="http://blog.headius.com/">Charles Nutter</a>, of the core <a href="http://jruby.codehaus.org/">JRuby</a> team, <a href="http://blog.headius.com/2008/10/ffi-for-ruby-now-available.html">writes</a>:</p>
<blockquote>
<p>One of the largest problems plaguing Ruby implementations [..] is the ever-painful story of "extensions". In general, these take the form of a dynamic library, usually written in C, that plugs into and calls Ruby's native API as exposed through ruby.h and libruby.</p>
</blockquote>
<p>The many compiled bridges between external libraries and Ruby pose a problem for alternate implementations like JRuby, because of the complexity involved in exposing internals of the implementation or expensive serialization in both directions. Instead, an interface is necessary so that instead of developing libraries that act only as unique bridges to others, we can just have one library that provides the interface to any arbitrary library of our choice.</p>
<p>Ruby already has <a href="http://ttsky.net/ruby/ruby-dl.html">a library called "dl"</a> that makes it possible to dynamically link external libraries with Ruby. It's a bit arcane though, and Charles points out that it's not widely used "because of real or perceived bugs." Given this, and given the need for an implementation that can be compatible with JRuby, <a href="http://blog.headius.com/2008/10/ffi-for-ruby-now-available.html">Wayne Meissner has developed "FFI", a new Ruby library that provides "Foreign Function Interface" features</a> to Ruby.</p>
<p>A basic demonstration of a Ruby script that uses C's <em>getpid</em> function should be enough to demonstrate the simplicity of FFI:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">ffi</span><span class="punct">'</span>

<span class="keyword">module </span><span class="module">GetPid</span>
  <span class="ident">extend</span> <span class="constant">FFI</span><span class="punct">::</span><span class="constant">Library</span>
  <span class="ident">attach_function</span> <span class="symbol">:getpid</span><span class="punct">,</span> <span class="punct">[],</span> <span class="symbol">:uint</span>
<span class="keyword">end</span>

<span class="ident">puts</span> <span class="constant">GetPid</span><span class="punct">.</span><span class="ident">getpid</span></pre>
<p>The best part? FFI is available for Ruby 1.9, Ruby 1.8.6 and 1.8.7 (just <code>gem install ffi</code>), as well as JRuby 1.1.4 (and above) and Rubinius (Rubinius's implementation is separate to Wayne's, but works similarly). Wayne has also <a href="http://wmeissner.blogspot.com/2008/11/more-on-ruby-ffi.html">written a blog post with his side of the story</a>. He says he's waiting to "see how people are actually using it in the real world."</p>
<p><strong><span style="font-weight: normal;">This FFI implementation has the hallmarks of becoming a new Ruby standard for calling out to external, compiled libraries. Let's get behind it, start using it, and crank out some code to see how it operates!</span></strong></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jackson</strong> &middot; <time datetime="2008-11-01T19:03:00+00:00">November 1, 2008 at 7:03 pm</time></p>
      <p>This seems a little strange to me, because Ruby's extension bindings are already great. But I think Python has a similar thing. When you don't have to modify the behavior if the external library at all, it makes sense.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Eero Saynatkari</strong> &middot; <time datetime="2008-11-01T21:08:00+00:00">November 1, 2008 at 9:08 pm</time></p>
      <p>Jackson, I think the primary benefit is simply avoiding writing an extension which requires one to be comfortable writing the necessary C glue code--and be able to compile it! Using FFI is probably far less daunting for many users.</p><p>An extension also requires wrapping any foreign functions so that Ruby can access them, which typically leads to an unnecessary explosion of C code ("well, maybe I should just do the strcmp() here since I already started..") The FFI layer encourages the user to stay in Ruby except for what is absolutely needed.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Beoran</strong> &middot; <time datetime="2008-11-03T13:52:00+00:00">November 3, 2008 at 1:52 pm</time></p>
      <p>I think this is nice because it's portable between the different versions of Ruby: JRUBY, MRI and Rubinius. </p><p>However, in C Ruby you can already use dl, and that's arguably even easier in Ruby 1.9.1. Here's the same example with dl : </p><p>require 'dl'<br>
module GetPid<br>
  extend DL::Importer<br>
  dlload "libc.so.6"<br>
  extern "unsigned int getpid()"<br>
end</p><p>puts GetPid.getpid</p><p>But, then again, dl seems to be significantly slower than ffi.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Leon Bogaert</strong> &middot; <time datetime="2008-11-04T06:46:00+00:00">November 4, 2008 at 6:46 am</time></p>
      <p>This seems very nice! I'm no expert at c and this seems like a nice way to use all those c libraries! I think this could be a big step forward for ruby!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan Wedekind</strong> &middot; <time datetime="2008-11-05T12:16:00+00:00">November 5, 2008 at 12:16 pm</time></p>
      <p>A standardized API for writing extensions certainly would help competing Ruby implementations. However I think there are major practical problems with this<br>
* Platform-dependent type definitions are not accessible. For example function headers are usually partially different on 32-bit and 64-bit platforms.<br>
* C++ libraries (especially those making use of templates) cannot be used like this.<br>
* Inline functions, preprocessor macros, and composite types need to be duplicated by the Ruby extension.<br>
However on the long term this may still be the best way to develop Ruby extensions. A Ruby VM can only optimise the code of the extension if the Ruby extension is largely written in Ruby itself.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2008-11-05T15:05:00+00:00">November 5, 2008 at 3:05 pm</time></p>
      <p>Doesn't build on Windows. :(</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
