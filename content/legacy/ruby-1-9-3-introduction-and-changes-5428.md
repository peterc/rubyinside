---
title: 'Be Prepared for Ruby 1.9.3 and 1.9.4: What’s New and What’s Different'
date: '2011-09-23'
author: Peter Cooper
author_slug: admin
post_id: 5428
slug: ruby-1-9-3-introduction-and-changes-5428
url: "/ruby-1-9-3-introduction-and-changes-5428.html"
categories:
- news
---

{{< rawhtml >}}
<p><img src="/assets/2011/09/r193.gif" alt="" title="r193" width="124" height="124" class="alignnone size-full wp-image-5429" style="float: right; margin-left: 18px; margin-bottom: 18px; border: 1px solid #666">On August 1, 2011, <a href="ruby-1-9-3-preview-1-released-5229.html">Ruby 1.9.3 preview 1 was released.</a> The final version isn't yet out (as of September 23) but Ruby 1.9.3 is going to be the next, full production-level release of MRI Ruby. But what's the deal with 1.9.3 (and its successors, Ruby 1.9.4 and 2.0)? Keep reading!</p>
<h3>The Summary</h3>
<p>Ruby 1.9.3 is a relatively minor improvement on the Ruby 1.9.2 we already know and love. In short:</p>
<ul>
<li>a focus has been placed on performance with <a href="ruby-1-9-3-faster-loading-times-require-4927.html">file loading</a>, File and Pathname all significantly improved</li>
<li>Ruby 1.9.2 mostly fixed down the language specification for 1.9; 1.9.3 is mostly work on a 'better implementation'</li>
<li>you can tune the garbage collector via environment variables (more on this in a post coming soon!)</li>
<li>Ruby's license changes from dual Ruby + GPLv2 to dual Ruby + 2-clause BSD</li>
<li>improved GC performance with a lazy garbage collector</li>
<li>a 'better strategy' for the GIL / GVL</li>
<li>test/unit supports parallel testing</li>
<li>Random.rand tweaks (and rand() now accepts ranges)</li>
<li>io/console, a new library in the stdlib</li>
<li>4 new encodings (so far) - cp950, cp951, UTF-16, and UTF-32</li>
<li>extra String methods</li>
<li>a number of tweaks to formatting strings</li>
<li>Module#private_constant and Module#public_constant</li>
<li>a smattering of other bits and pieces, but this is the TLDR overview!</li>
</ul>
<p>For some examples of the above, however, read on.</p>
<h3>Yuki 'yugui' Sonoda on Ruby 1.9.3</h3>
<p>At RubyConf Taiwan (held August 26-27, 2011), core team member Yuki 'yugui' Sonoda gave a talk called <em>Ruby 1.9.3 and Ruby 1.9 Development</em> which outlined her current thinking on Ruby 1.9.3, Ruby 1.9.4, and Ruby 2.0. It's not very long and worth a watch.</p>
<p><iframe src="http://player.vimeo.com/video/29438332" width="621" height="349" frameborder="0" webkitallowfullscreen allowfullscreen></iframe></p>
<p>You can watch <a href="http://vimeo.com/groups/rubytw/videos/29438332">the video on Vimeo</a> or see <a href="http://www.slideshare.net/yugui/ruby-193-and-development-of-ruby">the slides on SlideShare.</a> Alternatively, you may see the video embedded above.</p>
<p>Yugui's talk was only short but the key points were that:</p>
<ul>
<li><strong>Ruby 1.9.2 essentially fixed down the language design for 1.9; 1.9.3 is just a 'better implementation'</strong></li>
<li><strong>Ruby 1.8 has "no future" (she stated this a few times) but it will be "supported" for a few years to come</strong></li>
<li><strong>there is no intention to release a Ruby 1.8.8</strong></li>
<li><strong>"You need to switch to Ruby 1.9"</strong></li>
<li>Ruby 1.9.3 will be out very soon</li>
<li>the license was changed to joint BSD because the release of GPLv3 forced a rethink on licensing</li>
<li>the locking strategy related to the GIL / GVL has been improved, resulting in improved performance</li>
<li>test/unit's parallelization features are well suited for testing Ruby's stdlibs more quickly</li>
<li>you can "safely switch to Ruby 1.9.3 from Ruby 1.9.2" as there are "few incompatibilities"</li>
<li>the new "lazy GC" will improve the response time of the garbage collector and decrease overall GC throughput - more info <a href="http://www.infoq.com/news/2011/08/ruby193-gc">in this article</a>, for the curious</li>
<li>Yugui is not particularly familiar with RubySpec - it seems to continue to not be a focus for core MRI implementers</li>
</ul>
<h3>A Selection of 1.9.3 Changes</h3>
<p>I've cherry picked a few changes in 1.9.3 to highlight.</p>
<h4>Faster loading - the load.c patch</h4>
<p>Recently, I <a href="ruby-1-9-3-faster-loading-times-require-4927.html">wrote all about the load.c file loading performance saga</a> in Ruby 1.9.2. These issues have begun to be addressed and a nifty patch has enabled Ruby 1.9.3 to post significantly improved loading times for apps with large trees of files to load. You could see anywhere from a 5% to 40% reduction in load times for your apps.</p>
<h4>Time#strftime supports %:z and %::z</h4>
<pre>Time.now.strftime("%:z %::z")  # =&gt; "+01:00 +01:00:00"</pre>
<p><code>Time#strftime</code> now supports some extended formats for timezones. <code>:z</code> includes the minutes and <code>::z</code> gives the full HH:MM::SS.</p>
<h4>String#prepend and String#byteslice</h4>
<p>Among some changes to the String class are a couple of new methods. First, <code>prepend</code>:</p>
<pre>a = 'world'; a.prepend('hello '); a  # =&gt; "hello world"</pre>
<p><code>String#prepend</code> prepends one string to another, in-place. The result is equivalent to using <code>a[0,0]</code>, in this case.</p>
<p>Next, <code>byteslice</code> will let you get access to sections of a string at the byte (rather than character) level:</p>
<pre>a = 'hello'; a.byteslice(2, 2)  # =&gt; "ll"</pre>
<h4>New character encodings</h4>
<p>CP950, CP951, UTF-16, and UTF-32 encodings have been added. Previously, UTF-16 and UTF-32 were available in big-endian (BE) and little-endian specific forms. For example: <code>Encoding.find("UTF-16LE")</code>. I have not yet confirmed if the new UTF-16 and UTF-32 encodings support the byte ordering marks that they should, but am currently assuming so. CP950 and CP951 are Microsoft encodings for Chinese character sets.</p>
<h4>Changes to 'Random'</h4>
<p>The Random class now accepts ranges on its <code>rand</code> class method. In 1.9.2, this was only allowed on its instance method. For example:</p>
<pre>Random.rand(5..9)   # =&gt; [a number between 5 and 9]</pre>
<p>A side effect of this is that <code>Kernel.rand</code> now also supports ranges in 1.9.3. For example:</p>
<pre>rand(5..9)  # =&gt; [a number between 5 and 9]</pre>
<h4>#__id__ moved from Object to BasicObject</h4>
<p>BasicObject is the new grand-daddy of the inheritance tree in Ruby 1.9 and in 1.9.3 it gains access to the functionality of the <code>object_id</code> method by way of <code>__id__</code> which has been moved into BasicObject from Object. This may help those of you using BasicObject for delegators, proxies, and the like.</p>
<pre>BasicObject.new.__id__   # =&gt; 2152881920</pre>
<h4>More?</h4>
<p>If you want to pick up on more changes, see the <a href="http://svn.ruby-lang.org/repos/ruby/tags/v1_9_3_preview1/NEWS">Ruby 1.9.3 NEWS</a> document or, perhaps, check out my <a href="http://rubyinside.com/19walkthrough/">Ruby 1.9 Walkthrough screencast</a> ($16) which has an entire section dedicated to things that are new in Ruby 1.9.3.</p>
<h3>The Future: Ruby 1.9.4</h3>
<p>In her talk, Yugui mentioned two extra production releases of Ruby to come after Ruby 1.9.3. The first was unnamed and was said to be a 1.9 release with minor language changes to 1.9.2/3. In the Q&amp;A, someone asked Yugui if this would be called Ruby 1.9.4 but she said it was still under discussion but <em>hoped</em> it would be called 1.9.4. This unnamed next release would, however, have complete backwards compatibility for code written in Ruby 1.9.2/3.</p>
<h3>The Future: Ruby 2.0!</h3>
<p>The second release after 1.9.3 "should be called Ruby 2.0", however. It will have significant changes but Yugui notes that "it should be comfortable with 1.9.3" and that you should be able to "safely switch" to 2.0, indicating that any significant changes wouldn't involve removing core language elements or permanently changing core syntax features.</p>
<p>It has previously been said, however, that Ruby 2.0 could be "several years" away, so don't get too excited about this yet. Now is the time to start weighing if you want to influence Ruby 2.0's design, however!</p>
<h3>Still getting to grips with Ruby 1.9? Try my walkthrough</h3>
<p><a href="http://rubyinside.com/19walkthrough/"><img src="http://rubyinside.com/19walkthrough/promo.jpg"></a></p>
<p>I recently released a screencast called <a href="http://rubyinside.com/19walkthrough/">Ruby 1.9 Walkthrough</a>, a mega walkthrough of what's new in Ruby 1.9.2 (and Ruby 1.9.3) from the perspective of Ruby 1.8.7. If you're still primarily a Ruby 1.8 based developer and aren't entirely sure about what's new in Ruby 1.9, <a href="http://rubyinside.com/19walkthrough/">check it out.</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Mike Perham</strong> &middot; <time datetime="2011-09-23T17:44:00+00:00">September 23, 2011 at 5:44 pm</time></p>
      <p>More info on the GIL change:</p><p><a href="http://groups.google.com/group/ruby-talk-google/msg/d5cc8c681643ecd6" rel="nofollow">http://groups.google.com/group/ruby-talk-google/msg/d5cc8c681643ecd6</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>David Escobar</strong> &middot; <time datetime="2011-09-27T19:45:00+00:00">September 27, 2011 at 7:45 pm</time></p>
      <p>Shouldn't <b>String#prepend</b> be called <b>String#prepend!</b> since it changes the string in place?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-09-27T20:20:00+00:00">September 27, 2011 at 8:20 pm</time></p>
      <p>That's been a common question (direct to me, at least). The answer, however, is no. Despite the common understanding, bang methods in Ruby (at least in the core and stdlib) are used as 'dangerous' versions of <em>already existing</em> methods. If the method is the <em>only</em> one, it's non-bang whether it works in-place or not. Array#keep_if is another example.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>David Escobar</strong> &middot; <time datetime="2011-09-28T17:21:00+00:00">September 28, 2011 at 5:21 pm</time></p>
      <p>Ah ok, thanks. That makes sense. At least they're being consistent with how they've done it in the past.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Grimm</strong> &middot; <time datetime="2011-09-29T00:19:00+00:00">September 29, 2011 at 12:19 am</time></p>
      <p>Is the next non 1.9.x release called 2.0 only because 1.10 would cause confusion?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>sithara</strong> &middot; <time datetime="2011-09-29T08:21:00+00:00">September 29, 2011 at 8:21 am</time></p>
      <p>Is there any keyword like the final keyword in java..to fix a variable with a value so that it is never altered.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Zach Dennis</strong> &middot; <time datetime="2011-09-29T18:02:00+00:00">September 29, 2011 at 6:02 pm</time></p>
      <p>Here's another post which takes a casual look at some of the upcoming 1.9.3 changes only:</p><p><a href="http://www.mutuallyhuman.com/blog/2011/09/28/a-casual-look-at-upcoming-changes-in-ruby-1-9-3" rel="nofollow">http://www.mutuallyhuman.com/blog/2011/09/28/a-casual-look-at-upcoming-changes-in-ruby-1-9-3</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>secondplanet</strong> &middot; <time datetime="2011-09-29T20:04:00+00:00">September 29, 2011 at 8:04 pm</time></p>
      <p>I watched Matz's talk on Ruby 2.0, it was very interesting. You should link it in the post. <a href="http://www.youtube.com/watch?v=t9LMOydfc4k" rel="nofollow">http://www.youtube.com/watch?v=t9LMOydfc4k</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>autodidakto</strong> &middot; <time datetime="2011-09-29T21:35:00+00:00">September 29, 2011 at 9:35 pm</time></p>
      <p>@Andrew Grimm<br>
