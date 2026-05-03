---
title: 'HTTParty: Quick Web Service Consumption From Any Ruby Class'
date: '2008-08-02'
author: Peter Cooper
author_slug: admin
post_id: 981
slug: httparty-web-api-rest-service-consumption-from-ruby-class-981
url: "/httparty-web-api-rest-service-consumption-from-ruby-class-981.html"
categories:
- cool
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2008/08/httparty.jpg" width="350" height="270" alt="httparty.jpg" style="border:1px #000000 solid;"></p>
<p><a href="http://railstips.org/2008/7/29/it-s-an-httparty-and-everyone-is-invited">HTTParty</a> is a new Ruby library by John Nunemaker (of <a href="http://railstips.org/">railstips.org</a> fame) that makes it a snap to build classes that can use Web-based APIs and related services. At its simplest, you include the HTTParty module within a class, which gives your class a "get" method that can retrieve data over HTTP. Further directives, however, instruct HTTParty to parse results (XML, JSON, and so on), define base URIs for the requests, and define HTTP authentication information.</p>
<p>HTTParty's simplicity is demonstrated in the most "complex" example John gives in his introduction post - a <em>Representative</em> class that can retrieve information about US Representatives from <a href="http://whoismyrepresentative.com">whoismyrepresentative.com</a>:</p>
<p>
</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">rubygems</span><span class="punct">'</span>
<span class="ident">require</span> <span class="punct">'</span><span class="string">httparty</span><span class="punct">'</span>

<span class="keyword">class </span><span class="class">Representative</span>
  <span class="ident">include</span> <span class="constant">HTTParty</span>
  <span class="ident">base_uri</span> <span class="punct">'</span><span class="string">whoismyrepresentative.com</span><span class="punct">'</span>
  <span class="ident">default_params</span> <span class="symbol">:output</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">json</span><span class="punct">'</span>
  <span class="ident">format</span> <span class="symbol">:json</span>

  <span class="keyword">def </span><span class="method">self.find_by_zip</span><span class="punct">(</span><span class="ident">zip</span><span class="punct">)</span>
    <span class="ident">get</span><span class="punct">('</span><span class="string">/whoismyrep.php</span><span class="punct">',</span> <span class="symbol">:query</span> <span class="punct">=&gt;</span> <span class="punct">{</span><span class="symbol">:zip</span> <span class="punct">=&gt;</span> <span class="ident">zip</span><span class="punct">})</span>
  <span class="keyword">end</span>

  <span class="keyword">def </span><span class="method">self.get_all_by_name</span><span class="punct">(</span><span class="ident">last_name</span><span class="punct">)</span>
    <span class="ident">get</span><span class="punct">('</span><span class="string">/getall_reps_byname.php</span><span class="punct">',</span> <span class="symbol">:query</span> <span class="punct">=&gt;</span> <span class="punct">{</span><span class="symbol">:lastname</span> <span class="punct">=&gt;</span> <span class="ident">last_name</span><span class="punct">})</span>
  <span class="keyword">end</span>
<span class="keyword">end</span>

<span class="ident">puts</span> <span class="constant">Representative</span><span class="punct">.</span><span class="ident">get_all_by_name</span><span class="punct">('</span><span class="string">Donnelly</span><span class="punct">').</span><span class="ident">inspect</span>
<span class="comment"># {"results"=&gt;[{"district"=&gt;"2", "last"=&gt;"Donnelly", "first"=&gt;"Joe", "state"=&gt;"IN", "party"=&gt;"D"}]}</span>
</pre>

<p>That code will work for you after a simple <em>gem install httparty</em>. So, join the HTTParty now; it looks pretty fun.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>John Nunemaker</strong> &middot; <time datetime="2008-08-02T18:11:00+00:00">August 2, 2008 at 6:11 pm</time></p>
      <p>Ha! Awesome httparty pic!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>jnstq</strong> &middot; <time datetime="2008-08-22T14:10:00+00:00">August 22, 2008 at 2:10 pm</time></p>
      <p>Ah! Nice. I just tried it for a remote login service, works great!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
