---
title: 'Bus Scheme: A Scheme Interpreter Written In Ruby (And Sometimes On A Bus)'
date: '2008-02-13'
author: Peter Cooper
author_slug: admin
post_id: 756
slug: busscheme-ruby-scheme-interpreter-756
url: "/busscheme-ruby-scheme-interpreter-756.html"
categories:
- cool
- miscellaneous
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2008/02/1018557535-e3a580b2c9.jpg" width="320" height="282" alt="1018557535_e3a580b2c9.jpg"><br>
<span style="font-style: italic;">License: <a href="http://creativecommons.org/licenses/by/2.0/deed.en">CC Attribution</a> Credit:</span> <a href="http://flickr.com/photos/conner395/1018557535/"><span style="font-style: italic;">conner395</span></a> <span style="font-style: italic;">@ Flickr</span></p>
<p><a href="http://bus-scheme.rubyforge.org/">Bus Scheme</a> is an implementation of the <a href="http://en.wikipedia.org/wiki/Scheme_%28programming_language%29">Scheme</a> programming language (a dialect of Lisp) in Ruby being developed by Phil Hagelberg. It's called "Bus" Scheme because it's being developed while Phil travels on the bus, but <a href="http://blog.zenspider.com/archives/2008/02/busscheme_is_a_lie.html">Ryan Davis called Phil out</a> on that sly fabrication! Curiously, Phil claims to have never used any existing Scheme implementations, relying instead on knowledge gleaned from <a href="http://mitpress.mit.edu/sicp/">SICP</a> and <a href="http://swiss.csail.mit.edu/classes/6.001/abelson-sussman-lectures/">these incredible computer science lectures</a> (if you have not seen the Abelson / Sussman lectures yet, you are missing a major programming treat.)</p>
<p>Bus Scheme runs on Ruby 1.8, 1.9 <span style="font-style: italic;">and</span> Rubinius, and the repository (where you can view the source without downloading it) is available <a href="http://github.com/technomancy/bus-scheme/tree/master">here at GitHub</a>, although as noted in the documentation, you can also use <span style="font-style: italic;">gem install bus-scheme</span></p>
<p>Meanwhile, in a land far, far, away <a href="http://onestepback.org/index.cgi/Tech/Ruby/LispInRuby.red">Jim Weirich is working on an implementation of Lisp within Ruby</a> too, although Jim's clever attempt uses Ruby pre-existing data structures and not a typical parsing and interpretation system.</p>
{{< /rawhtml >}}
