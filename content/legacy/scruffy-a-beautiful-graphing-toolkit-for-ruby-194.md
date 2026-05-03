---
title: 'Scruffy: A beautiful graphing toolkit for Ruby'
date: '2006-08-17'
author: Peter Cooper
author_slug: admin
post_id: 194
slug: scruffy-a-beautiful-graphing-toolkit-for-ruby-194
url: "/scruffy-a-beautiful-graphing-toolkit-for-ruby-194.html"
categories:
- cool
- elsewhere
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2006/08/scruffy.jpg" height="186" width="304" border="1" hspace="4" vspace="4" alt="Scruffy"></p>
<p><a href="http://scruffy.rubyforge.org/">Scruffy</a> is a new graphing toolkit for Ruby developed by <a href="http://www.ibrasten.com/">Brasten Sager</a>. It's highly customizable and powerful. You can change the backgrounds, mix different types of graph together, change the graphics used for the points, change the line types, etc. You can also render to different types of output. Brasten presents <a href="http://ibrasten.com/articles/2006/08/14/scruffy-0-2-0">some code examples</a> at his blog. For demonstration, some is repeated below:</p>
<pre><span class="ident">graph</span> <span class="punct">=</span> <span class="constant">Scruffy</span><span class="punct">::</span><span class="constant">Graph</span><span class="punct">.</span><span class="ident">new</span>
<span class="ident">graph</span><span class="punct">.</span><span class="ident">title</span> <span class="punct">=</span> <span class="punct">"</span><span class="string">Comparative Agent Performance</span><span class="punct">"</span>
<span class="ident">graph</span><span class="punct">.</span><span class="ident">value_formatter</span> <span class="punct">=</span> <span class="constant">Scruffy</span><span class="punct">::</span><span class="constant">Formatters</span><span class="punct">::</span><span class="constant">Percentage</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="symbol">:precision</span> <span class="punct">=&gt;</span> <span class="number">0</span><span class="punct">)</span>
<span class="ident">graph</span><span class="punct">.</span><span class="ident">add</span> <span class="symbol">:stacked</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">stacked</span><span class="punct">|</span>
	<span class="ident">stacked</span><span class="punct">.</span><span class="ident">add</span> <span class="symbol">:bar</span><span class="punct">,</span> <span class="punct">'</span><span class="string">Jack</span><span class="punct">',</span> <span class="punct">[</span><span class="number">30</span><span class="punct">,</span> <span class="number">60</span><span class="punct">,</span> <span class="number">49</span><span class="punct">,</span> <span class="number">29</span><span class="punct">,</span> <span class="number">100</span><span class="punct">,</span> <span class="number">120</span><span class="punct">]</span>
	<span class="ident">stacked</span><span class="punct">.</span><span class="ident">add</span> <span class="symbol">:bar</span><span class="punct">,</span> <span class="punct">'</span><span class="string">Jill</span><span class="punct">',</span> <span class="punct">[</span><span class="number">120</span><span class="punct">,</span> <span class="number">240</span><span class="punct">,</span> <span class="number">0</span><span class="punct">,</span> <span class="number">100</span><span class="punct">,</span> <span class="number">140</span><span class="punct">,</span> <span class="number">20</span><span class="punct">]</span>
	<span class="ident">stacked</span><span class="punct">.</span><span class="ident">add</span> <span class="symbol">:bar</span><span class="punct">,</span> <span class="punct">'</span><span class="string">Hill</span><span class="punct">',</span> <span class="punct">[</span><span class="number">10</span><span class="punct">,</span> <span class="number">10</span><span class="punct">,</span> <span class="number">90</span><span class="punct">,</span> <span class="number">20</span><span class="punct">,</span> <span class="number">40</span><span class="punct">,</span> <span class="number">10</span><span class="punct">]</span>
<span class="keyword">end</span>
<span class="ident">graph</span><span class="punct">.</span><span class="ident">point_markers</span> <span class="punct">=</span> <span class="punct">['</span><span class="string">Jan</span><span class="punct">',</span> <span class="punct">'</span><span class="string">Feb</span><span class="punct">',</span> <span class="punct">'</span><span class="string">Mar</span><span class="punct">',</span> <span class="punct">'</span><span class="string">Apr</span><span class="punct">',</span> <span class="punct">'</span><span class="string">May</span><span class="punct">',</span> <span class="punct">'</span><span class="string">Jun</span><span class="punct">']</span>

<span class="ident">graph</span><span class="punct">.</span><span class="ident">render</span><span class="punct">(</span><span class="symbol">:width</span> <span class="punct">=&gt;</span> <span class="number">800</span><span class="punct">,</span> <span class="symbol">:as</span> <span class="punct">=&gt;</span> ‘<span class="constant">JPG’</span><span class="punct">)</span>
</pre>
<p><em>(Thanks to Brasten for fixing my sloppy cut and paste job. See comments.)</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Sean Cribbs</strong> &middot; <time datetime="2006-08-18T12:54:00+00:00">August 18, 2006 at 12:54 pm</time></p>
      <p>Not a big deal, but might that first line of the code sample be missing a do |graph| ?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>brasten</strong> &middot; <time datetime="2006-08-18T15:18:00+00:00">August 18, 2006 at 3:18 pm</time></p>
      <p>No, and the 'end' after graph.point_markers shouldn't be there.  That stuff isn't supposed to be in a block:</p><p>graph = Scruffy::Graph.new<br>
graph.title = "Comparative Agent Performance"<br>
graph.value_formatter = Scruffy::Formatters::Percentage.new(:precision =&gt; 0)<br>
graph.add :stacked do |stacked|<br>
  stacked.add :bar, 'Jack', [30, 60, 49, 29, 100, 120]<br>
  stacked.add :bar, 'Jill', [120, 240, 0, 100, 140, 20]<br>
  stacked.add :bar, 'Hill', [10, 10, 90, 20, 40, 10]<br>
end<br>
graph.point_markers = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun']</p><p>graph.render(:width =&gt; 800, :as =&gt; ‘JPG’)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-08-18T15:24:00+00:00">August 18, 2006 at 3:24 pm</time></p>
      <p>Oops. Sorry about that. It was a bit of a quick hack together. I will now fix with your code. Thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-08-18T15:31:00+00:00">August 18, 2006 at 3:31 pm</time></p>
      <p>Now fixed.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>brasten</strong> &middot; <time datetime="2006-08-18T19:37:00+00:00">August 18, 2006 at 7:37 pm</time></p>
      <p>Thanks Peter!  To be honest I'd read that block of code here a dozen times and didn't notice that until Sean said something. :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
