---
title: The Story Behind Ruby 1.9.3 Getting 36% Faster Loading Times
date: '2011-06-05'
author: Peter Cooper
author_slug: admin
post_id: 4927
slug: ruby-1-9-3-faster-loading-times-require-4927
url: "/ruby-1-9-3-faster-loading-times-require-4927.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2011/06/whoosh.jpg" alt="" title="whoosh" width="120" height="120" class="alignnone size-full wp-image-4928" style="float: left; margin-right: 12px; margin-bottom: 12px; border: 1px solid #666"><a href="http://xaviershay.com/">Xavier Shay</a> is an Australian Rubyist who shares an issue with most of us: <strong>slow loading Rails 3 apps on Ruby 1.9.2</strong>! <em>Unlike</em> most of us, he put together a <strong>solution</strong> for <em>ruby-head</em> (what I'm calling 1.9.3 but isn't <em>technically</em><sup>*</sup>) that, in my own tests, slashed 37% off the boot time of my Rails 3.0 app. He <a href="http://rhnh.net/2011/05/28/speeding-up-rails-startup-time">shared his work</a> just a week ago. Awesome! But some other developments have occurred since..</p>
<p><em><sup>*</sup> Just because things are in ruby-head doesn't mean they'll <strong>definitely</strong> make it into Ruby 1.9.3. Pragmatically, though, ruby-head seems to have attracted the 'Ruby 1.9.3' moniker and it makes for a better headline. Just don't get too upset if, for whatever reason, it gets yanked and delayed till Ruby 2.0.. ;-))</em></p>
<p><em>Tip: If you're still on 1.8, check out <a href="http://rubyinside.com/19walkthrough/">The Ruby 1.9 Walkthrough</a>, a mega screencast aimed at Ruby 1.8.7 developers who want to learn all about what's new, what's gone, and what's different in Ruby 1.9.2 and 1.9.3.</em></p>
<h3>Slow Rails 3.0 Loading Times == A Big Problem</h3>
<p>Ruby 1.9.2 has long had performance issues when lots of files have been <code>require</code>d into a codebase. Back in January, Colin Law <a href="http://groups.google.com/group/rubyonrails-core/browse_thread/thread/88519ef5a53088a1/c01ba447c6dc0de7?lnk=raot">posted to the Rails Core mailing list</a> about the problem:</p>
<blockquote class="stylized">
<p>There has been <a href="http://www.google.com/url?sa=D&amp;q=http://groups.google.com/group/rubyonrails-talk/browse_thread/thread/f3a7e26f8ef528fe">an ongoing thread</a> on the RoR talk list about startup time using Rails 3 with Ruby 1.9.2.  Do not be confused by the subject of the thread, which mentions 1.9.1, it has moved on to 1.9.2. The gist is that on Ubuntu (and possibly Macs) the startup time when using 1.9.2 can be very much greater then 1.8.7, even with a minimal app.  This applies to running tests, migrations, server startup and so on.</p>
<p>Can anyone here throw any light on this?</p>
</blockquote>
<p><cite>Colin Law</cite></p>
<p>Rails 3's once-chief prolific superstar, Yehuda Katz, had the best response at the time:</p>
<blockquote class="stylized"><p>There are things that the C require code does in 1.9 that slow things down. One such example is re-checking $LOAD_PATH to make sure it is all expanded on every require. This is something that should be addressed by ruby-core. I'll open a ticket on redmine if there isn't one already.</p></blockquote>
<p><cite>Yehuda Katz</cite></p>
<p>It turns out there <a href="http://redmine.ruby-lang.org/issues/3924">was already a ticket from October 2010</a> on Redmine but little had happened in the interim. The compromise, then, was to <a href="how-to-rails-3-and-rspec-2-4336.html">find ways to make testing fast on Rails 3 with Spork</a> and similar workarounds.</p>
<h3>Xavier To The Rescue!</h3>
<p>Xavier, like a champ, spent a significant amount of time digging into the problem. He discovered that ruby-head's then-present way of dealing with loading files was woefully inefficient. He noted that require was working like so (in a very simplified and Ruby-fied example - because MRI Ruby is really written in C!):</p>
<pre>def require(file)
  $loaded.each do |x|
    return false if x == file
  end
  load(file)
  $loaded.push(file)