While I dislike ".10" version numbers, I agree with you that they shouldn't call a (semi)minor change "2.0" just because they ran out of space and don't like .10.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-09-30T06:52:00+00:00">September 30, 2011 at 6:52 am</time></p>
      <p>I doubt that the Ruby core team are worried about staying on the 1.9.x track even if there are bigger changes to be made. "2.0" has been said to be backwards compatible with 1.9.3 anyway and 1.9.2 was a real leap over 1.9.1 (which in turn was a leap over 1.9.0). If you consider how different 1.8.7 was to 1.8.6, I think we'd see 1.9.5, 1.9.6, and so on, if 2.0 wasn't warranted.</p><p>And IMHO it's not about liking/disliking .10, but .10 is a nonsensical travesty that makes as much sense as using imaginary numbers in versions. Just because a few versioning systems have allowed it in the past (looking at you, Perl) doesn't mean it's ever a good idea ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ochronus</strong> &middot; <time datetime="2011-09-30T10:41:00+00:00">September 30, 2011 at 10:41 am</time></p>
      <p>Thanks for this summary!<br>
Readers might also find my article about ruby 1.9 changes interesting:</p><p><a href="http://blog.mostof.it/ruby-1-9-changes-cherry-picked/" rel="nofollow">Ruby 1.9 changes, cherry picked</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>alishya</strong> &middot; <time datetime="2011-10-09T16:41:00+00:00">October 9, 2011 at 4:41 pm</time></p>
      <p>How secure RoR is, as considered it in web oriented concerns...?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>alishya</strong> &middot; <time datetime="2011-10-09T16:47:00+00:00">October 9, 2011 at 4:47 pm</time></p>
      <p>I think Ruby has an exponential growth since 2006, So what you think about its future? What about its impact in India?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>soren</strong> &middot; <time datetime="2011-10-16T16:12:00+00:00">October 16, 2011 at 4:12 pm</time></p>
      <p>"And IMHO it's not about liking/disliking .10, but .10 is a nonsensical travesty that makes as much sense as using imaginary numbers in versions. "</p><p>it's much better to have 1.10 than have 2.0 if the change from 1.9 is only minor.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-10-16T17:37:00+00:00">October 16, 2011 at 5:37 pm</time></p>
      <p>I disagree, but in theory we have 1.9.4, 1.9.5, and all the way through to 1.9.9 before it would become a concern. Seems they are keen to skip to the 2.0 though :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://ihower.tw/blog/archives/6015" rel="external nofollow" class="url">RubyConf Taiwan 2011 籌辦心得 | ihower { blogging }</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rein Henrichs</strong> &middot; <time datetime="2011-11-03T17:05:00+00:00">November 3, 2011 at 5:05 pm</time></p>
      <p>What's wrong with, say, 1.10.0? How is it "nonsensical" or a "travesty"? They are not decimal points.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>blah</strong> &middot; <time datetime="2011-11-27T05:49:00+00:00">November 27, 2011 at 5:49 am</time></p>
      <p>You could eyeball Java as well (Java 2 vs Java 1.2 etc)  </p><p>call it 1.10 then there is no relation however slight with Java mentality and stays more like a linux kernel.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="ruby-news-and-releases-in-2011-a-retrospective-5665.html" rel="external nofollow" class="url">Ruby News and Releases in 2011: A Retrospective</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
