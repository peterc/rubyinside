---
title: The 3 Step Guide to Slick Local Documentation for all your Ruby Gems
date: '2010-09-14'
author: Peter Cooper
author_slug: admin
post_id: 3760
slug: the-3-step-guide-to-slick-local-documentation-for-all-your-ruby-gems-3760
url: "/the-3-step-guide-to-slick-local-documentation-for-all-your-ruby-gems-3760.html"
categories:
- tools
---

{{< rawhtml >}}
<p>A couple of weeks ago, I wrote about <a href="rubydoc-info-good-looking-up-to-date-ruby-documentation-3750.html">RubyDoc.info</a>, a "good looking, up-to-date Ruby documentation" site powered by <a href="http://github.com/lsegal/yard">YARD.</a> Well, as of YARD 0.6 you can get the same greatness that RubyDoc.info provides applied to your local machine's collection of gems in just a few steps. Try it out - you won't regret it.</p>
<p><strong>Step 1: Install YARD.</strong> Install the <code>yard</code> gem with <code>sudo gem install yard</code> or similar.</p>
<p><strong>Step 2: Run the YARD server.</strong> Run <code>yard server --gems</code>. Take note of the hostname and port given in the output.</p>
<p><strong>Step 3: Get browsing.</strong> Visit <code><a href="http://0.0.0.0:8808/">http://0.0.0.0:8808/</a></code>, where the IP address and port should be replaced with those provided by the YARD server. This URL should work for most of you though.</p>
<p>How does it look? Here's the overall view of all installed gems:</p>
<p><img src="/assets/2010/09/yard1.jpg" alt="" title="yard1" width="600" height="240" class="alignnone size-full wp-image-3788"></p>
<p>And here's a specific gem's documentation:</p>
<p><img src="/assets/2010/09/yard2.jpg" alt="" title="yard2" width="600" height="240" class="alignnone size-full wp-image-3789"></p>
<p>There's a lot more to YARD than merely serving up documentation - it's primarily a tool for <em>generating</em> it from both RDoc and YARD-enhanced RDoc formats. Learn more at Loren Segal's <a href="http://gnuu.org/2010/08/29/announcing-yard-0-6-0/">YARD 0.6.0 release post</a> or from the <a href="http://github.com/lsegal/yard">GitHub project.</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Mitko Kostov</strong> &middot; <time datetime="2010-09-14T07:29:00+00:00">September 14, 2010 at 7:29 am</time></p>
      <p>Yard is great. May be you should add $yard gems --rebuild in order to rebuild the documentation of the already installed gems</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Martijn</strong> &middot; <time datetime="2010-09-14T08:07:00+00:00">September 14, 2010 at 8:07 am</time></p>
      <p>That's pretty cool, guess I can drop the --no-rdoc from my .gemrc now :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan Wedekind</strong> &middot; <time datetime="2010-09-14T10:45:00+00:00">September 14, 2010 at 10:45 am</time></p>
      <p>The new reload feature of the YARD server is really neat for doing development.</p><p>  yard server --reload</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ricardo Otero</strong> &middot; <time datetime="2010-09-14T13:11:00+00:00">September 14, 2010 at 1:11 pm</time></p>
      <p>Nice! This saved my day!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Grant Hollingworth</strong> &middot; <time datetime="2010-09-14T13:46:00+00:00">September 14, 2010 at 1:46 pm</time></p>
      <p>I made a rackup file so you can run the YARD gem server in any Rack-based server, including Passenger. With Passenger Preference Pane, that makes it pretty easy to use gems.local instead of an awkward IP and port.</p><p><a href="http://gist.github.com/562448" rel="nofollow">http://gist.github.com/562448</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>robgleeson</strong> &middot; <time datetime="2010-09-14T14:34:00+00:00">September 14, 2010 at 2:34 pm</time></p>
      <p>I thought I'd mention that YARD supports the markdown &amp; textile markup languages too, and not just SimpleMarkup(RDoc).</p><p>The YARD meta tags help you write better documentation too, and I hope everybody starts to use them =)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeff Schoolcraft</strong> &middot; <time datetime="2010-09-14T17:32:00+00:00">September 14, 2010 at 5:32 pm</time></p>
      <p>Here's how you get it in all your rubies if you're using RVM: <a href="http://jschoolcraft.posterous.com/the-3-step-guide-to-slick-local-documentation" rel="nofollow">http://jschoolcraft.posterous.com/the-3-step-guide-to-slick-local-documentation</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sam</strong> &middot; <time datetime="2010-09-16T15:09:00+00:00">September 16, 2010 at 3:09 pm</time></p>
      <p>0.0.0.0 is a network address. Do macs not have a loopback address (127.0.0.1) ?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Lailson Bandeira</strong> &middot; <time datetime="2010-09-18T14:53:00+00:00">September 18, 2010 at 2:53 pm</time></p>
      <p>I'm the only one who prefers SDoc? O.o<br>
<a href="http://railsapi.com/" rel="nofollow">http://railsapi.com/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-09-19T18:55:00+00:00">September 19, 2010 at 6:55 pm</time></p>
      <p>Sure, that works too.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>crash zone</strong> &middot; <time datetime="2010-09-20T11:00:00+00:00">September 20, 2010 at 11:00 am</time></p>
      <p>yard really does look good. Is there anything comparable to python's sphinx documentation generator in ruby world.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alexander Shamne</strong> &middot; <time datetime="2010-09-21T15:15:00+00:00">September 21, 2010 at 3:15 pm</time></p>
      <p>That's an awesome gem, for sure it'll help a lot</p>
    </li>
      <li>
      <p class="comment-meta"><strong>will</strong> &middot; <time datetime="2010-09-23T12:57:00+00:00">September 23, 2010 at 12:57 pm</time></p>
      <p>You'll probably find <a href="http://localhost:8808" rel="nofollow">http://localhost:8808</a> works better ...</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