end</pre>
<p>Xaiver then set to work making ruby-head use a <em>hash</em> for more efficient lookups. A system he explained like so (again, this is just incredibly simplified pseudocode):</p>
<pre>def require(file)
  return false if $loaded[file]
  load(file)
  $loaded[file] = true
end</pre>
<p>The result was a much faster boot process for apps with lots of <code>require</code>s going on (like Rails 3 apps) and he released <a href="https://gist.github.com/996418">a patch</a> which <a href="http://rhnh.net/2011/05/28/speeding-up-rails-startup-time#comment-6432">lots of people loved.</a> I ran my own tests on a Rails 3 app with ~3000 lines of code and about 20 dependent libraries and got a speed up in load times of 37%. </p>
<p><em>Experimental Folks Only: There's a <a href="https://gist.github.com/999435">patch aimed at Ruby 1.9.2-p180</a> bringing Xavier's ideas back to the implementation you already know and love. Experiment at your own risk!</em></p>
<h3>4 Days Later, A Core Team Patch</h3>
<p>Impressed by the improvement, I was going to write a post about Xavier's work and how you could get to using it right away but then, out of the blue, came something straight from the <a title="Ruby core team" href="http://www.ruby-lang.org/en/community/ruby-core/">Ruby core team</a> in Japan, a <a href="https://github.com/ruby/ruby/commit/9ce69e7cef1272c86a93eeb9a1888fe6d2a94704#load.c">a 26 line patch to load.c</a> by Masaya Tarui.</p>
<p><img src="/assets/2011/06/newpatch.png" alt="" title="newpatch" width="640" height="549" class="alignnone size-full wp-image-4952"></p>
<p>Masaya's patch took a <em>totally different approach</em> to Xavier's. Whereas Xavier's patch weighed in at over 1200 lines and essentially re-architected Ruby's feature loading process, Masaya's patch smashes a much-needed optimization into the existing code which significantly reduces the number of loop cycles necessary to check whether files have already been loaded or not.</p>
<p>The end result? I ran my tests again and got a <em>36% drop in Rails 3.0 app load time on the same app</em>. So <em>almost</em> as fast as Xavier's patch but from a shorter yet scrappier solution.</p>
<p>I ran this briefly by Xavier on Twitter and he believes that this quick fix won't ultimately fix the problem for "really large apps" and some of his extra benchmarks shared in comments <a href="http://redmine.ruby-lang.org/issues/3924">on this ticket</a> seem to indicate as such. So I'm leaving this story a little in the air at the end here. Xavier did a fine bit of rearchitecting but Masaya swooped in with a short "quick fix" that, perhaps, has a lower chance of causing regressions.</p>
<h3>Rails 3.0 App Bootup Times</h3>
<p>When I was writing this post focused on Xavier's work rather than the new load.c patch, I was going to lead off with benchmarks of the new process. It turns out, though, the story became more interesting, so I've relegated these (new) benchmarks to the end of the post!</p>
<p>I'm no statistician and I grimace at poorly crafted benchmarks along with the rest of you. Trust, though, that all of these results came from a defined process so are more likely to be equally skewed, if at all ;-) They're based on the mean userspace times of the 2nd and 3rd runs of a <code>time ./script/rails runner "puts 37337"</code> using the specific Ruby version on the specified Rails app (an "empty" Rails 3.0.6 app and a 3000 line, 20 gem "bigger" Rails app).</p>
<p>So, here's ruby-head (with the load.c patch) against Ruby 1.8.7 and Ruby 1.9.2-p180:</p>
<p><img src="/assets/2011/06/benchie.png" alt="" title="benchie" width="442" height="246" class="alignnone size-full wp-image-4937"></p>
<p>ruby-head isn't quite back to Ruby 1.8.7 speeds in terms of requiring lots of files, but it's a significant improvement over 1.9.2 (a 35% improvement on the empty app and 36% on the "bigger" one).</p>
<p>End result? You should be getting faster load times in ruby-head and, certainly, when Ruby 1.9.3 drops, whether or not Xavier's work makes it in. In any case, congratulations are due to Xavier for pushing the issue (coincidence the load.c fix came in 4 days after his big reveal?) and for ultimately making Ruby 1.9 a faster place.</p>
<p class="s" style="padding: 8px; background-color: #ff9"><em>[sponsor]</em> <a href="http://engine.adzerk.net/redirect/0/4552/4823/1313/0aabd29ff9b0467f9b14f7b8e1f0297d/19/24/6023/634428113296468657?keywords=">Jumpstart Lab</a>, headed by Jeff Casimir, is a training company specializing in Ruby on Rails. Their classes are usually two days long and while their prescheduled classes tend to be in Washington DC, where they're based, they'll travel anywhere if you have (or can find) at least six attendees.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Xavier Shay</strong> &middot; <time datetime="2011-06-05T05:50:00+00:00">June 5, 2011 at 5:50 am</time></p>
      <p>On a synthetic benchmark requiring 2500 files my patch still blitzes ruby-head by about 5s, but on a rails app it only just edges ahead (1.08 vs 1.35 for a new app, 10.49 vs 10.88 for a larger one which is 18.37s on 1.9.2-p180). Given the differences are far less dramatic now, I anticipate my patch probably won't be incorporated into a point release due to risk of regressions. Still, going forward I believe a hash/set data structure is the correct approach.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Cristiano Betta</strong> &middot; <time datetime="2011-06-05T08:21:00+00:00">June 5, 2011 at 8:21 am</time></p>
      <p>Am I missing something or are these 2 patches not necessarily mutually exclusive (maybe with some edits?).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Nesbitt</strong> &middot; <time datetime="2011-06-05T09:15:00+00:00">June 5, 2011 at 9:15 am</time></p>
      <p>Combine the two patches for ROFLSPEED!!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Todd</strong> &middot; <time datetime="2011-06-05T13:10:00+00:00">June 5, 2011 at 1:10 pm</time></p>
      <p>This might be handy for others... a 1.9.2 patch of the core teams version: <a href="https://gist.github.com/1008945" rel="nofollow">https://gist.github.com/1008945</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Patrick</strong> &middot; <time datetime="2011-06-06T03:32:00+00:00">June 6, 2011 at 3:32 am</time></p>
      <p>Is this patch into ruby-1.9.2-head too? Or just ruby-head?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>NaHi</strong> &middot; <time datetime="2011-06-06T05:02:00+00:00">June 6, 2011 at 5:02 am</time></p>
      <p>Xavier: Here's a patch which might help you understanding r31875. <a href="https://gist.github.com/1009750" rel="nofollow">https://gist.github.com/1009750</a></p><p>Thanks for your contribution about loading time of 1.9.3. I think you saved CRuby committers from lots of claims about loading time, as well as Rails users :)</p><p>As you see in load.c (and might see in the diff I've posted,) there're lots of necessary loops and checks in load.c. We included expanded path in $LOADED_FEATURES from 1.9 to avoid double loading issue like 'require "foo"; require "FOO"; require "./foo", so it gets a little slower from 1.8. It should be faster as 1.8 eventually of course, I want to see your efforts merged in the future.</p><p>To get it to be merged early, I hope you try to understand what's load.c is doing, and posting a patch for 1 problem step by step...</p><p>By the way, just letting you know this, $LOADED_FEATURES of JRuby is not a stock Array but an Array-like-Hash <a href="http://j.mp/jLAgEU" rel="nofollow">at master branch</a> now. It gets really faster for artificial example, but there's no measurable difference for starting up big rails app such as <a href="http://j.mp/l1qhtD" rel="nofollow">'slow-rails' by joevandyk</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://pietrowski.info/2011/06/pedro-newsletter-06-06-2011/" rel="external nofollow" class="url">Pedro Newsletter 06.06.2011 « Pragmatic Programmer Issues – pietrowski.info</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeff</strong> &middot; <time datetime="2011-06-06T16:13:00+00:00">June 6, 2011 at 4:13 pm</time></p>
      <p>The C-code fix is a great quick-patch, but I also agree with Xavier that it should be a set or hash.  Really, any time you're using a store simply for detection of duplicates, you shouldn't be using an Array.  The simplicity of Xavier's fix is great :-).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="get-edge-ruby-faster-loading-ruby-1-9-2-now-4973.html" rel="external nofollow" class="url">How To Get That Edge Ruby Faster-Loading-Hotness in Ruby 1.9.2 Now</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>trans</strong> &middot; <time datetime="2011-06-08T05:08:00+00:00">June 8, 2011 at 5:08 am</time></p>
      <p>I imagine a bigger speed boost might be had if everyone started using #require_relative where possible.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrey</strong> &middot; <time datetime="2011-06-10T06:28:00+00:00">June 10, 2011 at 6:28 am</time></p>
      <p>Very good, a move in the right direction, but 37% compared to the scale of the problem is nothing. Depending on the view point, it is either a transition from acceptable to even better acceptable or from nonoperational to still nonoperational.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Marcin Kulik</strong> &middot; <time datetime="2011-06-17T16:49:00+00:00">June 17, 2011 at 4:49 pm</time></p>
      <p>There is another patch which gives ~40% load time improvement:</p><p><a href="http://www.lunarlogicpolska.com/blog/2011/06/14/tracing-processes-for-fun-and-profit.html" rel="nofollow">http://www.lunarlogicpolska.com/blog/2011/06/14/tracing-processes-for-fun-and-profit.html</a></p><p>If all of them could be combined into one (unless they conflict) then we could end up with quite huge speed improvement.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Suraj Kurapati</strong> &middot; <time datetime="2011-06-23T03:22:00+00:00">June 23, 2011 at 3:22 am</time></p>
      <p>puts 37337?  Don't you mean 31337?  :-/</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="ruby-1-9-3-preview-1-released-5229.html" rel="external nofollow" class="url">Ruby 1.9.3 Preview 1 Released – What’s New?</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>sudhir</strong> &middot; <time datetime="2011-08-02T04:08:00+00:00">August 2, 2011 at 4:08 am</time></p>
      <p>Good catch Xavier. I think the speed improvement got by your fix greatly depends on the right hash function too. If the the hashing is not good, we might even end up not getting any performance improvement. Any thoughts any one?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andy</strong> &middot; <time datetime="2011-08-29T03:34:00+00:00">August 29, 2011 at 3:34 am</time></p>
      <p>My load times with a fairly simple rails 3.1rc6 app. I ran this three times for each version and the variations were very minimal. Here's the results for one run.</p><p>$ ruby -v<br>
ruby 1.9.3dev (2011-07-31 revision 32789) [x86_64-linux]</p><p>$ time ./script/rails runner "puts 37337"<br>
37337</p><p>real    0m5.111s<br>
user    0m4.690s<br>
sys     0m0.390s</p><p>$ rvm use 1.9.2@rails31<br>
Using .rvm/gems/ruby-1.9.2-p290 with gemset rails31<br>
$ ruby -v<br>
ruby 1.9.2p290 (2011-07-09 revision 32553) [x86_64-linux]<br>
$ time ./script/rails runner "puts 37337"<br>
37337</p><p>real    0m8.587s<br>
user    0m8.050s<br>
sys     0m0.490s</p><p>I'm using<br>
Ubuntu Natty<br>
RVM<br>
Rails 3.1rc6<br>
Intel(R) Xeon(R) CPU E5504  @ 2.00GHz<br>
16GB of RAM.</p><p>Thanks for all the work. This is great stuff!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://www.frederico-araujo.com/2011/07/30/installing-rails-on-os-x-lion-with-homebrew-rvm-and-mysql/" rel="external nofollow" class="url">Installing Rails on OS X Lion with HomeBrew, RVM and Mysql | Ruby, Rails, OSX and Linux fun</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
