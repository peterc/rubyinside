---
title: Video of Matz Speaking at Google about Ruby 1.9 – February 20, 2008
date: '2008-02-23'
author: Peter Cooper
author_slug: admin
post_id: 771
slug: matz-at-google-video-771
url: "/matz-at-google-video-771.html"
categories:
- cool
- miscellaneous
- news
---

{{< rawhtml >}}
<p><object width="425" height="355"><param name="movie" value="http://www.youtube.com/v/oEkJvvGEtB4&amp;rel=1">
<param name="wmode" value="transparent">
<embed src="http://www.youtube.com/v/oEkJvvGEtB4&amp;rel=1" type="application/x-shockwave-flash" wmode="transparent" width="425" height="355"></embed></object></p>
<p>Google has <a href="http://youtube.com/user/googletechtalks">a series of "tech talks"</a> on YouTube where, presumably, Google gets technological luminaries to come in and give a talk about their work. The latest is by Ruby's creator, Yukihiro "Matz" Matsumoto, and was given just a few days ago on February 20, 2008. In the video, Matz quips at Google's reticence to use Ruby but spends most of the time talking about Ruby 1.9, YARV, JRuby, and other new developments, and fielding questions from the audience.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jeremy</strong> &middot; <time datetime="2008-02-23T18:05:00+00:00">February 23, 2008 at 6:05 pm</time></p>
      <p>Blah.. I hope Google manages to fix the sound.  Is it just me, or is this video barely audible?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeremy</strong> &middot; <time datetime="2008-02-23T18:10:00+00:00">February 23, 2008 at 6:10 pm</time></p>
      <p>Blah... nevermind, I opened up the wrong video at the tech talks page.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jimbo Watunusi</strong> &middot; <time datetime="2008-02-24T10:23:00+00:00">February 24, 2008 at 10:23 am</time></p>
      <p>The guy asking the question on whether the string traversal was inefficient was Guido van Rossum (creator of Python). He sounded a little smug, don't you think?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>andoy</strong> &middot; <time datetime="2008-02-24T10:25:00+00:00">February 24, 2008 at 10:25 am</time></p>
      <p>you're my hero matz ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Simon Ask Ulsnes</strong> &middot; <time datetime="2008-02-24T15:15:00+00:00">February 24, 2008 at 3:15 pm</time></p>
      <p>#3</p><p>It is an interesting question, though. Guido is right, O(n*n) is not easy to avoid when you use the raw bytes as the underlying data structure.</p><p>I imagine the best you could achieve would be O(log n) with some kind of heap-like structure.</p><p>Or you could change the internal representation to be an array of Chars, where Char is unicode-aware, which would give O(1).</p><p>Hmm, it would be an interesting experiment.</p><p>- Simon</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Robert Nasiadek</strong> &middot; <time datetime="2008-02-24T18:35:00+00:00">February 24, 2008 at 6:35 pm</time></p>
      <p>Geez, he looks so nervous and stressed on this video... poor guy. Anyways, ruby rocks and I just love to see it mature.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matthijs Langenberg</strong> &middot; <time datetime="2008-02-24T23:22:00+00:00">February 24, 2008 at 11:22 pm</time></p>
      <p>I've skimmed a bit through the talk and matz doesn't referer to Rubinius, right? Why doesn't he mention it as an available Ruby interpreter?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark Thomas</strong> &middot; <time datetime="2008-02-25T01:58:00+00:00">February 25, 2008 at 1:58 am</time></p>
      <p>I noticed Rubinius wasn't in his VM implementations slide (yet Ruby.NET was!). However, he mentions Rubinius later in the talk.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-02-25T06:53:00+00:00">February 25, 2008 at 6:53 am</time></p>
      <p>Matz refers to Rubinius briefly when answering a question about the Ruby specification.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
