---
title: RubyGem Hotfix for cgi.rb Vulnerabilities Released
date: '2006-12-06'
author: Peter Cooper
author_slug: admin
post_id: 323
slug: rubygem-hotfix-for-cgirb-vulnerabilities-released-323
url: "/rubygem-hotfix-for-cgirb-vulnerabilities-released-323.html"
categories:
- miscellaneous
- news
---

{{< rawhtml >}}
<p>Evan Weaver has leaped to the rescue with <a href="http://blog.evanweaver.com/articles/2006/12/05/cgi-rb-vulnerability-hotfix">a hotfix</a> (installable as a gem) for <a href="new-dos-vulnerability-found-in-rubys-cgirb-319.html">the cgi.rb DoS vulnerabilities</a>. This hotfix is ideal for those who don't want to install Ruby or patch again. Evan's site has been having some DNS issues (related to the EveryDNS outages) so I hope he doesn't mind me repeating part of his post here:</p>
<blockquote>
<p>I’ve constructed a hotfix for the cgi.rb vulnerability of yesterday. First, make sure you have the Hoe gem installed. Then:</p>
<pre>sudo gem install cgi_multipart_eof_fix --source blog.evanweaver.com</pre>
<p>Run the included test to verify the flaw is corrected. To apply the fix, you must require the gem in every affected application, as follows:</p>
<pre>require 'rubygems'
require 'cgi_multipart_eof_fix'</pre>
<p>If you only use mongrel_rails for application hosting, you may install mongrel like so:</p>
<pre>sudo gem install mongrel --source=http://mongrel.rubyforge.org/releases</pre>
<p>Then mongrel will require the fix for you, provided you have installed version 2.0.0 of this gem. This is a hack, and mongrel may change in the future.</p>
</blockquote>
<p>There's <a href="http://blog.evanweaver.com/articles/2006/12/05/cgi-rb-vulnerability-hotfix">a little more on his page</a>, but this covers the important parts if you can't access it.</p>
{{< /rawhtml >}}
