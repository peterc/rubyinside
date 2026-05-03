---
title: 'Alias: Enhance Your Ruby Console/irb Experience'
date: '2009-07-16'
author: Ric Roberts
author_slug: ricroberts
post_id: 2025
slug: alias-for-ruby-console-quickness-2025
url: "/alias-for-ruby-console-quickness-2025.html"
categories:
- cool
- miscellaneous
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2009/07/alias.jpg" alt="alias" style="float:left; margin-right:12px; margin-bottom:12px">A couple of weeks ago we featured <a href="http://tagaholic.me/">Gabriel Horner</a>'s <a href="hirb-an-easy-to-use-view-framework-for-irb-1853.html">Hirb</a> framework for formatting irb output. I've recently been playing with another of his projects, <a href="http://github.com/cldwalker/alias/tree/master">Alias</a>, which further enhances the Ruby Console experience (but it conceivably could be used in your Ruby programs too).</p>
<p>It's already possible to set up aliases in your .irbrc file, but this can get confusing and it's easy to run into conflicts. <em>Alias</em> takes a more structured, hash-based approach which (by default) lets you set up aliases for constants, instance methods or class methods. For example:</p>
<p><code>create_aliases :instance_method, "ActiveRecord::Base"=&gt;{"update_attribute"=&gt;'ua'}</code></p>
<p>You can store and retrieve your aliases in an easy-to-read <a href="http://en.wikipedia.org/wiki/YAML">YAML</a> configuration file and it's simple to have script/console (or irb) load them automatically from that file on start-up, by adding a small amount of code to your environment.rb (or .irbrc) file.</p>
<p>Extending Alias is fairly straightforward. Just subclass Alias::Creator and implement a few methods for mapping the aliases, checking their validity and generating the Ruby code to be evaluated.</p>
<p>For more details, check out the <a href="http://tagaholic.me/alias/doc/index.html">documentation</a> and Gabriel's <a href="http://tagaholic.me/2009/07/07/alias-quickness-in-the-ruby-console.html">recent blog post</a>. You can install the gem from <a href="http://github.com/cldwalker/alias/tree/master">Github</a> with:</p>
<p><code>sudo gem install cldwalker-alias -s http://gems.github.com</code></p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><img style="float:left; margin: 0px 12px 12px 0px; border:1px #000000 solid;" src="/assets/2009/07/jslab.png" alt="jslab.png" width="32" height="35"><em>Also..</em> <a rel="nofollow" href="http://jumpstartlab.com">Jumpstart Lab</a> in Washington, DC is offering workshops teaching <a rel="nofollow" href="http://rubyjumpstart.com/">Ruby for beginning <em>female</em> programmers (<strong>Ruby Jumpstart</strong>)</a> on August 1st and 2nd, then <a rel="nofollow" href="http://railsjumpstart.com/">beginning Rails (<strong>Rails Jumpstart</strong>)</a> for everyone on August 15 &amp; 16. Save 10% with code "rubyinside"!</p>
{{< /rawhtml >}}
