---
title: Using Amazon’s Web Services for Spidering the Web
date: '2008-02-13'
author: Peter Cooper
author_slug: admin
post_id: 754
slug: using-amazons-web-services-for-spidering-the-web-754
url: "/using-amazons-web-services-for-spidering-the-web-754.html"
categories:
- elsewhere
- ruby-tricks
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2008/02/aws.jpg" width="154" height="65" alt="aws.png"></p>
<p>Robert Dempsey has written a code-packed article for Amazon Web Services' "<a href="http://developer.amazonwebservices.com/connect/">Developer Connection</a>" site called <a href="http://developer.amazonwebservices.com/connect/entry.jspa?categoryID=139&amp;externalID=1182">Using Amazon S3, EC2, SQS, Lucene and Ruby for Web Spidering</a>. It's a bit of an epic and covers using a multitude of Amazon Web Services together (namely the S3 storage system, the EC2 "Elastic Compute Cloud", and the Simple Queue Service), with Ruby acting as the glue that holds them all together. This could be of great interest to anyone who wants to put together large-scale crawlers using on-demand hardware and services.</p>
<p><em>As an aside, I'm interested in all interesting Ruby-related Amazon / S3 / EC2 articles and links for a future "list post," so if you have any recommendations, leave a comment. Thanks!</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>John</strong> &middot; <time datetime="2008-02-13T13:35:00+00:00">February 13, 2008 at 1:35 pm</time></p>
      <p>There's also the "rufus-sqs" gem that leverages Amazon's SQS [REST interface] :</p><p>gem install -y rufus-sqs<br>
<a href="http://rufus.rubyforge.org/rufus-sqs/" rel="nofollow">http://rufus.rubyforge.org/rufus-sqs/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jason</strong> &middot; <time datetime="2008-02-14T03:05:00+00:00">February 14, 2008 at 3:05 am</time></p>
      <p>A new plugin written by my coworker for managing rails on ec2 / s3. Works pretty well.</p><p><a href="http://rubyforge.org/projects/rubber/" rel="nofollow">http://rubyforge.org/projects/rubber/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Markus</strong> &middot; <time datetime="2008-02-14T07:29:00+00:00">February 14, 2008 at 7:29 am</time></p>
      <p>Some links you might want to include in your list post:<br>
<a href="http://rubyworks-ec2.rubyforge.org/" rel="nofollow">http://rubyworks-ec2.rubyforge.org/</a><br>
<a href="http://ec2onrails.rubyforge.org/" rel="nofollow">http://ec2onrails.rubyforge.org/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Thorsten</strong> &middot; <time datetime="2008-02-14T07:51:00+00:00">February 14, 2008 at 7:51 am</time></p>
      <p>Not an article, but we recently released version 1.5 of the RightAws gem which provides Ruby interfaces for EC2, S3, SQS, and now also SimpleDB. Persistent connections, support for &gt;2GB objects, error retries, XML parsing with libxml, and more goodies. See <a href="http://rubyforge.org/projects/rightaws/" rel="nofollow">http://rubyforge.org/projects/rightaws/</a></p><p>We also have a good number of EC2 related articles on our blog: <a href="http://info.rightscale.com/blog" rel="nofollow">http://info.rightscale.com/blog</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
