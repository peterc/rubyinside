---
title: Ruby 1.9.3 Preview 1 Released – What’s New?
date: '2011-08-01'
author: Peter Cooper
author_slug: admin
post_id: 5229
slug: ruby-1-9-3-preview-1-released-5229
url: "/ruby-1-9-3-preview-1-released-5229.html"
categories:
- news
---

{{< rawhtml >}}
<p><img src="/assets/2011/08/yay193.jpg" alt="" title="yay193" width="118" height="118" class="alignright size-full wp-image-5236" style="float: right; border: 1px solid #666; margin-left: 18px; margin-bottom: 18px">Over on the <a href="http://blade.nagaokaut.ac.jp/ruby/ruby-talk/index.shtml">ruby-talk</a> mailing list, Yuki "Yugui" Sonoda <a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/386024">announced</a> the release of Ruby 1.9.3 Preview 1:</p>
<blockquote class="stylized">
<p>I have just released Ruby 1.9.3 preview1. This is the first preview of Ruby 1.9.3 releases.</p>
<p>I know there are still minor known issues on 1.9.3 but I believe it will be fixed before the release of Ruby 1.9.3-p0. Let's try it out. If you have any trouble on it, please let us know it.</p>
</blockquote>
<p><cite>Yugui</cite></p>
<p>It's important to note that this is <em>not</em> the latest production release of Ruby 1.9 (that remains <a href="ruby-1-9-2-p290-released-the-lowdown-on-rubys-latest-production-release-5145.html">Ruby 1.9.2-p290</a> for now) but is a <em>preview</em> release so you can try out your libraries and other important code ahead of the full production release of Ruby 1.9.3-p0.</p>
<p>Pick up the tarfile of the release at <a href="http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-preview1.tar.gz">http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-preview1.tar.gz</a> if you fancy a crawl about. If you want to check it out with RVM, instructions follow.</p>
<h3>Key Updates</h3>
<p>Let's waltz through some of Ruby 1.9.3 preview 1's key updates over the existing Ruby 1.9.2:</p>
<ul>
<li>The load.c patch <a href="ruby-1-9-3-faster-loading-times-require-4927.html">discussed at length in this post</a> is in! Yes, faster loading times in Rails 3.x should now be yours to enjoy :-)</li>
<li>Previously Ruby has been released under a joint GPLv2 and <a href="http://www.ruby-lang.org/en/LICENSE.txt">"Ruby" license</a>. Ruby 1.9.3 is now licensed under a joint 2-clause BSD license and the "Ruby" license.</li>
<li>The <code>openssl</code> library has new maintainers and is, supposedly, a lot better for it.</li>
<li>
<code>io/console</code> is an all new library in the standard library. It's by Nobu Nakada and adds console capabilities to IO instances. On inclusion, it adds <code>raw</code>, <code>raw!</code>, <code>getch</code>, <code>echo=</code>, <code>echo?</code>, <code>noecho</code>, <code>winsize</code>, <code>winsize=</code>, <code>iflush</code>, <code>oflush</code>, <code>ioflush</code> methods to IO instances and offers a class method called <code>console</code>. I'll try and write about it soon.</li>
<li>
<code>test/unit</code> gains parallel test running support</li>
<li>Michael Edgar has made some significant improvments to Ripper, the built-in Ruby parser and parser hooks in 1.9. On Hacker News he suggests that <em>"it's close to being ready to power a full Ruby implementation at this point"</em>
</li>
<li>The <code>pathname</code> and <code>date</code> libraries were reimplemented in C, primarily for performance reasons. A quick benchmark shows <a href="https://gist.github.com/1117138">significant improvements</a> in Date's performance.</li>
</ul>
<p><strong>Ruby 1.9.3 is also specifically covered in our <a href="http://rubyinside.com/19walkthrough/">Ruby 1.9 Walkthrough</a>, a mega screencast aimed at Ruby 1.8.7 developers who want to learn all about what's new, what's gone, and what's different in Ruby 1.9.2 and 1.9.3.</strong></p>
<h3>How to Give 1.9.3 Preview 1 A Try With RVM</h3>
<p>If you're using <a href="https://rvm.beginrescueend.com/">RVM</a> to manage your Ruby installations (and you should - learn how in <a href="http://screencasts.org/episodes/how-to-use-rvm">this video</a>) and you want to give 1.9.3-preview1 a spin, try:</p>
<pre>rvm get head
rvm reload
rvm install 1.9.3-preview1
rvm use 1.9.3</pre>
<p>I wouldn't advise running an <code>rvm upgrade</code> at this time since it's not production-ready, but you can try installing your usual gems and, ideally, libraries that <em>you</em> develop and maintain so that we can all have a smooth upgrade to 1.9.3 in the next couple of months.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Kirill Maximov</strong> &middot; <time datetime="2011-08-01T16:05:00+00:00">August 1, 2011 at 4:05 pm</time></p>
      <p>If you have a error like:<br>
