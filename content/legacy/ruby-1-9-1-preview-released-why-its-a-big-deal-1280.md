---
title: 'Ruby 1.9.1 Preview Released: Why This Is A Big Deal'
date: '2008-10-29'
author: Peter Cooper
author_slug: admin
post_id: 1280
slug: ruby-1-9-1-preview-released-why-its-a-big-deal-1280
url: "/ruby-1-9-1-preview-released-why-its-a-big-deal-1280.html"
categories:
- news
---

{{< rawhtml >}}
<p><img src="/assets/2008/10/ruby19.png" width="73" height="72" alt="ruby19.png" style="float:left; margin-right:12px; margin-bottom:12px;">In <a href="http://www.ruby-lang.org/en/news/2008/10/28/ruby-1-9-1-preview-1-released/">an understated post</a> on the official Ruby blog last night, Yugui (Yuki Sonoda) <a href="http://www.ruby-lang.org/en/news/2008/10/28/ruby-1-9-1-preview-1-released/">announced</a> the release of Ruby 1.9.1-preview 1.</p>
<h3>Why To Get Excited</h3>
<p>A preview release? Why is this a big deal? A few reasons why Ruby 1.9.1 is significant, even as a preview release:</p>
<ul style="clear: left">
<li>Ruby 1.9.1 will be the first stable, production-ready release of the much anticipated Ruby 1.9 series.</li>
<li>The Ruby 1.9 branch is the cornerstone of Ruby's future. Much as PHP 5-style code is replacing PHP 4-style code, Ruby 1.9's idioms and style will eventually reign (even if it takes a few years).</li>
<li>As of Ruby 1.9.1-preview 1, the language features and changes are effectively "frozen." Changes to standard libraries for multilingual features are likely to continue, however.</li>
<li>Ruby 1.9.1-preview 1 allows you - as a developer - to test your code and libraries on what will eventually become the "default" Ruby.</li>
</ul>
<p>On that last point, as Dave Thomas says in <a href="http://pragdave.blogs.pragprog.com/pragdave/2008/10/ruby-191-preview-1-is-out.html">his release summary</a>:</p>
<blockquote><p>
  If you are the maintainer for any publicly available Ruby code (be it a Gem, an application, or whatever) I strongly urge you to download this preview. You'll be doing the community a great service in two ways. First, <strong>the various incompatibilities between 1.9 and 1.8 mean that there's a chance that your code may not work without some tweaks</strong>. Making those changes now will help others using your code.
