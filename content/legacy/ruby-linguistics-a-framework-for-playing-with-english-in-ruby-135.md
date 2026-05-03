---
title: 'Ruby Linguistics: A framework for playing with English in Ruby'
date: '2006-07-10'
author: Peter Cooper
author_slug: admin
post_id: 135
slug: ruby-linguistics-a-framework-for-playing-with-english-in-ruby-135
url: "/ruby-linguistics-a-framework-for-playing-with-english-in-ruby-135.html"
categories:
- cool
- elsewhere
- ruby-tricks
---

{{< rawhtml >}}
<p><a href="http://www.deveiate.org/projects/Linguistics/">This library</a> is so amazingly cool that it requires no descriptions beyond these code examples:</p>
<pre><span class="punct">"</span><span class="string">runs</span><span class="punct">".</span><span class="ident">en</span><span class="punct">.</span><span class="ident">present_participle</span>
<span class="comment"># =&gt; "running"</span>

<span class="number">2004</span><span class="punct">.</span><span class="ident">en</span><span class="punct">.</span><span class="ident">numwords</span>
<span class="comment"># =&gt; "two thousand and four"</span>

<span class="punct">"</span><span class="string">cow</span><span class="punct">".</span><span class="ident">en</span><span class="punct">.</span><span class="ident">quantify</span><span class="punct">(</span> <span class="number">20_432_123_000_000</span> <span class="punct">)</span>
<span class="comment"># =&gt; "tens of trillions of cows"</span>

<span class="punct">"</span><span class="string">ruby</span><span class="punct">".</span><span class="ident">en</span><span class="punct">.</span><span class="ident">plural</span>
<span class="comment"># =&gt; "rubies"</span>
</pre>
<p>Or what about?</p>
<pre><span class="ident">allobjs</span> <span class="punct">=</span> <span class="punct">[]</span>
<span class="constant">ObjectSpace</span><span class="punct">::</span><span class="ident">each_object</span> <span class="punct">{|</span><span class="ident">obj</span><span class="punct">|</span> <span class="ident">allobjs</span> <span class="punct">&lt;&lt;</span> <span class="ident">obj</span><span class="punct">.</span><span class="ident">class</span><span class="punct">.</span><span class="ident">name</span><span class="punct">}</span>

<span class="ident">puts</span> <span class="punct">"</span><span class="string">The current Ruby objectspace contains: </span><span class="punct">"</span> <span class="punct">+</span>
		<span class="ident">allobjs</span><span class="punct">.</span><span class="ident">en</span><span class="punct">.</span><span class="ident">conjunction</span><span class="punct">(</span> <span class="symbol">:generalize</span> <span class="punct">=&gt;</span> <span class="constant">true</span> <span class="punct">)</span>
The current Ruby objectspace contains: thousands of Strings,
thousands of Arrays, hundreds of Hashes, hundreds of
Classes, many Regexps, a number of Ranges, a number of
Modules, several Floats, several Procs, several MatchDatas,
several Objects, several IOS, several Files, a Binding, a
NoMemoryError, a SystemStackError, a fatal, a ThreadGroup,
and a Thread
</pre>
<p>Go <a href="http://www.deveiate.org/projects/Linguistics/">learn more</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>RSL</strong> &middot; <time datetime="2006-07-10T13:32:00+00:00">July 10, 2006 at 1:32 pm</time></p>
      <p>Thanks a friggin' million on this find. I'm working on an art project Rails app that this will/might help sooooo much.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tobin</strong> &middot; <time datetime="2006-07-10T14:29:00+00:00">July 10, 2006 at 2:29 pm</time></p>
      <p>Wow, awesome.  Thanks for the heads up.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Steve Koppelman</strong> &middot; <time datetime="2006-07-11T14:42:00+00:00">July 11, 2006 at 2:42 pm</time></p>
      <p>Yeah, but isn't 2004 "two thousand four" without the "and"? Sort of how the String helper to_sentence() puts a comma immediately before the "and" by default, when at least here in North America it shouldn't. </p><p>Are these correct grammar in whatever country the lead developer of the module calls home, or does Ruby Linguistics need a quick once-over by a linguist? ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-07-11T15:05:00+00:00">July 11, 2006 at 3:05 pm</time></p>
      <p>Steve: The "Oxford comma" (as I know it, but I think it is called a Harvard comma in the US) is a  common point of discussion regarding the English language. Using a comma before 'and' in a list is not particularly a trait of any English dialect and is similarly common, in my experience, in both British and American English. In fact, it tends to be a difference between formal and informal use. The US government style guide recommends it, for example, along with most academic style guides on either side of the pond.</p><p>Regarding the 'and' in numbers, the form with the 'and' is legitimate in both British and American English, whereas the form without the 'and' is dubious in British English (though not unseen). I think this library is, as you suggest, erring towards the creator's dialect, but appears to be taking the most 'formal' route, if not the most pragmatic one.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael Granger</strong> &middot; <time datetime="2006-07-11T22:37:00+00:00">July 11, 2006 at 10:37 pm</time></p>
      <p>Steve:</p><p>The #numwords method includes a setting ':and' which lets you specify how you want that situation handled. Unfortunately, I noticed that it wasn't working in the latest release, but I've since fixed it. Look for a new release that'll let you have 'two thousand four' in the next few days.</p><p>I'm not sure what 'helper' you're referring to, as there is no 'to_sentence()' in the Linguistics library. I assume you're referring to #conjunction, but the decision to make the default put a comma before the final clause of a list of three or more was based on Strunk and White's "Elements of Style", not on any particular deference to any particular local grammar conventions:</p><blockquote>
<p>
  In a series of three or more terms with a single conjunction, use a comma after each term except the last.</p>
<p> Thus write:</p>
<p>  red, white, and blue<br>
  honest, energetic, but headstrong<br>
  He opened the letter, read it, and made a note of its contents.</p>
</blockquote><p>That said, if you'd rather have the final comma omitted, you can use the <code>:penultimate</code> option:</p><p>  irb(main):001:0&gt; %w{duck cow rabbit dog}.conjunction<br>
    ==&gt; "a duck, a cow, a rabbit, and a dog"</p><p>  irb(main):002:0&gt; %w{duck cow rabbit dog}.conjunction( :penultimate =&gt; false )<br>
    ==&gt; "a duck, a cow, a rabbit and a dog"</p><p>As to your asking if the library needs a "once-over by a linguist", are you saying that it's inconceivable that the lead developer wasn't himself a linguist? While I do not have formal degree asserting such, linguistics and grammar are nonetheless very dear to me. I can't claim to have provided a perfect implementation of English for all dialects and locales, but I did make a concerted effort to make the English bits of Ruby-Linguistics correct for most uses while providing some flexibility for those who wanted alternate behavior.</p><p>I would of course welcome suggestions, corrections, and any other comments linguists or anyone else might care to make. :)</p><p>[Apologies if this isn't formatted correctly, as I can't tell what format comments support.]</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-07-11T23:18:00+00:00">July 11, 2006 at 11:18 pm</time></p>
      <p>Your comment seems to have come out perfectly.. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>stipes</strong> &middot; <time datetime="2006-07-12T18:26:00+00:00">July 12, 2006 at 6:26 pm</time></p>
      <p>As far as using "and" in numbers, it is generally left out when using numbers in a mathematical sense. At least in American English, in mathematics, the "and" is used to signify the decimal place, separating the whole number from the fraction. In a plain whole number, the "and" is left out:</p><p>2004 = two thousand four<br>
2004.5 = two thousand four and one half</p><p>In general, that's getting pretty picky... The framework looks really cool, and I can definitely see it having lots of future applications.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
