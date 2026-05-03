---
title: 'RDDB: RESTful Ruby Document-Oriented Database'
date: '2007-11-06'
author: Peter Cooper
author_slug: admin
post_id: 643
slug: rddb-restful-ruby-document-oriented-database-643
url: "/rddb-restful-ruby-document-oriented-database-643.html"
categories:
- cool
- ruby-tricks
---

{{< rawhtml >}}
<p><a href="http://rddb.rubyforge.org/">RDDB</a> is a Ruby document-oriented database system inspired by <a href="http://couchdb.org/">CouchDB</a> and developed by Anthony Eden. If you're familiar with CouchDB, the whole system should make sense from the start, but if not, read on. You can create a database and insert documents in a simple enough way:</p>
<pre><span class="comment"># First create an database object</span>
<span class="ident">database</span> <span class="punct">=</span> <span class="constant">Rddb</span><span class="punct">::</span><span class="constant">Database</span><span class="punct">.</span><span class="ident">new</span>

<span class="comment"># Put some documents into it</span>
<span class="ident">database</span> <span class="punct">&lt;&lt;</span> <span class="punct">{</span><span class="symbol">:name</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">John</span><span class="punct">',</span> <span class="symbol">:income</span> <span class="punct">=&gt;</span> <span class="number">35000</span><span class="punct">}</span>
<span class="ident">database</span> <span class="punct">&lt;&lt;</span> <span class="punct">{</span><span class="symbol">:name</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">Bob</span><span class="punct">',</span> <span class="symbol">:income</span> <span class="punct">=&gt;</span> <span class="number">40000</span><span class="punct">}</span></pre>
<p>To "query" the database, you define a "view" using a Ruby block, as such:</p>
<pre><span class="comment"># Create a view that will return the names</span>
<span class="ident">database</span><span class="punct">.</span><span class="ident">create_view</span><span class="punct">('</span><span class="string">names</span><span class="punct">')</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">document</span><span class="punct">,</span> <span class="ident">args</span><span class="punct">|</span>
  <span class="ident">document</span><span class="punct">.</span><span class="ident">name</span>
<span class="keyword">end</span>

<span class="comment"># The result of querying will return an array of names</span>
<span class="ident">assert_equal</span> <span class="punct">['</span><span class="string">John</span><span class="punct">','</span><span class="string">Bob</span><span class="punct">','</span><span class="string">Jim</span><span class="punct">'],</span> <span class="ident">database</span><span class="punct">.</span><span class="ident">query</span><span class="punct">('</span><span class="string">names</span><span class="punct">')</span></pre>
<p>Views are defined as Ruby blocks that are then used to select the documents and the attributes in the documents that you wish to retrieve. It all gets rather more powerful (and complex) than this very quickly (especially when you apply additional Ruby logic to views), and further examples are available to view at <a href="http://rddb.rubyforge.org/">the official RDDB site</a>.</p>
<p><em>(Thanks to Matthew Williams for pointing this library out)</em></p>
{{< /rawhtml >}}
