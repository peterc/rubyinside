---
title: 'Phusion Passenger 3 Released: The Next Gen of Ruby Webapp Deployment'
date: '2010-10-19'
author: Peter Cooper
author_slug: admin
post_id: 3894
slug: phusion-passenger-3-released-the-next-gen-of-ruby-webapp-deployment-3894
url: "/phusion-passenger-3-released-the-next-gen-of-ruby-webapp-deployment-3894.html"
categories:
- news
---

{{< rawhtml >}}
<div style="float: left; margin-right: 12px; margin-bottom: 12px; border: 1px solid #333"><a href="http://phusion.nl"><img src="/assets/2010/10/phusion.png" alt="" title="phusion" width="51" height="52" class="alignnone size-full wp-image-3895"></a></div>
<p>We talked about <a href="the-road-to-passenger-3-3429.html">the road to Passenger 3</a> a few months ago but Phusion have now reached the end of it with <a href="http://blog.phusion.nl/2010/10/18/phusion-passenger-3-0-0-final-released/">the final, production release of Passenger 3.0.0!</a> Congratulations to the team.</p>
<p>Phusion's Passenger is the de facto way to deploy Ruby based webapps (a statement backed up by Hampton Catlin's Ruby Survey) so if you haven't yet made the jump, 3.0.0 provides a good excuse. It's as stable as ever but there's even more performance and a ton of new features, as covered in Phusion's four "<a href="http://blog.phusion.nl/2010/06/10/the-road-to-passenger-3-technology-preview-1-performance-2/">technological</a> <a href="http://blog.phusion.nl/2010/06/18/the-road-to-passenger-3-technology-preview-2-stability-robustness-availability-self-healing/">preview</a>" <a href="http://blog.phusion.nl/2010/07/01/the-road-to-passenger-3-technology-preview-3-closing-the-gap-between-development-and-production-rethinking-the-word-easy/">blog</a> <a href="http://blog.phusion.nl/2010/07/29/the-road-to-passenger-3-technology-preview-4-adding-new-features-and-removing-old-limitations/">posts.</a></p>
<p>RVM users will also be happy to learn that it's now reasonably easy (and I say "reasonably" because you'll still need to do some reading) to <a href="http://blog.phusion.nl/2010/09/21/phusion-passenger-running-multiple-ruby-versions/">deploy Passenger to cover multiple Ruby versions.</a></p>
<h3>Installation and/or upgrading</h3>
<p>Not using Passenger yet? Already running a vanilla Passenger install? Both installing and upgrading are easy (though you might want to try it in development first before going nuts on the production boxes) and work in the same way. First, install the gem:</p>
<pre><code>[sudo] gem install passenger</code></pre>
<p>And then run the regular installation script for <em>either</em> an Apache 2 install or an Nginx install (it'll install Nginx for you if you haven't already got it):</p>
<pre><code>passenger-install-apache2-module</code></pre>
<p>Or:</p>
<pre><code>passenger-install-nginx-module</code></pre>
<p>In both installation and upgrade cases, the above scripts will provide more details on what to do next (in Apache's case, it's usually as simple as copying and pasting some configuration entries into your Apache config).</p>
{{< /rawhtml >}}
