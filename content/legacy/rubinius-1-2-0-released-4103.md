---
title: 'Rubinius 1.2 Released: A Blog, Better Documentation and More of a Good Thing'
date: '2010-12-22'
author: Peter Cooper
author_slug: admin
post_id: 4103
slug: rubinius-1-2-0-released-4103
url: "/rubinius-1-2-0-released-4103.html"
categories:
- news
---

{{< rawhtml >}}
<p><img src="/assets/2010/12/rubinius.png" width="85" height="88" alt="rubinius.png" style="float:left; margin-right:12px; margin-bottom:12px;">Three months on from the 1.1 release, <a href="http://rubini.us/">Rubinius</a> 1.2 has <a href="http://dev.rubini.us/releases/1.2.0/">hit the streets</a> bringing together 242 commits from 10 developers. As well as the typical bugfixes and performance tweaks that come with any implementation update, 1.2 brings some underlying structural changes that set up the path to getting better Windows support, Ruby 1.9 support, and the removal of the much-loathed GIL (Global Interpreter Lock) in future releases.</p>
<h3>Documentation A Priority</h3>
<p>1.2 also sees some leaps forward in the documentation department, led by Brian Ford of Engine Yard. There's now <a href="http://dev.rubini.us/doc/en/">multilingual documentation</a> available on the Web in English, German, Spanish, Japanese, and Russian (but with many holes - that's where your help is needed). There have been lots of improvements to the Rubinius site in general, including <a href="http://dev.rubini.us/blog/">a Rubinius blog</a> (subscribe to this if Rubinius is your bag!) and <a href="http://dev.rubini.us/projects/">a page listing all of the projects</a> that use Rubinius' VM technology to power things like JavaScript, Scheme and Lua interpreters.</p>
<p>Brian Ford is keen to get more people involved in the Rubinius documentation effort, especially people who speak non-English languages (Japanese in particular):</p>
<blockquote class="stylized">
<p>Rubinius is all about empowering Ruby developers and other language developers. Even though we write a ton of the system in Ruby, we want to make it even easier to understand how to implement Ruby. The documentation project is intended to explain the ins and outs of implementing Ruby and a dynamic language VM in general.</p>
<p>We also think it's very important to make the knowledge available with as little barrier to understanding as possible. The effort to translate the documentation to other languages is our attempt to make Rubinius as useful and as empowering as possible. We need your help to make this a reality.</p>
</blockquote>
<p><cite>Brian Ford</cite></p>
<p>If you're keen to help out, check out <code>#rubinius</code> on <code>irc.freenode.net</code> or check out the <a href="http://dev.rubini.us/2010/12/15/rubinius-has-a-blog/">first post on Rubinius' new blog</a> on this very topic.</p>
<h3>Want to know more?</h3>
<p>Read <a href="http://dev.rubini.us/releases/1.2.0/">the release notes</a> or get started with Rubinius 1.2.0 right now by using <code>rvm install rbx</code> or one of the installers available from <a href="http://rubini.us/">the Rubinius home page</a>. Rubinius has special binary installers for Mac OS X 10.5 and 10.6 and they're the easiest way to get going on those systems.</p>
<p class="s" style="padding: 8px; background-color: #ff9"><em>[A new thing from Ruby Inside]</em> Peter Cooper, editor of Ruby Inside, is running <a href="http://codelesson.com/ruby">a 4 week "introduction to Ruby" course</a> in association with CodeLesson.com. We'll be going from bare basics so it's ideal for non-Rubyists you need to train up or even 'higher ups' who want to get into the swing of Ruby. It costs $295 and there are discounts for multiple student signups. Oh, and there'll be plenty of opportunities for live chats and help - check it out!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>sgwong</strong> &middot; <time datetime="2010-12-22T01:52:00+00:00">December 22, 2010 at 1:52 am</time></p>
      <p>Does rubinius has any website for its speed benchmark? Something like <a href="http://speed.pypy.org/" rel="nofollow">http://speed.pypy.org/</a> which is really great tool to look at the speed.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brian Ford</strong> &middot; <time datetime="2010-12-22T08:12:00+00:00">December 22, 2010 at 8:12 am</time></p>
      <p>There appears to be some confusion reading this sentence:</p><p>"... 1.2 brings some underlying structural changes to set it on the way to getting better Windows support, Ruby 1.9 support, and the removal of the much-loathed GIL (Global Interpreter Lock)."</p><p>That *does not* say the GIL is removed in 1.2. Nor is there Windows support or 1.9 support in 1.2. The sentence says we have been laying the groundwork for all those things. The Windows and 1.9 work is further along in the multiverse branch, and the GIL removal work is in the hydra branch.</p><p>Hope this clarifies.</p><p>Cheers.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-22T08:48:00+00:00">December 22, 2010 at 8:48 am</time></p>
      <p>I've reworded it a bit to make it clearer that these features are coming later.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jon Leighton</strong> &middot; <time datetime="2010-12-22T09:27:00+00:00">December 22, 2010 at 9:27 am</time></p>
      <p>Brian - There doesn't seem to be an RSS feed for the blog?! Thanks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>funny_falcon</strong> &middot; <time datetime="2010-12-22T22:34:00+00:00">December 22, 2010 at 10:34 pm</time></p>
      <p>Performance test of simple sinatra application running on webrick:</p><p><a href="http://funny-falcon-en.blogspot.com/2010/12/rubinius-120.html" rel="nofollow">http://funny-falcon-en.blogspot.com/2010/12/rubinius-120.html</a><br>
<a href="https://gist.github.com/752120" rel="nofollow">https://gist.github.com/752120</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hubert Łępicki</strong> &middot; <time datetime="2010-12-27T09:44:00+00:00">December 27, 2010 at 9:44 am</time></p>
      <p>I would love to see some proper performance benchmarks of Rubinius 1.2. Just tried it, it looks OK, but Ruby 1.9.2 is still faster according to my own (poor) benchmarks.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
