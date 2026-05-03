---
title: 'Efficient Debugging Messages: Why Unnecessary Method Calls Are Bad Mmmkay?'
date: '2006-11-07'
author: Peter Cooper
author_slug: admin
post_id: 294
slug: efficient-debugging-messages-why-unnecessary-method-calls-are-bad-mmmkay-294
url: "/efficient-debugging-messages-why-unnecessary-method-calls-are-bad-mmmkay-294.html"
categories:
- miscellaneous
- ruby-tricks
---

{{< rawhtml >}}
<p>I'm creating a library that sorely needs a 'debug mode' where each step of what the library does is printed to the screen for developers to check out.  I wanted the debug mode to be easy to set and for the debug messages to be as non-intrusive as possible. Initially I arranged it in such a fashion:</p>
<pre><span class="keyword">class </span><span class="class">MyLibrary</span>
  <span class="keyword">def </span><span class="method">initialize</span><span class="punct">(</span><span class="ident">options</span> <span class="punct">=</span> <span class="punct">{})</span>
	<span class="comment"># Set @debug here if necessary</span>
  <span class="keyword">end</span>

  <span class="keyword">def </span><span class="method">debug_message</span><span class="punct">(</span><span class="ident">msg</span><span class="punct">)</span>
    <span class="keyword">return</span> <span class="constant">false</span> <span class="keyword">unless</span> <span class="attribute">@debug</span>
    <span class="comment"># Print debug message in certain way here</span>
  <span class="keyword">end</span>

  <span class="keyword">def </span><span class="method">do_something</span>
    <span class="comment"># Do stuff here and in other methods</span>
    <span class="ident">debug_message</span> <span class="punct">"</span><span class="string">Such and such message</span><span class="punct">"</span>
    <span class="comment"># Do more stuff</span>
  <span class="keyword">end</span>
<span class="keyword">end</span></pre>
<p>Each debug message was a simple method call to a routine that only printed the message if debug mode was activated. Simple! I forgot all about it and carried on work.</p>
<p>Later on I decided to benchmark my library with debugging more <em>off</em>. I got average times of 2.7 seconds to perform the heaviest test task with my library 1000 times over. I set out looking for optimizations, and decided to try a different approach with the debugging messages to avoid calling the <em>debug_message</em> method hundreds of times per run:</p>
<pre><span class="keyword">class </span><span class="class">MyLibrary</span>
  <span class="keyword">def </span><span class="method">initialize</span><span class="punct">(</span><span class="ident">options</span> <span class="punct">=</span> <span class="punct">{})</span>
	<span class="comment"># Set @debug here if necessary</span>
  <span class="keyword">end</span>

  <span class="keyword">def </span><span class="method">debug_message</span><span class="punct">(</span><span class="ident">msg</span><span class="punct">)</span>
    <span class="comment"># Print debug message in certain way here</span>
  <span class="keyword">end</span>

  <span class="keyword">def </span><span class="method">do_something</span>
    <span class="comment"># Do stuff here and in other methods</span>
    <span class="ident">debug_message</span> <span class="punct">"</span><span class="string">Such and such message</span><span class="punct">"</span> <span class="keyword">if</span> <span class="attribute">@debug</span>
    <span class="comment"># Do more stuff</span>
  <span class="keyword">end</span>
<span class="keyword">end</span></pre>
<p>Immediately I saw average times of 1.9 seconds, down 30%!  This was little different to the speed without any debugging messages at all, and demonstrates the overhead of calling methods. The downside, of course, is I have to tack on if @debug (or similar) to each of my debugging lines, but.. a small price to pay for 30% more performance.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jeff</strong> &middot; <time datetime="2006-11-08T00:37:00+00:00">November 8, 2006 at 12:37 am</time></p>
      <p>To REALLY clean it up, make your debug_message take a block, like the standard Logger class can.  Then instead of </p><p>debug_message "Such and such message" if @debug</p><p>you can have</p><p>debug_message {"Such and such message"}</p><p>I'm not sure what the implementation looks like, but if I figure it out I'll post it.  Check it out at <a href="http://www.ruby-doc.org/core/classes/Logger.html#M000166" rel="nofollow">http://www.ruby-doc.org/core/classes/Logger.html#M000166</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeff</strong> &middot; <time datetime="2006-11-08T00:40:00+00:00">November 8, 2006 at 12:40 am</time></p>
      <p>And importantly, the execution of the block is wrapped in an 'if' statement within debug_message, so the block only executes when at the appropriate logging level.  It's the best of both worlds -- elegance and performance.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeff</strong> &middot; <time datetime="2006-11-08T00:47:00+00:00">November 8, 2006 at 12:47 am</time></p>
      <p>I guess the simplest possible implementation looks as simple as:</p><p>def debug<br>
	if(@debug)<br>
		puts yield<br>
	end<br>
