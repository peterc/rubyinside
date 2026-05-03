---
title: Simple File Upload to Amazon S3 From Ruby
date: '2006-11-30'
author: Peter Cooper
author_slug: admin
post_id: 313
slug: simple-file-upload-to-amazon-s3-from-ruby-313
url: "/simple-file-upload-to-amazon-s3-from-ruby-313.html"
categories:
- ruby-tricks
---

{{< rawhtml >}}
<p>There's more about Amazon S3 and Marcel Molina's hot new library coming as the first day of the <a href="advent2006/index.html">Ruby Advent Calendar</a> (this Friday!), so I don't want to say too much about it yet. For anyone already enjoying this library, however, I put together a scrappy program that lets me copy files up to S3 from the command line easily:</p>
<pre>
<span class="comment">#!/usr/bin/env ruby</span>

<span class="ident">require</span> <span class="punct">'</span><span class="string">rubygems</span><span class="punct">'</span>
<span class="ident">require</span> <span class="punct">'</span><span class="string">aws/s3</span><span class="punct">'</span>

<span class="ident">local_file</span> <span class="punct">=</span> <span class="constant">ARGV</span><span class="punct">[</span><span class="number">0</span><span class="punct">]</span>
<span class="ident">bucket</span> <span class="punct">=</span> <span class="constant">ARGV</span><span class="punct">[</span><span class="number">1</span><span class="punct">]</span>
<span class="ident">mime_type</span> <span class="punct">=</span> <span class="constant">ARGV</span><span class="punct">[</span><span class="number">2</span><span class="punct">]</span> <span class="punct">||</span> <span class="punct">"</span><span class="string">application/octet-stream</span><span class="punct">"</span>

<span class="constant">AWS</span><span class="punct">::</span><span class="constant">S3</span><span class="punct">::</span><span class="constant">Base</span><span class="punct">.</span><span class="ident">establish_connection!</span><span class="punct">(</span>
  <span class="symbol">:access_key_id</span>     <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">REPLACE_ME</span><span class="punct">',</span>
  <span class="symbol">:secret_access_key</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">REPLACE_ME</span><span class="punct">'</span>
<span class="punct">)</span>

<span class="ident">base_name</span> <span class="punct">=</span> <span class="constant">File</span><span class="punct">.</span><span class="ident">basename</span><span class="punct">(</span><span class="ident">local_file</span><span class="punct">)</span>

<span class="ident">puts</span> <span class="punct">"</span><span class="string">Uploading </span><span class="expr">#{local_file}</span> as '<span class="expr">#{base_name}</span>' to '<span class="expr">#{bucket}</span>'<span class="punct">"</span>

<span class="constant">AWS</span><span class="punct">::</span><span class="constant">S3</span><span class="punct">::</span><span class="constant">S3Object</span><span class="punct">.</span><span class="ident">store</span><span class="punct">(</span>
  <span class="ident">base_name</span><span class="punct">,</span>
  <span class="constant">File</span><span class="punct">.</span><span class="ident">open</span><span class="punct">(</span><span class="ident">local_file</span><span class="punct">),</span>
  <span class="ident">bucket</span><span class="punct">,</span>
  <span class="symbol">:content_type</span> <span class="punct">=&gt;</span> <span class="ident">mime_type</span>
<span class="punct">)</span>

<span class="ident">puts</span> <span class="punct">"</span><span class="string">Uploaded!</span><span class="punct">"</span></pre>
<p>Just name it <em>s3cp</em> (or similar), chmod it, and then you can do stuff like:</p>
<p><em>s3cp ~/somefile.whatever bucket</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Martijn</strong> &middot; <time datetime="2006-11-30T16:35:00+00:00">November 30, 2006 at 4:35 pm</time></p>
      <p>S3 tools are definitely getting more interesting. This one is nice and simple.<br>
I'm still hoping for one that's compatible with Jungle Disk's encryption.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
