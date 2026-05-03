---
title: 'Wirble: Tab-Completion and Syntax Coloring for irb'
date: '2006-12-17'
author: Peter Cooper
author_slug: admin
post_id: 336
slug: wirble-tab-completion-and-syntax-coloring-for-irb-336
url: "/wirble-tab-completion-and-syntax-coloring-for-irb-336.html"
categories:
- cool
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2006/12/wirble.jpg" height="133" width="314" border="1" hspace="4" vspace="4" alt="Wirble"><br>
If you haven't got tab-completion and syntax coloring in your <em>irb</em>, you owe it to yourself to follow these instructions right away (should work for Linux, OS X, and Cygwin users). First, install the <a href="http://pablotron.org/software/wirble/">Wirble</a> gem:</p>
<pre>sudo gem install -y wirble</pre>
<p>Next, create or edit a file called .irbrc in your home folder (~/.irbrc), and make sure these lines are included there:</p>
<pre>require 'rubygems'
require 'wirble'
Wirble.init
Wirble.colorize</pre>
<p>Now play with <em>irb</em> and see joy similar to that in the screenshot above. Try tab-completion too. It's great!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>matt</strong> &middot; <time datetime="2006-12-18T03:32:00+00:00">December 18, 2006 at 3:32 am</time></p>
      <p>Awesome!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ariekeren</strong> &middot; <time datetime="2006-12-18T06:56:00+00:00">December 18, 2006 at 6:56 am</time></p>
      <p>nice. however it doesn't colorize pp</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Athayde</strong> &middot; <time datetime="2006-12-18T17:20:00+00:00">December 18, 2006 at 5:20 pm</time></p>
      <p>Nice tip! I'm rolling with it on my system now. A bit difficult to read some of the darker colors on an inverted shell (white on black), especially when you add transparency to it, but I'll manage to deal :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matt Baron</strong> &middot; <time datetime="2006-12-18T17:53:00+00:00">December 18, 2006 at 5:53 pm</time></p>
      <p>Anyone know if its possible to control the way it colors the syntax?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matt Baron</strong> &middot; <time datetime="2006-12-18T17:57:00+00:00">December 18, 2006 at 5:57 pm</time></p>
      <p>Upon further investigation, I found you can change the way Wirble colorizes.  Its right in there doc:</p><p><a href="http://pablotron.org/software/wirble/README" rel="nofollow">http://pablotron.org/software/wirble/README</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan Wedekind</strong> &middot; <time datetime="2006-12-20T21:08:00+00:00">December 20, 2006 at 9:08 pm</time></p>
      <p>Very nice!<br>
I added a default rule and colour for unidentified characters because at the moment the brackets '(' ')' are not displayed by wirble.</p><p>164d163<br>
 :light_blue,<br>
 :light_blue,<br>
---<br>
&gt;       :comma              =&gt; :blue,<br>
&gt;       :refers             =&gt; :blue,<br>
326,327c325,326<br>
 :light_blue,<br>
 :light_blue,<br>
---<br>
&gt;       :object_addr_prefix =&gt; :blue,<br>
&gt;       :object_line_prefix =&gt; :blue,<br>
344d342<br>
 :green</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan Wedekind</strong> &middot; <time datetime="2006-12-20T21:11:00+00:00">December 20, 2006 at 9:11 pm</time></p>
      <p>The diff in my posting got screwed up. I put my modified version based on wirble-0.1.2 here:<br>
<a href="http://www.wedesoft.demon.co.uk/wirble.rb" rel="nofollow">http://www.wedesoft.demon.co.uk/wirble.rb</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sergio Espeja</strong> &middot; <time datetime="2006-12-30T12:14:00+00:00">December 30, 2006 at 12:14 pm</time></p>
      <p>This is great! helps a lot the work with irb!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael Lee</strong> &middot; <time datetime="2007-01-02T15:54:00+00:00">January 2, 2007 at 3:54 pm</time></p>
      <p>You can also add 'irb/completion'</p><p>My .ircrb looks like</p><p>---BEGIN-FILE---<br>
require 'irb/completion'<br>
require 'rubygems'<br>
require 'wirble'</p><p>ARGV.concat [ "--readline", "--prompt-mode", "simple" ]<br>
Wirble.init<br>
Wirble.colorize<br>
---END-FILE---</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
