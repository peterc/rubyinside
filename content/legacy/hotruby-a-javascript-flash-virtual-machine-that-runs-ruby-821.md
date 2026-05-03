---
title: 'HotRuby: A JavaScript & Flash Virtual Machine That Runs Ruby'
date: '2008-03-26'
author: Peter Cooper
author_slug: admin
post_id: 821
slug: hotruby-a-javascript-flash-virtual-machine-that-runs-ruby-821
url: "/hotruby-a-javascript-flash-virtual-machine-that-runs-ruby-821.html"
categories:
- cool
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2008/03/hotruby.jpg" width="445" height="249" alt="hotruby.png"></p>
<p><a href="http://hotruby.accelart.jp/">HotRuby</a> is a JavaScript and Flash powered virtual machine that can run Ruby code compiled to opcode by YARV.</p>
<p>You can write Ruby script within a Web page within <span style="font-style: italic;">&lt;script type="text/ruby"&gt; .. &lt;/script&gt;</span> tags, and HotRuby will then extract it, send it to be compiled by a remote script, and then return it for the JavaScript and Flash powered virtual machine to display within the page. There are lots of demos, including a <a href="http://hotruby.accelart.jp/test-web/Box2DFlashAS3.html">physics Flash application</a> (as seen in the screenshot above), a very curious <a href="http://hotruby.accelart.jp/test-web/pinball.html">pinball game</a>, and a <a href="http://hotruby.accelart.jp/test-web/bm_loop_times.html">benchmarking script</a> (which shows HotRuby as being 78% faster than Ruby 1.9 on my machine?)</p>
<p>There's also a <a href="http://hotruby.accelart.jp/test-web/diy.html">live "do it yourself" coding environment</a> if you want to give it a test by writing some code of your own.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Charles</strong> &middot; <time datetime="2008-03-26T12:18:00+00:00">March 26, 2008 at 12:18 pm</time></p>
      <p>wow.</p><p>!!!</p><p>I've gotta say that blew me away. Pretty remarkable stuff, even for an initial prototype. Incredibly, on my computer, this implementation of a YARV VM in javascript (using firefox 2 btw, which isn't the fastest) was faster than my ruby 1.8 and 1.9.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael Neumann</strong> &middot; <time datetime="2008-03-26T19:18:00+00:00">March 26, 2008 at 7:18 pm</time></p>
      <p>Change the "+=" into "&lt;&lt;" and Ruby is again 100 times faster :)</p><p>For a comparison of RubyJS vs. HotRuby take a look here:<br>
<a href="http://www.ntecs.de/blog/articles/2008/03/26/rubyjs-vs-hotruby" rel="nofollow">http://www.ntecs.de/blog/articles/2008/03/26/rubyjs-vs-hotruby</a></p><p>Nevertheless, great stuff!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alan Brown</strong> &middot; <time datetime="2008-03-26T20:06:00+00:00">March 26, 2008 at 8:06 pm</time></p>
      <p>I'm afraid I've wrecked the physics demo.  The chain came of the the little tractor thingy and I can't get it back on!</p><p>This cannot be a page of code to write.  That's insane!  And brilliant.</p><p>Another page of code for the tractor repair shop.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>AW</strong> &middot; <time datetime="2008-03-26T20:23:00+00:00">March 26, 2008 at 8:23 pm</time></p>
      <p>Awesomeness.</p><p>But, I can't get the pinball game to stop "freezing."</p><p>Well, it's better than having my entire browser freeze though...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel</strong> &middot; <time datetime="2008-03-26T22:11:00+00:00">March 26, 2008 at 10:11 pm</time></p>
      <p>That's  amazing.  Considering the gains we can get with small additions to it, I can see how a lot of people could contribute to fill the gaps.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Soleone</strong> &middot; <time datetime="2008-03-27T01:34:00+00:00">March 27, 2008 at 1:34 am</time></p>
      <p>Very nice idea!</p><p>On my machine it takes 6.90 seconds in the Browser using HotRuby and 6.61 seconds if I run the benchmark-code in a local script under Windows.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>CptOatmeal</strong> &middot; <time datetime="2008-03-27T02:18:00+00:00">March 27, 2008 at 2:18 am</time></p>
      <p>Something is very fishy about these speed results.  I need to do some more digging, but I think this apparent speed disparity has to do with differing garbage collection/memory schemes.</p><p>The code:<br>
50000.times{|e| sum += e.to_s}</p><p>will create a HUGE number of new string objects laying around the heap (string concatenation creates new strings.)</p><p>A simple fibonacci function yields very different results:</p><p>def fib(n)<br>
return n if n == 0 or n == 1<br>
fib(n-1)+fib(n-2)<br>
end</p><p>On my Ruby 1.8.6 this took 0.019 seconds.<br>
HotRuby took 2.911 seconds.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
