---
title: 'VCR: A Recorder For All Your Tests’ HTTP Interactions'
date: '2011-01-04'
author: Peter Cooper
author_slug: admin
post_id: 4169
slug: vcr-a-recorder-for-all-your-tests-http-interactions-4169
url: "/vcr-a-recorder-for-all-your-tests-http-interactions-4169.html"
categories:
- cool
---

{{< rawhtml >}}
<p><img src="/assets/2011/01/haha-funny.png" width="83" height="57" alt="haha-funny.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"><a href="https://github.com/myronmarston/vcr">VCR</a> is a library by Myron Marston that records your test suite's HTTP interactions so that they can be quickly replayed during future test runs. The big win is that you get predictable, quick and accurate tests. If you need to update the data, just delete the fixtures VCR generates and you're good to go.</p>
<p>On the surface, VCR sounds like it copies the work of libraries like <a href="http://fakeweb.rubyforge.org/">FakeWeb</a> and <a href="https://github.com/bblimke/webmock">Webmock</a>, but VCR <i>uses</i> those libraries to provide a cleaner, more abstracted experience. VCR supports the mocking features of FakeWeb, Webmock, <a href="https://github.com/pauldix/typhoeus">Typhoeus</a> and <a href="https://github.com/technoweenie/faraday/">Faraday</a> out of the box, and further, supports multiple HTTP client libraries including Net::HTTP, Typhoeus, HTTPClient, Curb, Patron, em-http-request and Net::HTTP-based clients like HTTParty, RESTClient and Mechanize.</p>
<p>You can learn more at <a href="https://github.com/myronmarston/vcr">the VCR GitHub page</a> (it has a good, basic README) or give it a try right now with the following:</p>
<p>
</p>
<pre><code>sudo gem install webmock vcr</code></pre>

<p>And then run the following code:</p>
<pre>require 'rubygems'
<span class="ident">require</span> <span class="punct">'</span><span class="string">test/unit</span><span class="punct">'</span>
<span class="ident">require</span> <span class="punct">'</span><span class="string">vcr</span><span class="punct">'</span>

<span class="constant">VCR</span><span class="punct">.</span><span class="ident">config</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">c</span><span class="punct">|</span>
  <span class="ident">c</span><span class="punct">.</span><span class="ident">cassette_library_dir</span> <span class="punct">=</span> <span class="punct">'</span><span class="string">fixtures/vcr_cassettes</span><span class="punct">'</span>
  <span class="ident">c</span><span class="punct">.</span><span class="ident">stub_with</span> <span class="symbol">:webmock</span> <span class="comment"># or :fakeweb</span>
<span class="keyword">end</span>

<span class="keyword">class </span><span class="class">VCRTest</span> <span class="punct">&lt; </span> <span class="constant">Test</span><span class="punct">::</span><span class="constant">Unit</span><span class="punct">::</span><span class="constant">TestCase</span>
  <span class="keyword">def </span><span class="method">test_example_dot_com</span>
    <span class="constant">VCR</span><span class="punct">.</span><span class="ident">use_cassette</span><span class="punct">('</span><span class="string">synopsis</span><span class="punct">',</span> <span class="symbol">:record</span> <span class="punct">=&gt;</span> <span class="symbol">:n</span></pre>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Myron Marston</strong> &middot; <time datetime="2011-01-04T15:37:00+00:00">January 4, 2011 at 3:37 pm</time></p>
      <p>Thanks, Peter :).</p><p>It's worth mentioning that for the code example above to work on ruby 1.8.x, you'll need to add "require 'rubygems'" at the top.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-01-04T17:10:00+00:00">January 4, 2011 at 5:10 pm</time></p>
      <p>I think most people will get that but good call.. I moved to 1.9.2 for almost everything already. One of the next big overarching topics I want to cover here on RI actually - not enough people are on 1.9 ;-)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
