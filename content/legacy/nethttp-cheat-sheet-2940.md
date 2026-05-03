---
title: Net::HTTP Cheat Sheet
date: '2010-01-16'
author: Peter Cooper
author_slug: admin
post_id: 2940
slug: nethttp-cheat-sheet-2940
url: "/nethttp-cheat-sheet-2940.html"
categories:
- reference
---

{{< rawhtml >}}
<p><img src="/assets/2010/01/http-is-a-hamster-on-rollerblades-says-marc-andre-cournoyer.gif" width="120" height="120" alt="http-is-a-hamster-on-rollerblades-says-marc-andre-cournoyer.gif" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;">Norwegian Rubyist <a href="http://august.lilleaas.net/">August Lilleaas</a> has been busy putting together <a href="http://github.com/augustl/net-http-cheat-sheet">a ton of examples</a> of using the <a href="http://ruby-doc.org/stdlib/libdoc/net/http/rdoc/index.html">Net::HTTP</a> Ruby library that comes with most Ruby distributions. I asked him if it'd be okay to put some of them directly on Ruby Inside for reference purposes and he said "No problem!"</p>
<p>It's worth noting that Net::HTTP has been superseded in many areas by libraries like John Nunemaker's <a href="http://github.com/jnunemaker/httparty">HTTParty</a> and Paul DIx's high performance <a href="http://github.com/pauldix/typhoeus">Typhoeus</a>, but as part of the standard library, Net::HTTP is still a popular option though it doesn't have the easiest API to remember.</p>
<p>Here's a selection of August's examples for some of the most common operations. Want to see <i>all</i> of the examples and follow any updates made to them? Check out August's <a href="http://github.com/augustl/net-http-cheat-sheet">net-http-cheat-sheet GitHub repo</a>.</p>
<h3>Standard HTTP Request</h3>
<pre><span class="ident">require</span> <span class="punct">"</span><span class="string">net/http</span><span class="punct">"</span>
<span class="ident">require</span> <span class="punct">"</span><span class="string">uri</span><span class="punct">"</span>

<span class="ident">uri</span> <span class="punct">=</span> <span class="constant">URI</span><span class="punct">.</span><span class="ident">parse</span><span class="punct">("</span><span class="string">http://google.com/</span><span class="punct">")</span>

<span class="comment"># Shortcut</span>
<span class="ident">response</span> <span class="punct">=</span> <span class="constant">Net</span><span class="punct">::</span><span class="constant">HTTP</span><span class="punct">.</span><span class="ident">get_response</span><span class="punct">(</span><span class="ident">uri</span><span class="punct">)</span>

<span class="comment"># Will print response.body</span>
<span class="constant">Net</span><span class="punct">::</span><span class="constant">HTTP</span><span class="punct">.</span><span class="ident">get_print</span><span class="punct">(</span><span class="ident">uri</span><span class="punct">)</span>

<span class="comment"># Full</span>
<span class="ident">http</span> <span class="punct">=</span> <span class="constant">Net</span><span class="punct">::</span><span class="constant">HTTP</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="ident">uri</span><span class="punct">.</span><span class="ident">host</span><span class="punct">,</span> <span class="ident">uri</span><span class="punct">.</span><span class="ident">port</span><span class="punct">)</span>
<span class="ident">response</span> <span class="punct">=</span> <span class="ident">http</span><span class="punct">.</span><span class="ident">request</span><span class="punct">(</span><span class="constant">Net</span><span class="punct">::</span><span class="constant">HTTP</span><span class="punct">::</span><span class="constant">Get</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="ident">uri</span><span class="punct">.</span><span class="ident">request_uri</span><span class="punct">))</span></pre>
<h3>Basic Auth</h3>
<pre><span class="ident">require</span> <span class="punct">"</span><span class="string">net/http</span><span class="punct">"</span>
<span class="ident">require</span> <span class="punct">"</span><span class="string">uri</span><span class="punct">"</span>

