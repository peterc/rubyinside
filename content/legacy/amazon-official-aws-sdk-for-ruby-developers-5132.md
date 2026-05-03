---
title: Amazon Releases aws-sdk, An Official AWS SDK for Ruby Developers
date: '2011-07-15'
author: Peter Cooper
author_slug: admin
post_id: 5132
slug: amazon-official-aws-sdk-for-ruby-developers-5132
url: "/amazon-official-aws-sdk-for-ruby-developers-5132.html"
categories:
- cool
- news
---

{{< rawhtml >}}
<p><img src="/assets/2011/07/amazon-ruby.jpg" alt="" title="amazon-ruby" width="124" height="110" class="alignnone size-full wp-image-5133" style="float: right; margin-left: 18px; margin-bottom: 18px"><strong>Amazon has unveiled <a href="http://aws.amazon.com/sdkforruby/">an official Ruby SDK</a> for AWS!</strong> Amazon.com's <a href="http://aws.amazon.com/">Amazon Web Services</a> has been a rip-roaring success since its first publicly-available service, S3 (Simple Storage Storage), was released in 2006. It has since expanded to about 20 services in all, the most popular being S3 and the "elastic compute cloud" <a href="http://aws.amazon.com/ec2/">EC2.</a></p>
<p>There have previously been unofficial Ruby libraries for interfacing with Amazon's many services, including <a href="http://poolparty.rubyforge.org/">PoolParty</a>, <a href="http://rubyforge.org/projects/rightscale">right_aws</a>, and Marcel Molina's awesome <a href="http://amazon.rubyforge.org/">aws-s3</a>, and Amazon even released some <a href="http://aws.amazon.com/code/Ruby/553">bits and pieces</a> of Ruby code before, but <a href="http://rubygems.org/gems/aws-sdk">the new aws-sdk gem</a> represents a stronger effort to have a single, official cohesive library for Rubyists using AWS.</p>
<h3>What Does aws-sdk Support?</h3>
<p>A quick laundry list:</p>
<ul>
<li>EC2</li>
<li>S3</li>
<li>SQS (queue service)</li>
<li>SNS (notifications service)</li>
<li>SES (Simple E-mail Service)</li>
<li>SimpleDB (in the form of an ORM)</li>
</ul>
<p>This covers the most used items of the AWS suite though some further investigation needs to be done to see if Elastic MapReduce and Elastic Block Store has been baked into the EC2 stuff. There's no Route 53 or Mechanical Turk support as yet, though Mark Percival's <a href="https://github.com/markpercival/rturk">RTurk library</a> is still being updated and supports the latter.</p>
<h3>Getting Started With aws-sdk</h3>
<p>Installing the new official AWS SDK gem is a piece of cake:</p>
<pre>gem install aws-sdk</pre>
<p><em>(Note: aws-sdk has the Nokogiri XML/HTML parsing library as a dependency so if you're using MRI, you'll need to be in an environment where that can be compiled. It isn't pure Ruby.)</em></p>
<p>Now, let's roll out a simple file upload system using the S3 support available in <code>aws-sdk</code>:</p>
<pre>require 'aws-sdk'

bucket_name = 'mytestbucket'
source_filename = '/tmp/something.txt'

AWS.config(
  :access_key_id =&gt; ACCESS_KEY_ID,
  :secret_access_key =&gt; SECRET_ACCESS_KEY
)

# Create the basic S3 object
s3 = AWS::S3.new

# Load up the 'bucket' we want to store things in
bucket = s3.buckets[bucket_name]

# If the bucket doesn't exist, create it
unless bucket.exists?
  puts "Need to make bucket #{bucket_name}.."
  s3.buckets.create(bucket_name)
end

# Grab a reference to an object in the bucket with the name we require
object = bucket.objects[File.basename(source_filename)]

# Write a local file to the aforementioned object on S3
object.write(:file =&gt; source_filename)</pre>
<p>Note that you'll need to set <code>ACCESS_KEY_ID</code> and <code>SECRET_ACCESS_KEY</code> somehow. You could do this with a YAML file you load in, hard code into your script (not recommended for security reasons), or perhaps use environment variables (a common approach with the Java tools, I believe). You can get your own AWS Access Key ID and the Secret Access Key from your Security Credentials page in your AWS settings.</p>
<p>If you are familiar with the already existing <a href="http://amazon.rubyforge.org/">AWS::S3 library</a>, you should note that the new <code>aws-sdk</code> library is not compatible with it and it cannot be loaded at the same time. You should also note that the code used to make everything work is <em>quite different</em> with aws-sdk and while porting a script from one to the other shouldn't be a lengthy job, it's not a straightforward search and replace either.</p>
<h3>Further Reading</h3>
<p>This was just a flying visit with a basic overview of using aws-sdk for S3. To learn more, hit up the <a href="https://github.com/amazonwebservices/aws-sdk-for-ruby">aws-sdk-for-ruby repository on GitHub</a> to see more examples and sample code, as well as the <a href="http://aws.amazon.com/sdkforruby/">official AWS SDK for Ruby page</a> by Amazon.</p>
<p>One thing I noticed is that if you open up the aws-sdk gem and snoop around the source code, you can learn a lot more than from Amazon's own articles. The code is well documented and I had to refer to it a few times already. So definitely crack open that gem and have a dig around, you'll find useful stuff in there.</p>
<p class="s"><em>[sponsor]</em><a href="http://engine.adzerk.net/redirect/0/5052/5980/1313/136ab2ca919c44b18936fcb8ed1cb152/19/24/7127/634463399658366148?keywords=">RubyMine</a> is a popular and powerful Ruby and Rails IDE with the full stack of essential developer tools, all tightly integrated into a convenient and smart development environment. Download it now for a free 30 day trial.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Roman2K</strong> &middot; <time datetime="2011-07-15T20:20:00+00:00">July 15, 2011 at 8:20 pm</time></p>
      <p><code>AWS.config(...)</code>: does it mean there can only be one single AWS connection per process!? (One particular access key ID / secret pair.) I haven't looked at the code but if that's true, it sounds like a major design flaw. Nothing that can't be fixed but still, surprising.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-07-15T21:12:00+00:00">July 15, 2011 at 9:12 pm</time></p>
      <p>Luckily it's not that bad, Roman2K :-) You can add the same config options to the <code>AWS::S3.new</code> call so you could have multiple S3 'instances' running, as it were.</p><p>They could certainly do with documenting this all a bit better..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Roman Le Négrate</strong> &middot; <time datetime="2011-07-18T16:15:00+00:00">July 18, 2011 at 4:15 pm</time></p>
      <p>Thanks for the info, Peter.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Salman</strong> &middot; <time datetime="2011-07-18T19:05:00+00:00">July 18, 2011 at 7:05 pm</time></p>
      <p>Great news, I was dreaming of the day I can write my ec2 concoctions in ruby :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>geemus (Wesley Beary)</strong> &middot; <time datetime="2011-07-19T20:04:00+00:00">July 19, 2011 at 8:04 pm</time></p>
      <p>There are a number of other libraries for Ruby + AWS (as Peter mentioned). Unfortunately you still need to know a good deal about how AWS does things and you are on your own all over again if you decide to try a different cloud.</p><p>If you are considering exploring cloud stuff I highly recommend trying out <a href="http://github.com/geemus/fog" rel="nofollow">fog</a>.  It supports most of the same services as this sdk, but also provides mocking and support for a bunch of other services across several providers.  That way you can try out many services easily and choose the ones that work for you (knowing that you can always swap it out later if things change).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-07-19T21:41:00+00:00">July 19, 2011 at 9:41 pm</time></p>
      <p>Ahh, I was trying to remember fog when doing that list of alternative gems! Thanks for mentioning it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Derek</strong> &middot; <time datetime="2011-07-22T07:40:00+00:00">July 22, 2011 at 7:40 am</time></p>
      <p>Sweet!!!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://www.pvsm.ru/article/64074" rel="external nofollow" class="url">Ruby / [PODCAST] Ruby NoName Podcast S03E03 | Агрегатор ИТ новостей</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Srikanth Jeeva</strong> &middot; <time datetime="2011-08-10T14:24:00+00:00">August 10, 2011 at 2:24 pm</time></p>
      <p>Nice :) Hope this make things easier ..</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
