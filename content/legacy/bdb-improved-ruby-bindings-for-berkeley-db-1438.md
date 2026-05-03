---
title: 'bdb: Improved Ruby Bindings for Berkeley DB'
date: '2009-01-09'
author: Peter Cooper
author_slug: admin
post_id: 1438
slug: bdb-improved-ruby-bindings-for-berkeley-db-1438
url: "/bdb-improved-ruby-bindings-for-berkeley-db-1438.html"
categories:
- miscellaneous
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2009/01/berkdb.png" width="137" height="67" alt="berkdb.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"> <a href="http://en.wikipedia.org/wiki/Berkeley_DB">Berkeley DB</a> is a high performance database system initially developed in the early 1990s. It's not an SQL driven database engine - it just stores data in key/value pairs - but BDB is very fast, available to use on most operating systems, and is <a href="http://www.oracle.com/technology/software/products/berkeley-db/htdocs/licensing.html">dual licensed</a> for open source and commercial use. It has several benefits to just using a flat file or a <a href="http://www.ruby-doc.org/stdlib/libdoc/pstore/rdoc/classes/PStore.html">PStore</a>: transactions, fine-grained locking, replication, and hot backups, for starters.</p>
<p>While Ruby bindings already exist for BDB, Matt Bauer has just <a href="http://github.com/mattbauer/bdb/tree/master">released some all new shiny ones</a> that are fast and easy to use. You'll need to have Berkeley DB installed as a library on your system before you get started, of course. On OS X, the MacPort for Berkeley DB 4.6 is called <em>db46</em>. On Ubuntu try <em>libdb-dev</em>. Alternatively, go to <a href="http://www.oracle.com/technology/products/berkeley-db/db/index.html">the official Berkeley DB site</a> and download the source. Follow Matt's <a href="http://github.com/mattbauer/bdb/tree/master/README.textile">README</a> for instructions on installing the Ruby bindings.</p>
<p>Sample usage:</p>
<pre><span class="ident">env</span> <span class="punct">=</span> <span class="constant">Bdb</span><span class="punct">::</span><span class="constant">Env</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="number">0</span><span class="punct">)</span>
<span class="ident">env_flags</span> <span class="punct">=</span>  <span class="constant">Bdb</span><span class="punct">::</span><span class="constant">DB_CREATE</span> <span class="punct">|</span>    <span class="comment"># Create the environment if it does not already exist.</span>
             <span class="constant">Bdb</span><span class="punct">::</span><span class="constant">DB_INIT_TXN</span>  <span class="punct">|</span> <span class="comment"># Initialize transactions</span>
             <span class="constant">Bdb</span><span class="punct">::</span><span class="constant">DB_INIT_LOCK</span> <span class="punct">|</span> <span class="comment"># Initialize locking.</span>
             <span class="constant">Bdb</span><span class="punct">::</span><span class="constant">DB_INIT_LOG</span>  <span class="punct">|</span> <span class="comment"># Initialize logging</span>
             <span class="constant">Bdb</span><span class="punct">::</span><span class="constant">DB_INIT_MPOOL</span>  <span class="comment"># Initialize the in-memory cache.</span>
<span class="ident">env</span><span class="punct">.</span><span class="ident">open</span><span class="punct">(</span><span class="constant">File</span><span class="punct">.</span><span class="ident">join</span><span class="punct">(</span><span class="constant">File</span><span class="punct">.</span><span class="ident">dirname</span><span class="punct">(</span><span class="constant">__FILE__</span><span class="punct">),</span> <span class="punct">'</span><span class="string">tmp</span><span class="punct">'),</span> <span class="ident">env_flags</span><span class="punct">,</span> <span class="number">0</span><span class="punct">);</span>

