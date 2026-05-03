---
title: Write C code inline with your Ruby code
date: '2006-06-07'
author: Peter Cooper
author_slug: admin
post_id: 54
slug: write-c-code-inline-with-your-ruby-code-54
url: "/write-c-code-inline-with-your-ruby-code-54.html"
categories:
- cool
- ruby-tricks
---

{{< rawhtml >}}
<blockquote><p><em><a href="http://rubyforge.org/projects/rubyinline/">Ruby Inline</a></em><em> is an analog to Perl's Inline::C. Out of the box, it allows you to embed C/++ external module code in your ruby script directly. By writing simple builder classes, you can teach how to cope with new languages (fortran, perl, whatever).</em></p></blockquote>
<p>I downloaded it (simply download <a href="http://rubyforge.org/frs/download.php/6476/RubyInline-3.5.0.gem">the gem</a> and install it) and tapped out the following code, and it worked just great:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">rubygems</span><span class="punct">'</span>
<span class="ident">require_gem</span> <span class="punct">'</span><span class="string">RubyInline</span><span class="punct">'</span>

<span class="keyword">class </span><span class="punct">&lt;&lt;</span> <span class="constant">self</span>
	<span class="ident">inline</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">builder</span><span class="punct">|</span>
		<span class="ident">builder</span><span class="punct">.</span><span class="ident">c</span> <span class="punct">"</span><span class="string">
			int dummy(int input) {
				int i = 1;
				while (input &gt;= 1) { input--; i *= 2; }
				return i;
			}
		</span><span class="punct">"</span>
	<span class="keyword">end</span>
<span class="keyword">end</span>

<span class="ident">puts</span> <span class="ident">dummy</span><span class="punct">(</span><span class="number">8</span><span class="punct">)</span>
</pre>
<p>This works a treat on OS X. Linux should be fine, but on Windows I can't imagine it running unless you're under Cygwin and have gcc handy. Just watch out for creating infinite loops, because you <em>will</em> need <code>kill -9</code>.</p>
<p>Supposedly Ruby Inline also has support for languages other than C, although C is the only one to work 'out of the box'.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Pat Eyler</strong> &middot; <time datetime="2006-08-01T18:09:00+00:00">August 1, 2006 at 6:09 pm</time></p>
      <p>I'm pretty sure that C++ is supported out of the box too.  ObjC was trivial to add, according to zenspider.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>zenspider</strong> &middot; <time datetime="2006-08-01T22:15:00+00:00">August 1, 2006 at 10:15 pm</time></p>
      <p>don't use require_gem, just plain require will do fine (with 'inline').</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-08-01T22:41:00+00:00">August 1, 2006 at 10:41 pm</time></p>
      <p>It's a habit I picked up ages ago when I had a really crappy installation that wouldn't work without it, sorry :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
