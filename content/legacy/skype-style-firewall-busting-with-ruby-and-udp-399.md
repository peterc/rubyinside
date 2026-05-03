---
title: Skype-Style Firewall Busting with Ruby and UDP
date: '2007-02-26'
author: Peter Cooper
author_slug: admin
post_id: 399
slug: skype-style-firewall-busting-with-ruby-and-udp-399
url: "/skype-style-firewall-busting-with-ruby-and-udp-399.html"
categories:
- cool
- ruby-tricks
---

{{< rawhtml >}}
<p>Skype and Google Talk are pretty clever in the way that they still work even if all of its users are behind firewalls (or NAT systems) that block incoming connections. The way they enable two-way connections is by using a <a href="http://www.heise-security.co.uk/articles/82481">'firewall busting' technique</a>. Simply, a central server does nothing but share IP addresses (and port numbers) and clients can then 'punch' holes through their firewalls and trick their firewalls and routers to route incoming packets back to them if they have certain source host and port numbers.</p>
<p>I was playing with the technique and have put together an example client that you can run on two separate hosts that have no open incoming ports but which demonstrates two way connection to an arbitrary port (6311 in this case) with UDP. Run this code on separate hosts and provide the hostname of the <em>other</em> host as a command line argument. This way, both programs will punch a hole through their own firewall and connect to each other, before randomly swapping messages back and forth.</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">socket</span><span class="punct">'</span>

<span class="ident">remote_host</span> <span class="punct">=</span> <span class="constant">ARGV</span><span class="punct">.</span><span class="ident">first</span>

<span class="comment"># Punches hole in firewall</span>
<span class="ident">punch</span> <span class="punct">=</span> <span class="constant">UDPSocket</span><span class="punct">.</span><span class="ident">new</span>
<span class="ident">punch</span><span class="punct">.</span><span class="ident">bind</span><span class="punct">('</span><span class="string"></span><span class="punct">',</span> <span class="number">6311</span><span class="punct">)</span>
<span class="ident">punch</span><span class="punct">.</span><span class="ident">send</span><span class="punct">('</span><span class="string"></span><span class="punct">',</span> <span class="number">0</span><span class="punct">,</span> <span class="ident">remote_host</span><span class="punct">,</span> <span class="number">6311</span><span class="punct">)</span>
<span class="ident">punch</span><span class="punct">.</span><span class="ident">close</span>

<span class="comment"># Bind for receiving</span>
<span class="ident">udp_in</span> <span class="punct">=</span> <span class="constant">UDPSocket</span><span class="punct">.</span><span class="ident">new</span>
<span class="ident">udp_in</span><span class="punct">.</span><span class="ident">bind</span><span class="punct">('</span><span class="string">0.0.0.0</span><span class="punct">',</span> <span class="number">6311</span><span class="punct">)</span>
<span class="ident">puts</span> <span class="punct">"</span><span class="string">Binding to local port 6311</span><span class="punct">"</span>

<span class="ident">loop</span> <span class="keyword">do</span>
  <span class="comment"># Receive data or time out after 5 seconds</span>
  <span class="keyword">if</span> <span class="constant">IO</span><span class="punct">.</span><span class="ident">select</span><span class="punct">([</span><span class="ident">udp_in</span><span class="punct">],</span> <span class="constant">nil</span><span class="punct">,</span> <span class="constant">nil</span><span class="punct">,</span> <span class="ident">rand</span><span class="punct">(</span><span class="number">4</span><span class="punct">))</span>
        <span class="ident">data</span> <span class="punct">=</span> <span class="ident">udp_in</span><span class="punct">.</span><span class="ident">recvfrom</span><span class="punct">(</span><span class="number">1024</span><span class="punct">)</span>
        <span class="ident">remote_port</span> <span class="punct">=</span> <span class="ident">data</span><span class="punct">[</span><span class="number">1</span><span class="punct">][</span><span class="number">1</span><span class="punct">]</span>
        <span class="ident">remote_addr</span> <span class="punct">=</span> <span class="ident">data</span><span class="punct">[</span><span class="number">1</span><span class="punct">][</span><span class="number">3</span><span class="punct">]</span>
        <span class="ident">puts</span> <span class="punct">"</span><span class="string">Response from </span><span class="expr">#{remote_addr}</span>:<span class="expr">#{remote_port}</span> is <span class="expr">#{data[0]}</span><span class="punct">"</span>
  <span class="keyword">else</span>
        <span class="ident">puts</span> <span class="punct">"</span><span class="string">Sending a little something..</span><span class="punct">"</span>
        <span class="ident">udp_in</span><span class="punct">.</span><span class="ident">send</span><span class="punct">(</span><span class="constant">Time</span><span class="punct">.</span><span class="ident">now</span><span class="punct">.</span><span class="ident">to_s</span><span class="punct">,</span> <span class="number">0</span><span class="punct">,</span> <span class="ident">remote_host</span><span class="punct">,</span> <span class="number">6311</span><span class="punct">)</span>
  <span class="keyword">end</span>
<span class="keyword">end</span></pre>
<p>If you have a cleaner way of doing this, post a comment. This is just a quick prototype, but it works fine on my test boxes.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Dave</strong> &middot; <time datetime="2007-02-26T02:12:00+00:00">February 26, 2007 at 2:12 am</time></p>
      <p>Wow, that code is awesome! I can't wait to try it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-02-28T00:20:00+00:00">February 28, 2007 at 12:20 am</time></p>
      <p>I just ran this on Dreamhost and a local machine and.. it works!</p><p>This technique could, therefore, be used to send data to your own port even on shared hosts, as long as you know the IP of who's connecting so you can punch the hole.</p><p>This could be done with the normally available HTTP technique..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alan</strong> &middot; <time datetime="2007-03-01T01:42:00+00:00">March 1, 2007 at 1:42 am</time></p>
      <p>Does this work with TCP?  Can I send a "punch" UDP packet to the remote host and then try recieving TCP connections?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-03-01T01:59:00+00:00">March 1, 2007 at 1:59 am</time></p>
      <p>Alan: Afraid not.. at least, not in its current state. TCP punching is far less elegant than UDP punching and support for it is rather patchy. <a href="http://www.brynosaurus.com/pub/net/p2pnat/" rel="nofollow">This paper</a> explains it all.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alan</strong> &middot; <time datetime="2007-03-02T04:21:00+00:00">March 2, 2007 at 4:21 am</time></p>
      <p>But surely Skype uses TCP?  I'll take a look at that paper.  Nice post, regardless.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-03-02T05:25:00+00:00">March 2, 2007 at 5:25 am</time></p>
      <p>I won't speak on their behalf, but I think those sort of programs offer fallbacks.. so if one doesn't work, it'll try another.</p><p>UDP is often used for streaming audio though since it doesn't matter if you lose a few packets here and there.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
