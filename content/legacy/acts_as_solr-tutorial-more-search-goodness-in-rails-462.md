---
title: 'acts_as_solr Tutorial: More Search Goodness in Rails'
date: '2007-04-23'
author: Peter Cooper
author_slug: admin
post_id: 462
slug: acts_as_solr-tutorial-more-search-goodness-in-rails-462
url: "/acts_as_solr-tutorial-more-search-goodness-in-rails-462.html"
categories:
- cool
- elsewhere
- ruby-on-rails
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2007/04/solr.jpg" height="201" width="201" border="1" hspace="4" vspace="4" alt="Solr"><br>
<em>(photo credit: </em><em><a href="http://www.flickr.com/photos/rberteig/270734599/">RBerteig</a></em><em>)</em></p>
<p>A couple of months ago <a href="in-depth-acts_as_ferret-tutorial-add-search-to-your-rails-app-391.html">I posted about an acts_as_ferret tutorial</a>, where <em>Ferret</em> is a Ruby port of Apache Lucene and <em>acts_as_ferret</em> provides almost automatic search features to any of your Rails models. It works great on a small scale but some people in the blogosphere pointed out that Ferret has a number of concurrency and stability issues (particularly on very large indexes).</p>
<p>Enter <a href="http://lucene.apache.org/solr/">Solr</a>. Solr is an open source 'server' based upon the actual Java version of Lucene which is well known for its stability. <a href="http://acts-as-solr.rubyforge.org/">acts_as_solr</a> therefore acts as a conduit between your Rails applications and a Solr/Lucene server meaning that you get full 'enterprise quality' search features based on proven software. Micha Wedemeyer has put together a great resource on <a href="http://blog.aisleten.com/2007/04/14/getting-started-with-acts_as_solr/">how to install and setup Solr and acts_as_solr</a> and the <a href="http://acts-as-solr.rubyforge.org/">official acts_as_solr homepage</a> has examples of how to use it within your own Rails applications. There's also a screencast called <a href="http://acts-as-solr.rubyforge.org/acts_as_solr_up_and_running_in_10_minutes.html">"Integrating Solr and the acts_as_solr plugin to any Rails app in less than 10 minutes"</a> available to watch.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>ahFeel</strong> &middot; <time datetime="2007-04-24T00:24:00+00:00">April 24, 2007 at 12:24 am</time></p>
      <p>Ferret is going more and more stable these last weeks, there's still a little concurrency issue, but the index structure is, for now, freezed, so updates doesn't mean re-indexing anymore :) Even if it's still not as stable as Lucene, David BALMAIN is looking at this concurrency issue, so ferret's really going to get a stable release soon. By the way, ferret's faster than lucene ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>vlad</strong> &middot; <time datetime="2007-04-24T16:09:00+00:00">April 24, 2007 at 4:09 pm</time></p>
      <p>&gt; By the way, ferret's faster than lucene ;)<br>
Ferret is only faster at indexing.  It's slower at searching.<br>
There is development work going on in Lucene to speed up indexing.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-04-24T19:35:00+00:00">April 24, 2007 at 7:35 pm</time></p>
      <p>To someone who knows more about this than me.. why would Ferret be faster than Lucene at anything if Ferret is just a Ruby port of Lucene and Ruby is slower than Java (generally)? Just intrigued!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jerome</strong> &middot; <time datetime="2007-04-25T05:12:00+00:00">April 25, 2007 at 5:12 am</time></p>
      <p>Peter, Ferret does its indexing in C, not Ruby, so that's why its faster.</p><p><a href="http://ferret.davebalmain.com/trac/wiki/FAQ%3ADefinitions#WhatiscFerret" rel="nofollow">http://ferret.davebalmain.com/trac/wiki/FAQ%3ADefinitions#WhatiscFerret</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stijn Van Vreckem</strong> &middot; <time datetime="2007-04-25T12:31:00+00:00">April 25, 2007 at 12:31 pm</time></p>
      <p>&gt;&gt;why would Ferret be faster than Lucene at anything if Ferret is just a Ruby port of &gt;&gt;Lucene and Ruby is slower than Java (generally)?</p><p>Ferret is using the C port of lucene.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-04-25T15:06:00+00:00">April 25, 2007 at 3:06 pm</time></p>
      <p>Aha.. thanks guys! :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Micah Wedemeyer</strong> &middot; <time datetime="2007-04-27T03:32:00+00:00">April 27, 2007 at 3:32 am</time></p>
      <p>Thanks for the link!</p><p>If you are planning on using acts_as_solr in your Rails app, you will inevitably need at least two Solr indices (one for development, one for production).</p><p>I have written a tutorial on a couple different ways to do this, including my favorite: two Solr instances in a single Tomcat container.</p><p>Check out the howto at: <a href="http://blog.aisleten.com/2007/04/15/acts_as_solr-for-development-and-production-in-one-tomcat-instance/" rel="nofollow">http://blog.aisleten.com/2007/04/15/acts_as_solr-for-development-and-production-in-one-tomcat-instance/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paul Goscicki</strong> &middot; <time datetime="2007-05-02T20:30:00+00:00">May 2, 2007 at 8:30 pm</time></p>
      <p>Unfortunately no one has thought about the children (think VPS) when they have brought the tanks (java, tomcat).</p><p>Still it's great to see some competition in the ruby/rails database searching world. It will definitely help each project mature, especially ferret. What about mysql full text search?</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
