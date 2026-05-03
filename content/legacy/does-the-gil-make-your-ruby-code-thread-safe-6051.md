---
title: Does the GIL Make Your Ruby Code Thread-Safe?
date: '2013-06-19'
author: Jesse Storimer
author_slug: jstorimer
post_id: 6051
slug: does-the-gil-make-your-ruby-code-thread-safe-6051
url: "/does-the-gil-make-your-ruby-code-thread-safe-6051.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img style="float: right;margin-right: 18px;margin-bottom: 18px" src="/assets/2013/06/lock.png" alt="" width="125" height="125"><strong><em>This is a guest post by <a href="http://www.jstorimer.com/">Jesse Storimer</a>. He teaches the <a href="http://www.jstorimer.com/products/unix-fu-workshop?utm_source=ri&amp;utm_medium=web&amp;utm_campaign=gil-3">Unix fu workshop</a>, an online class for Ruby developers looking to do some awesome systems hacking in Ruby and boost their confidence when it comes to their server stack. Spots are limited, so check it out the class while there's still room. He's also the esteemed author of <a href="http://www.jstorimer.com/products/working-with-unix-processes">Working with Unix Processes</a>, <a href="http://www.jstorimer.com/products/working-with-tcp-sockets">Working with TCP Sockets</a> and <a href="http://www.jstorimer.com/products/working-with-ruby-threads">Working with Ruby Threads.</a></em></strong></p>
<p>There are some misconceptions in the Ruby community about this question surrounding MRI's GIL. If you only take one thing away from this article today, let it be this: <strong>The GIL does not make your Ruby code thread-safe.</strong></p>
<p>But you shouldn't take my word for it.</p>
<p>This series started off just trying to understand what the GIL is at a technical level. <a href="http://www.jstorimer.com/blogs/workingwithcode/8085491-nobody-understands-the-gil">Part 1</a> explained how race conditions could occur in the C code that's used to implement MRI. Yet, the GIL seemed to eliminate that risk, at least for the <code>Array#&lt;&lt;</code> method we looked at.</p>
<p><a href="http://www.jstorimer.com/blogs/workingwithcode/8100871-nobody-understands-the-gil-part-2-implementation">Part 2</a> confirmed that the GIL did, in fact, make MRI's native C method implementations atomic. In other words, these native implementations were free from race conditions. These guarantees only applied to MRI's native C functions, not to the Ruby that your write. So we were left with a lingering question:</p>
<blockquote><p>Does the GIL provide any guarantee that your Ruby code will be thread-safe?</p></blockquote>
<p>I've already answered that question. Now I want to make sure that the misconception doesn't go any further.</p>
<h2>Race conditions redux</h2>
<p>Race conditions exist when some piece of data is shared between multiple threads, and those threads attempt to act on that data at the same time. When this happens without some kind of synchronization, like locking, your program can start to do unexpected things and data can be lost.</p>
<p>Let's step back and recap how such a race condition can occur. We'll use the following Ruby code example for this section:</p>
<div class="highlight">
<pre><span class="k">class</span> <span class="nc">Sheep</span>
  <span class="k">def</span> <span class="nf">initialize</span>
    <span class="vi">@shorn</span> <span class="o">=</span> <span class="kp">false</span>
  <span class="k">end</span>

  <span class="k">def</span> <span class="nf">shorn?</span>
    <span class="vi">@shorn</span>
  <span class="k">end</span>

  <span class="k">def</span> <span class="nf">shear!</span>
    <span class="nb">puts</span> <span class="s2">"shearing..."</span>
    <span class="vi">@shorn</span> <span class="o">=</span> <span class="kp">true</span>
  <span class="k">end</span>
<span class="k">end</span></pre>
</div>
<p>This class definition should be nothing new. A <code>Sheep</code> is not shorn when initialized. The <code>shear!</code> method performs the shearing and marks the sheep as shorn.</p>
<p><a href="/assets/2013/06/sheep.jpg"><img class="size-medium wp-image-6063 alignleft" src="/assets/2013/06/sheep-300x220.jpg" alt="" width="210" height="154"></a></p>
<div class="highlight">
<pre><span class="n">sheep</span> <span class="o">=</span> <span class="no">Sheep</span><span class="o">.</span><span class="n">new</span>

<span class="mi">5</span><span class="o">.</span><span class="n">times</span><span class="o">.</span><span class="n">map</span> <span class="k">do</span>
  <span class="no">Thread</span><span class="o">.</span><span class="n">new</span> <span class="k">do</span>
    <span class="k">unless</span> <span class="n">sheep</span><span class="o">.</span><span class="n">shorn?</span>
      <span class="n">sheep</span><span class="o">.</span><span class="n">shear!</span>
    <span class="k">end</span>
  <span class="k">end</span>
