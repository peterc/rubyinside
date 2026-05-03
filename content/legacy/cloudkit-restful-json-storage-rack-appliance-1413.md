---
title: 'CloudKit: RESTful JSON Storage Rack Appliance'
date: '2008-12-23'
author: Peter Cooper
author_slug: admin
post_id: 1413
slug: cloudkit-restful-json-storage-rack-appliance-1413
url: "/cloudkit-restful-json-storage-rack-appliance-1413.html"
categories:
- cool
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2008/12/cloudkit.gif" width="105" height="101" alt="cloudkit.gif" style="float:left; margin-right:12px; margin-bottom:12px;"> Apologies for the buzzword collision in the title, but <a href="http://getcloudkit.com/">Cloudkit</a> really <em>is</em> a RESTful JSON-powered storage appliance that uses <a href="http://rack.rubyforge.org/">Rack</a>! Think of it as a schema-less, HTTP accessible database of sorts - like <a href="http://couchdb.apache.org/">CouchDB</a> without some of the more advanced features. It's all written in Ruby and makes it ridiculously easy to set up a fully discoverable, RESTful, JSON API.</p>
<p>In the <a href="http://blog.joncrosby.me/post/66224875/release-cloudkit-0-9-an-open-web-json-appliance">Release: CloudKit 0.9 blog post</a>, developer Jon Crosby demonstrates how easy it is to get Cloudkit up and running. Just two lines in a config.ru file and you're ready to roll with the basic featureset. If you want to add OpenID and OAuth support, just change a word and it's all running. Jon explains further:</p>
<blockquote>
<p>CloudKit is built around HTTP and JSON for the purpose of building efficient APIs quickly. It’s a bit like CouchDB with baked-in Open Web auth plus the entire spectrum of Rack middleware at its disposal. The automatic version history for each JSON document is provided as an aid for decentralized or occasionally-connected clients, allowing a progressive diff/merge against history to “catch up” in the case of conflicts.</p>
<p>Thanks to Rack, you can run CloudKit on its own or alongside other Rack-based apps or middleware components such as Rails, Merb, or Sinatra. Any requests outside of the named collection scopes or authentication endpoints are passed along to the next piece in the stack.</p>
<p>If you’re interested in hacking, the source is on <a href="http://github.com/jcrosby/cloudkit">GitHub</a>.</p>
</blockquote>
<p>You want <a href="http://getcloudkit.com/api">documentation</a>? There's plenty of it. <a href="http://getcloudkit.com/rest-api.html">CloudKit's REST API</a> is outlined quickly and cleanly, and a <a href="http://getcloudkit.com/curl.html">Curl-oriented tutorial</a> (an ideal walkthrough to get up to speed with CloudKit's features) is also available.</p>
<p>I'm looking forward to playing with this more. It seems like it could make an interesting back-end to <a href="sinatra-29-links-and-resources-for-a-quicker-easier-way-to-build-webapps-1371.html">Sinatra</a>-powered microapps.</p>
<p class="s" style="font-family:verdana;font-style:italic;padding:8px;font-size: 12px"><strong>Calling all Toronto Rails developers!</strong> Hewitt Associates is <a href="http://ruby.jobamatic.com/a/jbb/job-details/51809">looking for a Ruby and Rails developer</a> for their Toronto, Ontario office. <a href="http://ruby.jobamatic.com/a/jbb/job-details/51809">Click here to learn more.</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Lakshan</strong> &middot; <time datetime="2008-12-23T04:51:00+00:00">December 23, 2008 at 4:51 am</time></p>
      <p>What a concidence! I was thinking of building the very same idea in the morning and when I open my RSS reader this is the first item in the list..  </p><p>Props to Jon Crosby for this awesome work and releasing this to the public!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brian</strong> &middot; <time datetime="2008-12-29T13:30:00+00:00">December 29, 2008 at 1:30 pm</time></p>
      <p>I think its very cool, but at the same time I fail to see a practical use for it</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
