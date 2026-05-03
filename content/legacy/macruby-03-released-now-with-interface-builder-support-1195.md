---
title: MacRuby 0.3 Released (Now With Interface Builder Support)
date: '2008-09-15'
author: Eldon Alameda
author_slug: eldon
post_id: 1195
slug: macruby-03-released-now-with-interface-builder-support-1195
url: "/macruby-03-released-now-with-interface-builder-support-1195.html"
categories:
- cool
- news
- os-x-specific
---

{{< rawhtml >}}
<p><img style="float:left;margin-right:12px; margin-bottom: 12px" src="/assets/2008/08/apple-ruby-3.jpg" alt="apple_ruby-3.jpg" width="120"> <a href="http://www.macruby.org/">MacRuby</a> - a Mac OS X port of Ruby 1.9 designed to run directly on top of OS X's frameworks - recently hit a new milestone with the release of <a href="http://www.macruby.org/post/macruby-03/">MacRuby 0.3</a>.</p>
<p>In addition to the expected bug fixes and performance increases (they claim that MacRuby should now be up to YARV levels) the release also features a number of exciting Cocoa-derived GUI building enhancements, such as Rich Kilmer's <a href="http://www.macruby.org/trac/wiki/HotCocoa">HotCocoa</a> - a new core library which simplifies Cocoa programming with simple Ruby idioms. Example:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">hotcocoa</span><span class="punct">'</span>
<span class="ident">include</span> <span class="constant">HotCocoa</span>
<span class="ident">application</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">app</span><span class="punct">|</span>
<span class="ident">  window</span> <span class="symbol">:size</span> <span class="punct">=&gt;</span> <span class="punct">[</span><span class="number">100</span><span class="punct">,</span> <span class="number">50</span><span class="punct">]</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">win</span><span class="punct">|</span>
<span class="ident">    b</span> <span class="punct">=</span> <span class="ident">button</span> <span class="symbol">:title</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">Hello</span><span class="punct">'</span>
<span class="ident">    b</span><span class="punct">.</span><span class="ident">on_action</span> <span class="punct">{</span> <span class="ident">puts</span> <span class="punct">'</span><span class="string">World!</span><span class="punct">'</span> <span class="punct">}</span>
<span class="ident">    win</span> <span class="punct">&lt;&lt;</span> <span class="ident">b</span>
<span class="keyword">  end</span><span class="keyword">
end</span></pre>
<p>Just as exciting is the fact that MacRuby 0.3 now supports Interface Builder! With the new MacRuby - you can now define classes, outlets and actions in a MacRuby Xcode project and they will automatically appear in Interface Builder - very cool.</p>
<p class="s"><cite>Post supported by Brightbox:</cite> <a href="http://www.brightbox.co.uk/">Brightbox</a> is a specialist European <a href="http://www.brightbox.co.uk/">Rails hosting</a> company. Each Brightbox server includes an optimised Ruby on Rails stack, SAN storage and access to a managed MySQL database cluster. They also manage dedicated clusters for large scale Rails deployments. <a href="http://www.brightbox.co.uk/">Click here to learn more..</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Dale Campbell</strong> &middot; <time datetime="2008-09-16T05:33:00+00:00">September 16, 2008 at 5:33 am</time></p>
      <p>By installing MacRuby, will it conflict with the version of Ruby that came with OS X 10.5 (Leopard)?  Also, how would it effect the gems I currently have installed (ex. Rails, Merb, etc.)?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Eldon Alameda</strong> &middot; <time datetime="2008-09-17T00:06:00+00:00">September 17, 2008 at 12:06 am</time></p>
      <p>MacRuby is a separate binary and it's executables are all prefixed with mac* to avoid conflicts (i.e. macruby, macirb, etc, etc). So you should have no issues with other installed versions of Ruby.</p><p>As for RubyGems - one of the key milestones for this release was that it was supposed to have a lot of improvements towards RubyGems compatability and the release notes say: </p><p>"On the pure Ruby side of things, a lot of bugs have been fixed and we are now able to run some commands of RubyGems. Installing simple gems should work. Don't expect MacRuby to run Rails yet, though!" </p><p>I haven't had a chance (really time) to install the new release and play with it yet, so I'm not sure what  issues there are with the Gems.</p><p>Hope that helps.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dale Campbell</strong> &middot; <time datetime="2008-09-20T02:28:00+00:00">September 20, 2008 at 2:28 am</time></p>
      <p>Thanks for the response Eldon.  I did a little researching after posting the comment and found the answer I was looking for.  Guess I should have done that before posting the comment.  Heh.</p><p>I've been playing around with MacRuby (and the packaged examples) for a day or two, and it's actually not bad.  I'm just now getting into the HotCocoa stuff and that looks slick, as well.  I'm gonna try and install a few of my gems to see how nice they play.  :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
