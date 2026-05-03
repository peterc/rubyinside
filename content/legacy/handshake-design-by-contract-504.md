---
title: 'Handshake: Design-by-Contract'
date: '2007-05-22'
author: Hendy Irawan
author_slug: hendy-irawan
post_id: 504
slug: handshake-design-by-contract-504
url: "/handshake-design-by-contract-504.html"
categories:
- elsewhere
- ruby-tricks
- tools
---

{{< rawhtml >}}
<p><a href="http://rubyforge.org/projects/handshake/">Handshake</a>, currently in version 0.3.0, is an informal design-by-contract system written by <a href="http://www.brianguthrie.com/">Brian Guthrie</a> in pure Ruby. It's intended to allow Ruby developers to apply simple, clear constraints to their methods and classes.</p>
<p>Handshake is definitely welcome alongside the ever-increasing number of test-driven and behavior-driven design/development based tools, such as <a href="rspec-10-released-501.html">RSpec</a> and <a href="http://chneukirchen.org/blog/archive/2007/01/announcing-test-spec-0-3-a-bdd-interface-for-test-unit.html">test/spec</a>.</p>
<p>Some examples of Handshake contracts (from its documentation):</p>
<pre># An array that can never be empty.
class NonEmptyArray &lt; Array
include Handshake    invariant { not empty? }
end

# An array to which only strings may be added.
class NonEmptyStringArray &lt; NonEmptyArray
contract :initialize, [[ String ]] =&gt; anything
contract :&lt;&lt;, String =&gt; self
contract :+, many?(String) =&gt; self
contract :each, Block(String =&gt; anything) =&gt; self
end</pre>
<p>Visit <a href="http://rubyforge.org/projects/handshake/">Handshake project page</a> and <a href="http://handshake.rubyforge.org/">Rdoc documentation</a> for more information.</p>
{{< /rawhtml >}}