<span class="k">end</span><span class="o">.</span><span class="n">each</span><span class="p">(</span><span class="o">&amp;</span><span class="ss">:join</span><span class="p">)</span></pre>
</div>
<p>The bit of code creates a new sheep and spawns 5 threads. Each thread races to check if the sheep has been <code>shorn?</code> If not, it invokes the <code>shear!</code> method.</p>
<p>Here's the result I see from running this on MRI 2.0 several times.</p>
<div class="highlight">
<pre><span class="gp">$</span> ruby check_then_set.rb
<span class="go">shearing...</span>
<span class="gp">$</span> ruby check_then_set.rb
<span class="go">shearing...</span>
<span class="go">shearing...</span>
<span class="gp">$</span> ruby check_then_set.rb
<span class="go">shearing...</span>
<span class="go">shearing...</span></pre>
</div>
<p>Sometimes the same sheep is being shorn twice!</p>
<p><strong>If you were under the impression that the GIL made your code 'just work' in the presence of multiple threads, this should dispel that.</strong> The GIL can make no such guarantee. Notice that the first time running the file, the expected result was produced. In subsequent runs, unexpected output was produced. If you continued running the example, you'll see still different variations.</p>
<p>These unexpected results are due to a race condition in your Ruby code. It's actually a common enough race condition that there's a name to describe this pattern: <strong>a check-then-set race condition</strong>. In a check-then-set race condition, two or more threads check a value, then set some state based on that value. With nothing to provide atomicity, it's possible that two threads race past the 'check' phase, then both perform the 'set' phase.</p>
<h2>Recognizing race conditions</h2>
<p>Before we look at how to fix this, first I want you to understand how to recognize this. I owe <a href="https://twitter.com/brixen">@brixen</a> for introducing to me the terminology of <em>interleavings</em> in the context of concurrency. It's really helpful.</p>
<p>Remember that a context switch can occur on any line of your code. When switching from one thread to another, imagine your program being chopped up into a set of discrete blocks. This sequential set of blocks is a set of interleavings.</p>
<p>At one end of the spectrum, it's possible that there's a context switch after every line of code! This set of interleavings would have each line of code interleaved. At the other end of the spectrum, it's possible that there are no context switches during the body of the thread. This set of interleavings would have all the code in its original order for each thread. In between these two ends, there are lots of ways that your program can be chopped up and interleaved.</p>
<p>Some of these interleavings are OK. Not every line of code introduces a race condition. But imagining your programs as a set of possible interleavings can help you recognize when race conditions <em>do</em> occur. I'll use a series of diagrams to show this code may be interleaved by two Ruby threads.</p>
<p><a href="/assets/2013/06/interleavings-legend-100.png"><img class="alignnone size-full wp-image-6088" src="/assets/2013/06/interleavings-legend-100.png" alt="" width="457" height="200"></a></p>
<p><em>Just to make the diagrams simpler, I replaced the <code>shear!</code> method call with the code from the body of the method.</em></p>
<p>Consider this diagram the legend for the ones to follow; the code highlighted in red is the set of interleavings from <em>Thread A</em>, the code highlighted in blue is the set of interleavings from <em>Thread B</em>.</p>
<p>Now let's see how this code could be interleaved by simulating context switches. The simplest case is if neither thread is interrupted during the course of executing this code. This would result in no race conditions and would produce the expected output for us. That might look like this:</p>
<p><a href="/assets/2013/06/interleavings-first-100.png"><img class="alignnone size-full wp-image-6092" src="/assets/2013/06/interleavings-first-100.png" alt="" width="473" height="358"></a></p>
<p>Now I've organized the diagram so you can see the sequential ordering of events. <strong>Remember that the GIL locks around the execution of Ruby code, so two threads can't truly run in parallel</strong>. The ordering of events here is sequential, starting at the top and working down.</p>
<p>In this interleaving, <em>Thread A</em> did all of its work, then the thread scheduler triggered a context switch to <em>Thread B</em>. Since <em>Thread A</em> had already done the shearing and updated the <code>shorn</code> variable, <em>Thread B</em> didn't have anything to do.</p>
<p>But it isn't always this simple. Remember that the thread scheduler could trigger a context switch at <em>any</em> point in this block of code. This time we just got lucky.</p>
<p>Let's look at a more nefarious example, one that would produce unexpected output for us.</p>
<p><a href="/assets/2013/06/interleavings-first-variation-100.png"><img class="alignnone size-full wp-image-6091" src="/assets/2013/06/interleavings-first-variation-100.png" alt="" width="462" height="451"></a></p>
<p>In this possible interleaving, the context switch occurs right at a point that can cause trouble. <em>Thread A</em> checks the condition and starts shearing. Then the thread scheduler schedules a context switch and <em>Thread B</em> takes over. Even though <em>Thread A</em> already performed the shearing, it didn't get a chance to update the <code>shorn</code> attribute yet, so <em>Thread B</em> doesn't know about it.</p>
<p><em>Thread B</em> checks the condition for itself, finds it to be <code>false</code>, and shears the sheep again. Once it finishes, <em>Thread A</em> is scheduled again and finishes execution. Even though <em>Thread B</em> set <code>shorn = true</code> when it ran through the code, <em>Thread A</em> does it again because it picks up exactly where it left off.</p>
<p>A sheep getting shorn twice may not seem like much to care about, but replace sheep with invoice, and shearing with collecting payment; we would have some unhappy customers!</p>
<p>I'll share one more example to illustrate the non-deterministic nature of things here.</p>
<p><a href="/assets/2013/06/interleavings-take4-100.png"><img class="alignnone size-full wp-image-6093" src="/assets/2013/06/interleavings-take4-100.png" alt="" width="468" height="451"></a></p>
<p>This just adds more context switches, so each thread progresses a little bit at a time, but keeps switching back and forth. Let your mind take this to its logical conclusion, it's possible for a context switch to happen on any line of the program. The interleaving that occurs can also be different each time the code is executed, so it may produce the expected result on one iteration, and an unexpected result the next time around.</p>
<p>This is really a great way to think about race conditions. When you're writing multi-threaded code, you want to be thinking about how the program might be chopped up and interleaved, and the effects of various interleavings. If it seems that some interleavings will lead to incorrect results, you should re-think your approach to the problem or introduce synchronization with <code>Mutex</code>.</p>
<h2>This is terrible!</h2>
<p>At this point it seems fitting to tell you that you can make this code example thread-safe by introducing synchronization with <code>Mutex</code>. It's true, you <a href="https://gist.github.com/jstorimer/5802725">can do that</a>. But I intentionally cooked up this example to prove a point;  it's terrible code. You shouldn't write code like this in a multi-threaded environment.</p>
<p>Whenever you have multiple threads sharing a reference to an object, and making modifications to it, you're going to run into trouble unless you have some kind of locking in place to prevent a context switch from happening in the middle of the modification.</p>
<p>However, this particular race condition is easily solvable without explicitly using locks in your code. Here's one solution using <code>Queue</code>:</p>
<div class="highlight">
<pre><span class="nb">require</span> <span class="s1">'thread'</span>