<span class="ident">uri</span> <span class="punct">=</span> <span class="constant">URI</span><span class="punct">.</span><span class="ident">parse</span><span class="punct">("</span><span class="string">http://google.com/</span><span class="punct">")</span>

<span class="ident">http</span> <span class="punct">=</span> <span class="constant">Net</span><span class="punct">::</span><span class="constant">HTTP</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="ident">uri</span><span class="punct">.</span><span class="ident">host</span><span class="punct">,</span> <span class="ident">uri</span><span class="punct">.</span><span class="ident">port</span><span class="punct">)</span>
<span class="ident">request</span> <span class="punct">=</span> <span class="constant">Net</span><span class="punct">::</span><span class="constant">HTTP</span><span class="punct">::</span><span class="constant">Get</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="ident">uri</span><span class="punct">.</span><span class="ident">request_uri</span><span class="punct">)</span>
<span class="ident">request</span><span class="punct">.</span><span class="ident">basic_auth</span><span class="punct">("</span><span class="string">username</span><span class="punct">",</span> <span class="punct">"</span><span class="string">password</span><span class="punct">")</span>
<span class="ident">response</span> <span class="punct">=</span> <span class="ident">http</span><span class="punct">.</span><span class="ident">request</span><span class="punct">(</span><span class="ident">request</span><span class="punct">)</span></pre>
<h3>Dealing with response objects</h3>
<pre><span class="ident">require</span> <span class="punct">"</span><span class="string">net/http</span><span class="punct">"</span>
<span class="ident">require</span> <span class="punct">"</span><span class="string">uri</span><span class="punct">"</span>

<span class="ident">uri</span> <span class="punct">=</span> <span class="constant">URI</span><span class="punct">.</span><span class="ident">parse</span><span class="punct">("</span><span class="string">http://google.com/</span><span class="punct">")</span>

<span class="ident">http</span> <span class="punct">=</span> <span class="constant">Net</span><span class="punct">::</span><span class="constant">HTTP</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="ident">uri</span><span class="punct">.</span><span class="ident">host</span><span class="punct">,</span> <span class="ident">uri</span><span class="punct">.</span><span class="ident">port</span><span class="punct">)</span>
<span class="ident">request</span> <span class="punct">=</span> <span class="constant">Net</span><span class="punct">::</span><span class="constant">HTTP</span><span class="punct">::</span><span class="constant">Get</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="ident">uri</span><span class="punct">.</span><span class="ident">request_uri</span><span class="punct">)</span>

<span class="ident">response</span> <span class="punct">=</span> <span class="ident">http</span><span class="punct">.</span><span class="ident">request</span><span class="punct">(</span><span class="ident">request</span><span class="punct">)</span>

<span class="ident">response</span><span class="punct">.</span><span class="ident">code</span>             <span class="comment"># =&gt; 301</span>
<span class="ident">response</span><span class="punct">.</span><span class="ident">body</span>             <span class="comment"># =&gt; The body (HTML, XML, blob, whatever)</span>
<span class="comment"># Headers are lowercased</span>
<span class="ident">response</span><span class="punct">["</span><span class="string">cache-control</span><span class="punct">"]</span> <span class="comment"># =&gt; public, max-age=2592000</span></pre>
<h3>POST form request</h3>
<pre><span class="ident">require</span> <span class="punct">"</span><span class="string">net/http</span><span class="punct">"</span>
<span class="ident">require</span> <span class="punct">"</span><span class="string">uri</span><span class="punct">"</span>

<span class="ident">uri</span> <span class="punct">=</span> <span class="constant">URI</span><span class="punct">.</span><span class="ident">parse</span><span class="punct">("</span><span class="string">http://example.com/search</span><span class="punct">")</span>

