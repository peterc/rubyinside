---
title: Ruby + Graphviz == Automated Data Visualization
date: '2009-01-29'
author: Peter Cooper
author_slug: admin
post_id: 1477
slug: ruby-graphviz-data-visualization-1477
url: "/ruby-graphviz-data-visualization-1477.html"
categories:
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2009/01/vizzy.png" width="112" height="112" alt="vizzy.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"></p>
<p>Mark McBride has written <a href="http://www.omninerd.com/articles/Automating_Data_Visualization_with_Ruby_and_Graphviz">Automating Data Visualization with Ruby and Graphviz</a>, a great introduction to using Ruby with the popular <a href="http://www.graphviz.org/">Graphviz</a> tool to produce visualizations of data.</p>
<p>The article starts off with an example of the sort of data you might want to analyze then moves on to explaining GraphViz and its "DOT" notation. From there, Mark leaps straight into using the <a href="http://raa.ruby-lang.org/project/ruby-graphviz/">ruby-graphviz</a> library and provides code to produce a graph for a sample data set.</p>
<p>Once you get in to Graphviz you might also want to check out <a href="http://railroad.rubyforge.org/">RailRoad</a>, a "Ruby on Rails diagrams generator" that produces model and controller relationship diagrams from your Rails applications.</p>
<p class="s" style="font-family:verdana;font-style:italic;padding:8px;font-size: 12px"><strong>Support from: <a href="http://www.brightbox.co.uk/">Brightbox</a>; - Europe's leading provider of <a href="http://www.brightbox.co.uk/rails-hosting-pricing">Ruby on Rails hosting</a>.</strong> Now with Phusion Passenger support, each Brightbox server comes with access to a managed MySQL cluster and redundant SAN storage. Brightbox also provides managed services for large scale applications and dedicated clusters. — <strong>Special Offer: 50% off all new Brightboxes!</strong> For a limited period, get a <a href="http://www.brightbox.co.uk/rails-hosting-pricing">Brightbox from £19.50 a month...</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Peter Szinek</strong> &middot; <time datetime="2009-01-29T08:54:00+00:00">January 29, 2009 at 8:54 am</time></p>
      <p>Great find Peter, thanks a million!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Martin</strong> &middot; <time datetime="2009-01-29T16:47:00+00:00">January 29, 2009 at 4:47 pm</time></p>
      <p>I found Graphviz extremely helpful when I needed to understand exactly what was going on in an extremely complex module.  I wrote a quick bit of code to parse a module's object space and push out a DOT file (<a href="http://github.com/waslogic/mod_dotter/tree/master" rel="nofollow">http://github.com/waslogic/mod_dotter/tree/master</a>).  Using dot to process the file into SVG allowed me to see everything in one place that had been spread out over several dozen files.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