<span class="k">class</span> <span class="nc">Sheep</span>
  <span class="c1"># ...</span>
<span class="k">end</span>

<span class="n">sheep</span> <span class="o">=</span> <span class="no">Sheep</span><span class="o">.</span><span class="n">new</span>
<span class="n">sheep_queue</span> <span class="o">=</span> <span class="no">Queue</span><span class="o">.</span><span class="n">new</span>
<span class="n">sheep_queue</span> <span class="o">&lt;&lt;</span> <span class="n">sheep</span>

<span class="mi">5</span><span class="o">.</span><span class="n">times</span><span class="o">.</span><span class="n">map</span> <span class="k">do</span>
  <span class="no">Thread</span><span class="o">.</span><span class="n">new</span> <span class="k">do</span>
    <span class="k">begin</span>
      <span class="n">sheep</span> <span class="o">=</span> <span class="n">sheep_queue</span><span class="o">.</span><span class="n">pop</span><span class="p">(</span><span class="kp">true</span><span class="p">)</span>

      <span class="n">sheep</span><span class="o">.</span><span class="n">shear!</span>
    <span class="k">rescue</span> <span class="no">ThreadError</span>
      <span class="c1"># raised by Queue#pop in the threads</span>
      <span class="c1"># that don't pop the sheep</span>
    <span class="k">end</span>
  <span class="k">end</span>