</p></blockquote>
<h3>Getting Ruby 1.9.1-preview 1</h3>
<p>You can get Ruby 1.9.1-preview 1 in source form from the official ruby-lang.org FTP site at <a href="ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.1-preview1.tar.gz">ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.1-preview1.tar.gz</a> or via HTTP from <a href="http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.1-preview1.tar.gz">http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.1-preview1.tar.gz</a></p>
<p>If you find the ruby-lang.org server slow - as I do - I've made <a href="http://s3.amazonaws.com/ruby-inside/ruby-1.9.1-preview1.tar.gz">the .tar.gz available here from Amazon S3</a>, so you should be able to download it at full speed.</p>
<h3>Ruby 1.9 Resources</h3>
<p>When Ruby 1.9 was still quite new, James Edward Gray wrote the excellent "<a href="http://blog.grayproductions.net/articles/getting_code_ready_for_ruby_19">Getting Code Ready for Ruby 1.9.</a>" Much of it is still very relevant.</p>
<p>Almost a year ago, Sam Ruby wrote <a href="http://intertwingly.net/blog/2007/12/31/Porting-REXML-to-Ruby-1-9">a comprehensive set of notes on porting REXML to Ruby 1.9</a>.</p>
<p>Mauricio Fernandez's gargantuan "<a href="http://eigenclass.org/hiki.rb?Changes+in+Ruby+1.9">Changes in Ruby 1.9</a>" is still an excellent reference.</p>
<p>Got any Ruby 1.9 migration tips or tricks of your own? Please, leave a comment!</p>
<p class="s">Supported by: <strong><a href="http://gearsquare.com/actiongear/">ActionGear</a> is a menu-bar app for task management on your Mac.</strong> It's lightweight, quick, and helps you get stuff done. <strong><a href="http://gearsquare.com/actiongear/">Try it out for free.</a></strong></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Justin Halsall</strong> &middot; <time datetime="2008-10-29T21:34:00+00:00">October 29, 2008 at 9:34 pm</time></p>
      <p>Is it possible to run rails on ruby 1.9.1?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael Morin</strong> &middot; <time datetime="2008-10-30T04:48:00+00:00">October 30, 2008 at 4:48 am</time></p>
      <p>Rails 2.2 will run on Ruby 1.9.  I don't know about the current versions of Rails.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mathijs Kwik</strong> &middot; <time datetime="2008-10-30T08:04:00+00:00">October 30, 2008 at 8:04 am</time></p>
      <p>@Justin: I believe it is, at least rails 2.2 if I'm correct. But quite some gems/plugins aren't ready yet, so it really depends on your gem-needs.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Difei</strong> &middot; <time datetime="2008-10-30T09:58:00+00:00">October 30, 2008 at 9:58 am</time></p>
      <p>with rails &gt; 2.2.0, may be.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2008-10-31T19:34:00+00:00">October 31, 2008 at 7:34 pm</time></p>
      <p>Production ready, my a$$. You'd have to be fscking nuts to run any 1.9.x branch in production use at this point. When it's officially dubbed 2.0 then, and only then, should you even remotely consider using it for production.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alex</strong> &middot; <time datetime="2008-10-31T22:16:00+00:00">October 31, 2008 at 10:16 pm</time></p>
      <p>From what I understand, 2.0 will be further off than previously reported and including even more new features, and 1.9.1 will be the stable version for 1.9. At least, that's what Matz told us at LoneStar Ruby Conf this year...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Beoran</strong> &middot; <time datetime="2008-11-03T13:43:00+00:00">November 3, 2008 at 1:43 pm</time></p>
      <p>This is very great, I tried it and it speeds up my Ruby/SDL game by 100%. :)</p><p>However I would like to send an important message to all people who are writing Ruby extensions using the C API: update your code. Check for any place where you use RArray *arr; arr-&gt;ptr and arr-&gt;len. Now, it's not possible to use these anymore, you must use RARRAY_PTR(arr), and  RARRAY_LEN(ary), like you should have. I've seen this problem several times now, and I think it's due to the fact that many people didn't know that directly using RArray was deprecated, even in ruby 1.8.6.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dor Kalev</strong> &middot; <time datetime="2008-11-05T15:56:00+00:00">November 5, 2008 at 3:56 pm</time></p>
      <p>running some tests on 1.8 vs. 1.9.1 :</p><p>the testing function:</p><p>def prof(t = 1)<br>
  starting_time = Time.now<br>
  t.times { yield }<br>
  dlta = (Time.now - starting_time).to_f/t<br>
  puts "time: #{dlta.to_s}(s) . req/s: #{(1/dlta)}"<br>
end</p><p>prof(100) {a = (1..10000).collect { |i| i* 2}}<br>
1.8: time: 0.02187848(s) . req/s: 45.707014381255<br>
1.9: time: 0.00216260594(s) . req/s: 462.405092626352</p><p>a = (1..10000).collect { |i| i* 2}<br>
b = (5000..15000).collect { |i| i* 2}<br>
prof(1000) {a &amp; b}<br>
1.8: time: 0.00321087(s) . req/s: 311.442070217729<br>
1.9: time: 0.004361395498(s) . req/s: 229.284411482189</p><p>Ruby 1.9 showed amazing speed increase on many other parameters, that's true. I'm sure that in general it will boost performance amazingly. Yet I guess it can be even better.</p><p>(Thanks Boris (Peterbarg) for helping on this one!)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
