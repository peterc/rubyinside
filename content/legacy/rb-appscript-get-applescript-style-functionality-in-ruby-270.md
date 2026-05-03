---
title: 'Rb-AppScript: Get AppleScript-style functionality in Ruby'
date: '2006-10-17'
author: Peter Cooper
author_slug: admin
post_id: 270
slug: rb-appscript-get-applescript-style-functionality-in-ruby-270
url: "/rb-appscript-get-applescript-style-functionality-in-ruby-270.html"
categories:
- cool
- elsewhere
- os-x-specific
- ruby-tricks
---

{{< rawhtml >}}
<p><a href="http://rb-appscript.rubyforge.org/">Rb-AppScript</a> is an event bridge between Ruby and OS X that allows you to get AppleScript-esque control in OS X. The Appscript creators claim Appscript is a 'serious alternative' to AppleScript and it certainly looks good. Check out this example:</p>
<pre><span class="constant">AS</span><span class="punct">.</span><span class="ident">app</span><span class="punct">('</span><span class="string">TextEdit</span><span class="punct">').</span><span class="ident">documents</span><span class="punct">[</span><span class="number">1</span><span class="punct">].</span><span class="ident">paragraphs</span><span class="punct">[</span><span class="number">1</span><span class="punct">].</span><span class="ident">get</span>
</pre>
<p>The equivalent AppleScript?</p>
<pre>tell application "TextEdit"
    get paragraph 1 of document 1
end tell</pre>
<p>Appscript provides the system to perform remote procedure calls to OS X applications, converts values between Ruby and Apple classes, and allows developers to get full use out of OS X while still using Ruby's object oriented environment.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Oleg Andreev</strong> &middot; <time datetime="2006-10-18T06:09:00+00:00">October 18, 2006 at 6:09 am</time></p>
      <p>As serious as VBA for MS Office is :-)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
