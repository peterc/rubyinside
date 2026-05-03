---
title: Initializing instance variables from the parameter list
date: '2006-05-25'
author: Peter Cooper
author_slug: admin
post_id: 4
slug: initializing-instance-variables-from-the-parameter-list-4
url: "/initializing-instance-variables-from-the-parameter-list-4.html"
categories:
- cool
- ruby-tricks
---

{{< rawhtml >}}
<p>While looking at <a href="http://flgr.0x42.net/deobfu/1-negaposi.html">NegaPosi</a>, a crazy Ruby implementation of a micro language that only uses unary operators, I discovered a cute way to initialize instance variables. Usually you'd do this:</p>
<pre><code>def initialize
@p = []
@b = []
end
</code></pre>
<p>But, how about doing it this way?</p>
<pre><code>def initialize a=@p=[], b=@b=[]
end</code></pre>
<p>Initialize doesn't require the parameters, but it forces @p and @b to be initialized as arrays whenever an instance is created. Cute trick, although the readability suffers.</p>
<p><!-- technorati tags start --></p>
<p style="text-align: right; font-size: 10px">Technorati Tags: <a rel="tag" href="http://www.technorati.com/tag/ruby">ruby</a></p>
<p><!-- technorati tags end --></p>
{{< /rawhtml >}}
