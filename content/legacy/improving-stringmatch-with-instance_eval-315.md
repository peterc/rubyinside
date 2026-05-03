---
title: Improving String#match with instance_eval
date: '2006-12-03'
author: Peter Cooper
author_slug: admin
post_id: 315
slug: improving-stringmatch-with-instance_eval-315
url: "/improving-stringmatch-with-instance_eval-315.html"
categories:
- ruby-tricks
---

{{< rawhtml >}}
<p>A couple of days ago, Tim Lucas wrote a cool article called "<a href="http://toolmantim.com/article/2006/11/29/instance_eval_brings_sexy_back">instance_eval brings sexy back</a>" where he demonstrated how to use <em>instance_eval</em> to improve the usability of the <em>match</em> method. The downside, however, was that Tim's technique required manually defining accessor methods each time match was used.</p>
<p><a href="http://myles.id.au/">Myles Byrne</a> rapidly responded with a cuter solution:</p>
<pre><span class="keyword">class </span><span class="class">MatchData</span>
  <span class="keyword">def </span><span class="method">matchnames</span><span class="punct">(*</span><span class="ident">names</span><span class="punct">)</span>
    <span class="ident">names</span><span class="punct">.</span><span class="ident">each_with_index</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">name</span><span class="punct">,</span> <span class="ident">index</span><span class="punct">|</span>
      <span class="constant">self</span><span class="punct">.</span><span class="ident">instance_eval</span> <span class="punct">"</span><span class="string">def </span><span class="expr">#{name}</span>; self[<span class="expr">#{index+1}</span>] end<span class="punct">"</span>
    <span class="keyword">end</span>
    <span class="constant">self</span>
  <span class="keyword">end</span>
<span class="keyword">end</span>

<span class="ident">time_components</span> <span class="punct">=</span> <span class="punct">/</span><span class="regex">(</span><span class="escape">\d</span>+):(<span class="escape">\d</span>+):(<span class="escape">\d</span>+)<span class="punct">/.</span><span class="ident">match</span><span class="punct">("</span><span class="string">17:00:34</span><span class="punct">").</span><span class="ident">matchnames</span><span class="punct">(</span><span class="symbol">:hours</span><span class="punct">,</span> <span class="symbol">:mins</span><span class="punct">,</span> <span class="symbol">:secs</span><span class="punct">)</span>
<span class="ident">time_components</span><span class="punct">.</span><span class="ident">hours</span></pre>
<p>I quickly realized, however, that I never use <em>match</em> in this way. I prefer to use <em>String#match</em> instead (<em>Regexp#match</em> doesn't click to me, it seems back to front). I also wasn't too keen on the method chaining as it didn't address instances where the result of match is <em>nil</em>. I, therefore, have come up with an uglier, but more pragmatic solution:</p>
<pre><span class="keyword">class </span><span class="class">String</span>
  <span class="keyword">alias</span> <span class="ident">_match</span> <span class="ident">match</span>
  <span class="keyword">def </span><span class="method">match</span><span class="punct">(*</span><span class="ident">args</span><span class="punct">)</span>
    <span class="ident">m</span> <span class="punct">=</span> <span class="ident">_match</span><span class="punct">(</span><span class="ident">args</span><span class="punct">.</span><span class="ident">first</span><span class="punct">)</span>
    <span class="keyword">if</span> <span class="ident">m</span> <span class="punct">&amp;&amp;</span> <span class="ident">m</span><span class="punct">.</span><span class="ident">length</span> <span class="punct">&gt;</span> <span class="number">1</span>
      <span class="ident">args</span><span class="punct">[</span><span class="number">1</span><span class="punct">..-</span><span class="number">1</span><span class="punct">].</span><span class="ident">each_with_index</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">name</span><span class="punct">,</span> <span class="ident">index</span><span class="punct">|</span>
        <span class="ident">m</span><span class="punct">.</span><span class="ident">instance_eval</span> <span class="punct">"</span><span class="string">def </span><span class="expr">#{name}</span>; self[<span class="expr">#{index+1}</span>] end<span class="punct">"</span>
      <span class="keyword">end</span>
    <span class="keyword">end</span>
    <span class="ident">m</span>
  <span class="keyword">end</span>
