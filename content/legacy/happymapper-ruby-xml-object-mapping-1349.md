---
title: 'HappyMapper: Easy XML / Object Mapping for Rubyists'
date: '2008-11-20'
author: Peter Cooper
author_slug: admin
post_id: 1349
slug: happymapper-ruby-xml-object-mapping-1349
url: "/happymapper-ruby-xml-object-mapping-1349.html"
categories:
- cool
- elsewhere
---

{{< rawhtml >}}
<p><a href="http://railstips.org/2008/11/17/happymapper-making-xml-fun-again"><img style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 dotted;" src="/assets/2008/11/happy-xml.jpg" alt="happy-xml.jpg" width="137" height="80"></a> <a href="http://railstips.org/2008/11/17/happymapper-making-xml-fun-again">HappyMapper</a> is John Nunemaker's attempt at "making XML fun again" for Rubyists by providing an object to XML mapping library with a succinct syntax. Essentially, you can use HappyMapper to rapidly turn XML into Ruby objects - even nesting them inside and referring to each other. This is powerful stuff. To install, just <em>gem install happymapper</em></p>
<p>John's <a href="http://railstips.org/2008/11/17/happymapper-making-xml-fun-again">own examples</a> are powerful demonstrations of how it works, so check them out. The first is parsing the XML returned from Twitter. The statues and associated users in that XML can be processed (with the relationship maintained) with the following code:</p>
<pre><span class="keyword">class </span><span class="class">User</span>
  <span class="ident">include</span> <span class="constant">HappyMapper</span>

  <span class="ident">element</span> <span class="symbol">:id</span><span class="punct">,</span> <span class="constant">Integer</span>
  <span class="ident">element</span> <span class="symbol">:name</span><span class="punct">,</span> <span class="constant">String</span>
  <span class="ident">element</span> <span class="symbol">:screen_name</span><span class="punct">,</span> <span class="constant">String</span>
  <span class="ident">element</span> <span class="symbol">:location</span><span class="punct">,</span> <span class="constant">String</span>
  <span class="ident">element</span> <span class="symbol">:description</span><span class="punct">,</span> <span class="constant">String</span>
  <span class="ident">element</span> <span class="symbol">:profile_image_url</span><span class="punct">,</span> <span class="constant">String</span>
  <span class="ident">element</span> <span class="symbol">:url</span><span class="punct">,</span> <span class="constant">String</span>
  <span class="ident">element</span> <span class="symbol">:protected</span><span class="punct">,</span> <span class="constant">Boolean</span>
  <span class="ident">element</span> <span class="symbol">:followers_count</span><span class="punct">,</span> <span class="constant">Integer</span>
<span class="keyword">end</span>

<span class="keyword">class </span><span class="class">Status</span>
  <span class="ident">include</span> <span class="constant">HappyMapper</span>

  <span class="ident">element</span> <span class="symbol">:id</span><span class="punct">,</span> <span class="constant">Integer</span>
  <span class="ident">element</span> <span class="symbol">:text</span><span class="punct">,</span> <span class="constant">String</span>
  <span class="ident">element</span> <span class="symbol">:created_at</span><span class="punct">,</span> <span class="constant">Time</span>
  <span class="ident">element</span> <span class="symbol">:source</span><span class="punct">,</span> <span class="constant">String</span>
  <span class="ident">element</span> <span class="symbol">:truncated</span><span class="punct">,</span> <span class="constant">Boolean</span>
  <span class="ident">element</span> <span class="symbol">:in_reply_to_status_id</span><span class="punct">,</span> <span class="constant">Integer</span>
  <span class="ident">element</span> <span class="symbol">:in_reply_to_user_id</span><span class="punct">,</span> <span class="constant">Integer</span>
  <span class="ident">element</span> <span class="symbol">:favorited</span><span class="punct">,</span> <span class="constant">Boolean</span>
  <span class="ident">has_one</span> <span class="symbol">:user</span><span class="punct">,</span> <span class="constant">User</span>
<span class="keyword">end</span>

<span class="ident">statuses</span> <span class="punct">=</span> <span class="constant">Status</span><span class="punct">.</span><span class="ident">parse</span><span class="punct">(</span><span class="ident">xml_string</span><span class="punct">)</span>
<span class="ident">statuses</span><span class="punct">.</span><span class="ident">each</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">status</span><span class="punct">|</span>
  <span class="ident">puts</span> <span class="ident">status</span><span class="punct">.</span><span class="ident">user</span><span class="punct">.</span><span class="ident">name</span><span class="punct">,</span> <span class="ident">status</span><span class="punct">.</span><span class="ident">user</span><span class="punct">.</span><span class="ident">screen_name</span><span class="punct">,</span> <span class="ident">status</span><span class="punct">.</span><span class="ident">text</span><span class="punct">,</span> <span class="ident">status</span><span class="punct">.</span><span class="ident">source</span><span class="punct">,</span> <span class="punct">'</span><span class="punct">'</span>
<span class="keyword">end</span></pre>
<p><strong>Added: Or.. how about a similar library that doesn't require naming the elements to work (but then lacks typecasting)? Check out <a href="http://xml-object.rubyforge.org/doc/">xml-object</a> by Jordi Bunster.</strong></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2008-11-21T04:14:00+00:00">November 21, 2008 at 4:14 am</time></p>
      <p>This library has clearly challenged Hpricot for coolest icon between angle brackets. I smell a showdown.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-11-21T05:39:00+00:00">November 21, 2008 at 5:39 am</time></p>
      <p>lol - I'm afraid not! This one was just a quick hack-up of my own doing for the post :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Nunemaker</strong> &middot; <time datetime="2008-11-21T06:24:00+00:00">November 21, 2008 at 6:24 am</time></p>
      <p>Ha! I actually like the icon too. If you have a non cropped version I'll use it on the post and give you props. :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