<span class="comment"># Shortcut</span>
<span class="ident">response</span> <span class="punct">=</span> <span class="constant">Net</span><span class="punct">::</span><span class="constant">HTTP</span><span class="punct">.</span><span class="ident">post_form</span><span class="punct">(</span><span class="ident">uri</span><span class="punct">,</span> <span class="punct">{"</span><span class="string">q</span><span class="punct">"</span> <span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">My query</span><span class="punct">",</span> <span class="punct">"</span><span class="string">per_page</span><span class="punct">"</span> <span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">50</span><span class="punct">"})</span>

<span class="comment"># Full control</span>
<span class="ident">http</span> <span class="punct">=</span> <span class="constant">Net</span><span class="punct">::</span><span class="constant">HTTP</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="ident">uri</span><span class="punct">.</span><span class="ident">host</span><span class="punct">,</span> <span class="ident">uri</span><span class="punct">.</span><span class="ident">port</span><span class="punct">)</span>

<span class="ident">request</span> <span class="punct">=</span> <span class="constant">Net</span><span class="punct">::</span><span class="constant">HTTP</span><span class="punct">::</span><span class="constant">Post</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="ident">uri</span><span class="punct">.</span><span class="ident">request_uri</span><span class="punct">)</span>
<span class="ident">request</span><span class="punct">.</span><span class="ident">set_form_data</span><span class="punct">({"</span><span class="string">q</span><span class="punct">"</span> <span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">My query</span><span class="punct">",</span> <span class="punct">"</span><span class="string">per_page</span><span class="punct">"</span> <span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">50</span><span class="punct">"})</span>

<span class="ident">response</span> <span class="punct">=</span> <span class="ident">http</span><span class="punct">.</span><span class="ident">request</span><span class="punct">(</span><span class="ident">request</span><span class="punct">)</span></pre>
<h3>File upload - input type="file" style</h3>
<pre><span class="ident">require</span> <span class="punct">"</span><span class="string">net/http</span><span class="punct">"</span>
<span class="ident">require</span> <span class="punct">"</span><span class="string">uri</span><span class="punct">"</span>

<span class="comment"># Token used to terminate the file in the post body. Make sure it is not</span>
<span class="comment"># present in the file you're uploading.</span>
<span class="constant">BOUNDARY</span> <span class="punct">=</span> <span class="punct">"</span><span class="string">AaB03x</span><span class="punct">"</span>

<span class="ident">uri</span> <span class="punct">=</span> <span class="constant">URI</span><span class="punct">.</span><span class="ident">parse</span><span class="punct">("</span><span class="string">http://something.com/uploads</span><span class="punct">")</span>
<span class="ident">file</span> <span class="punct">=</span> <span class="punct">"</span><span class="string">/path/to/your/testfile.txt</span><span class="punct">"</span>

<span class="ident">post_body</span> <span class="punct">=</span> <span class="punct">[]</span>
<span class="ident">post_body</span> <span class="punct">&lt; &lt;</span> <span class="punct">"</span><span class="string">--<span class="expr">#{BOUNDARY}</span><span class="escape">rn</span></span><span class="punct">"</span>
<span class="ident">post_body</span> <span class="punct">&lt; &lt;</span> <span class="punct">"</span><span class="string">Content-Disposition: form-data; name=<span class="escape">"</span>datafile<span class="escape">"</span>; filename=<span class="escape">"</span><span class="expr">#{File.basename(file)}</span><span class="escape">"rn</span></span><span class="punct">"</span>
<span class="ident">post_body</span> <span class="punct">&lt; &lt;</span> <span class="punct">"</span><span class="string">Content-Type: text/plain<span class="escape">rn</span></span><span class="punct">"</span>
<span class="ident">post_body</span> <span class="punct">&lt; &lt;</span> <span class="punct">"</span><span class="string"><span class="escape">rn</span></span><span class="punct">"</span>
<span class="ident">post_body</span> <span class="punct">&lt; &lt;</span> <span class="constant">File</span><span class="punct">.</span><span class="ident">read</span><span class="punct">(</span><span class="ident">file</span><span class="punct">)</span>
<span class="ident">post_body</span> <span class="punct">&lt; &lt;</span> <span class="punct">"</span><span class="string"><span class="escape">rn</span>--<span class="expr">#{BOUNDARY}</span>--<span class="escape">rn</span></span><span class="punct">"</span>

