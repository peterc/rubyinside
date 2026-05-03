---
title: 'Cobra vs Mongoose: Easy Hash to XML serialization'
date: '2006-06-27'
author: Peter Cooper
author_slug: admin
post_id: 113
slug: cobra-vs-mongoose-easy-hash-to-xml-serialization-113
url: "/cobra-vs-mongoose-easy-hash-to-xml-serialization-113.html"
categories:
- miscellaneous
- ruby-tricks
---

{{< rawhtml >}}
<p><a href="http://cobravsmongoose.rubyforge.org/">Cobra vs Mongoose</a> is a Ruby library by Paul Battley that makes it easy to convert between XML and Ruby hashes (in both directions). It's a good alternative to YAML or <a href="http://json.rubyforge.org/">JSON</a>. It's available as a gem with <em>gem install -r cobravsmongoose</em>. Here's some demonstration code:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">rubygems</span><span class="punct">'</span>
<span class="ident">require_gem</span> <span class="punct">'</span><span class="string">cobravsmongoose</span><span class="punct">'</span>
<span class="ident">require</span> <span class="punct">'</span><span class="string">cobravsmongoose</span><span class="punct">'</span>

<span class="ident">xml</span> <span class="punct">=</span> <span class="punct">%q{</span><span class="string">
  &lt;people&gt;
    &lt;person&gt;Fred&lt;/person&gt;
    &lt;person&gt;Chris&lt;/person&gt;
    &lt;person age="10"&gt;Bert&lt;/person&gt;
  &lt;/people&gt;
</span><span class="punct">}</span>

<span class="ident">puts</span> <span class="constant">CobraVsMongoose</span><span class="punct">.</span><span class="ident">xml_to_hash</span><span class="punct">(</span><span class="ident">xml</span><span class="punct">).</span><span class="ident">inspect</span>

<span class="comment"># =&gt; {"people"=&gt;{"person"=&gt;[{"$"=&gt;"Fred"}, {"$"=&gt;"Chris"}, {"@age"=&gt;"10", "$"=&gt;"Bert"}]}}</span>
</pre>
<p>You can combine this with the JSON library to convert from XML to hash to JSON, meaning you can convert between all three formats.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Joey</strong> &middot; <time datetime="2006-06-28T07:22:00+00:00">June 28, 2006 at 7:22 am</time></p>
      <p>This is in the Rails trunk at the moment!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paul Battley</strong> &middot; <time datetime="2006-06-29T09:06:00+00:00">June 29, 2006 at 9:06 am</time></p>
      <p>Thanks for the mention. It prompted me to release a slightly updated version that had been sitting on my hard disk. The improvements are:</p><p>* Inbuilt xml_to_json/json_to_xml methods<br>
* It can accept REXML as the XML source, as well as anything that responds to to_s with valid XML.</p><p>You don't need that require_gem line, by the way.</p><p>In response to Joey's comment: Although there is now XML-hash conversion in Rails, it's not mine! It uses a different conversion schema which is a bit simpler to use, but seems to give a slightly lower-fidelity rendition. Rails's converter also does typecasting, which could be helpful or not, depending on the circumstances.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-06-29T11:07:00+00:00">June 29, 2006 at 11:07 am</time></p>
      <p>Excellent news, Paul. Thanks for the updates!</p><p>Regarding the require_gem line.. I found I needed it otherwise it complained. This may be a quirk of my setup though, but is probably something I should investigate. I find I usually need to add the require_gem lines whenever working with gems otherwise I get complaints.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
