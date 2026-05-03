---
title: Columnized text datasets in Rails
date: '2006-06-12'
author: Peter Cooper
author_slug: admin
post_id: 71
slug: columnized-text-datasets-in-rails-71
url: "/columnized-text-datasets-in-rails-71.html"
categories:
- ruby-on-rails
---

{{< rawhtml >}}
<p>A few days ago, Courtenay of Caboose posted an article called '<a href="http://habtm.com/articles/2006/06/10/pretty-tables-for-ruby-objects">pretty tables for ruby objects</a>' that give a MySQL-command-line-client style textual view of data stored in your Rails database. The syntax worked like this:</p>
<pre><span class="ident">puts</span> <span class="constant">Invoice</span><span class="punct">.</span><span class="ident">pretty_table</span><span class="punct">(</span><span class="constant">nil</span><span class="punct">,{</span><span class="symbol">:max_width</span> <span class="punct">=&gt;</span> <span class="number">50</span><span class="punct">,</span> <span class="symbol">:line_spacer</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">-</span><span class="punct">',</span> <span class="symbol">:find</span> <span class="punct">=&gt;</span> <span class="punct">{</span> <span class="symbol">:order</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">created_at desc</span><span class="punct">'</span> <span class="punct">}})</span>
</pre>
<p>For an output like so:</p>
<pre>| created_at                   | updated_at                   | name       | due_at                       | p |
---------------------------------------------------------------------------------------------------------------
| Fri Jun 09 14:17:00 PDT 2006 | Fri Jun 09 18:34:55 PDT 2006 | Website    | Sun Jul 09 14:17:00 PDT 2006 | 1 |
| Fri Jun 09 14:01:00 PDT 2006 | Fri Jun 09 18:34:55 PDT 2006 | May        | Fri Jun 23 14:01:00 PDT 2006 | 1 |
| Sat Jun 03 12:25:00 PDT 2006 | Fri Jun 09 18:34:55 PDT 2006 | Invoice 3  | Mon Jul 03 12:25:00 PDT 2006 | 3 |
</pre>
<p>It didn't make sense to me and I suggested developing a version that worked in this way instead:</p>
<pre><span class="constant">Something</span><span class="punct">.</span><span class="ident">find</span><span class="punct">(</span><span class="symbol">:all</span><span class="punct">,</span> <span class="symbol">:conditions</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">whatever</span><span class="punct">').</span><span class="ident">pretty_print</span>
</pre>
<p>This way you can use your regular model accessors and simply use the 'pretty' output on any result set whatsoever. I didn't hear anything back so I wrote it myself and am releasing the code here <em>(Note: it seems courtenay was listening, and he also developed the same thing - see the article previous - but mine is different enough for it to be worth posting it still)</em>:</p>
<pre><span class="keyword">class </span><span class="class">Array</span>

  <span class="ident">protected</span>

    <span class="keyword">def </span><span class="method">columnized_row</span><span class="punct">(</span><span class="ident">fields</span><span class="punct">,</span> <span class="ident">sized</span><span class="punct">)</span>
      <span class="ident">r</span> <span class="punct">=</span> <span class="punct">[]</span>
      <span class="ident">fields</span><span class="punct">.</span><span class="ident">each_with_index</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">f</span><span class="punct">,</span> <span class="ident">i</span><span class="punct">|</span>
        <span class="ident">r</span> <span class="punct">&lt;&lt;</span> <span class="ident">sprintf</span><span class="punct">("</span><span class="string">%0-</span><span class="expr">#{sized[i]}</span>s<span class="punct">",</span> <span class="ident">f</span><span class="punct">.</span><span class="ident">to_s</span><span class="punct">.</span><span class="ident">gsub</span><span class="punct">(/</span><span class="escape">\n</span>|<span class="escape">\r</span><span class="punct">/,</span> <span class="punct">'').</span><span class="ident">slice</span><span class="punct">(</span><span class="number">0</span><span class="punct">,</span> <span class="ident">sized</span><span class="punct">[</span><span class="ident">i</span><span class="punct">]))</span>
      <span class="keyword">end</span>
      <span class="ident">r</span><span class="punct">.</span><span class="ident">join</span><span class="punct">('</span><span class="string"> | </span><span class="punct">')</span>
    <span class="keyword">end</span>

  <span class="ident">public</span>

  <span class="keyword">def </span><span class="method">columnized</span><span class="punct">(</span><span class="ident">options</span> <span class="punct">=</span> <span class="punct">{})</span>
    <span class="ident">sized</span> <span class="punct">=</span> <span class="punct">{}</span>
    <span class="constant">self</span><span class="punct">.</span><span class="ident">each</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">row</span><span class="punct">|</span>
      <span class="ident">row</span><span class="punct">.</span><span class="ident">attributes</span><span class="punct">.</span><span class="ident">values</span><span class="punct">.</span><span class="ident">each_with_index</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">value</span><span class="punct">,</span> <span class="ident">i</span><span class="punct">|</span>
        <span class="ident">sized</span><span class="punct">[</span><span class="ident">i</span><span class="punct">]</span> <span class="punct">=</span> <span class="punct">[</span><span class="ident">sized</span><span class="punct">[</span><span class="ident">i</span><span class="punct">].</span><span class="ident">to_i</span><span class="punct">,</span> <span class="ident">row</span><span class="punct">.</span><span class="ident">attributes</span><span class="punct">.</span><span class="ident">keys</span><span class="punct">[</span><span class="ident">i</span><span class="punct">].</span><span class="ident">length</span><span class="punct">,</span> <span class="ident">value</span><span class="punct">.</span><span class="ident">to_s</span><span class="punct">.</span><span class="ident">length</span><span class="punct">].</span><span class="ident">max</span>
        <span class="ident">sized</span><span class="punct">[</span><span class="ident">i</span><span class="punct">]</span> <span class="punct">=</span> <span class="punct">[</span><span class="ident">options</span><span class="punct">[</span><span class="symbol">:max_width</span><span class="punct">],</span> <span class="ident">sized</span><span class="punct">[</span><span class="ident">i</span><span class="punct">].</span><span class="ident">to_i</span><span class="punct">].</span><span class="ident">min</span> <span class="keyword">if</span> <span class="ident">options</span><span class="punct">[</span><span class="symbol">:max_width</span><span class="punct">]</span>
      <span class="keyword">end</span>
    <span class="keyword">end</span>

    <span class="ident">table</span> <span class="punct">=</span> <span class="punct">[]</span>
    <span class="ident">table</span> <span class="punct">&lt;&lt;</span> <span class="ident">header</span> <span class="punct">=</span> <span class="ident">columnized_row</span><span class="punct">(</span><span class="constant">self</span><span class="punct">.</span><span class="ident">first</span><span class="punct">.</span><span class="ident">attributes</span><span class="punct">.</span><span class="ident">keys</span><span class="punct">,</span> <span class="ident">sized</span><span class="punct">)</span>
    <span class="ident">table</span> <span class="punct">&lt;&lt;</span> <span class="ident">header</span><span class="punct">.</span><span class="ident">gsub</span><span class="punct">(/</span><span class="regex">.</span><span class="punct">/,</span> <span class="punct">'</span><span class="string">-</span><span class="punct">')</span>
    <span class="constant">self</span><span class="punct">.</span><span class="ident">each</span> <span class="punct">{</span> <span class="punct">|</span><span class="ident">row</span><span class="punct">|</span> <span class="ident">table</span> <span class="punct">&lt;&lt;</span> <span class="ident">columnized_row</span><span class="punct">(</span><span class="ident">row</span><span class="punct">.</span><span class="ident">attributes</span><span class="punct">.</span><span class="ident">values</span><span class="punct">,</span> <span class="ident">sized</span><span class="punct">)</span> <span class="punct">}</span>
    <span class="ident">table</span><span class="punct">.</span><span class="ident">join</span><span class="punct">("</span><span class="escape">\n</span><span class="punct">")</span>
  <span class="keyword">end</span>
<span class="keyword">end</span>

<span class="keyword">class </span><span class="class">ActiveRecord::Base</span>
  <span class="keyword">def </span><span class="method">columnized</span><span class="punct">(</span><span class="ident">options</span> <span class="punct">=</span> <span class="punct">{})</span>
    <span class="punct">[*</span><span class="constant">self</span><span class="punct">].</span><span class="ident">columnized</span><span class="punct">(</span><span class="ident">options</span><span class="punct">)</span>
  <span class="keyword">end</span>
<span class="keyword">end</span>
</pre>
<p>To use:</p>
<pre>&gt;&gt; <span class="ident">puts</span> <span class="constant">Post</span><span class="punct">.</span><span class="ident">find</span><span class="punct">(</span><span class="symbol">:all</span><span class="punct">).</span><span class="ident">columnized</span><span class="punct">(</span><span class="symbol">:max_width</span> <span class="punct">=&gt;</span> <span class="number">10</span><span class="punct">)</span>
updated_at | title      | private | url | thumb      | metadata | movie      | id  | views | content    | user_id | created_at
------------------------------------------------------------------------------------------------------------------------------
Wed May 31 | tetwer     | 0       |     |            |          |            | 909 | 0     | video:xyzz | 1       | Wed May 31
Wed May 31 | bbbb       | 0       |     |            |          |            | 1   | 15    | // descrip | 1       | Tue May 23
Wed May 31 | cxzcxzx    | 0       |     |            |          |            | 906 | 19    | // descrip | 1       | Tue May 23
Wed May 31 | jklklkl;   | 0       |     |            |          |            | 907 | 35    | // descrip | 1       | Tue May 23
</pre>
<p>If you want to use it with your project, put the code into lib/columnized.rb, use <em>require 'columnized'</em>, and you're ready to roll. Unlike courtenay's version, mine only supports max_width, but I didn't consider changing the column separator too important :)</p>
{{< /rawhtml >}}