<span class="ident">http</span> <span class="punct">=</span> <span class="constant">Net</span><span class="punct">::</span><span class="constant">HTTP</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="ident">uri</span><span class="punct">.</span><span class="ident">host</span><span class="punct">,</span> <span class="ident">uri</span><span class="punct">.</span><span class="ident">port</span><span class="punct">)</span>
<span class="ident">request</span> <span class="punct">=</span> <span class="constant">Net</span><span class="punct">::</span><span class="constant">HTTP</span><span class="punct">::</span><span class="constant">Post</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="ident">uri</span><span class="punct">.</span><span class="ident">request_uri</span><span class="punct">)</span>
<span class="ident">request</span><span class="punct">.</span><span class="ident">body</span> <span class="punct">=</span> <span class="ident">post_body</span><span class="punct">.</span><span class="ident">join</span>
<span class="ident">request</span><span class="punct">["</span><span class="string">Content-Type</span><span class="punct">"]</span> <span class="punct">=</span> <span class="punct">"</span><span class="string">multipart/form-data, boundary=<span class="expr">#{BOUNDARY}</span></span><span class="punct">"</span>

<span class="ident">http</span><span class="punct">.</span><span class="ident">request</span><span class="punct">(</span><span class="ident">request</span><span class="punct">)</span></pre>
<h3>SSL/HTTPS request</h3>
<p><strong>Update: There are some good reasons why this code example is bad. It introduces a potential security vulnerability if it's essential you use the server certificate to verify the identity of the server you're connecting to. There's <a href="how-to-cure-nethttps-risky-default-https-behavior-4010.html">a fix for the issue though!</a></strong></p>
<pre><span class="ident">require</span> <span class="punct">"</span><span class="string">net/https</span><span class="punct">"</span>
<span class="ident">require</span> <span class="punct">"</span><span class="string">uri</span><span class="punct">"</span>

<span class="ident">uri</span> <span class="punct">=</span> <span class="constant">URI</span><span class="punct">.</span><span class="ident">parse</span><span class="punct">("</span><span class="string">https://secure.com/</span><span class="punct">")</span>
<span class="ident">http</span> <span class="punct">=</span> <span class="constant">Net</span><span class="punct">::</span><span class="constant">HTTP</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="ident">uri</span><span class="punct">.</span><span class="ident">host</span><span class="punct">,</span> <span class="ident">uri</span><span class="punct">.</span><span class="ident">port</span><span class="punct">)</span>
<span class="ident">http</span><span class="punct">.</span><span class="ident">use_ssl</span> <span class="punct">=</span> <span class="constant">true</span>
<span class="ident">http</span><span class="punct">.</span><span class="ident">verify_mode</span> <span class="punct">=</span> <span class="constant">OpenSSL</span><span class="punct">::</span><span class="constant">SSL</span><span class="punct">::</span><span class="constant">VERIFY_NONE</span>

<span class="ident">request</span> <span class="punct">=</span> <span class="constant">Net</span><span class="punct">::</span><span class="constant">HTTP</span><span class="punct">::</span><span class="constant">Get</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="ident">uri</span><span class="punct">.</span><span class="ident">request_uri</span><span class="punct">)</span>

<span class="ident">response</span> <span class="punct">=</span> <span class="ident">http</span><span class="punct">.</span><span class="ident">request</span><span class="punct">(</span><span class="ident">request</span><span class="punct">)</span>
<span class="ident">response</span><span class="punct">.</span><span class="ident">body</span>
<span class="ident">response</span><span class="punct">.</span><span class="ident">status</span>
<span class="ident">response</span><span class="punct">["</span><span class="string">header-here</span><span class="punct">"]</span> <span class="comment"># All headers are lowercase</span></pre>
<h3>SSL/HTTPS request with PEM certificate</h3>
<pre><span class="ident">require</span> <span class="punct">"</span><span class="string">net/https</span><span class="punct">"</span>
<span class="ident">require</span> <span class="punct">"</span><span class="string">uri</span><span class="punct">"</span>

