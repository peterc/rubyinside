---
title: 'Interesting Ruby Tidbits That Don’t Need Separate Posts #24'
date: '2009-05-21'
author: Peter Cooper
author_slug: admin
post_id: 1780
slug: interesting-ruby-tidbits-that-don’t-need-separate-posts-24-1780
url: "/interesting-ruby-tidbits-that-don’t-need-separate-posts-24-1780.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<h3>Fixing Threads in Ruby 1.8: A 2-10x Performance Boost</h3>
<p>Joe Damato has been on a roll lately, first with <a href="http://timetobleed.com/6-line-eventmachine-bugfix-2x-faster-gc-1300-requestssec/">a 6 line EventMachine fix that yielded impressive results</a>, then <a href="http://timetobleed.com/fix-a-bug-in-rubys-configurein-and-get-a-30-performance-boost/">a configure.in fix to give 30% more performance</a>, and now by getting <a href="http://timetobleed.com/fixing-threads-in-ruby-18-a-2-10x-performance-boost/">a 2-10x performance boost with a fix to Ruby 1.8's threading.</a></p>
<p>If you're on Ruby 1.9, don't worry, as Ruby 1.9's threading is still faster even after this tweak, but if implementation optimization interests you, check this article out. Joe has a great way of describing the usually technically-dry innards of Ruby.</p>
<h3>Employment.nil? - A Ruby jobs fair in Toronto, Canada</h3>
<p>Pete Forde of Unspace (also responsible for <a href="http://futureruby.com/">FutureRuby</a>) wrote in to tell me about <a href="http://rubyjobfair.ca/">Employment.nil?</a>, a Ruby and Rails job fair taking place in Toronto, Canada. He said it was crazy that some companies are crying out for staff, while some developers are crying out for jobs. The job fair is designed for potential candidates and employers to talk to each other in a neutral, casual environment.</p>
<h3>Ruby Pong</h3>
<p>Recently we had <a href="rubystein-wolfenstein-3d-recreated-in-ruby-1751.html">Wolfenstein 3D rewritten in Ruby</a>, but now.. Pong! Watch <a href="http://www.youtube.com/watch?v=yjHjyfhf-W4">a video</a> of the gameplay, grab <a href="http://github.com/adminmyserver/ruby_pong/tree/master">the source</a> from GitHub, and read <a href="http://adminmyserver.com/articles/ruby-pong-with-shoes-and-bloopsaphone">a blog post</a> about its creation. It uses <em>why the lucky stiff's</em> <a href="http://shoooes.net/">Shoes</a> toolkit.</p>
<h3>A New Ruby 1.8 vs 1.9 vs JRuby Benchmark</h3>
<p>Benchmarks are nothing new, but Alexander Dymo wanted to see if Ruby 1.9's much-vaulted 2x performance boost would translate into real world, production-based improvements. So he <a href="http://blog.pluron.com/2009/05/ruby-19-performance.html">ran some tests.</a> Turns out Ruby 1.9's performance boost is consistent over 1.8. JRuby holds up very well also.</p>
<h3>Help Get The Ruby One Click Installer A New Home</h3>
<p>Luis Laverna, a significant contributor to Ruby efforts on the Windows platform, is <a href="http://blog.mmediasys.com/2009/05/19/pledgie-help-one-click-ruby-installer-to-get-a-new-home/">looking for donations</a> to help the Ruby One Click Installer get a new Web site. Luis does a great deal of work for the Windows community, much of it unrecognized, so let's hope he ends up with a great, new site for the critical One Click project.</p>
<h3>How to Clone TinyURL in 40 Lines of Ruby and Deploy on Google App Engine</h3>
<p><a href="http://blog.saush.com/2009/05/clone-tinyurl-with-40-lines-of-ruby-code-on-google-appengine-for-java/">Clone TinyURL with 40 lines of Ruby code on Google AppEngine for Java</a> is a comprehensive walkthrough-cum-tutorial that needs little explanation. You learn how to implement a URL shortening service and then deploy it on Google App Engine using JRuby and a little magic.</p>
{{< /rawhtml >}}
