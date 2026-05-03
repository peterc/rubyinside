---
title: 'Ruby 1.8.7 Released: Enumeration Object Support Backported From 1.9'
date: '2008-06-02'
author: Peter Cooper
author_slug: admin
post_id: 912
slug: ruby-187-released-912
url: "/ruby-187-released-912.html"
categories:
- news
---

{{< rawhtml >}}
<p><img src="/assets/2008/06/ruby187.jpg" width="101" height="109" alt="ruby187.png"></p>
<p>With all the excitement surrounding RailsConf 2008 and the Maglev announcement, <a href="http://www.ruby-lang.org/en/news/2008/05/31/ruby-1-8-7-has-been-released/">news of the release of Ruby 1.8.7</a> passed rather quietly. The download URLs can be found <a href="http://www.ruby-lang.org/en/news/2008/05/31/ruby-1-8-7-has-been-released/">here</a>, but note that the official Ruby-Lang.org <a href="http://www.ruby-lang.org/en/downloads/">download page</a> does not reflect 1.8.7's release yet.</p>
<p>Ruby 1.8.7 is a point release of the stable, production-ready 1.8.x branch, so it <span style="font-style: italic;">should</span> be ready to roll out to your deployment environments but be cautious. It features many bug fixes, but also some performance enhancements and significant back-ports of Ruby 1.9 functionality (enumeration objects in particular). More information is available in the <a href="http://svn.ruby-lang.org/repos/ruby/tags/v1_8_7/NEWS">release NEWS file</a>. The most interesting developments include:</p>
<p><strong>vendor_ruby</strong></p>
<blockquote>
<p>A new library directory named `vendor_ruby' is introduced in addition to `site_ruby'. The idea is to separate libraries installed by the package system (`vendor') from manually (`site') installed libraries preventing the former from getting overwritten by the latter, while preserving the user option to override vendor libraries with site libraries. (`site_ruby' takes precedence over `vendor_ruby')</p>
</blockquote>
<p><strong>securerandom</strong></p>
<blockquote>
<p>securerandom is a Ruby 1.9 library that's now part of the Ruby 1.8 standard library too. Example: <span style="font-style: italic;">require 'securerandom'; SecureRandom.random_bytes(16)</span></p>
</blockquote>
<p><strong>Array#flatten changes</strong></p>
<blockquote>
<p>Array#flatten now takes an optional argument that determines how deep to perform flattening.</p>
</blockquote>
<p><strong>Array method changes</strong></p>
<blockquote>
<p>Array#collect!, Array#map!, Array#each, Array#each_index, Array#reverse_each, Array#reject, Array#reject! and Array#delete_if now return an enumerator if no block is given. Array#pop and Array#shift now take an optional argument specifying the number of elements to remove from the array.</p>
</blockquote>
<p><strong>Binding#eva</strong>l</p>
<blockquote>
<p>Binding#eval is a new method to enable evaluations to take place in the context of a binding.</p>
</blockquote>
<p><strong>Enumerable::Enumerator added</strong></p>
<blockquote>
<p><a href="http://ruby-doc.org/core/classes/Enumerable/Enumerator.html">Enumerable::Enumerator</a> adds support for enumerations to be dealt with as objects, as in Ruby 1.9.</p>
</blockquote>
<p><strong>Enumerator support on many classes</strong></p>
<blockquote>
<p>Many methods based on IO, Integer, Array (see above), ARGF, Numeric, ObjectSpace, Range, String, and Struct now support returning enumerator objects where no blocks are given.</p>
</blockquote>
<p><strong>net/smtp</strong></p>
<blockquote>
<p><a href="http://www.ruby-doc.org/stdlib/libdoc/net/smtp/rdoc/index.html">net/smtp</a> now supports SSL/TLS connections.</p>
</blockquote>
<p>These items really only scratch the surface though. Dig into the <a href="http://svn.ruby-lang.org/repos/ruby/tags/v1_8_7/NEWS">NEWS</a> file for more info.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Giles Bowkett</strong> &middot; <time datetime="2008-06-02T17:16:00+00:00">June 2, 2008 at 5:16 pm</time></p>
      <p>Somebody told me odd-number point releases mean experimental releases - check the history of 1.8.5 and 1.8.3 to be sure. That's why 1.8.7 hasn't gotten a huge response (and 1.8.8 probably will).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-06-02T19:24:00+00:00">June 2, 2008 at 7:24 pm</time></p>
      <p>I thought the odd/even versioning concept had been dropped with Ruby sometime in the last couple of years? Perhaps not, but it's something I've heard a couple of times.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike</strong> &middot; <time datetime="2008-06-02T19:45:00+00:00">June 2, 2008 at 7:45 pm</time></p>
      <p>@Giles: That's what Linux kernels used and some projects copied. Ruby does not follow that.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2008-06-02T20:55:00+00:00">June 2, 2008 at 8:55 pm</time></p>
      <p>Considering how little testing the core team does, every release is an experimental release Giles.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