<span class="ident">uri</span> <span class="punct">=</span> <span class="constant">URI</span><span class="punct">.</span><span class="ident">parse</span><span class="punct">("</span><span class="string">https://secure.com/</span><span class="punct">")</span>
<span class="ident">pem</span> <span class="punct">=</span> <span class="constant">File</span><span class="punct">.</span><span class="ident">read</span><span class="punct">("</span><span class="string">/path/to/my.pem</span><span class="punct">")</span>
<span class="ident">http</span> <span class="punct">=</span> <span class="constant">Net</span><span class="punct">::</span><span class="constant">HTTP</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="ident">uri</span><span class="punct">.</span><span class="ident">host</span><span class="punct">,</span> <span class="ident">uri</span><span class="punct">.</span><span class="ident">port</span><span class="punct">)</span>
<span class="ident">http</span><span class="punct">.</span><span class="ident">use_ssl</span> <span class="punct">=</span> <span class="constant">true</span>
<span class="ident">http</span><span class="punct">.</span><span class="ident">cert</span> <span class="punct">=</span> <span class="constant">OpenSSL</span><span class="punct">::</span><span class="constant">X509</span><span class="punct">::</span><span class="constant">Certificate</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="ident">pem</span><span class="punct">)</span>
<span class="ident">http</span><span class="punct">.</span><span class="ident">key</span> <span class="punct">=</span> <span class="constant">OpenSSL</span><span class="punct">::</span><span class="constant">PKey</span><span class="punct">::</span><span class="constant">RSA</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="ident">pem</span><span class="punct">)</span>
<span class="ident">http</span><span class="punct">.</span><span class="ident">verify_mode</span> <span class="punct">=</span> <span class="constant">OpenSSL</span><span class="punct">::</span><span class="constant">SSL</span><span class="punct">::</span><span class="constant">VERIFY_PEER</span>

<span class="ident">request</span> <span class="punct">=</span> <span class="constant">Net</span><span class="punct">::</span><span class="constant">HTTP</span><span class="punct">::</span><span class="constant">Get</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="ident">uri</span><span class="punct">.</span><span class="ident">request_uri</span><span class="punct">)</span></pre>
<h3>REST methods</h3>
<pre><span class="comment"># Basic REST.</span>
<span class="comment"># Most REST APIs will set semantic values in response.body and response.code.</span>
<span class="ident">require</span> <span class="punct">"</span><span class="string">net/http</span><span class="punct">"</span>

<span class="ident">http</span> <span class="punct">=</span> <span class="constant">Net</span><span class="punct">::</span><span class="constant">HTTP</span><span class="punct">.</span><span class="ident">new</span><span class="punct">("</span><span class="string">api.restsite.com</span><span class="punct">")</span>

<span class="ident">request</span> <span class="punct">=</span> <span class="constant">Net</span><span class="punct">::</span><span class="constant">HTTP</span><span class="punct">::</span><span class="constant">Post</span><span class="punct">.</span><span class="ident">new</span><span class="punct">("</span><span class="string">/users</span><span class="punct">")</span>
<span class="ident">request</span><span class="punct">.</span><span class="ident">set_form_data</span><span class="punct">({"</span><span class="string">users[login]</span><span class="punct">"</span> <span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">quentin</span><span class="punct">"})</span>
<span class="ident">response</span> <span class="punct">=</span> <span class="ident">http</span><span class="punct">.</span><span class="ident">request</span><span class="punct">(</span><span class="ident">request</span><span class="punct">)</span>
<span class="comment"># Use nokogiri, hpricot, etc to parse response.body.</span>

