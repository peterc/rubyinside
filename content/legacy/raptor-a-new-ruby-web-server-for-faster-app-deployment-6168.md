---
title: 'Raptor: A Forthcoming Ruby Web Server for Faster App Deployment'
date: '2014-10-21'
author: Peter Cooper
author_slug: admin
post_id: 6168
slug: raptor-a-new-ruby-web-server-for-faster-app-deployment-6168
url: "/raptor-a-new-ruby-web-server-for-faster-app-deployment-6168.html"
categories:
- cool
- news
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2014/10/raptor3.jpg" alt="" title="raptor3" width="650" class="alignnone size-full wp-image-6169"></p>
<p><strong><a href="http://www.rubyraptor.org/"><em>Raptor</em></a> bills itself as a new Ruby "app server” and it claims to blow everything else out of the water performance-wise (by between 2-4x!) whether that’s Unicorn, Puma, Passenger, or even TorqueBox on JRuby.</strong> The bad news for now is there’s no source or repo yet and only a handful of people (including me) have been given a sneak peek, although a public beta is promised on November 25th.</p>
<h3>The history of Ruby webapp deployment</h3>
<p>The deployment of Ruby (and therefore Rails) webapps was a painful mess for years, a state I lamented 7 years ago  in <a href="no-true-mod_ruby-is-damaging-rubys-viability-on-the-web-693.html">No True ‘mod_ruby’ is Damaging Ruby’s Viability on the Web</a>. Thankfully, shortly thereafter a number of projects came out to make life easier, the most famous being <a href="https://www.phusionpassenger.com/">Phusion Passenger</a> (then known as <em>mod_rails</em>) in April 2008.</p>
<p>Things have continued to improve gradually over the years, with Passenger getting consistently better, and new approaches such as those offered by <a href="http://unicorn.bogomips.org/">Unicorn</a> and <a href="http://puma.io/">Puma</a>, using JRuby, as well as proxying through Nginx, coming into the picture.</p>
<h3>Enter Raptor</h3>
<p>Raptor, a new entry to the burgeoning world of Ruby Web servers, boasts some compelling features. "Visibility" is cited as a key feature so that you can look ‘into’ your app and analyze its performance as easily as possible using a JSON API (so building your own tools around the API should be simple). Raptor also uses the HTTP parser from Node which itself was derived from Nginx’s HTTP parser; both are renowned for their speed and stability. Raptor boasts a zero-copy, concurrent, evented architecture which makes it efficient memory and IO-wise - so even if you have slow clients or a slow network, these won’t bring your app server to a stuttering standstill.</p>
<p>Another feature that jumped out at me is <em>integrated caching.</em> Raptor doesn’t rely on an external services like memcached or Redis at all, but is truly internal and optimized specifically for Web workloads. If you’ve never set up caching before, this could provide a big boost as with Raptor it’ll be available “out of the box”.</p>
<p>The initial results seem promising. Fabio Akita has <a href="http://www.akitaonrails.com/2014/10/19/the-new-kid-on-the-block-for-ruby-servers-raptor">already shared some early benchmark results</a> which broadly mirror my own experience (disclaimer: as someone with rather little experience and authority in benchmarking, my benchmarks are oriented around Raptor’s own benchmarking suite) but, as always, YMMV and such benchmarks are <a href="https://twitter.com/YorickPeterse/status/523935547455447041">often criticized.</a></p>
<h3>The waiting game..</h3>
<p>The team behind Raptor promise they’ll be releasing some interesting blog posts soon about the technology behind it, including how the cache is implemented and has been optimized, how the zero-copy system works and how it’ll benefit your code, and similar things. So keep an eye on <a href="http://www.rubyraptor.org/">rubyraptor.org</a>, especially around November 25th.</p>
{{< /rawhtml >}}
