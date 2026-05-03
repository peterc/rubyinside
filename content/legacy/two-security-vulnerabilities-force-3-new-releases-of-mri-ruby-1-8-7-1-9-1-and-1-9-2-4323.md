---
title: Two Security Vulnerabilities Force 3 New Releases of MRI Ruby 1.8.7, 1.9.1,
  and 1.9.2
date: '2011-02-19'
author: Peter Cooper
author_slug: admin
post_id: 4323
slug: two-security-vulnerabilities-force-3-new-releases-of-mri-ruby-1-8-7-1-9-1-and-1-9-2-4323
url: "/two-security-vulnerabilities-force-3-new-releases-of-mri-ruby-1-8-7-1-9-1-and-1-9-2-4323.html"
categories:
- news
---

{{< rawhtml >}}
<p><img src="/assets/2011/02/arghhhh-150x150.png" alt="" title="arghhhh" width="100" class="alignleft size-thumbnail wp-image-4329" style="float: left; margin-right: 18px">It's been a <em>dies horribilis</em> for MRI Ruby today with two new security vulnerabilities forcing the release of 3 new recommended production versions of the de facto official Ruby interpreter. The first, a vulnerability in <code>FileUtils.remove_entry_secure</code> affects both 1.8 and 1.9 branches, while the second, a $SAFE mode vulnerability, affects only 1.8.</p>
<h3>The FileUtils Vulnerability (1.8 and 1.9)</h3>
<p>Urabe Shyouhei of the <a title="Ruby core team" href="http://www.ruby-lang.org/en/community/ruby-core/">Ruby core team</a> has <a href="http://www.ruby-lang.org/en/news/2011/02/18/fileutils-is-vulnerable-to-symlink-race-attacks/">announced that FileUtils is vulnerable to symlink race attacks</a> and he's not talking about hate crimes. Ruby versions <em>including and prior</em> to Ruby 1.8.6p420, Ruby 1.8.7p330, Ruby 1.9.1p430 and Ruby 1.9.2p136 are affected so you're almost guaranteed to be affected.</p>
<p>The problem is <a href="http://www.ruby-doc.org/stdlib/libdoc/fileutils/rdoc/classes/FileUtils.html#M000917">FileUtils#remove_entry_secure</a>, a method that was meant to be more secure than its sibling <code>FileUtils#remove_entry</code>. What the <code>remove_entry*</code> methods do is to 'remove' an entry in the local file system. The problem, though, is that <code>remove_entry_secure</code>'s security wasn't quite good enough and it could be used by local users to delete arbitrary files and directories. Not a great feature.</p>
<h3>The $SAFE Vulnerability (1.8 only)</h3>
<p>Ruby's <a href="http://www.ruby-doc.org/docs/ProgrammingRuby/html/taint.html">"safe levels"</a> provide a way for you to make the Ruby interpreter more "paranoid" about operations it can perform and the data it can process. There are five levels and they progressively lock down what Ruby will accept - particularly useful if it's necessary to consider all data to be tainted, for example.</p>
<p>This recent vulnerability plays on the fact that the <code>Exception</code> class can both accept and return a string. The bad part is that <code>Exception</code> wasn't respecting the safe level in terms of keeping the string <em>tainted.</em> Urabe Shyouhei provides this example:</p>
<div class="highlight">
<pre><span class="vg">$secret_path</span> <span class="o">=</span> <span class="s2">"foo"</span>

<span class="nb">proc</span> <span class="k">do</span>
    <span class="vg">$SAFE</span> <span class="o">=</span> <span class="mi">4</span>
    <span class="no">Exception</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="vg">$secret_path</span><span class="p">)</span><span class="o">.</span><span class="n">to_s</span>
    <span class="vg">$secret_path</span><span class="o">.</span><span class="n">replace</span><span class="p">(</span><span class="s2">"/etc/passwd"</span><span class="p">)</span>
<span class="k">end</span><span class="o">.</span><span class="n">call</span>

<span class="nb">open</span><span class="p">(</span><span class="vg">$secret_path</span><span class="p">)</span> <span class="k">do</span>
  <span class="c1"># do the dirty here</span>
<span class="k">end</span>
</pre>
</div>
<p>Thankfully, it only affects Ruby 1.8 (not Ruby 1.9) in the shape of Ruby 1.8.6p420 and earlier and Ruby 1.8.7p330 and earlier. The downside? That covers most Ruby 1.8 installs out there, including the default one with OS X. Get upgrading.</p>
<h3>The Solution - New Releases of Ruby</h3>
<p>Undoubtedly you have your own ways and means of doing upgrades (using RVM, for example) but Urabe has provided <a href="http://www.ruby-lang.org/en/news/2011/02/18/fileutils-is-vulnerable-to-symlink-race-attacks/">links</a> to the latest builds on the official MRI Ruby site if you want them. Repeated here:</p>
<p><strong>Ruby 1.8.7-p334:</strong> <a href="http://ftp.ruby-lang.org/pub/ruby/1.8/ruby-1.8.7-p334.tar.gz">http://ftp.ruby-lang.org/pub/ruby/1.8/ruby-1.8.7-p334.tar.gz</a><br>
<strong>Ruby 1.9.1-p431:</strong> <a href="http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.1-p431.tar.gz">http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.1-p431.tar.gz</a><br>
<strong>Ruby 1.9.2-p180:</strong> <a href="http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.2-p180.tar.gz">http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.2-p180.tar.gz</a></p>
<p>Last but not least, if you've been wondering why Ruby Inside hasn't updated for two weeks, I have some explaining to do and.. it'll be in a post of its own very soon ;-) Meanwhile, check out <a href="http://www.rubyflow.com/">RubyFlow's snazzy new design!</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://topsy.com/www.rubyinside.com/two-security-vulnerabilities-force-3-new-releases-of-mri-ruby-1-8-7-1-9-1-and-1-9-2-4323.html?utm_source=pingback&amp;utm_campaign=L2" rel="external nofollow" class="url">Tweets that mention Two Security Vulnerabilities Force 3 New Releases of MRI Ruby 1.8.7, 1.9.1, and 1.9.2 -- Topsy.com</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>postmodern</strong> &middot; <time datetime="2011-02-19T03:08:00+00:00">February 19, 2011 at 3:08 am</time></p>
      <p>RVM users:</p><p><code>$ rvm upgrade ruby-1.8.7-p334 ruby-1.8.7-p330</code><br>
<code>$ rvm upgrade ruby-1.9.2-p180 ruby-1.9.2-p136</code></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matthew Jacobs</strong> &middot; <time datetime="2011-02-19T06:40:00+00:00">February 19, 2011 at 6:40 am</time></p>
      <p>Is there a good way to upgrade my ubuntu 10.04 ruby versions<br>
without reinstalling them from source?</p><p>(I like my package installs)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>werter</strong> &middot; <time datetime="2011-02-19T17:46:00+00:00">February 19, 2011 at 5:46 pm</time></p>
      <p>another one in rails</p><p><a href="http://www.securityfocus.com/bid/46423/info" rel="nofollow">http://www.securityfocus.com/bid/46423/info</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jérémie</strong> &middot; <time datetime="2011-02-25T17:44:00+00:00">February 25, 2011 at 5:44 pm</time></p>
      <p>@postmodern I would suggest this way:</p><p><code>rvm upgrade 1.9.2-p136 1.9.2-p180</code></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
