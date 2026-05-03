---
title: 'Shattered: A nascent Ruby game development framework'
date: '2006-07-07'
author: Peter Cooper
author_slug: admin
post_id: 128
slug: shattered-a-nascent-ruby-game-development-framework-128
url: "/shattered-a-nascent-ruby-game-development-framework-128.html"
categories:
- cool
- miscellaneous
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2006/07/shattered.png" height="87" width="351" border="1" hspace="4" vspace="4" alt="Shattered"></p>
<p>It's still pretty new, but <a href="http://www.shatteredruby.com/">Shattered Ruby</a> looks interesting. It's a Ruby game development framework that runs on Mac OS X, Linux, and Windows, and uses the <a href="http://www.ogre3d.org/">Ogre3D</a> libraries (which support OpenGL and DirectX) for graphics. There's even a <a href="http://weblog.shatteredruby.com/">blog</a>. It has some pretty neat event handling:</p>
<pre><span class="ident">key</span> <span class="symbol">:pressed</span> <span class="punct">=&gt;</span> <span class="punct">[</span><span class="symbol">:a</span><span class="punct">,</span> <span class="symbol">:b</span><span class="punct">],</span> <span class="symbol">:action</span> <span class="punct">=&gt;</span> <span class="symbol">:do_something</span>
<span class="keyword">def </span><span class="method">do_something</span>
  <span class="ident">puts</span> <span class="punct">"</span><span class="string">will be called when a or b is pressed</span><span class="punct">"</span>
<span class="keyword">end</span>
</pre>
<p>I want to find some time to play with this..</p>
{{< /rawhtml >}}