<span class="ident">request</span> <span class="punct">=</span> <span class="constant">Net</span><span class="punct">::</span><span class="constant">HTTP</span><span class="punct">::</span><span class="constant">Get</span><span class="punct">.</span><span class="ident">new</span><span class="punct">("</span><span class="string">/users/1</span><span class="punct">")</span>
<span class="ident">response</span> <span class="punct">=</span> <span class="ident">http</span><span class="punct">.</span><span class="ident">request</span><span class="punct">(</span><span class="ident">request</span><span class="punct">)</span>
<span class="comment"># As with POST, the data is in response.body.</span>

<span class="ident">request</span> <span class="punct">=</span> <span class="constant">Net</span><span class="punct">::</span><span class="constant">HTTP</span><span class="punct">::</span><span class="constant">Put</span><span class="punct">.</span><span class="ident">new</span><span class="punct">("</span><span class="string">/users/1</span><span class="punct">")</span>
<span class="ident">request</span><span class="punct">.</span><span class="ident">set_form_data</span><span class="punct">({"</span><span class="string">users[login]</span><span class="punct">"</span> <span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">changed</span><span class="punct">"})</span>
<span class="ident">response</span> <span class="punct">=</span> <span class="ident">http</span><span class="punct">.</span><span class="ident">request</span><span class="punct">(</span><span class="ident">request</span><span class="punct">)</span>

<span class="ident">request</span> <span class="punct">=</span> <span class="constant">Net</span><span class="punct">::</span><span class="constant">HTTP</span><span class="punct">::</span><span class="constant">Delete</span><span class="punct">.</span><span class="ident">new</span><span class="punct">("</span><span class="string">/users/1</span><span class="punct">")</span>
<span class="ident">response</span> <span class="punct">=</span> <span class="ident">http</span><span class="punct">.</span><span class="ident">request</span><span class="punct">(</span><span class="ident">request</span><span class="punct">)</span></pre>
<p>There are more in August's repo if you want to keep browsing..</p>
<p style="background-color: #ffc; font-weight: bold; font-size: 13px; color: #000;">Job: New Relic is <a href="http://ruby.jobamatic.com/a/jbb/job-details/165476">looking for a Ruby on Rails developer in Portland, Oregon.</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-01-16T01:02:00+00:00">January 16, 2010 at 1:02 am</time></p>
      <p>The idea for the hamster on rollerskates issue can be discovered by checking out its filename.. :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Emmanuel</strong> &middot; <time datetime="2010-01-16T15:50:00+00:00">January 16, 2010 at 3:50 pm</time></p>
      <p>Anybody knows if the HTTP::Net issues related with Timeout is still present in all (or any) ruby versions?</p><p><a href="http://blog.headius.com/2008/02/rubys-threadraise-threadkill-timeoutrb.html" rel="nofollow">http://blog.headius.com/2008/02/rubys-threadraise-threadkill-timeoutrb.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>ratbeard</strong> &middot; <time datetime="2010-01-17T16:23:00+00:00">January 17, 2010 at 4:23 pm</time></p>
      <p>Another library that abstracts over Net::HTTP is Adam Wiggin's 'rest-client' library.  It seems more targeted toward single requests (i.e. Restclient.get 'google.com') than mixing in and building a request class like HTTParty, though both libraries do variants of each style.  It has a great interactive shell and request logging.</p><p><a href="http://github.com/archiloque/rest-client/" rel="nofollow">http://github.com/archiloque/rest-client/</a></p><p>I **highly** recommend another library authored by Mr. Wiggins that abstracts over the messy file system api, 'rush'.  I'm really surprised that more libraries and apps that have a non-trivial amount of file system code don't use it.</p><p><a href="http://rush.heroku.com/" rel="nofollow">http://rush.heroku.com/</a></p><p>The code is very clean in both, I tip my hat to you Mr. Wiggins.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>August Lilleaas</strong> &middot; <time datetime="2010-01-19T10:19:00+00:00">January 19, 2010 at 10:19 am</time></p>
      <p>I always use one of these libraries when I can (rest-client, httparty, ...). In some cases you'd be better off without dependencies, though, such as in small shell scripts, etc.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
