---
title: How To Build A 5,000,000 Image Search Engine With Ruby, Alexa and S3
date: '2006-12-21'
author: Peter Cooper
author_slug: admin
post_id: 340
slug: how-to-build-a-5000000-image-search-engine-with-ruby-alexa-and-s3-340
url: "/how-to-build-a-5000000-image-search-engine-with-ruby-alexa-and-s3-340.html"
categories:
- cool
- elsewhere
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2006/12/cameraimage.jpg" height="145" width="449" border="1" hspace="4" vspace="4" alt="Cameraimage"></p>
<p><em>Note: This story actually dates back from May 2006, but I don't remember hearing about it then, and it's tucked down inside </em><em><a href="http://www.alexa.com/site/devcorner/">Alexa's Developer's Corner</a></em><em>. </em></p>
<p>Using the <a href="http://websearch.alexa.com/static.html?show=webtour/start">Alexa Web Search Platform</a> as a source of data, Derrick Pallas <a href="http://www.alexa.com/site/devcorner/samples?page=cis">put together a search engine using Ruby, RMagick and Amazon S3</a>. With AWSP's data set and CPU cluster he fetched 5,000,000 photos from the Web, analyzed their EXIF info with RMagick , and uploaded them to Amazon S3. The result was <a href="http://www.alexa.com/site/devcorner/cis">Camera Image Search</a>, a search engine that can show you pictures taken with certain cameras or with certain exposure times / focal lengths / etc <em>(for some reason the Manufacturer drop down does not appear to work, but other fields do)</em>.</p>
<p>This is an impressive demonstration of using the CPU power and mammoth data sets provided by Alexa and Amazon to put together something that would otherwise be out of the reach of the independent developer, and getting <a href="http://www.alexa.com/site/devcorner/samples?page=cis">the full instructions</a> to how he did it is great too.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Derrick Pallas</strong> &middot; <time datetime="2006-12-22T20:00:00+00:00">December 22, 2006 at 8:00 pm</time></p>
      <p>You may be interested to know that the new Alexa Image Search (which came out last week) is built with Ruby as well.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-12-22T20:03:00+00:00">December 22, 2006 at 8:03 pm</time></p>
      <p>Nice! For others, see: <a href="http://alexa.com/imagesearch" rel="nofollow">http://alexa.com/imagesearch</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
