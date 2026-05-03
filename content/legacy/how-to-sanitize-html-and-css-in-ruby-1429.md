---
title: How to Sanitize HTML and CSS in Ruby
date: '2009-01-01'
author: Peter Cooper
author_slug: admin
post_id: 1429
slug: how-to-sanitize-html-and-css-in-ruby-1429
url: "/how-to-sanitize-html-and-css-in-ruby-1429.html"
categories:
- ruby-tricks
---

{{< rawhtml >}}
<p><img style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;" src="/assets/2009/01/sanitize.png" alt="sanitize.png" width="98" height="97"></p>
<p>If you've developed an application that displays user-supplied text in a Web browser, it's always possible that the user has entered some crazy HTML (or even CSS) that will break your site's layout. While it's easy to remove <em>all</em> HTML from a piece of text, you might <em>want</em> them to use certain subsets of HTML to format their content, so you need to <em>sanitize</em> the user supplied HTML and CSS. Luckily, two Ruby libraries have been released in the last couple of days to sanitize HTML and CSS respectively.</p>
<h3>HTML</h3>
<p><a href="http://wonko.com/post/sanitize">Sanitize</a> (or <a href="http://github.com/rgrove/sanitize/">Github repo</a>) by Ryan Grove is a new HTML sanitization library for Ruby. Install the <em>sanitize</em> gem and then it's crazily simple from there:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">rubygems</span><span class="punct">'</span>
<span class="ident">require</span> <span class="punct">'</span><span class="string">sanitize</span><span class="punct">'</span>

<span class="ident">html</span> <span class="punct">=</span> <span class="punct">%{</span><span class="string">&lt;strong&gt;&lt;a href="http://foo.com/"&gt;foo&lt;/a&gt;&lt;/strong&gt;&lt;img src="http://foo.com/bar.jpg" alt="" /&gt;</span><span class="punct">}</span>

<span class="constant">Sanitize</span><span class="punct">.</span><span class="ident">clean</span><span class="punct">(</span><span class="ident">html</span><span class="punct">)</span> <span class="comment"># =&gt; 'foo'</span></pre>
<p>As Ryan <a href="http://wonko.com/post/sanitize">explains in his blog post</a>, Sanitize removes all HTML by default, but you can specify options to allow certain elements, attributes, protocols, and so forth - read his post to get the full scoop. Sanitize also closes tags that are left open - excellent!</p>
<h3>CSS</h3>
<p>Allowing users to specify custom CSS can be.. interesting (see MySpace) but potentially damaging if it gets sent to third parties. Browsers can, in many circumstances, execute JavaScript in CSS or otherwise be given nefarious CSS to parse. Courtenay Gasking's <a href="http://blog.caboo.se/articles/2008/12/31/allowing-custom-css-in-your-app">css_file_sanitize</a> (or <a href="http://github.com/courtenay/css_file_sanitize/tree/master">Github repo</a>) helps prevent some of these issues by sanitizing the CSS provided. It's still in its earliest stages, and the README contains no documentation (but if you see his test file, you'll get the idea), so Courtenay's open for feedback, patches, etc.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Eddie May</strong> &middot; <time datetime="2009-01-01T08:54:00+00:00">January 1, 2009 at 8:54 am</time></p>
      <p>Happy New Year!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonathan Soeder</strong> &middot; <time datetime="2009-01-01T20:35:00+00:00">January 1, 2009 at 8:35 pm</time></p>
      <p>I was in the process of converting an HTML sanitizer I wrote in perl to ruby and had to shelve it.  This is noice.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Markus Jais</strong> &middot; <time datetime="2009-01-02T08:35:00+00:00">January 2, 2009 at 8:35 am</time></p>
      <p>Happy New Year. This is a very useful small library. Thanks for showing.<br>
I just played a little with it and it works like a gem :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Eric Davis</strong> &middot; <time datetime="2009-01-03T00:23:00+00:00">January 3, 2009 at 12:23 am</time></p>
      <p>The CSS sanitizer might come in handy.  I just had a customer come up with an idea of allowing custom CSS per user.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pete Forde</strong> &middot; <time datetime="2009-01-03T08:20:00+00:00">January 3, 2009 at 8:20 am</time></p>
      <p>I prefer a lovingly massaged version of the sanitize.rb library, originally by Jacques Distler. I've taken the liberty of adding a few convenient string mixins:</p><p><a href="http://pastie.org/351431" rel="nofollow">http://pastie.org/351431</a></p><p>This library takes the slightly unconventional approach of parsing the input using the html5 gem. Genius!</p><p>I've tested it against most of the hacks on this page of XSS vectors. I consider it a litmus test for declaring your shit "secure":</p><p><a href="http://ha.ckers.org/xss.html" rel="nofollow">http://ha.ckers.org/xss.html</a></p><p>Your mileage will vary. I like this because it doesn't try to process every string; you call it explicitly on what you need.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>rick</strong> &middot; <time datetime="2009-01-03T16:51:00+00:00">January 3, 2009 at 4:51 pm</time></p>
      <p>The rails sanitize helper (from my old whitelist_helper plugin) was written using that same hackers page.  The nice thing about this lib is that it uses Hpricot and is probably a lot faster than any ruby based html parser.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
