---
title: Working With Video From Ruby
date: '2008-10-17'
author: Peter Cooper
author_slug: admin
post_id: 1259
slug: ruby-video-library-1259
url: "/ruby-video-library-1259.html"
categories:
- compilations
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2008/10/moviereel.jpg" width="106" height="70" alt="moviereel.jpg" style="float:left; margin-right:12px; margin-bottom:12px;"></p>
<p>With only the performance of a scripting language, Ruby isn't considered a particularly suitable choice for intense video work (direct transcoding, encoding, and the like.). Nonetheless, there are a handful of Ruby libraries and Ruby-based technologies you can use to work with video and movie files - primarily through interacting with faster tools or libraries.</p>
<h3>RMov (Ruby Quicktime Library)</h3>
<p><a href="http://github.com/ryanb/rmov/tree/master">RMov</a> is an awesome new Ruby library by Ryan Bates that wraps around Apple's QuickTime API and allows you to open, edit, and export QuickTime movies from within Ruby. It is, unfortunately, OS X only.</p>
<h3>RVideo (Ruby Video Processing)</h3>
<p><a href="http://rvideo.rubyforge.org/">RVideo</a> (<a href="http://github.com/zencoder/rvideo/tree">Github</a>) is a Ruby library that interfaces with tools like ffmpeg to let you inspect and process video and audio files. For example, you can use RVideo to help you convert videos into FLVs.</p>
<h3>Panda (Video Encoding and Streaming Platform)</h3>
<p><a href="panda-merb-based-video-uploading-encoding-and-streaming-system-1209.html">Panda</a> is a Ruby-powered open source "video uploading, encoding and streaming" solution. While it uses Ruby as an interface (in the shape of a Merb application), it relies on tried and tested tools like FFMpeg to do the heavy lifting but may be perfect if you have an Amazon EC2 account and fancy offloading the CPU intense video work.</p>
<h3>Hey!Spread (Video Promotion Web Service)</h3>
<p><a href="http://github.com/sadikzzz/heyspread-ruby/tree/master">Hey!Spread</a> makes it easy to upload videos to YouTube and Google Video - each operation essentially becoming a method.</p>
<h3>Fliqz4R ("White-Label YouTube" API)</h3>
<p><a href="http://www.fliqz.com/">Fliqz</a> is a provider of "plug and play video solutions." Effectively they provide the backend infrastructure for hosting and playing videos, a kind of white-label YouTube, if you will. Libin Pan has put together <a href="http://fliqz.learnhub.com/lesson/page/321_how_to_use_fliqz4_r">a tutorial that demonstrates how to use Fliqz</a> from Ruby / Rails using the <a href="http://github.com/libin/fliqz4r/tree/master">Fliqz4R Rails plugin</a>.</p>
<p><em>Any other libraries to recommend? Leave a comment.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>hgs</strong> &middot; <time datetime="2008-10-17T17:13:00+00:00">October 17, 2008 at 5:13 pm</time></p>
      <p>Shoes <a href="http://shoooes.net/" rel="nofollow">http://shoooes.net/</a> has video handling as an option.  And you've mentioned it here before, so I'm surprised it didn't make it into the list!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan</strong> &middot; <time datetime="2008-10-19T14:09:00+00:00">October 19, 2008 at 2:09 pm</time></p>
      <p>ankoderonrails (<a href="http://doc.ankoder.com" rel="nofollow">http://doc.ankoder.com</a>) is a ruby library for Ankoder api. Ankoder is a scalable video upload/download/transcode service build on AWS.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>juanger</strong> &middot; <time datetime="2008-10-22T15:50:00+00:00">October 22, 2008 at 3:50 pm</time></p>
      <p>There's also RTranscoder, it is a wrapper for ffmpeg, mencoder and mplayer. It' very similar to RVideo, but RVideo doesn't have mencoder support yet.</p><p><a href="http://rtranscoder.rubyforge.org/" rel="nofollow">http://rtranscoder.rubyforge.org/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>dookie</strong> &middot; <time datetime="2008-11-06T03:34:00+00:00">November 6, 2008 at 3:34 am</time></p>
      <p>Hey, Juanger!</p><p>The RTranscoder is awesome.. it really help me in my project. Thanks for talk about it. =)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
