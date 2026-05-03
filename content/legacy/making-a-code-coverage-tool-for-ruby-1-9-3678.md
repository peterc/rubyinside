---
title: Making A Code Coverage Tool for Ruby 1.9
date: '2010-08-13'
author: Peter Cooper
author_slug: admin
post_id: 3678
slug: making-a-code-coverage-tool-for-ruby-1-9-3678
url: "/making-a-code-coverage-tool-for-ruby-1-9-3678.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p>Aaron Patterson (of <a href="nokogiri-ruby-html-parser-and-xml-parser-1288.html">Nokogiri</a> fame) has written a post for the AT&amp;T Interactive blog about <a href="http://engineering.attinteractive.com/2010/08/code-coverage-in-ruby-1-9/">writing a code coverage tool with Ruby 1.9</a>:</p>
<blockquote class="stylized">
<p>You probably didn’t know this, but code coverage is actually a miracle. Who knows how it works? Oh wait, it’s exactly opposite of what I just said. It’s not a miracle, and we can learn how it works.</p>
<p>I’m not going to go in to depth, but this tool works by hooking in to Ruby's virtual machine...</p>
</blockquote>
<p><cite>Aaron Patterson</cite></p>
<p>It turns out that Ruby 1.9 already comes with support for code coverage monitoring. Aaron looks at how it works and improves how we interact with it a shade.</p>
{{< /rawhtml >}}