<span class="ident">db</span> <span class="punct">=</span> <span class="ident">env</span><span class="punct">.</span><span class="ident">db</span>
<span class="ident">db</span><span class="punct">.</span><span class="ident">open</span><span class="punct">(</span><span class="constant">nil</span><span class="punct">,</span> <span class="punct">'</span><span class="string">db1.db</span><span class="punct">',</span> <span class="constant">nil</span><span class="punct">,</span> <span class="constant">Bdb</span><span class="punct">::</span><span class="constant">Db</span><span class="punct">::</span><span class="constant">BTREE</span><span class="punct">,</span> <span class="constant">Bdb</span><span class="punct">::</span><span class="constant">DB_CREATE</span> <span class="punct">|</span> <span class="constant">Bdb</span><span class="punct">::</span><span class="constant">DB_AUTO_COMMIT</span><span class="punct">,</span> <span class="number">0</span><span class="punct">)</span>    

<span class="ident">txn</span> <span class="punct">=</span> <span class="ident">env</span><span class="punct">.</span><span class="ident">txn_begin</span><span class="punct">(</span><span class="constant">nil</span><span class="punct">,</span> <span class="number">0</span><span class="punct">)</span>
<span class="ident">db</span><span class="punct">.</span><span class="ident">put</span><span class="punct">(</span><span class="ident">txn</span><span class="punct">,</span> <span class="punct">'</span><span class="string">key</span><span class="punct">',</span> <span class="punct">'</span><span class="string">value</span><span class="punct">',</span> <span class="number">0</span><span class="punct">)</span>
<span class="ident">txn</span><span class="punct">.</span><span class="ident">commit</span><span class="punct">(</span><span class="number">0</span><span class="punct">)</span>

<span class="ident">p</span> <span class="ident">db</span><span class="punct">.</span><span class="ident">get</span><span class="punct">(</span><span class="constant">nil</span><span class="punct">,</span> <span class="punct">'</span><span class="string">key</span><span class="punct">',</span> <span class="constant">nil</span><span class="punct">,</span> <span class="number">0</span><span class="punct">)</span>

<span class="ident">db</span><span class="punct">.</span><span class="ident">close</span><span class="punct">(</span><span class="number">0</span><span class="punct">)</span>
<span class="ident">env</span><span class="punct">.</span><span class="ident">close</span></pre>
<p>Okay, it's not the easiest to read code in the world, but Berkeley DB's power outweighs the modest complexity of its API. If Berkeley DB and its ways are still fresh to you, check out <a href="http://pybsddb.sourceforge.net/reftoc.html">this guide</a> (slightly but not significantly out of date) to get up to speed on the main concepts.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Matt Bauer</strong> &middot; <time datetime="2009-01-09T22:28:00+00:00">January 9, 2009 at 10:28 pm</time></p>
      <p>Thanks Peter for the write up.  I would like to make this more Ruby like as it follows the C API very closely right now.  I have some ideas on paper, just need a weekend to work on it.  I also want to mention that Dan Janowski deserves a lot of credit here too.  He did the original work on the binding.  Also worth noting is Guy Decoux who did the very first Ruby binding which inspired Dan to do his.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Zhao Difei</strong> &middot; <time datetime="2009-01-11T02:26:00+00:00">January 11, 2009 at 2:26 am</time></p>
      <p>Did you guys noticed tokyocabinet?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-01-11T12:32:00+00:00">January 11, 2009 at 12:32 pm</time></p>
      <p>Yeah, I'm looking into it right now :) As well as MemcacheDB.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike</strong> &middot; <time datetime="2009-01-12T13:50:00+00:00">January 12, 2009 at 1:50 pm</time></p>
      <p>Hey this looks nice, I'll start my experiments with it right now (we are building a 500mio records a year system for a bank).</p><p>I assume every Ruby aficionado here will agree that the transactions should be using blocks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike</strong> &middot; <time datetime="2009-01-13T13:15:00+00:00">January 13, 2009 at 1:15 pm</time></p>
      <p>Can somebody please explain how to add records to a QUEUE or RECNO database? I keep getting 'illegal record number size' errors.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
