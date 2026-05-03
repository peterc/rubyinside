---
title: Easy Web Spidering in Ruby with Anemone
date: '2009-07-02'
author: Ric Roberts
author_slug: ricroberts
post_id: 1927
slug: web-spidering-with-anemone-1927
url: "/web-spidering-with-anemone-1927.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img style="float:left;margin-right:12px;margin-bottom:12px" src="/assets/2009/07/anemone.jpg" alt="anemone"> <a href="http://anemone.rubyforge.org/">Anemone</a> is a free, multi-threaded Ruby web spider framework from <a href="http://www.chriskite.com/">Chris Kite</a>, which is useful for collecting information about websites. With Anemone you can write tasks to generate some interesting statistics on a site just by giving it the URL.</p>
<p>Its only dependency is <a href="http://github.com/tenderlove/nokogiri/tree/master">Nokogiri</a> (an HTML and XML parser). Other than that, you just need to install the gem to get started using Anemone's simple syntax which, among other things, allows you to tell it which pages to include (based on regular expressions) or define callbacks.</p>
<p>This example taken from Anemone's homepage prints out the URL of every page on a site:</p>
<pre>require 'anemone'

Anemone.crawl("http://www.example.com/") do |anemone|
  anemone.on_every_page do |page|
    puts page.url
  end
end</pre>
<p>The bin folder in the project contains some more in-depth examples, including tasks for counting the number of unique pages on a site, the number of pages at a certain depth in a site, or a list of urls encountered.  There's also a combined-task which wraps up a few of these, intended to be run as a daily cron job.</p>
<p>You can install Anemone as a gem or get the source from <a href="http://github.com/chriskite/anemone/tree/master">Github</a> of course, and there's some fairly comprehensive RDoc documentation available in the source or <a href="http://rdoc.info/projects/chriskite/anemone">online</a>.</p>
<div style="background-color: #ffd; padding: 8px; font-family: verdana; font-size: 12px">
<a href="http://mobileorchard.com/inside" rel="nofollow"><img src="/assets/2009/06/rupho.png" width="74" height="40" alt="rupho.png" style="float:left; margin-right:12px;"></a><em>Also worth seeing.. </em> <strong>Mobile Orchard's <a href="http://mobileorchard.com/ri">Beginning iPhone Programming Workshop</a>.</strong>  Bay Area/July 30-31.  Seattle/Aug 20-21. Ruby Inside discount of $200 -- use "ri" discount code.</div>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>ben</strong> &middot; <time datetime="2009-07-03T14:45:00+00:00">July 3, 2009 at 2:45 pm</time></p>
      <p>Cool but is there anyone that made it work ?<br>
from the given example, just got the homepage, no crawl.</p><p>searching further, got on spidr wich seems to do the same work with kind of the same syntax; it just fails.</p><p>so for the time spent, disappointed…</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ric</strong> &middot; <time datetime="2009-07-03T17:35:00+00:00">July 3, 2009 at 5:35 pm</time></p>
      <p>Hi Ben.  I gave some of the examples a try, and they worked for me.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Soleone</strong> &middot; <time datetime="2009-07-03T23:45:00+00:00">July 3, 2009 at 11:45 pm</time></p>
      <p>Just for your information: there's also a dependency on facets it seems.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Soleone</strong> &middot; <time datetime="2009-07-03T23:54:00+00:00">July 3, 2009 at 11:54 pm</time></p>
      <p>Hmm, I get only one link when trying the example like this:</p><p>Anemone.crawl("http://www.rubyinside.com") { |a| a.on_every_page{|p| puts p.url} }</p><p>=&gt; <a href="index.html" rel="nofollow">http://www.rubyinside.com</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Harry</strong> &middot; <time datetime="2009-07-04T11:53:00+00:00">July 4, 2009 at 11:53 am</time></p>
      <p>Soleone: try add a slash after url, like : "http://www.rubyinside.com/"</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ric Roberts</strong> &middot; <time datetime="2009-07-04T12:03:00+00:00">July 4, 2009 at 12:03 pm</time></p>
      <p>Try that last example with a trailing slash on the url. Not sure why, but this seems to make a difference. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Soleone</strong> &middot; <time datetime="2009-07-06T12:59:00+00:00">July 6, 2009 at 12:59 pm</time></p>
      <p>Okay, the new version (0.0.6) doesn't have the trailing slash problem anymore, nice!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Carlos Valencia</strong> &middot; <time datetime="2009-07-09T18:47:00+00:00">July 9, 2009 at 6:47 pm</time></p>
      <p>I like . It is too simple to be true.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Glenn Gillen</strong> &middot; <time datetime="2009-07-10T19:36:00+00:00">July 10, 2009 at 7:36 pm</time></p>
      <p>Nice.</p><p>If all you're looking for is to take a mirror of a site you can simply do:</p><p>wget -m <a href="index.html" rel="nofollow">http://www.rubyinside.com/</a></p><p>If you just want to spider all your links to make sure nothing is broken:</p><p>wget --spider <a href="index.html" rel="nofollow">http://www.rubyinside.com/</a></p><p>But if you want to do anything more useful, this looks like a pretty simple approach. Will have to give it a look.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
