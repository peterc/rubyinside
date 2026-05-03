---
title: Escape_utils – Fast HTML and JavaScript escaping routines for Ruby
date: '2010-06-09'
author: Peter Cooper
author_slug: admin
post_id: 3307
slug: escape_utils-fast-html-and-javascript-escaping-routines-for-ruby-3307
url: "/escape_utils-fast-html-and-javascript-escaping-routines-for-ruby-3307.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<blockquote class="stylized">
<p>Being as though we’re all html escaping everything these days, why not make it faster?</p>
<p>At the moment escape_utils supports escaping and unescaping of HTML, and Javascript but I wanna add URL encoding soon. It has monkey-patches for Rack::Utils, CGI, ERB::Util and Haml and ActionView so you can drop this in and have your app start escaping fast as balls in no time</p>
</blockquote>
<p><cite>Brian Lopez</cite></p>
<p>I don't know how fast Brian's balls are, but I could escape the jQuery source code (about 164KB) about 1000 times per second on my iMac and that seems pretty fast. It was also very easy to install on OS X (everything is done with a <code>gem install escape_utils</code>).</p>
<p>Brian claims <a href="http://github.com/brianmario/escape_utils">his C-backed library</a> is 10-20x faster than existing Ruby-based escaping techniques for HTML and 16-30x faster for JavaScript.</p>
{{< /rawhtml >}}
