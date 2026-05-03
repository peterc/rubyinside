---
title: 'RubyPhone: Nascent TSAPI library for Ruby'
date: '2006-08-23'
author: Peter Cooper
author_slug: admin
post_id: 199
slug: rubyphone-nascent-tsapi-library-for-ruby-199
url: "/rubyphone-nascent-tsapi-library-for-ruby-199.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2006/08/rubyphone.jpg" height="231" width="148" border="1" hspace="4" vspace="4" alt="Rubyphone"></p>
<p><a href="http://tsapi.rubyforge.org/">RubyPhone</a> is the first Ruby project I've seen relating to telephony (although if you can leave links to others in the comments, please do!) but this code example struck me as particularly interesting:</p>
<pre><span class="ident">phone</span><span class="punct">.</span><span class="ident">answer</span><span class="punct">(</span><span class="ident">call</span><span class="punct">)</span> <span class="keyword">if</span> <span class="ident">phone</span><span class="punct">.</span><span class="ident">ringing?</span>
</pre>
<p>They say it's ultra-alpha quality, but if you're getting into this area, it's worth a look.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Mark Thomas</strong> &middot; <time datetime="2006-08-23T18:10:00+00:00">August 23, 2006 at 6:10 pm</time></p>
      <p>I don't know about that code; I think I'd rather register a callback!</p><p>[pa-dum tsssh]</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark Thomas</strong> &middot; <time datetime="2006-08-23T18:14:00+00:00">August 23, 2006 at 6:14 pm</time></p>
      <p>By the way; it's definitely not the first telephony project. RAGI (Ruby Asterisk Gateway Interface) pre-dates it by quite some time. And, it's really cool. Check it out here:<br>
<a href="http://www.snapvine.com/code/ragi" rel="nofollow">http://www.snapvine.com/code/ragi</a></p><p>and the O'ReillyNet article is provides a little background info:<br>
<a href="http://www.oreillynet.com/pub/a/etel/2005/12/19/hacking-in-asterisk-and-rails.html" rel="nofollow">http://www.oreillynet.com/pub/a/etel/2005/12/19/hacking-in-asterisk-and-rails.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Don Parish</strong> &middot; <time datetime="2006-08-23T19:07:00+00:00">August 23, 2006 at 7:07 pm</time></p>
      <p>You might want to check out Hacking in Asterisk and Rails at <a href="http://www.oreillynet.com/pub/a/etel/2005/12/19/hacking-in-asterisk-and-rails.html?page=1" rel="nofollow">http://www.oreillynet.com/pub/a/etel/2005/12/19/hacking-in-asterisk-and-rails.html?page=1</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
