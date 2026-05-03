---
title: Fast HTML parsing in Ruby with Hpricot
date: '2006-07-05'
author: Peter Cooper
author_slug: admin
post_id: 125
slug: fast-html-parsing-in-ruby-with-hpricot-125
url: "/fast-html-parsing-in-ruby-with-hpricot-125.html"
categories:
- cool
- miscellaneous
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2006/07/hpricot.jpg" height="165" width="315" border="1" hspace="4" vspace="4" alt="Hpricot"><span style="font-size:12pt;"><br>
</span><br>
Ruby legend <a href="http://redhanded.hobix.com/">whytheluckystuff</a> has developed a new HTML parser called <a href="http://redhanded.hobix.com/inspect/hpricot01.html">Hpricot</a>. It's easy to install and use and parses HTML in a liberal fashion. It does, however, require a compiler to install (as it's written in C), so should be okay on Linux and Mac OS X, though not necessarily on Windows (yet).</p>
<p>Here's some demo code:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">hpricot</span><span class="punct">'</span>
<span class="ident">doc</span> <span class="punct">=</span> <span class="constant">Hpricot</span><span class="punct">.</span><span class="ident">parse</span><span class="punct">("</span><span class="string">index.html</span><span class="punct">")</span>
<span class="punct">(</span><span class="ident">doc</span><span class="punct">/</span><span class="symbol">:p</span><span class="punct">/</span><span class="symbol">:a</span><span class="punct">).</span><span class="ident">each</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">link</span><span class="punct">|</span>
  <span class="ident">p</span> <span class="ident">link</span><span class="punct">.</span><span class="ident">attributes</span>
<span class="keyword">end</span>
</pre>
<p>This is a good alternative to <a href="http://www.crummy.com/software/RubyfulSoup/">RubyfulSoup</a>, if you're finding RubyfulSoup too slow (though RubyfulSoup is certainly worth a try!)</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>RSL</strong> &middot; <time datetime="2006-07-11T15:33:00+00:00">July 11, 2006 at 3:33 pm</time></p>
      <p>Does Hpricot install under Cygwin? I'll probably find this out for myself in a few minutes/hours but maybe someone else would want to know as well so the question might help.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
