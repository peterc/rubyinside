---
title: Could JavaScript Power A Significant Future Ruby Implementation or VM?
date: '2008-09-05'
author: Peter Cooper
author_slug: admin
post_id: 1151
slug: javascript-the-next-ruby-vm-or-implementation-1151
url: "/javascript-the-next-ruby-vm-or-implementation-1151.html"
categories:
- controversy
- cool
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2008/09/jslilimg.jpg" width="137" height="35" alt="jslilimg.png" style="float:left; margin-right:12px; margin-bottom:12px;">This week you may have heard about "<a href="http://www.google.com/chrome">Chrome</a>," a new Web browser being developed by Google (if you haven't, read <a href="http://blogoscoped.com/google-chrome/">this online comic book</a> that demonstrates its worthiness). Associated with Chrome is <a href="http://code.google.com/apis/v8/">V8</a>, a new open source JavaScript engine that's designed to execute JavaScript code at never-seen-before speeds.</p>
<p>All this reminded Marc-André Cournoyer (of <a href="http://code.macournoyer.com/thin/">Thin</a> fame) of <a href="http://hotruby.yukoba.jp/">HotRuby</a> (see <a href="hotruby-a-javascript-flash-virtual-machine-that-runs-ruby-821.html">previously on Ruby Inside</a>), an experimental JavaScript-based virtual machine that can run YARV-compiled Ruby code, and he set out to <a href="http://macournoyer.wordpress.com/2008/09/02/ruby-on-v8/">test the performance of Ruby code running on HotRuby on top of V8</a>. The results are far from scientific and many commenters have pointed out flaws, but Marc's observations are a great first step toward seriously considering the possibility of using JavaScript as an execution route for Ruby. It also appears that Hongli Lai and Ninh Bui of Phusion (of mod_rails / Passenger fame) are considering the possibilities.</p>
<p>JavaScript is a reasonably unique language in that it can support most (all?) of the patterns and styles of programming that Rubyists are familiar with, even if the code doesn't read as well. This could make JavaScript a perfect target language not only for a virtual machine (as with HotRuby) but as a language to convert Ruby <em>into</em> for further use / execution. We're going to feature these projects separately on Ruby Inside in the future, but projects like <a href="http://wonderfullyflawed.com/2008/08/07/javascript-makes-me-see-red/">Red</a> and <a href="http://rubyforge.org/projects/rubyjs/">RubyJS</a> could eventually make this a reality, and turn JavaScript itself into another form of Ruby implementation by proxy. Exciting times!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Giles Bowkett</strong> &middot; <time datetime="2008-09-06T02:38:00+00:00">September 6, 2008 at 2:38 am</time></p>
      <p>Also Johnson:</p><p><a href="http://tenderlovemaking.com/2008/04/23/take-it-to-the-limit-one-more-time/" rel="nofollow">http://tenderlovemaking.com/2008/04/23/take-it-to-the-limit-one-more-time/</a></p><p><a href="http://github.com/jbarnette/johnson/tree/master" rel="nofollow">http://github.com/jbarnette/johnson/tree/master</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jay Phillips</strong> &middot; <time datetime="2008-09-06T09:44:00+00:00">September 6, 2008 at 9:44 am</time></p>
      <p>The same has been said of the Smalltalk virtual machines for years with Ruby. As Gemstone and JRuby guys have found, the devil is truly in the details of supporting *all* of MRI's features -- even the stupid ones. Javascript has fewer of these problems because it was based on the ECMAScript standard designed by committee and the committee weeded out a lot of the stupidity that makes Ruby difficult to implement. While I enthusiastically agree with 95% of Matz' 1.8.x design decisions of the Ruby language, MRI's implementation is embarrassing.</p><p>The Strongtalk virtual machine has been lying around for years just waiting for technologies like Ruby to pick it up and learn from it. There're a few really fascinating whitepapers on their website about how the Strongtalk and Self VM teams implemented polymorphic inline call site caching and algorithms for generating types inferences at runtime. (At least one of the principal developers from those VM projects works on TraceMonkey now)</p><p>At some point, ideally for Ruby 2.0, the Ruby community needs a committee to clean up the poor design decisions that exist in 1.8/1.9 that make writing an implementation so difficult and harm the language's elegance. It's far too much work for one person and far too important to be trusted to one person. When this is done, the feasibility of fully using these Javascript and Smalltalk technologies will be more feasible.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Fred</strong> &middot; <time datetime="2008-09-07T17:56:00+00:00">September 7, 2008 at 5:56 pm</time></p>
      <p>"Chrome is V8, a new open source JavaScript engine that's designed to execute JavaScript code at never-seen-before speeds."</p><p>The new Javascript VM in Firefox 3.1beta1 (tracemonkey) is faster or similar in speed to Chrome V8 in many tests.</p><p>(you must enable it first in about:config)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
