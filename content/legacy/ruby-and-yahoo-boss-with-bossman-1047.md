---
title: 'BOSSMan: Build Your Own Search Engine With Yahoo And Ruby'
date: '2008-08-20'
author: Peter Cooper
author_slug: admin
post_id: 1047
slug: ruby-and-yahoo-boss-with-bossman-1047
url: "/ruby-and-yahoo-boss-with-bossman-1047.html"
categories:
- cool
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2008/08/yahooboss.jpg" width="170" height="120" alt="yahooboss.gif" style="float:left; margin-right:12px;">Recently, Yahoo! launched <a href="http://developer.yahoo.com/search/boss/">BOSS</a> - the "Build Your Own Search Service." In all but name, it appears very similar to their older Yahoo! Search API, as it allows you to query Yahoo's search index programatically. Under the surface though, Yahoo has removed the 5,000 query per day limit, you're unrestricted in how you present the data returned, you can re-order the data, and no attribution is required.</p>
<p>For Rubyists ready to play with BOSS, Jay Pignata has developed <a href="http://github.com/jpignata/bossman-gem/tree/master">BOSSMan</a>, a library for interacting with the Yahoo! BOSS Web service. Either get it with Git or install with RubyGems like so:</p>
<pre>
gem sources -a http://gems.github.com
gem install jpignata-bossman
</pre>
<p>Once you've got the library, make sure you've got an application ID from Yahoo (this is unavoidable, alas) and then you can start to play:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">rubygems</span><span class="punct">'</span>
<span class="ident">require</span> <span class="punct">'</span><span class="string">bossman</span><span class="punct">'</span>
<span class="ident">include</span> <span class="constant">BOSSMan</span>

<span class="constant">BOSSMan</span><span class="punct">.</span><span class="ident">application_id</span> <span class="punct">=</span> <span class="punct">"</span><span class="string">Your Application ID here</span><span class="punct">"</span>

<span class="ident">news</span> <span class="punct">=</span> <span class="constant">BOSSMan</span><span class="punct">::</span><span class="constant">Search</span><span class="punct">.</span><span class="ident">news</span><span class="punct">("</span><span class="string">Barack Obama</span><span class="punct">",</span> <span class="number">0</span><span class="punct">,</span> <span class="number">3</span><span class="punct">)</span>
<span class="ident">news</span><span class="punct">.</span><span class="ident">results</span><span class="punct">.</span><span class="ident">each</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">result</span><span class="punct">|</span>
  <span class="ident">puts</span> <span class="punct">"</span><span class="string"><span class="expr">#{result.title}</span> [from <span class="expr">#{result.source}</span>]</span><span class="punct">"</span>
<span class="keyword">end</span> </pre>
<p>BOSSMan supports Web, news, and image searches out of the box. You can dump to JSON, XML, or YAML and access all of the relevant attributes through methods. Superb!</p>
<p class="s"><cite>This post supported by <a href="http://www.notifixio.us/">Notifixious</a> -</cite> Notifixious - a new notification service startup based in San<br>
Francisco - needs a Rails expert to <a href="http://jobs-notifixious.tumblr.com/post/43032723/notifixious-is-hiring-within-the-ruby-rails">become its CTO!</a> Knowledge of messaging technologies (XMPP) and REST API development is a must. You can <a href="http://jobs-notifixious.tumblr.com/post/43032723/notifixious-is-hiring-within-the-ruby-rails">learn more here.</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jeremy Pinnix</strong> &middot; <time datetime="2008-08-21T01:52:00+00:00">August 21, 2008 at 1:52 am</time></p>
      <p>Excellent work Jay! It works really well.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>yestoall</strong> &middot; <time datetime="2008-08-27T12:41:00+00:00">August 27, 2008 at 12:41 pm</time></p>
      <p>great</p><p>something similar that works with google?</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
