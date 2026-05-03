---
title: Ruby 1.9.2 RC1 Released; Final Release Due In August
date: '2010-07-02'
author: Peter Cooper
author_slug: admin
post_id: 3500
slug: ruby-1-9-2-rc1-released-final-release-due-in-august-3500
url: "/ruby-1-9-2-rc1-released-final-release-due-in-august-3500.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<blockquote class="stylized">
<p>Ruby 1.9.2 RC1 has just been released. This is a release candidate of Ruby 1.9.2. Ruby 1.9.2 will be mostly compatible with 1.9.1, except the following changes:</p>
<ul>
<li>Many new methods</li>
<li>New socket API (IPv6 support)</li>
<li>New encodings</li>
<li>Random class that supports various random number generators</li>
<li>Time is reimplemented. There is no longer the year 2038 problem.</li>
<li>some regexp enhancements</li>
<li>$: no longer includes the current directory.</li>
<li>dl is reimplemented on top of libffi.</li>
<li>new psych library that wraps libyaml. You can use the library instead of syck.</li>
</ul>
</blockquote>
<p><cite>Yuki (Yugui) Sonoda</cite></p>
<p>Ruby 1.9.2's been slowly progressing through preview releases for a while now, so it's great to see it ramping up for a final production release in August. You can read <a href="http://www.ruby-lang.org/en/news/2010/07/02/ruby-1-9-2-rc1-is-released/">Yugui's post here</a> or see the <a href="http://svn.ruby-lang.org/repos/ruby/tags/v1_9_2_rc1/NEWS">NEWS file</a> for RC1 which lists the changes from Ruby 1.9.1.</p>
<p>1.9.2 RC1 can be installed with <a href="http://www.ruby-lang.org/en/news/2010/07/02/ruby-1-9-2-rc1-is-released/">one of the official archives</a> or, more easily, with Wayne E Seguin's popular <a href="http://rvm.beginrescueend.com/">RVM</a> tool. If you already have RVM installed, it's as simple as:</p>
<pre><code>rvm update --head
rvm reload
rvm install 1.9.2</code></pre>
<p>Don't go rushing to deploy this on all your production boxes just yet, though, and when you do, test all of your libraries against it. Segfaults have been quite common on the 1.9.2 previews with some libraries. I'm still sitting on Ruby 1.9.1p378 in production because it seems to be the most stable 1.9 release to date.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Matt Haley</strong> &middot; <time datetime="2010-07-03T00:37:00+00:00">July 3, 2010 at 12:37 am</time></p>
      <p>Can't seem to figure out why the Ruby 1.9.2 takes twice as long to run rails tests. Everything else seems much faster than 1.8.7 though.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrius Chamentauskas</strong> &middot; <time datetime="2010-07-03T06:53:00+00:00">July 3, 2010 at 6:53 am</time></p>
      <p>I was having the same problem with all 1.9 releases. It seems that loading tests/specs takes twice longer (although actual tests/specs run much faster). Never figured out what the problem was, so just used spork. Would be nice if someone knew how to bypass this.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Martijn Storck</strong> &middot; <time datetime="2010-07-04T16:12:00+00:00">July 4, 2010 at 4:12 pm</time></p>
      <p>I hope 1.9.2 will run Rails 3 properly.. 1.9.1 keeps segfaulting randomly when running my Rails 3 app. I'm not saying this is a Ruby-issue, but at least the segfaults don't seem to happen on 1.9.2 trunk.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>J-_-L</strong> &middot; <time datetime="2010-07-05T13:09:00+00:00">July 5, 2010 at 1:09 pm</time></p>
      <p>I have written something about the new Array and Enumerable methods: <a href="http://rbjl.net/27-new-array-and-enumerable-methods-in-ruby-1-9-2-keep_if-chunk" rel="nofollow">http://rbjl.net/27-new-array-and-enumerable-methods-in-ruby-1-9-2-keep_if-chunk</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Benedict Eastaugh</strong> &middot; <time datetime="2010-07-05T13:36:00+00:00">July 5, 2010 at 1:36 pm</time></p>
      <p>Martijn: 1.9.2 has been much more stable for me than 1.9.1 when running Rails, ever since the first preview release.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aaron Kalin</strong> &middot; <time datetime="2010-07-08T17:36:00+00:00">July 8, 2010 at 5:36 pm</time></p>
      <p>@Martijn Ruby 1.9.1 is known to not work with Rails 3, you need to use 1.9.2 instead.  This is noted in the 3.0 release notes listed here <a href="http://guides.rails.info/3_0_release_notes.html" rel="nofollow">http://guides.rails.info/3_0_release_notes.html</a> scroll down to the notice on which ruby version to run.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>bartee</strong> &middot; <time datetime="2010-07-12T13:53:00+00:00">July 12, 2010 at 1:53 pm</time></p>
      <p>Can anyone tell me how I can get this installed on windows 7 ?</p><p>NOOB :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>pete</strong> &middot; <time datetime="2010-07-20T02:10:00+00:00">July 20, 2010 at 2:10 am</time></p>
      <p>@bartee: The RubyInstaller project has a build of 1.9.2-rc1 for Windows on their rubyforge page: <a href="http://rubyforge.org/frs/?group_id=167" rel="nofollow">http://rubyforge.org/frs/?group_id=167</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