end</p><p>Of course, you'll probably be doing something more interesting that a simple 'puts'.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Lionel</strong> &middot; <time datetime="2006-11-08T01:03:00+00:00">November 8, 2006 at 1:03 am</time></p>
      <p>I just did some tests with eval to redefine a debug_message method instead of using @debug, was disappointed by the results (calling methods indeed is slow even if they don't do anything) and then thought of using $debug. The results are as follows :</p><p>Rehearsal --------------------------------------------<br>
eval       2.116667   0.316667   2.433333 (  1.523078)<br>
instance   0.616667   0.166667   0.783333 (  0.484443)<br>
global     0.516667   0.150000   0.666667 (  0.415333)<br>
----------------------------------- total: 4.566667sec</p><p>               user     system      total        real<br>
eval       1.983333   0.316667   2.300000 (  1.424962)<br>
instance   0.633333   0.166667   0.800000 (  0.485945)<br>
global     0.516667   0.183333   0.700000 (  0.421243)</p><p>So you can get a boost of ~15% by using a global variable instead of an instance one (note that we are speaking of only a 60 nanosecond advantage per call on an Athlon X2 3800+ with ruby 1.8.4 64bit...).</p><p>eval uses this class :</p><p>class MyBench<br>
  def initialize()<br>
    eval("def debug_message(msg) end")<br>
  end<br>
  def do_something(n)<br>
    n.times do<br>
      debug_message 'my_message'<br>
    end<br>
  end<br>
end</p><p>global uses this one :</p><p>class MyBench2<br>
  def initialize()<br>
    $debug = false<br>
  end<br>
  def do_something(n)<br>
    n.times do<br>
      $debug &amp;&amp; puts('my_message')<br>
    end<br>
  end<br>
end</p><p>The results are roughly the same with "$debug &amp;&amp; puts ..." and "puts ... if $debug".</p>
    </li>
      <li>
      <p class="comment-meta"><strong>wilig</strong> &middot; <time datetime="2006-11-08T01:05:00+00:00">November 8, 2006 at 1:05 am</time></p>
      <p>Hey Peter,</p><p>Couldn't you have used the builtin Logger class for this purpose?  There is also another technique that would clean up the code considerably.  Have you considered moving all the logging to another file that redefines the class to add all the logging calls?  That way at the top of your file you can conditionally include the logging file and incur zero overhead and no code pollution.</p><p>Just my 2 cents.</p><p>Will</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-11-08T02:42:00+00:00">November 8, 2006 at 2:42 am</time></p>
      <p>Nice investigative work!</p><p>Actually, using the &amp;&amp; technique probably makes it look pretty nice after all and makes it really obvious it's a debug line.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-11-08T06:05:00+00:00">November 8, 2006 at 6:05 am</time></p>
      <p>wilig: It didn't need anything as advanced as that. It's really 99% for me while developing it, but I knew I'd be likely to leave the debug lines in so wanted to make them a bit more efficient. Calling Logger, however, would be even slower, I think.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jacob Radford</strong> &middot; <time datetime="2006-11-08T22:50:00+00:00">November 8, 2006 at 10:50 pm</time></p>
      <p>Simple, but nice.  In fact, with all of the articles about snippets for textmate and emacs lately, you could just create a shortcut to printing out the entire line needed (with the "if @debug") and all you then have to do is fill in the text message.  With something like that, you could be sure of coding it the same everytime and save keystrokes while you are at it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter McMaster</strong> &middot; <time datetime="2006-11-10T00:00:00+00:00">November 10, 2006 at 12:00 am</time></p>
      <p>ruby -pi -e 'gsub(/^\s*debug_message/,"# no_debug_message")' **/*.rb<br>
=&gt; an overhead of nil.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
