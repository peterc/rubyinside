---
title: Build a “click heat map” system using Ruby and JavaScript
date: '2006-08-16'
author: Peter Cooper
author_slug: admin
post_id: 193
slug: build-a-click-heat-map-system-using-ruby-and-javascript-193
url: "/build-a-click-heat-map-system-using-ruby-and-javascript-193.html"
categories:
- cool
- elsewhere
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2006/08/heatmap.jpg" height="244" width="295" border="1" hspace="4" vspace="4" alt="Heatmap"></p>
<p>Heat maps allow you to see where people are clicking on your Web page(s) and while some pay-for, professional systems offer this feature, David Pardo has put together <a href="http://blog.corunet.com/english/the-definitive-heatmap">a guide, including Ruby and JavaScript source, of how to create your own from scratch!</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>David Pardo</strong> &middot; <time datetime="2006-08-16T18:35:00+00:00">August 16, 2006 at 6:35 pm</time></p>
      <p>Thank you so much for your kind words. It was my first ruby program, I won't pretend it's well written. :)</p><p>Anyhow, it's not going to be the last. I liked it _so much_</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jerrett</strong> &middot; <time datetime="2006-08-18T17:09:00+00:00">August 18, 2006 at 5:09 pm</time></p>
      <p>The part that does the compositing of the dots on the image takes a really long time due to the memory usage of how it's all chained together on one conver command.. with an hours worth of click data, it was taking 4+ hours to run... </p><p>so i modified the script a bit to use RMagick, and now it parses it in about 20 seconds!</p><p>here is the modified version of the generateimages.rb script (which is all the peices of ruby in his examples put together)</p><p><a href="http://jerrett.net/generateimages.rb" rel="nofollow">http://jerrett.net/generateimages.rb</a></p><p>I wanted to keep playing and clean it up, but I had to stop to get back to other work - but for anyone running into memory and speed issues, hopefully this helps :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>David Pardo</strong> &middot; <time datetime="2006-08-19T17:06:00+00:00">August 19, 2006 at 5:06 pm</time></p>
      <p>I think there's some potential into creating a real open source product. Your code works flawlessly in my windows box (but for a couple of quotes) and I'll try to update my blog with it as soon as possible.</p><p>Thanks so much.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>David Pardo</strong> &middot; <time datetime="2006-08-21T16:21:00+00:00">August 21, 2006 at 4:21 pm</time></p>
      <p>Done! You can find it at sourceforge.net/projects/clickmaps. </p><p>Jerret, you're invited to join!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
