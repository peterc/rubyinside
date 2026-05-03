---
title: Using RubyInline to Speed Up Code By 10x
date: '2006-07-27'
author: Peter Cooper
author_slug: admin
post_id: 159
slug: using-rubyinline-to-speed-up-code-by-10x-159
url: "/using-rubyinline-to-speed-up-code-by-10x-159.html"
categories:
- cool
- elsewhere
- ruby-tricks
---

{{< rawhtml >}}
<p>After writing a basic routine to print all prime numbers between 1 and 10,000 in Ruby, Pat Eyler found it took almost 3 seconds to complete, and seeked out a way to make it faster. Enter RubyInline (covered previous at RubyInside).. With RubyInline <a href="http://on-ruby.blogspot.com/2006/07/rubyinline-making-making-things-faster.html">he added a basic C function into the Ruby mix</a> and knocked down the time required to 0.3 seconds.</p>
<p>The code:</p>
<pre><span class="ident">require</span> <span class="punct">"</span><span class="string">rubygems</span><span class="punct">"</span>
<span class="ident">require</span> <span class="punct">"</span><span class="string">inline</span><span class="punct">"</span>

<span class="keyword">class </span><span class="class">Primes</span>
  <span class="ident">inline</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">builder</span><span class="punct">|</span>
    <span class="ident">builder</span><span class="punct">.</span><span class="ident">c</span> <span class="punct">'</span><span class="string">
    int prime(int num) {
      int x;
      for (x = 2; x &lt; (num - 1) ; x++) {
        if (num == 2) {
          return 1;
        }
        if (num % x == 0) {
          return x;
        }
      }
      return 1;
    }</span><span class="punct">'</span>
  <span class="keyword">end</span>
<span class="keyword">end</span>

<span class="ident">p</span> <span class="punct">=</span> <span class="constant">Primes</span><span class="punct">.</span><span class="ident">new</span>

<span class="keyword">for</span> <span class="ident">num</span> <span class="keyword">in</span> <span class="number">2</span><span class="punct">..</span><span class="number">10_000</span> <span class="keyword">do</span>
  <span class="ident">is_prime</span> <span class="punct">=</span> <span class="ident">p</span><span class="punct">.</span><span class="ident">prime</span><span class="punct">(</span><span class="ident">num</span><span class="punct">)</span>
  <span class="keyword">if</span> <span class="ident">is_prime</span> <span class="punct">==</span> <span class="number">1</span>
    <span class="ident">puts</span> <span class="punct">"</span><span class="string"></span><span class="expr">#{num}</span> is a prime number<span class="punct">"</span>
  <span class="keyword">else</span>
    <span class="ident">puts</span> <span class="punct">"</span><span class="string"></span><span class="expr">#{num}</span> equals <span class="expr">#{is_prime}</span> * <span class="expr">#{num/is_prime}</span><span class="punct">"</span>
  <span class="keyword">end</span>
<span class="keyword">end</span>
</pre>
<p><a href="http://on-ruby.blogspot.com/2006/07/rubyinline-making-making-things-faster.html">Read more..</a> <em>(found via <a href="http://ozmm.org/">ozmm</a>)</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Anonomous Grammar Police</strong> &middot; <time datetime="2006-07-27T12:29:00+00:00">July 27, 2006 at 12:29 pm</time></p>
      <p>Ahem...</p><p>"seeked" =&gt; sought</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Danno</strong> &middot; <time datetime="2006-07-28T03:46:00+00:00">July 28, 2006 at 3:46 am</time></p>
      <p>I dunno if ZenSpider is still working on this or not, but it presents an even better sort of solution: <a href="http://www.zenspider.com/ZSS/Products/RubyInline/index.html" rel="nofollow">http://www.zenspider.com/ZSS/Products/RubyInline/index.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pat Eyler</strong> &middot; <time datetime="2006-07-28T23:08:00+00:00">July 28, 2006 at 11:08 pm</time></p>
      <p>Umm, Danno, I used zenspiders RubyInline to do this, so I'm not sure you can call it better.  ;^)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dave Andersen</strong> &middot; <time datetime="2006-09-03T15:50:00+00:00">September 3, 2006 at 3:50 pm</time></p>
      <p>While I realize that the author was working under the constraint of "someone forced me to use this algorithm to keep things consistent", this is an agonizing example of "optimize the algorithm, not the implementation."  Instead of using C, a complex package that shells out to gcc, and writing code that's 3x longer than it needs to be, rewriting the algorithm to use the Sieve -- in pure ruby -- takes the runtime down to 0.1 seconds (1/3rd of the time required by the Inline C version):</p><p><a href="http://dga.livejournal.com/22232.html" rel="nofollow">http://dga.livejournal.com/22232.html</a></p><p>Let's stomp out this terrible, terrible example and not leave the net scattered with bad examples of optimizing the wrong way.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