<span class="keyword">end</span>

<span class="ident">m</span> <span class="punct">=</span> <span class="punct">"</span><span class="string">12:34:56</span><span class="punct">".</span><span class="ident">match</span><span class="punct">(/</span><span class="regex">(</span><span class="escape">\d</span>+):(<span class="escape">\d</span>+):(<span class="escape">\d</span>+)<span class="punct">/,</span> <span class="symbol">:hour</span><span class="punct">,</span> <span class="symbol">:minute</span><span class="punct">,</span> <span class="symbol">:second</span><span class="punct">)</span>
<span class="ident">puts</span> <span class="ident">m</span><span class="punct">.</span><span class="ident">hour</span>
<span class="ident">puts</span> <span class="ident">m</span><span class="punct">.</span><span class="ident">minute</span>
<span class="ident">puts</span> <span class="ident">m</span><span class="punct">.</span><span class="ident">second</span></pre>
<p>Thanks to Tim and Myles for the inspiration on this.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Rimantas</strong> &middot; <time datetime="2006-12-03T14:20:00+00:00">December 3, 2006 at 2:20 pm</time></p>
      <p>This should  be "12:34:56".match(/(\d+):(\d+):(\d+)/<br>
My cryptic version: <a href="http://pastie.caboo.se/25525" rel="nofollow">http://pastie.caboo.se/25525</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tim Lucas</strong> &middot; <time datetime="2006-12-03T15:10:00+00:00">December 3, 2006 at 3:10 pm</time></p>
      <p>Nice, though I do prefer Myles less magical solution (and handling matchnames in NilClass too). Is there a way to add a singleton method to the nil returned by match, rather than messing up the whole NilClass class? Because nil is a singleton object it makes life a bit more difficult.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Greg</strong> &middot; <time datetime="2006-12-03T16:54:00+00:00">December 3, 2006 at 4:54 pm</time></p>
      <p>Let's clean that up a bit, and avoid using eval. If you're going to do meta-programming and mess with an object's metaclass (a.k.a. singleton class) it makes sense to use it explicitly.</p><p>class String<br>
  alias _match match<br>
  def match(*args)<br>
    m = _match(args.shift)<br>
    if m &amp;&amp; m.length &gt; 1<br>
      meta = (class</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Greg</strong> &middot; <time datetime="2006-12-03T16:56:00+00:00">December 3, 2006 at 4:56 pm</time></p>
      <p>Grr, my comment got cut off and reformatted. Try this: <a href="http://pastie.caboo.se/25533" rel="nofollow">http://pastie.caboo.se/25533</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-12-03T17:03:00+00:00">December 3, 2006 at 5:03 pm</time></p>
      <p>Rimantas: I can safely blame WordPress for this. It always seems to mangle backslashes in my code and I have to go back and manually add them! Thanks for pointing it out.</p><p>Tim: To be honest, I just don't like the tacked on method. It reads a bit longer. It's really something match should provide out of the box (IMHO), so that's why I prefer it there. That said, perhaps there is wider scope for that technique on Arrays generally (not just MatchData).. so you can assign method names to different elements.</p><p>Greg: Excellent, I like this one the best :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tim Fletcher</strong> &middot; <time datetime="2006-12-03T17:10:00+00:00">December 3, 2006 at 5:10 pm</time></p>
      <p><a href="http://tfletcher.com/lib/named_captures.rb" rel="nofollow">http://tfletcher.com/lib/named_captures.rb</a></p><p>Another way :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2006-12-04T05:00:00+00:00">December 4, 2006 at 5:00 am</time></p>
      <p>Oniguruma already has named captures. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tim Lucas</strong> &middot; <time datetime="2006-12-04T16:13:00+00:00">December 4, 2006 at 4:13 pm</time></p>
      <p>Tim: Nice, and I love the quality and self-contained tests. I'll aspire to similar quality next time I post some code.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paolo Dona</strong> &middot; <time datetime="2006-12-05T18:56:00+00:00">December 5, 2006 at 6:56 pm</time></p>
      <p>Hey guys, any chance to have this included in some gem (like facets or similar)?<br>
Wouldn't be great to collect all these tricks?</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
