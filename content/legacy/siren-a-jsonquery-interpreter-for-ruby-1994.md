---
title: 'Siren: a JSONQuery interpreter for Ruby'
date: '2009-07-17'
author: Ric Roberts
author_slug: ricroberts
post_id: 1994
slug: siren-a-jsonquery-interpreter-for-ruby-1994
url: "/siren-a-jsonquery-interpreter-for-ruby-1994.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img style="float:left;margin-right:12px; margin-bottom:12px" src="/assets/2009/07/siren.jpg" alt="siren"><a href="http://github.com/jcoglan/siren/tree/master">Siren</a> is a <a href="http://www.json.org/">JSON</a> and <a href="http://www.sitepen.com/blog/2008/07/16/jsonquery-data-querying-beyond-jsonpath/">JSONQuery</a> interpreter for Ruby by <a href="http://jcoglan.com/">James Coglan</a>. Before I dive into talking about Siren, a little bit of background:</p>
<p>JSON is a lightweight, human-friendly data interchange format, for which there is already good Ruby support in the form of the <a href="http://json.rubyforge.org/">json gem</a>. JSONQuery was originally added as part of the <a href="http://dojotoolkit.org/">dojo</a> javascript toolkit and provides querying tools for JSON such as filtering and sorting etc. (check out <a href="http://www.sitepen.com/blog/2008/07/16/jsonquery-data-querying-beyond-jsonpath/">this article</a> on SitePen for more details). You can also find a stand-alone port of <a href="http://github.com/JasonSmith/jsonquery/tree/master">JSONQuery</a> on Github.</p>
<p>Anyway, Siren lets you run queries against any type of Ruby object. In addition to the standard JSONQuery features, Siren allows JSON objects to be assigned IDs, enabling cross referencing and cyclic data structures. It also allows you to tell the parser to cast objects to an instance of a particular type, populating instance variables with the data (rather than just using vanilla hashes or arrays like most JSON tools).</p>
<p>Siren is available on James's <a href="http://github.com/jcoglan/siren/tree/master">Github account</a>. Check out the README for more details on the supported features.</p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><img style="float:left; margin: 0px 12px 12px 0px; border:1px #000000 solid;" src="/assets/2009/07/jslab.png" alt="jslab.png" width="32" height="35"><em>Also..</em> <a rel="nofollow" href="http://jumpstartlab.com">Jumpstart Lab</a> in Washington, DC is offering workshops teaching <a rel="nofollow" href="http://rubyjumpstart.com/">Ruby for beginning <em>female</em> programmers (<strong>Ruby Jumpstart</strong>)</a> on August 1st and 2nd, then <a rel="nofollow" href="http://railsjumpstart.com/">beginning Rails (<strong>Rails Jumpstart</strong>)</a> for everyone on August 15 &amp; 16. Save 10% with code "rubyinside"!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Bruce Williams</strong> &middot; <time datetime="2009-07-19T16:55:00+00:00">July 19, 2009 at 4:55 pm</time></p>
      <p>Siren looks pretty nice (funny I just wrapped up some work on JSONPath just recently, as well, <a href="http://github.com/bruce/jsonpath" rel="nofollow">http://github.com/bruce/jsonpath</a>). Great work, James!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ReddyOnRails</strong> &middot; <time datetime="2009-07-21T20:36:00+00:00">July 21, 2009 at 8:36 pm</time></p>
      <p>I like JSONQuery of Dojo..</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
