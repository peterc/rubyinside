---
title: A Look Into Ruby’s Object Model
date: '2010-11-03'
author: Peter Cooper
author_slug: admin
post_id: 3940
slug: a-look-into-rubys-object-model-3940
url: "/a-look-into-rubys-object-model-3940.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2010/11/rom.png" width="105" height="106" alt="rom.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;">A few days ago, <a href="http://github.com/burke">Burke Libbey</a>, a Winnipeg based Ruby and Rails developer, gave a presentation called <a href="http://www.slideshare.net/burkelibbey/rubys-object-model-metaprogramming-and-other-magic"><b>Ruby's Object Model: Metaprogramming and Other Magic</b></a> to the Winnipeg.rb Ruby user group. I though it was interesting enough to embed here.</p>
<p>Presentations about metaprogramming and how the Ruby object model works are hardly anything new, but Burke has approached it in a friendly, easy to understand (though terse - but that's why it's a presentation) fashion, despite including the relevant C from MRI on the slides. Topics covered include how classes and objects are represented and related to each other, how singleton classes work, how method lookups work, and.. "more magic."</p>
<p><i>Note: If your reader doesn't support embedded presentations,</i> <a href="http://www.slideshare.net/burkelibbey/rubys-object-model-metaprogramming-and-other-magic"><i>click here</i></a> <i>to see the presentation on Slideshare.</i></p>
<div style="width:425px" id="__ss_5603030">
<strong style="display:block;margin:12px 0 4px"><a href="http://www.slideshare.net/burkelibbey/rubys-object-model-metaprogramming-and-other-magic" title="Ruby's Object Model: Metaprogramming and other Magic">Ruby's Object Model: Metaprogramming and other Magic</a></strong><object id="__sse5603030" width="425" height="355"><param name="movie" value="http://static.slidesharecdn.com/swf/ssplayer2.swf?doc=metaprogramming-101028232936-phpapp02&amp;stripped_title=rubys-object-model-metaprogramming-and-other-magic&amp;userName=burkelibbey">
<param name="allowFullScreen" value="true">
<param name="allowScriptAccess" value="always">
<embed name="__sse5603030" src="http://static.slidesharecdn.com/swf/ssplayer2.swf?doc=metaprogramming-101028232936-phpapp02&amp;stripped_title=rubys-object-model-metaprogramming-and-other-magic&amp;userName=burkelibbey" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="425" height="355"></embed></object>
<div style="padding:5px 0 12px">View more <a href="http://www.slideshare.net/">presentations</a> from <a href="http://www.slideshare.net/burkelibbey">burkelibbey</a>.</div>
</div>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Ray</strong> &middot; <time datetime="2010-11-03T08:10:00+00:00">November 3, 2010 at 8:10 am</time></p>
      <p>Is there a video talk of this? I often find slides are missing content and emphasis.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Burke</strong> &middot; <time datetime="2010-11-03T17:27:00+00:00">November 3, 2010 at 5:27 pm</time></p>
      <p>@Ray: Unfortunately, no. We've been thinking about recording talks, but haven't got around to starting yet.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>eqdw</strong> &middot; <time datetime="2010-11-03T19:14:00+00:00">November 3, 2010 at 7:14 pm</time></p>
      <p>@ray: no, unfortunately there is not. Maybe we should start recording our Winnipeg.rb meetings? I never thought they'd get this impressive.</p><p>If you're interested, go to the site (winnipegrb.org), email the contact-us address and pester whoever answers that. I'll make a mention of it to him too.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>zundra</strong> &middot; <time datetime="2010-11-09T14:45:00+00:00">November 9, 2010 at 2:45 pm</time></p>
      <p>Slide 54 has a mistake.  Should be </p><p>class Animal<br>
@@sound = "..."<br>
def self.speak<br>
...<br>
end<br>
end</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