<span class="k">end</span><span class="o">.</span><span class="n">each</span><span class="p">(</span><span class="o">&amp;</span><span class="ss">:join</span><span class="p">)</span></pre>
</div>
<p>I left out the <code>Sheep</code> implementation because it's the same. Now, instead of each thread sharing the <code>sheep</code> object and racing to shear it, the <code>Queue</code> provides the synchronization.</p>
<p>If you run this against MRI, or any of the other truly parallel Ruby implementations, it will produce the expected result every time. <strong>We've eliminated the race condition in this code.</strong> Even though all the threads may call the <code>Queue#pop</code> method at more-or-less the same time, it uses a <code>Mutex</code> internally to ensure that only one thread can receive the sheep.</p>
<p>Once this single thread receives the sheep, the race condition disappears. With just one thread, there's no one else to race with!</p>
<p>The reason I suggest using <code>Queue</code> instead of a lock is that its simpler to use a Queue correctly. Locks are notoriously easy to get wrong. They bring new concerns like deadlocking and performance degradations when used incorrectly. Using a data structure is like depending on an abstraction. It wraps up the tricky stuff in a more restrictive, but simpler API.</p>
<h2>Lazy initialization</h2>
<p>I'll just quickly point out that lazy initialization is another form of the the check-then-set race condition. The <code>||=</code> operator effectively expands to</p>
<div class="highlight">
<pre><span class="vi">@logger</span> <span class="o">||=</span> <span class="no">Logger</span><span class="o">.</span><span class="n">new</span>

<span class="c1"># expands to </span>

<span class="k">if</span> <span class="vi">@logger</span> <span class="o">==</span> <span class="kp">nil</span>
  <span class="vi">@logger</span> <span class="o">=</span> <span class="no">Logger</span><span class="o">.</span><span class="n">new</span>
<span class="k">end</span>

<span class="vi">@logger</span></pre>
</div>
<p>Look at the expanded version and imagine where the interleavings could occur. With multiple threads and no synchronization, it's definitely possible for that <code>@logger</code> to be initialized twice. Again, initializing a <code>Logger</code> twice may not be a problem in this case, but I have seen bugs like this <a href="https://github.com/krisleech/wisper/commit/38c7783887a5dabdb7d7c93910dcedbf6d94f308">in the wild</a> that <em>do</em> cause issues.</p>
<h2>Reflections</h2>
<p>I want to leave you with some lessons at the end of all this.</p>
<p>4 out of 5 dentists agree that multi-threaded programming is hard to get right.</p>
<p>At the end of the day, all that the GIL guarantees is that MRI's native C implementations of Ruby methods will be executed atomically (but even this has <a href="http://www.jstorimer.com/blogs/workingwithcode/8100871-nobody-understands-the-gil-part-2-implementation#comment-930773796">caveats</a>). This behaviour can sometimes help us as Ruby developers, but the GIL is really there for the protection of MRI internals, not as a dependable API for Ruby developers.</p>
<p>So the GIL doesn't 'solve' thread-safety issues. As I said, getting multi-threaded programming right is hard, but we solve hard problems every day. One way that we work with hard problems is with good abstractions.</p>
<p>For example, when I need to do an HTTP request in my code, I need to use a socket. But I don't usually use a socket directly, that would be cumbersome and error-prone. Instead, I use an abstraction. An HTTP client provides a more restrictive, simpler API that hides the socket interactions and associated edge cases from me.</p>
<p>If multi-threaded programming is hard to get right, maybe you shouldn't be doing it directly.</p>
<blockquote>
<p>"If you add a thread to your application, you've probably added five new bugs in doing so."</p>
<p>- <a href="http://www.rubyinside.com/twitter.com/mperham">Mike Perham</a></p>
</blockquote>
<p>We're seeing more and more abstractions around threads. An approach that's catching on in the Ruby community is the Actor model of concurrency, with the most popular implementation being <a href="http://celluloid.io">Celluloid</a>. Celluloid provides a great abstraction that marries concurrency primitives to Ruby's object model. Celluloid can't guarantee that your code will be thread-safe or free from race conditions, but it wraps up best practices. I encourage you <a href="https://github.com/celluloid/celluloid/wiki/Basic-usage">give Celluloid</a> <a href="http://railscasts.com/episodes/367-celluloid">a try</a>.</p>
<p>These problems that we're talking about aren't specific to Ruby or MRI. This is the reality of programming in a multi-core world. The number of cores on our devices is only going up, and MRI is still figuring out its answer to this situation. Despite its guarantees, the GIL's restriction on parallel execution seems like the wrong direction. This is part of MRI's growing pains. Other implementations, like JRuby and Rubinius, are running truly parallel with no GIL.</p>
<p>We're seeing lots of new languages that have concurrency abstractions built-in at the core of the language. The Ruby language doesn't have any of this, at least not yet. Another benefit of relying on abstraction is that the abstractions can improve their implementation, while your code remains unchanged. For example, if the implementation of Queue switched from relying on locks to using <a href="https://gist.github.com/jstorimer/5298581">lock-free synchronization</a>, your code would reap the benefits without any modification.</p>
<p>For the time being, Ruby developers should educate themselves about these issues! Learn about concurrency. Be aware of race conditions. Thinking about code as interleavings can help you reason about race conditions.</p>
<p>I'll leave off with a quote that's influencing much of the work being done in the larger field of concurrency today:</p>
<blockquote><p>Don't communicate by sharing state; share state by communicating.</p></blockquote>
<p>Using data structures for synchronization supports this; the Actor model supports this. This idea is at the core of the concurrency model of languages like Go, Erlang, and others.</p>
<p>Ruby needs to look to what's working in other languages and embrace it. As a Ruby developer, you can do this today by trying out and supporting some of these alternative approaches. With more people on board, these approaches could become the new standard for Ruby.</p>
<p><em>Thanks to Brian Shirai for reviewing a draft of this.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Bob</strong> &middot; <time datetime="2013-06-19T15:42:00+00:00">June 19, 2013 at 3:42 pm</time></p>
      <p>Nice article.  In your reflections, I think your quip should have said: "5 out of 4 dentists agree that multi-threaded programming is hard to get right."</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Soleone</strong> &middot; <time datetime="2013-06-20T14:18:00+00:00">June 20, 2013 at 2:18 pm</time></p>
      <p>Anazing read, thanks for putting that together! Looking forward to possibly more guest posts? :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alexandr</strong> &middot; <time datetime="2013-06-20T15:19:00+00:00">June 20, 2013 at 3:19 pm</time></p>
      <p>Hello, Jesse!<br>
