---
title: How To Get That Edge Ruby Faster-Loading-Hotness in Ruby 1.9.2 Now
date: '2011-06-08'
author: Peter Cooper
author_slug: admin
post_id: 4973
slug: get-edge-ruby-faster-loading-ruby-1-9-2-now-4973
url: "/get-edge-ruby-faster-loading-ruby-1-9-2-now-4973.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2011/06/supercar.gif" alt="" title="supercar" width="120" height="120" class="alignnone size-full wp-image-4974" style="float: left; margin-right: 12px; margin-bottom: 12px; border: 1px solid #333">A few days ago I told <a href="ruby-1-9-3-faster-loading-times-require-4927.html">the story of ruby-head (MRI) getting 36% faster loading</a>, perfect for tackling those file-heavy Rails 3 apps. Awesome for Ruby 1.9.3 but not so good for us now, right? <a href="https://github.com/taf2">Todd Fisher</a> to the rescue! He's created <a href="https://gist.github.com/1008945">a patch</a> backporting the performance tweak to Ruby 1.9.2-p180.</p>
<p><em>Tip: If you're still on 1.8, check out <a href="http://rubyinside.com/19walkthrough/">The Ruby 1.9 Walkthrough</a>, a mega screencast aimed at Ruby 1.8.7 developers who want to learn all about what's new, what's gone, and what's different in Ruby 1.9.2 and 1.9.3.</em></p>
<h3>First, The Results</h3>
<p>As the current production version of Ruby, a boost for Ruby 1.9.2-p180 should benefit most of you so I knew I had to share Todd's work as soon as I'd given it a test run. I ran the same benchmarks as in <a href="ruby-1-9-3-faster-loading-times-require-4927.html">my earlier post</a> and got a <strong>reduction in Rails 3 app load time of</strong>:</p>
<ul>
<li>16.7% for the empty Rails 3 app</li>
<li>23.6% for the 'larger' in-production Rails 3 app</li>
</ul>
<p><img src="/assets/2011/06/rsults.png" alt="" title="rsults" width="350" height="250" class="alignnone size-full wp-image-4987"></p>
<p>Only ~20% faster compared to ruby-head's 35%? That's actually <em>good news!</em> It means ruby-head (and so, hopefully, 1.9.3) has some extra performance boosts <em>beyond</em> the loading stuff - awesome! (Bear in mind in the previous post I benchmarked ruby-head with the patch against normal 1.9.2-p180.)</p>
<h3>Now, The How</h3>
<p>So how do you get this stuff? First, you need to be using <a href="http://beginrescueend.com/">RVM</a> to manage your Ruby installs. You'll need to figure things out for yourself if you're compiling Ruby by hand. If you're using other forms of package management, you might find this all a bit 'hacky' and want to give it a miss.</p>
<p><em>Obligatory disclaimer: Don't do this unless you have a basic idea of what you're doing. And if your performance isn't improved, don't blame us. Boring bit over.</em></p>
<p>OK RVM users, do this:</p>
<pre>curl https://raw.github.com/gist/1008945/7532898172cd9f03b4c0d0db145bc2440dcbb2f6/load.patch &gt; /tmp/load.patch
rvm get head   # always good to make sure you're up to date with RVM
rvm reload
rvm install ruby-1.9.2-p180 --patch /tmp/load.patch -n patched
rvm use ruby-1.9.2-p180-patched</pre>
<p><em>Note: You can just use <code>ruby-1.9.2-patched</code> but I'm playing it safe in the example ;-)</em></p>
<p><em>Note 2: Someone has reported that the above has resulted in an error at the patching stage. I've run it on two machines now without any problems but if you have problems, look at the log file RVM tells you to check out. It might give you a hint. Feel free to post a comment on this post too.</em></p>
<p>And now you're on the 'patched' Ruby 1.9.2. You'll need to run bundle again in your project(s) but in theory everything should work as before, just with faster loading.</p>
<p>So Todd Fisher just made your Rails 3 app start up somewhere around 20% faster <em>without</em> making you move away from a reliable, production version of Ruby. Buy the guy a beer when you see him next.</p>
<p class="s" style="padding: 8px; background-color: #ff9"><em>[ad]</em> <strong><a href="http://engine.adzerk.net/redirect/0/4764/5457/1313/ea7c1a740916430b9dc63ece6d134aa5/19/24/6498/634430717830567061?keywords=">RailsKits</a></strong> is here to bring you great <strong>ready-made Rails code for you to use in your projects.</strong> More than just plugins, these starter kits can act as the foundation of your new Rails application. You can save hours of time, skipping the boring stuff and diving right into the code that makes your application different from all the rest.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Charles Feduke</strong> &middot; <time datetime="2011-06-08T04:42:00+00:00">June 8, 2011 at 4:42 am</time></p>
      <p>Pretty impressive.  I got this to work with no issues and there's a noticeable speed improvement on my MBP.  I have guard/spork/growl running; previously when I saved a spec I'd have a couple seconds of wait time for the growl notification to appear.  Now it seems like its nearly instant.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dr Nic Williams</strong> &middot; <time datetime="2011-06-08T05:46:00+00:00">June 8, 2011 at 5:46 am</time></p>
      <p>I'm getting the errors installing the patch as Mike in this gist - <a href="https://gist.github.com/53031fcff0f3258f0f90#comments" rel="nofollow">https://gist.github.com/53031fcff0f3258f0f90#comments</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jacques Crocker</strong> &middot; <time datetime="2011-06-08T07:03:00+00:00">June 8, 2011 at 7:03 am</time></p>
      <p>It installed ok, however my project is now throwing Psych errors: <a href="https://gist.github.com/1013931" rel="nofollow">https://gist.github.com/1013931</a></p><p>Really hoping ruby team supports an officially supported 1.9.2-p181 with this patch. It probably would speed up Heroku dyno boot times quite a bit</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mix</strong> &middot; <time datetime="2011-06-08T11:49:00+00:00">June 8, 2011 at 11:49 am</time></p>
      <p>I've tried it and it works... but it's way too slower than 1.8.7.</p><p>1.8.7:<br>
