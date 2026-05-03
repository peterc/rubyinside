---
title: Thinking Functionally In Ruby – A Great Presentation by Tom Stuart
date: '2009-11-03'
author: Peter Cooper
author_slug: admin
post_id: 2713
slug: functional-programming-in-ruby-2713
url: "/functional-programming-in-ruby-2713.html"
categories:
- cool
- elsewhere
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2009/11/thinkfunc.png" width="110" height="107" alt="thinkfunc.png" style="float:left; margin-right:12px; margin-bottom:12px;"><a href="http://skillsmatter.com/podcast/ajax-ria/enumerators">Thinking Functionally in Ruby</a> is a talk that British Ruby developer Tom Stuart gave at a recent <a href="http://lrug.org/">London Ruby Users Group</a> meeting. In it he covers what functional programming is, why it's a "pretty neat idea," and how to adopt <a href="http://en.wikipedia.org/wiki/Functional_programming">functional programming</a> principles in Ruby. Skills Matter took <a href="http://skillsmatter.com/podcast/ajax-ria/enumerators">a video of the entire 47 minute presentation</a> <i>(it's embedded on the right hand side of that page - Flash required.. just been told it might be limited to UK visitors only, if so <a href="http://experthuman.com/files/thinking-functionally-in-ruby.mp4">get the original MP4 file</a>)</i> but there's also <a href="http://experthuman.com/files/thinking-functionally-in-ruby.pdf">a 110 page PDF</a> <i>(1.5MB download)</i> you should have to hand too (with Tom's slides).</p>
<p><a href="http://skillsmatter.com/podcast/ajax-ria/enumerators"><img src="/assets/2009/11/minecode.png" width="640" height="485" alt="minecode.png"></a></p>
<p>I don't like to link to individual presentations on Ruby Inside too often, but in spite of poor audio quality on the video, Tom's presentation is top notch (the slides are particularly good) and Tom covers some interesting topics that I think Ruby developers could do with revising. If you've wanted to stay on the functional bandwagon but have found yourself slipping into <a href="http://en.wikipedia.org/wiki/Imperative_programming">imperative</a> ways where you shouldn't, this presentation is worth a watch.</p>
<p style="background-color: #ffd; padding: 5px; font-family: verdana, arial, sans-serif; font-size: 14px; line-height: 22px; color: #442">[advertisement] Want the ultimate guide to Ruby 1.9? <a href="http://www.rubyinside.com/19walkthrough/">The Ruby 1.9 Walkthrough</a> is a 3 hour screencast that goes through Ruby 1.9 from start to finish, all aimed at existing Ruby 1.8 developers.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>James Adam</strong> &middot; <time datetime="2009-11-03T14:46:00+00:00">November 3, 2009 at 2:46 pm</time></p>
      <p>I was there, and can confirm that this talk was really excellent. Everyone knows about 'each', and most people know about 'map', but despite this, I doubt that very many of us are really *thinking* functionally when we're actually solving problems.</p><p>Tom's presentation was clear, informative, and entertaining - I highly recommend giving it your time, if only just for the animated explanation of inject, which was inspired.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>raggi</strong> &middot; <time datetime="2009-11-03T16:16:00+00:00">November 3, 2009 at 4:16 pm</time></p>
      <p>Looking forward to having a look. The image on the page is a bit scary though, although the functional approach may have some advantages, the above example is hideously complex. Part of the complexity comes from a (relatively common) avoidance of local variables. Personally, I think that's an anti-clarity-pattern in this kind of language.</p><p>  sub_grid = (x-1..x+1).zip(y-1..y+1)<br>
  sub_grid.count { |x, y| mine_at?(x,y) }</p><p>Two very easy to read lines, combining both functional and imperative styles to form a happy hybrid (IMO).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-11-03T16:18:00+00:00">November 3, 2009 at 4:18 pm</time></p>
      <p>Probably not the best shot I used there, admittedly. There's some really good stuff in the slides though - I just wanted to pick something busy looking to spark the imagination here ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>raggi</strong> &middot; <time datetime="2009-11-03T16:25:00+00:00">November 3, 2009 at 4:25 pm</time></p>
      <p>oops, forgot the other dimensions...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tom Stuart</strong> &middot; <time datetime="2009-11-03T16:30:00+00:00">November 3, 2009 at 4:30 pm</time></p>
      <p>Thanks Peter (and James)!</p><p>raggi: I completely agree — see later in the video (page 107 of the PDF) for a sane refactoring of that code using local variables and extracted methods. (Your lines, while certainly easy to read, don't do the same thing as mine!) It's left intentionally messy at that stage of the talk for mundane reasons like fitting everything on the slide and making it easy to show which bits of code generate which values.</p><p>More worrying is the moment when I blithely agree that foldr is "the same as" foldl over the reversed list, which is correct in the context of the example, but only true in general when the function is commutative.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew</strong> &middot; <time datetime="2009-11-03T20:31:00+00:00">November 3, 2009 at 8:31 pm</time></p>
      <p>BOOO. Video linky no worky!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Todd</strong> &middot; <time datetime="2009-11-03T22:57:00+00:00">November 3, 2009 at 10:57 pm</time></p>
      <p>Is it just me, or is the first example with the red X 10 times easier to understand?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan Wedekind</strong> &middot; <time datetime="2009-11-04T21:10:00+00:00">November 4, 2009 at 9:10 pm</time></p>
      <p>Inspiring presentation. Somehow I never realised how important the connection between functional programming and parallel computing is.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2009-11-05T09:01:00+00:00">November 5, 2009 at 9:01 am</time></p>
      <p>Can somebody explain me why I can't see the video?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2009-11-05T09:16:00+00:00">November 5, 2009 at 9:16 am</time></p>
      <p>It's me again. Seems that all the videos from the London Ruby User Group are private. That make me ask the question how much sense it makes to write a post about it, if only x users (with x &lt; 10 or even 100) of 22041 reader can watch it?</p><p>Nevertheless the slides are really cool stuff.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-11-05T14:44:00+00:00">November 5, 2009 at 2:44 pm</time></p>
      <p>I don't understand. I'm not in LRUG or anything like that but if I go to that Skills Matter page, the video loads on the right hand side. I click play and I can watch it. The video might be private on Vimeo, but you can still watch the embed on the Skills Matter page.</p><p>Or perhaps it's filtering by geolocation or something? I am in the UK after all.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tom Stuart</strong> &middot; <time datetime="2009-11-05T18:52:00+00:00">November 5, 2009 at 6:52 pm</time></p>
      <p>The videos do appear to be "private", but AFAIK that's some kind of inverse embedding restriction, i.e. you can view the video when embedded on skillsmatter.com but not directly on Vimeo. But I'm in the UK too, so if there's some kind of geolocation filtering I don't know about it.</p><p>I've put the video file at <a href="http://experthuman.com/files/thinking-functionally-in-ruby.mp4" rel="nofollow">http://experthuman.com/files/thinking-functionally-in-ruby.mp4</a> for anyone who's having problems.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2009-11-06T07:38:00+00:00">November 6, 2009 at 7:38 am</time></p>
      <p>Thanks Stuart.<br>
I would suggest that there is a kind of geological restriction as I'm living in south of Germany and don't have "permission" to see the video neither on vimeo nor at skillsmatter.com. On skillsmatter instead of the video the following message is displayed: "Sorry. The creator of this video has not given you permission to embed it on this domain."</p><p>But anyway, you put the video on experthuman so that works now. But I hope that any future videos will be available without workarounds. </p><p>Thanks.</p><p>Chris</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