curl: (60) SSL certificate problem, verify that the CA cert is OK.</p><p>create $HOME/.curlrc file with contents "-k"</p><p>This should make curl happier :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonathan O'Connor</strong> &middot; <time datetime="2011-08-02T17:39:00+00:00">August 2, 2011 at 5:39 pm</time></p>
      <p>Hi, I tried 1.9.3 preview today, and sadly my rails 2.3.11 app is failing running tests. It also failed in ruby-head installed last Saturday. The problem is that rails is requiring helper files that don't exist. Everything works fine in 1.8.7 and 1.9.2, so I don't think this is a problem with Rails. Maybe it has to do with rubygems (version 1.8.6). Bundler is 1.0.15. Any ideas where I should report this problem.<br>
Short version of stack trace:<br>
/myapp/vendor/rails/activesupport/lib/active_support/dependencies.rb:184:in `require': cannot load such file -- action_view/test_case/test_helper (LoadError)<br>
	from /myapp/vendor/rails/activesupport/lib/active_support/dependencies.rb:184:in `require'<br>
	from /myapp/vendor/rails/activesupport/lib/active_support/dependencies.rb:291:in `require_or_load'<br>
	from /myapp/vendor/rails/activesupport/lib/active_support/dependencies.rb:250:in `depend_on'<br>
	from /myapp/vendor/rails/activesupport/lib/active_support/dependencies.rb:162:in `require_dependency'<br>
	from /myapp/vendor/rails/actionpack/lib/action_controller/helpers.rb:197:in `default_helper_module!'</p><p>Thanks</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alex Kahn</strong> &middot; <time datetime="2011-08-02T20:06:00+00:00">August 2, 2011 at 8:06 pm</time></p>
      <p>Does this mean that the new lazy sweep GC is not in 1.9.3-preview1 or is it just not mentioned in this post? I would love a link to an article that discusses the GC improvements.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://www.robzolkos.com/2011/08/60-faster-rails-bootup-with-rails-3-1-with-ruby-1-9-3/" rel="external nofollow" class="url">60% Faster Rails bootup with Rails 3.1 with Ruby 1.9.3 | Rob Zolkos</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="official-ruby-site-not-so-good-5248.html" rel="external nofollow" class="url">The Official Ruby Site Is Proudly Maintained by No-One</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ken Collins</strong> &middot; <time datetime="2011-08-07T23:01:00+00:00">August 7, 2011 at 11:01 pm</time></p>
      <p>I can confirm that GC tuning did indeed make it into 1.9.3.preview1, but it is a bit noisy. It will echo the new settings anytime the interpreter is invoked. I used this patch <a href="https://gist.github.com/1124322" rel="nofollow">https://gist.github.com/1124322</a> to disable the print statements when installing with RVM.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>rahul k</strong> &middot; <time datetime="2011-09-04T13:18:00+00:00">September 4, 2011 at 1:18 pm</time></p>
      <p>Peter<br>
I'd be very grateful if you could give some examples of using <em>io/console</em>. The tests run fine, but I am unable to print anything on screen using that code. Is there support for windows and panels ?</p><p>Thanks<br>
Rahul</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Neil</strong> &middot; <time datetime="2011-09-08T21:53:00+00:00">September 8, 2011 at 9:53 pm</time></p>
      <p>Looks like the date parsing still doesn't support american date formats :(</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-09-08T22:30:00+00:00">September 8, 2011 at 10:30 pm</time></p>
      <p>Not ideal but..</p><pre>Date.strptime('04/20/2008', '%m/%d/%Y')</pre>
    </li>
      <li>
      <p class="comment-meta"><strong>Neil</strong> &middot; <time datetime="2011-09-12T19:36:00+00:00">September 12, 2011 at 7:36 pm</time></p>
      <p>@PeterCooper what is your preferred way of monkeypatching this to work w/ Rails?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2011-09-20T16:11:00+00:00">September 20, 2011 at 4:11 pm</time></p>
      <p>Looking forward to finally have File.write</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="ruby-1-9-3-introduction-and-changes-5428.html" rel="external nofollow" class="url">Be Prepared for Ruby 1.9.3 and 1.9.4: What’s New and What’s Different</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