<cite><br>
5.times.map do<br>
  Thread.new do<br>
    begin<br>
      new_sheep = sheep_queue.pop(true)</cite></p><p>      unless sheep.shorn?<br>
      	sheep.shear!<br>
      end<br>
    rescue ThreadError<br>
      # raised by Queue#pop in the threads<br>
      # that don't pop the sheep<br>
    end<br>
  end<br>
end.each(&amp;:join)<br>
<br>
is not a rewrite of a Mutex version <cite>unless sheep.shorn?</cite> which would look like<br>
<cite><br>
mutex = Mutex.new<br>
5.times.map do<br>
  Thread.new do<br>
  	mutex.synchronize do<br>
             unless sheep.shorn?<br>
                  sheep.shear!<br>
             end<br>
  	end<br>
  end<br>
end.each(&amp;:join)<br>
</cite><br>
, but a version without any sheep.shorn? checking like that<br>
<cite><br>
mutex = Mutex.new<br>
5.times.map do<br>
  Thread.new do<br>
  	mutex.synchronize do<br>
  		begin<br>
    		sheep.shear!<br>
    		sheep = nil<br>
  		rescue<br>
  		end<br>
  	end<br>
  end<br>
end.each(&amp;:join)<br>
</cite></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alex</strong> &middot; <time datetime="2013-06-21T06:05:00+00:00">June 21, 2013 at 6:05 am</time></p>
      <p>Hello!</p><p>Like this article about GIL. What you mean by "this would work without GIL on Java"? What I need to do?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jesse Storimer</strong> &middot; <time datetime="2013-06-21T11:50:00+00:00">June 21, 2013 at 11:50 am</time></p>
      <p>Alex: not sure what you're referring to, can you give more context?</p><p>Soleone: Thanks! More coming soon :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brian</strong> &middot; <time datetime="2013-06-21T18:34:00+00:00">June 21, 2013 at 6:34 pm</time></p>
      <p>I think what Alex is trying to say is that checking <code>sheep.shorn?</code> is not needed, since <code>sheep_queue.pop(true)</code> will raise <code>ThreadError</code> if the queue is empty. The <code>Queue</code> has eliminated the chance of the sheep being sheared twice.</p><p>So the example could be:</p><p><code><br>
Thread.new do<br>
  begin<br>
    sheep_queue.pop(true).shear!<br>
  rescue ThreadError<br>
  end<br>
end<br>
</code></p><p>Or even:</p><p><code><br>
Thread.new do<br>
  sheep = sheep_queue.pop(true) rescue nil<br>
  sheep.shear! if sheep<br>
end<br>
</code></p><p>Unless <code>Sheep#shear!</code> could raise <code>BrokenShearsError</code> :)</p><p>Ruby Inside: These comments really need a preview button. (hope I got it right)</p><p>Jessie: I've really enjoyed your work. Keep it up!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jesse Storimer</strong> &middot; <time datetime="2013-06-25T14:32:00+00:00">June 25, 2013 at 2:32 pm</time></p>
      <p>Brian, Alex: I understand what you're saying now. You're exactly right. The data structure ensures that only one thread will shear the sheep, so the conditional is unnecessary. I updated the code example accordingly.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
