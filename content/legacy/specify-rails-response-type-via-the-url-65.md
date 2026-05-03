---
title: Specify Rails Response Type via the URL
date: '2006-06-11'
author: Peter Cooper
author_slug: admin
post_id: 65
slug: specify-rails-response-type-via-the-url-65
url: "/specify-rails-response-type-via-the-url-65.html"
categories:
- ruby-on-rails
---

{{< rawhtml >}}
<p>One of the features of Rails 1.1 was the ability to <a href="http://www.loudthinking.com/arc/000572.html">automatically detect clients that could understand XML</a> and send XML responses to them using the <em>respond_to</em> method. This also works for AJAX requests and HTML, of course. Unfortunately, though, this relies on XML and API clients sending the correct <em>Accept</em> headers in most cases, and, as we all know, users aren't necessarily so smart (even API users!).</p>
<p>In response to this problem, Edge Rails <a href="http://www.ryandaigle.com/articles/2006/06/01/whats-new-in-edge-rails-parameter-driven-response-type-determination#comments">now accepts the format parameter on the URL</a>, like so: <strong><em>http://www.yourapp.com/post/show/1?format=xml</em></strong> So while the <em>Accept</em> header method still works, you can also pass in the format directly via the URL. I suggested that also allowing a subdomain to specify the content type could also work (e.g: all requests to <strong><em>api.yourapp.com</em></strong> could require an XML response), and Ryan Daigle <a href="http://www.ryandaigle.com/articles/2006/06/01/whats-new-in-edge-rails-parameter-driven-response-type-determination#comment-89">came up with an elegant solution here.</a> For reference:</p>
<pre><span class="ident">map</span><span class="punct">.</span><span class="ident">connect</span> <span class="punct">'</span><span class="string">/post/show</span><span class="punct">',</span> <span class="symbol">:controller</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">post</span><span class="punct">',</span> <span class="symbol">:action</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">show</span><span class="punct">',</span> <span class="symbol">:format</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">xml</span><span class="punct">',</span> <span class="symbol">:requirements</span> <span class="punct">=&gt;</span> <span class="punct">{</span> <span class="symbol">:subdomain</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">api</span><span class="punct">'</span> <span class="punct">}</span>
</pre>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2006-06-27T18:41:00+00:00">June 27, 2006 at 6:41 pm</time></p>
      <p>From David's keynote at RailsConf, the actual URL would become:<br>
<a href="http://www.yourapp.com/post/show/1.xml" rel="nofollow">http://www.yourapp.com/post/show/1.xml</a></p><p>...and Rails would strip off the extension to do it's normal routing, but set the respond_to answer as XML, so you can spit that format back out. So instead of a special parameter to handle format desired, just add on the extension to the URL of the content format you'd like back and if the app supports it, you'll get it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-06-27T19:37:00+00:00">June 27, 2006 at 7:37 pm</time></p>
      <p>Thanks for clarifying this, Chris. The original post was made before the keynote and was based on the 'current' edge Rails knowledge, but the changes covered in the keynote are significant and important :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://www.securedpersonalloan.org.uk/index.html" rel="external nofollow" class="url">http://www.securedpersonalloan.org.uk</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
