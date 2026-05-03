---
title: 'Whois: A New Pure-Ruby Whois Gem'
date: '2009-08-13'
author: Ric Roberts
author_slug: ricroberts
post_id: 2216
slug: a-new-pure-ruby-whois-gem-2216
url: "/a-new-pure-ruby-whois-gem-2216.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2009/08/guess-who.jpg" alt="guess who?" style="float:left;margin-right:12px; margin-bottom:12px">Simone Carletti of Altura Labs recently announced on <a href="http://www.simonecarletti.com/">his blog</a> the release of a new pure-Ruby Whois library, inventively named "<a href="http://github.com/weppos/whois/tree/master">Whois</a>".</p>
<p>He needed a whois library for one of his projects, but found that the existing options didn't satisfy his requirement of being able to query both IP addresses and top level domains.  Simone's offering replaces the original whois gem by Cyril Mougel, with which it's backward compatible.</p>
<p>Using the 'all-in-one' whois class-method will give you the default behaviour, with a timeout of 5 seconds. If you want more control you can initialize a new instance of the client:</p>
<pre>
Whois.whois("rubyinside.com")
# =&gt; whois response for rubyinside.com

client = Whois::Client.new
client.timeout = 3
client.query("74.125.67.100")
# =&gt; whois response for 74.125.67.100
</pre>
<p>For more details, check out Simone's <a href="http://www.simonecarletti.com/blog/2009/08/ruby-has-a-new-whois-library/">blog post</a>, <a href="http://code.simonecarletti.com/wiki/whois">the docs</a>, and the <a href="http://github.com/weppos/whois/tree/master">Github repository</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2009-08-13T12:04:00+00:00">August 13, 2009 at 12:04 pm</time></p>
      <p>I also created a "pure ruby which" command recently--apparently pure ruby is cool :)<br>
<a href="http://github.com/rogerdpack/which_ruby/tree/master" rel="nofollow">http://github.com/rogerdpack/which_ruby/tree/master</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hubert Łępicki</strong> &middot; <time datetime="2009-08-13T18:29:00+00:00">August 13, 2009 at 6:29 pm</time></p>
      <p>I have recently spoken to someone about "whois" not being able to query both tlds and ip addresses -- but it wasn't Simone! Anyway, the village gossip must have spread fast and hit Italy quickly ;)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
