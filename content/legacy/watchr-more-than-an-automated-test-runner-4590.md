---
title: Watchr – More Than An Automated Test Runner
date: '2011-03-29'
author: Joe Fiorini
author_slug: joe
post_id: 4590
slug: watchr-more-than-an-automated-test-runner-4590
url: "/watchr-more-than-an-automated-test-runner-4590.html"
categories:
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2011/03/watchr.png" alt="" title="watchr" width="97" height="121" class="alignnone size-full wp-image-4605" style="float: left; margin-right: 12px; border: 1px solid #333">
</p>
<p><a href="http://mynyml.com/ruby/flexible-continuous-testing">Watchr</a> is a development tool that monitors a directory tree and triggers a user defined action (in Ruby) whenever an observed file is modified. Its most typical use is continuous testing, and as such it is a more flexible alternative to <a href="http://ph7spot.com/musings/getting-started-with-autotest">autotest.</a> It is maintained by <a href="http://mynyml.com/">Martin Aumont</a> and <a href="https://github.com/mynyml/watchr">available on GitHub.</a></p>
<p>Watchr works by allowing you to specify the path to the file or files you want to monitor. When the file is changed it executes whatever block of Ruby code you give it. As the <a href="https://github.com/mynyml/watchr/blob/master/README.md">README</a> states its most common use case is as a replacement for autotest. After using Watchr for a couple years now, I have learned that it’s much more than that. For example, it has helped me automatically copy a setup script to a virtual machine while building it and to update large blocks of content in a database.</p>
<h3 id='\"how_i_used_watchr_to_automate_shopify_theme_development\"'>How I Used Watchr to Automate Shopify Theme Development</h3>
<p>I recently started a Shopify project with a colleague (Shopify is a hosted platform for building ecommerce sites). Users can edit their store’s look and feel through a web-based admin interface. This may work for most shop owners, but I’ve grown accustomed to editing text in Vim and working at the command line. Fortunately, Shopify has a very nice API for uploading templates to your store. Watchr to the rescue! I fired up my editor and not long after I had a very helpful script:</p>
<pre>require 'shopify_api'

watch('templates/.*.liquid') do |match|
  puts "Updating #{match[0].inspect}..."
  upload_template(match.to_s)
end

def upload_template(file)
  ShopifyAPI::Base.site = "http://{key}:{secret}@{domain}.myshopify.com/admin/"
  asset = ShopifyAPI::Asset.find(file)
  asset.value = File.read(file)
  asset.save
end</pre>
<p>With this script all I have to do is save the file I’m working on and Watchr uploads it to Shopify for me. How does it work? The directory structure on my file system mirrors Shopify’s template structure. All my script has to do is read the file and send the path and contents to the server. Watchr uses OSX’s native <em>File System Events API</em> to listen for changes to files matching the path string I pass into <code>watch</code>. When a matching file changes, it executes the block and hands in the path to the changed file (or files).</p>
<p>These simple Watchr scripts have saved me time and, more importantly, frustration. With just a few lines of code I can automate away tedious parts of my day while following my preferred workflow and not compromise efficiency. Watchr is not just about running my tests, it’s about improving my workflow as much as possible.</p>
<h3 id='\"more_info\"'>More Info</h3>
<p>Want some more information? Check out <a href="https://github.com/mynyml/watchr">Watchr on Github</a>, <a href="http://rubydoc.info/github/mynyml/watchr/master/frames">check out the docs</a>, or <a href="http://wiki.github.com/mynyml/watchr">read the wiki</a> for some more examples. When you’re ready to get started run <code>gem install watchr</code> and write your first script.</p>
<p><em>Editor’s note: I just noticed that Ric Roberts wrote <a href="watchr-generic-autotest-alternativ-2511.html">Watchr: A Flexible, Generic Alternative to AutoTest</a> for Ruby Inside back in 2009. You might find that post useful too.</em></p>
<p style="background-color: #f4f4f4; padding: 10px; font-size: 0.9em; line-height: 1.5"><img src="/assets/2011/03/Joe-Fiorini.png" alt="" title="Joe Fiorini" width="80" style="float: right; margin-left: 12px; border: 1px solid #333">Joe is a Software Craftsman at <a href="http://www.leandog.com">LeanDog Software</a> where he helps run their Ruby<br>
delivery practice on a boat in Cleveland, OH. He blogs about<br>
software-related topics at <a href="http://blog.densitypop.com">http://blog.densitypop.com</a> and tweets as<br>
<a href="http://www.twitter.com/joefiorini">@joefiorini</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Scott Becker</strong> &middot; <time datetime="2011-03-29T21:11:00+00:00">March 29, 2011 at 9:11 pm</time></p>
      <p>I've used the directory_watcher gem to do similar things. Do you know if there is any difference between the watchr and directory_watcher Gems? Is there any advantage of one vs the other?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Bates</strong> &middot; <time datetime="2011-03-30T01:24:00+00:00">March 30, 2011 at 1:24 am</time></p>
      <p>How does this compare to guard?</p><p><a href="https://github.com/guard/guard" rel="nofollow">https://github.com/guard/guard</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joe Fiorini</strong> &middot; <time datetime="2011-03-30T01:59:00+00:00">March 30, 2011 at 1:59 am</time></p>
      <p>Guard looks cool, but a little more overhead to get started. Way more powerful though, given the SIG handlers, etc. Perhaps Guard is to Watchr as Rails is to Sinatra?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mikko Lehtonen</strong> &middot; <time datetime="2011-03-30T05:12:00+00:00">March 30, 2011 at 5:12 am</time></p>
      <p>This looks rather nice! So far I've used a little C program I've made for my own uses, <a href="https://github.com/scoopr/autobuild" rel="nofollow">Autobuild</a>. It matches my simpler use-cases just fine. Though it currently supports only osx and win32.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://ihower.tw/blog/archives/5460" rel="external nofollow" class="url">Watchr 不只是 Continuous Testing | ihower { blogging }</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jack Dempsey</strong> &middot; <time datetime="2011-03-30T14:55:00+00:00">March 30, 2011 at 2:55 pm</time></p>
      <p>At first I didn't like Guard, and stayed with watchr for most tasks. Over time it grew on me, and now often use Guard for rails projects, watchr for simpler tasks. I think the Sinatra/Rails analogy is apt--both have a place and a great pieces of software. Thanks for the article Joe.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nate Klaiber</strong> &middot; <time datetime="2011-03-31T01:41:00+00:00">March 31, 2011 at 1:41 am</time></p>
      <p>But who watches the watchr? :)</p><p>Great article, Joe. I like your implementation and use case for Shopify.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
