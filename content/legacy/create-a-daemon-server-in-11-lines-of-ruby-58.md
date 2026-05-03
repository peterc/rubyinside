---
title: Create a daemon / server in 11 lines of Ruby
date: '2006-06-08'
author: Peter Cooper
author_slug: admin
post_id: 58
slug: create-a-daemon-server-in-11-lines-of-ruby-58
url: "/create-a-daemon-server-in-11-lines-of-ruby-58.html"
categories:
- cool
- ruby-tricks
- tutorials
---

{{< rawhtml >}}
<p>Lately I've been finding little known Ruby gems and trying them out. My latest find is <a href="http://rubyforge.org/projects/eventmachine">EventMachine</a>. EventMachine describes itself:</p>
<blockquote><p><em>Ruby/EventMachine is a fast, simple event-processing library for Ruby programs. It lets you write network clients and servers without handling sockets- all you do is send and receive data. Single-threaded socket engine- scalable and FAST!</em></p></blockquote>
<p>Simply install with <em>gem install eventmachine</em> and you can create a fast, multi-user server / daemon like so:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">rubygems</span><span class="punct">'</span>
<span class="ident">require</span> <span class="punct">'</span><span class="string">eventmachine</span><span class="punct">'</span>

<span class="keyword">module </span><span class="module">EchoServer</span>
  <span class="keyword">def </span><span class="method">receive_data</span><span class="punct">(</span><span class="ident">data</span><span class="punct">)</span>
    <span class="ident">send_data</span> <span class="punct">"</span><span class="string">&gt;&gt;&gt; You sent: </span><span class="expr">#{data}</span><span class="punct">"</span>
    <span class="ident">close_connection</span> <span class="keyword">if</span> <span class="ident">data</span> <span class="punct">=~</span> <span class="punct">/</span><span class="regex">quit|exit</span><span class="punct">/</span><span class="ident">i</span>
  <span class="keyword">end</span>
<span class="keyword">end</span>

<span class="constant">EventMachine</span><span class="punct">::</span><span class="ident">run</span> <span class="punct">{</span>
  <span class="constant">EventMachine</span><span class="punct">::</span><span class="ident">start_server</span> <span class="punct">"</span><span class="string">127.0.0.1</span><span class="punct">",</span> <span class="number">8081</span><span class="punct">,</span> <span class="constant">EchoServer</span>
<span class="punct">}</span>
</pre>
<p>Once you run this, you can telnet to localhost on port 8081 and have a conversation with yourself!</p>
<p>You create servers using your own protocols as modules, and pass the modules to EventMachine to handle (a bit like servlets with WEBrick, but TCP rather than HTTP based). You could reasonably easily write a basic chat server (with dRb), POP3 server, or any sort of low level server you want, and EventMachine handles the whole connection and daemon side for you.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Doug @ Straw Dogs</strong> &middot; <time datetime="2006-06-10T00:33:00+00:00">June 10, 2006 at 12:33 am</time></p>
      <p>Definately a gem I'll be looking into.  I often forget quite how many useful ones are out there yet to be discovered.  One I recently found useful for work is Adwords4r which is a Ruby API implementation of the Adwords SOAP service.</p><p>I'll be giving this a go though.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
