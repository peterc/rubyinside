---
title: Ruby Enterprise Edition 1.8.7 Released – Lower Memory Usage, Increased Speed
date: '2009-09-29'
author: Peter Cooper
author_slug: admin
post_id: 2557
slug: ruby-enterprise-edition-ree-1-8-7-released-2557
url: "/ruby-enterprise-edition-ree-1-8-7-released-2557.html"
categories:
- cool
- news
---

{{< rawhtml >}}
<p><img src="/assets/2009/09/ruby-enterprise-edition.png" width="107" height="96" alt="ruby-enterprise-edition.png" style="float:left; margin-right:12px; margin-bottom:12px;">Today Phusion has <a href="http://blog.phusion.nl/2009/09/29/ruby-enterprise-edition-1-8-7-20090928-released/">announced</a> the release of <a href="http://www.rubyenterpriseedition.com/">Ruby Enterprise Edition</a> (REE) 1.8.7 (more specifically, 1.8.7-20090928). Once considered a bit of a joke, given the name, REE has proven itself to be anything but, with significant memory usage and speed improvements over the stock "MRI" Ruby implementation (achieved by way of patches to the MRI code). The key development with this release is compatibility with Ruby 1.8.7, rather than the 1.8.6 of previous versions.</p>
<p>While REE has shown itself to be a good performer compared to the unpatched MRI implementation before, this week Evan Weaver of Twitter <a href="http://blog.evanweaver.com/articles/2009/09/24/ree/">revealed how a release candidate version of REE 1.8.7 has resulted in a significant throughput increase</a> on the same codebase. He also noted that Ruby is faster when compiled with optimization for size rather than speed due to the benefits of being able to fit more of Ruby into the CPU's cache. REE 1.8.7 is optimized for size by default, so you get the same improvements out of the box. For information on other optimizations and changes from MRI, Phusion's <a href="http://blog.phusion.nl/2009/09/29/ruby-enterprise-edition-1-8-7-20090928-released/">release post</a> has more details.</p>
<p>Installing REE is pretty easy (<a href="http://www.rubyenterpriseedition.com/download.html">instructions here</a>) but the latest version of <a href="rvm-ruby-version-manager-2347.html">RVM (Ruby Version Manager)</a> already has support for it if you want to seamlessly run multiple versions of Ruby.</p>
<p><i>Disclaimer: The REE "logo" shown above is not official and was</i> <a href="http://3nc.deviantart.com/art/Ruby-Enterprise-Edition-128134918"><i>designed by</i></a> <i>Ahmad Galal. It's CC 3.0 licensed.</i></p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><em>[ad]</em> <a href="http://jumpstartlab.com" rel="nofollow"><img src="/assets/2009/09/railsjumpstart.png" width="40" height="40" alt="railsjumpstart.png" style="float:left; margin-right:12px; margin-bottom:12px;"></a><a href="http://jumpstartlab.com" rel="nofollow">Jumpstart Lab</a> is offering <a href="http://jumpstartlab.com/courses/rails/091031" rel="nofollow"><strong>Rails Jumpstart</strong></a>, an introduction to Ruby on Rails, on 10/31-11/1 in Washington, DC. Save $30 with code "<strong><a href="http://www.eventbrite.com/event/392551131?discount=rubyrow" rel="nofollow">rubyrow</a></strong>"!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Hubert Łępicki</strong> &middot; <time datetime="2009-09-30T14:29:00+00:00">September 30, 2009 at 2:29 pm</time></p>
      <p>"While REE has shown itself to be a good performer compared to MRI before (..)"</p><p>I understand that REE is in fact MRI, with patches, so this sentence can be confusing. MRI with good, nice, precious set of patches ;). Waiting to upgrade!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-09-30T15:49:00+00:00">September 30, 2009 at 3:49 pm</time></p>
      <p>Good call - I've added a few words to help clarify this.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>JSlice</strong> &middot; <time datetime="2009-10-02T21:06:00+00:00">October 2, 2009 at 9:06 pm</time></p>
      <p>Gotta hand it to the Phusion guys, but I have to ask: With all the performance benefits of REE, why haven't these patches found their way into MRI yet? Why do we have an MRI and an REE, if REE is essentially just MRI++?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hubert Łępicki</strong> &middot; <time datetime="2009-10-02T23:49:00+00:00">October 2, 2009 at 11:49 pm</time></p>
      <p>Maybe because most efforts now go into 1.9.X line, and not 1.8? Seems likely to me.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-10-03T00:31:00+00:00">October 3, 2009 at 12:31 am</time></p>
      <p>I might be talking out my ass but.. I seem to recall reading that they're looking into doing the same stuff for 1.9 and that the core team are interested in their patches for this. I should ask them for more info on this though - could be a good story!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2009-10-03T15:04:00+00:00">October 3, 2009 at 3:04 pm</time></p>
      <p>the MBARI patches have been submitted to the 1.8.x trunk, but haven't been accepted yet ["low resources" the core guys say].  Hopefully they will sometime :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
