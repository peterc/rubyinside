---
title: Ruby on Rails Image for Amazon EC2
date: '2007-06-24'
author: Peter Cooper
author_slug: admin
post_id: 540
slug: ruby-on-rails-image-for-amazon-ec2-540
url: "/ruby-on-rails-image-for-amazon-ec2-540.html"
categories:
- cool
- miscellaneous
- ruby-on-rails
---

{{< rawhtml >}}
<p>Paul Dowman has put together <a href="http://pauldowman.com/projects/ruby-on-rails-ec2/">a feature-packed Ruby on Rails focused "appliance"</a> for <a href="http://aws.amazon.com/ec2">Amazon's EC2</a> (Elastic Compute Cloud - effectively an on-demand, flexible VPS service). Those who know what they're doing can try it out right away, using the AMI id: <strong>ami-4e907527</strong>.</p>
<p>The image is built upon Ubuntu 7.04 (Feisty), Rails 1.2.3, Ruby 1.8.5, MySQL 5, and includes the EC2 command line tools along with <em>automatic backup of MySQL databases to S3</em> every ten minutes. Applications are served up using Mongrel clusters behind Apache 2.2. Paul's <a href="http://pauldowman.com/projects/ruby-on-rails-ec2/">blog post</a> includes more details and a guide of how to use it.</p>
{{< /rawhtml >}}
