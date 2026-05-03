---
title: 'Interesting Ruby Tidbits That Don’t Need Separate Posts #16'
date: '2008-02-09'
author: Peter Cooper
author_slug: admin
post_id: 743
slug: interesting-ruby-tidbits-that-dont-need-separate-posts-16-743
url: "/interesting-ruby-tidbits-that-dont-need-separate-posts-16-743.html"
categories:
- compilations
- miscellaneous
- news
- tools
---

{{< rawhtml >}}
<p><big><strong>ruby-prof 0.6.0 Released</strong></big></p>
<p>Charlie Savage wants to get the word out about <a href="http://cfis.savagexi.com/articles/2008/02/03/ruby-prof-0-6-0-and-memory-profiling">the latest release</a> of <a href="http://rubyforge.org/projects/ruby-prof">ruby-prof</a>, 0.6.0. ruby-prof is an amazing Ruby profiler that's both faster and more detailed than the standard "profile" library that comes with Ruby. The biggest news is that 0.6.0 supports Ruby 1.9, and Charlie suggests that ruby-prof may even become an official part of Ruby in the future. Experimental support for memory profiling has also been added. This is a great update of one of the best Ruby tools. Charlie also wanted to stress that most of the work in this release was done by Shugo Maeda.</p>
<p><big><strong>New Pragmatic Programmers Release: "Rails for PHP Developers" Book Now Shipping</strong></big></p>
<p><img src="/assets/2008/02/sidebar-book1.jpg" width="126" height="151" alt="sidebar_book.gif" style="border:1px #000000 solid;"></p>
<p>The Pragmatic Programmers are now shipping <a href="http://www.pragprog.com/titles/ndphpr">"Rails for PHP Developers"</a> by Derek DeVries and Mike Naberezny. The book takes the approach that its reader will be a proficient PHP coder, and demonstrates the ideal way to convert their thinking from PHP over to Rails / Ruby. I'm quite surprised a book like this hasn't come out already. I haven't read the book or had a preview at all, but <a href="http://railsforphp.com/">the well-written blog</a> backing the launch of the book gives me enough confidence to recommend it to PHP developers none-the-less.</p>
<p><big><strong>Workling: Another alternative to BackgroundDRb, beanstalkd, Thruqueue, spawn...</strong></big></p>
<p>Rany Keddo wrote in with <a href="http://playtype.net/past/2008/2/6/starling_and_asynchrous_tasks_in_ruby_on_rails/">news of a new asynchronous processing plugin called Workling</a>. It's based on <a href="http://rubyforge.org/projects/starling/">Starling</a>, the persistent queueing daemon released by Twitter recently. Rany posts an interesting quote from Evan Weaver which highlights various problems with the alternatives, such as <a href="http://backgroundrb.rubyforge.org/">BackgrounDRb</a>, Spawn, Thruqueue and BackgroundFu. It's still early days but Workling could be an interesting, and more stable, alternative to all the other systems currently in play in this area.</p>
<p><big><strong>Ruby.NET is dead, cedes to IronRuby - the other "Ruby.NET"</strong></big></p>
<p>A few days ago David Lake pointed out <a href="http://groups.google.com/group/RubyDOTNET/browse_thread/thread/1752830c857620b0#f34570019c391974">this post</a> about the "demise" of Ruby.NET to me. Initially I wasn't particularly interested, as I don't understand the .NET space too well or its relevance to Ruby. Clearly a lot of people <span style="font-style: italic;">do</span> get it, however, and there have been quite a lot of references to Ruby.NET's demise in the blogosphere. Two references worth reading are <a href="http://on-ruby.blogspot.com/2008/02/rubynet-is-dead-long-live-rubynet.html">On Ruby's post</a> and a <a href="http://www.regdeveloper.co.uk/2008/02/05/ruby_dot_net_ends/">post at RegDeveloper</a>. The focus on a .NET-powered Ruby implementation therefore switches to Microsoft's own <a href="http://www.ironruby.net/">IronRuby</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Mark Thomas</strong> &middot; <time datetime="2008-02-09T22:36:00+00:00">February 9, 2008 at 10:36 pm</time></p>
      <p>I just started using spawn... it makes background processing super-simple. This is all you have to do:</p><p>spawn do<br>
  #background process here<br>
end</p><p>Of course, there are other options, choice of forking or threading, etc. but so far I am extremely pleased with it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>rany</strong> &middot; <time datetime="2008-02-10T10:41:00+00:00">February 10, 2008 at 10:41 am</time></p>
      <p>@mark: we started out exactly like this. spawn is great and very simple to use. but as evan points out: if you just want to fire and forget a local process as you say, spawn is pretty good. on the other hand, you don’t get any message reliability or cross-machine scheduling.</p><p>with workling i don't need to decide. i can use the spawn runner, and all that does internally is yield to spawn in a few lines of code. if i want to step up to remote machines, all you need is one line in your environment.rb: </p><p>Workling::Remote.dispatcher = Workling::Remote::Runners::StarlingRunner.new</p><p>that said, if all you're ever going to want is spawn, you probably don't need workling or starling.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>john</strong> &middot; <time datetime="2008-02-11T16:10:00+00:00">February 11, 2008 at 4:10 pm</time></p>
      <p>Pining for the fields:</p><p>Appears to be not dead yet.<br>
<a href="http://weblog.infoworld.com/techwatch/archives/015832.html" rel="nofollow">http://weblog.infoworld.com/techwatch/archives/015832.html</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