Finished in 0.2067 seconds<br>
21 examples, 0 failures, 3 pending</p><p>real    0m7.510s<br>
user    0m4.940s<br>
sys     0m2.430s</p><p>1.9.2:<br>
Finished in 0.66704 seconds<br>
21 examples, 0 failures, 3 pending</p><p>real    0m31.116s<br>
user    0m28.450s<br>
sys     0m2.160s</p><p>1.9.2-patched:<br>
Finished in 0.39284 seconds<br>
21 examples, 0 failures, 3 pending</p><p>real    0m17.468s<br>
user    0m15.310s<br>
sys     0m1.940s</p><p>And it's just a very simple app of 40-50 loc with some gems</p><p>Doing bdd with autotest it's just frustrating using 1.9.2, it takes too much time to run the test :(</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joel Moss</strong> &middot; <time datetime="2011-06-08T12:02:00+00:00">June 8, 2011 at 12:02 pm</time></p>
      <p>Got mine patched and running. Not a huge difference, but my spec suite ran in 5.93 secs before, and it now runs in 5.6 secs. Better than before I suppose.</p><p>Cheers!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kevin Menard</strong> &middot; <time datetime="2011-06-08T12:51:00+00:00">June 8, 2011 at 12:51 pm</time></p>
      <p>Nice to see this backported.  However, there's no evidence here that the performance gap between this and head is due to additional performance boosts in head.  Perhaps the patch has different runtime characteristics in 1.9.2 and head (it was written for head after all).  Or perhaps head was more heavily affected by the issue and thus the patch had a much larger influence.  I'm just reluctant to say "there's a difference and it must be because head is faster!"</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-06-08T13:49:00+00:00">June 8, 2011 at 1:49 pm</time></p>
      <p>Joel: Surprised you didn't see better on a small suite (the one for my larger app doesn't get a massive boost but it's 2 minutes long so a few seconds on loading is nothing). Guessing you don't have many entries in the Gemfile but quite a few unit tests? (So less loading to improve.)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-06-08T13:50:00+00:00">June 8, 2011 at 1:50 pm</time></p>
      <p>@Jacques: The problem might be related to the site hosting the YAML library being down last night so RVM was skipping it on the install. Was a common problem with RVM users last night :-(</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Cody Russell</strong> &middot; <time datetime="2011-06-08T15:22:00+00:00">June 8, 2011 at 3:22 pm</time></p>
      <p>It's failing to compile in load.c for me:</p><p>gcc -O3 -ggdb -Wextra -Wno-unused-parameter -Wno-parentheses -Wpointer-arith -Wwrite-strings -\<br>
Wno-missing-field-initializers -Wshorten-64-to-32 -Wno-long-long  -fno-common -pipe -I. -I.ext\<br>
/include/x86_64-darwin10.7.0 -I./include -I. -DRUBY_EXPORT -D_XOPEN_SOURCE -D_DARWIN_C_SOURCE \<br>
  -o load.o -c load.c<br>
load.c: In function ‘get_loaded_features_hash’:<br>
load.c:99: error: ‘rb_vm_t’ has no member named ‘loaded_features_hash’<br>
load.c:102: error: ‘rb_vm_t’ has no member named ‘loaded_features_hash’<br>
load.c: In function ‘get_filename_expansion_hash’:<br>
load.c:112: error: ‘rb_vm_t’ has no member named ‘filename_expansion_hash’<br>
load.c:115: error: ‘rb_vm_t’ has no member named ‘filename_expansion_hash’<br>
load.c: In function ‘rb_feature_p’:<br>
load.c:292: error: ‘loadable_ext’ undeclared (first use in this function)<br>
load.c:292: error: (Each undeclared identifier is reported only once<br>
load.c:292: error: for each function it appears in.)<br>
load.c: In function ‘Init_load’:<br>
load.c:773: error: ‘j’ undeclared (first use in this function)<br>
make: *** [load.o] Error 1</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Cody Russell</strong> &middot; <time datetime="2011-06-08T15:34:00+00:00">June 8, 2011 at 3:34 pm</time></p>
      <p>My bad.  It turns out I was getting the same error DrNic was, and the solution (however strange it is) was to rm the patch, rm ~/.rvm/archives/ruby-1.9.2-p180*, rm ~/.rvm/src/ruby-1.9.2-p180*, then re-fetch the patch and restart the build.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Shane Mingins</strong> &middot; <time datetime="2011-06-08T19:15:00+00:00">June 8, 2011 at 7:15 pm</time></p>
      <p>Did the install as outlined with no issues.  Just running spec suite to compare gave me this:</p><p>=&gt; ruby-1.9.2-p0 [ x86_64 ]<br>
Finished in 260.15 seconds<br>
1762 examples, 0 failures, 22 pending</p><p>=&gt; ruby-1.9.2-p180-patched [ x86_64 ]<br>
Finished in 273.49 seconds<br>
1762 examples, 0 failures, 22 pending</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tadas</strong> &middot; <time datetime="2011-06-08T21:40:00+00:00">June 8, 2011 at 9:40 pm</time></p>
      <p>Pretty impressive!<br>
1.9.2-p136        :20.32s user 3.54s system 81% cpu 29.322 total<br>
1.9.2-p180-patched: 9.96s user 3.48s system 70% cpu 19.003 total<br>
Although not enough to say good-bye to spork.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matt Royal</strong> &middot; <time datetime="2011-06-08T21:55:00+00:00">June 8, 2011 at 9:55 pm</time></p>
      <p>If you are unable to install the patched ruby and the error log contains messages about failed hunks, then you may be able to fix the problem by running "rvm cleanup all" before you install the patched Ruby.</p><p>If you're having issues with Psych, you can edit your config/environment.rb file in Rails and add this line:</p><p>YAML::ENGINE.yamler = 'syck'</p><p>The problem is likely that Ruby is using Psych for YAML parsing, and the 1.9.2 version of Psych can't handle merge keys (eg. &lt;&lt;: *default)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stefan Kaes</strong> &middot; <time datetime="2011-06-08T22:51:00+00:00">June 8, 2011 at 10:51 pm</time></p>
      <p>You might also consider using the railsexpress patchset for 1.9.2 (<a href="https://github.com/skaes/rvm-patchsets" rel="nofollow">https://github.com/skaes/rvm-patchsets</a>).</p><p>It also contains 1.9.2 versions of my GC patches (which are contained in REE).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Zlaj</strong> &middot; <time datetime="2011-06-09T05:36:00+00:00">June 9, 2011 at 5:36 am</time></p>
      <p>Thanks Matt Royal! "rvm cleanup all" did the trick for me.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joe Van Dyk</strong> &middot; <time datetime="2011-06-09T11:16:00+00:00">June 9, 2011 at 11:16 am</time></p>
      <p>For me, the patch dropped loading the Rails environment from 18.5 seconds to 12.5 seconds.</p><p>I WANT MORE!  :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan De Poorter</strong> &middot; <time datetime="2011-06-10T09:35:00+00:00">June 10, 2011 at 9:35 am</time></p>
      <p>This crashes for me on ttfunk, especially on the following line:</p><p>Hash[*(0..255).zip(0..255).flatten]</p><p>When trying it out it seems the culprit is the Range#zip(Range)</p><p>The full crash log:<br>
<a href="https://gist.github.com/1018547" rel="nofollow">https://gist.github.com/1018547</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Regis d'Aubarede</strong> &middot; <time datetime="2011-06-11T06:02:00+00:00">June 11, 2011 at 6:02 am</time></p>
      <p>Sory, not a comment, it's only to signal this article to<br>
your attention :<br>
<a href="http://chris.wailes.name/?page_id=97" rel="nofollow">http://chris.wailes.name/?page_id=97</a></p><p>by</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kirill Maximov</strong> &middot; <time datetime="2011-06-11T08:04:00+00:00">June 11, 2011 at 8:04 am</time></p>
      <p>Tried it with my 2.3.x project - got ~23% performance improvement on project startup. Good work, thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kirill Maximov</strong> &middot; <time datetime="2011-06-11T08:40:00+00:00">June 11, 2011 at 8:40 am</time></p>
      <p>Interesing, but patches from Stefan Kaes gave me better performance improvement (again, on 2.3.x project):</p><p>Start with plain 1.9.2-180:                8.3sec<br>
Start with plain 1.9.2-180-patched:        6.4sec<br>
Start with plain 1.9.2-180-railsexpress:   5.9sec</p><p>So, Stefan's patch for ruby 1.9.2 gave me ~29% startup time increase!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Leena</strong> &middot; <time datetime="2011-06-14T14:15:00+00:00">June 14, 2011 at 2:15 pm</time></p>
      <p>I've tried this on an medium sized rails3 app and could see atleast 20-30% improvement for rails server and rake tasks</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jarosław Skrzypek</strong> &middot; <time datetime="2011-06-14T17:52:00+00:00">June 14, 2011 at 5:52 pm</time></p>
      <p>Seems this is really important issue :-) I have also investigated it some time ago and finally wrote a blog post with patch about it. I measured up to 40% improvement on load time, while entire patch changes only four lines.<br>
Here are the details: <a href="http://www.lunarlogicpolska.com/blog/2011/06/14/tracing-processes-for-fun-and-profit.html" rel="nofollow">http://www.lunarlogicpolska.com/blog/2011/06/14/tracing-processes-for-fun-and-profit.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Marcin Kulik</strong> &middot; <time datetime="2011-06-17T16:53:00+00:00">June 17, 2011 at 4:53 pm</time></p>
      <p>@Jarosław: I hope your patch will get merged upstream. It got me biiig improvement - I don't need spork b/c specs now start so much faster.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kenn Ejima</strong> &middot; <time datetime="2011-07-07T12:04:00+00:00">July 7, 2011 at 12:04 pm</time></p>
      <p>Our Rails app has 49 gems, and with that patch, the loading time has been shortened from 51.830s to 23.269s. Really impressive.</p><p>I really hope this one will get backported to 1.9.2.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
