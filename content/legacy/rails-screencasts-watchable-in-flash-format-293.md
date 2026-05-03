---
title: Rails Screencasts Watchable In Flash Format
date: '2006-11-06'
author: Peter Cooper
author_slug: admin
post_id: 293
slug: rails-screencasts-watchable-in-flash-format-293
url: "/rails-screencasts-watchable-in-flash-format-293.html"
categories:
- miscellaneous
- news
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2006/11/rcast.jpg" height="249" width="335" border="1" hspace="4" vspace="4" alt="Rcast"></p>
<p>The guys over at ShowMeDo have been given permission to take the <a href="http://www.rubyonrails.org/screencasts">original Rails screencasts</a> (originally in QuickTime format) and <a href="http://showmedo.com/videos/series?name=rubyRailsOriginalCastsSeries">put them online in a Flash format that anyone can watch</a>. It's unlikely you've not seen the originals, but the new Web versions open them up to an even larger audience.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Lionel</strong> &middot; <time datetime="2006-11-06T22:24:00+00:00">November 6, 2006 at 10:24 pm</time></p>
      <p>Just a reaction to "Flash format that anyone can watch". With enough efforts anyone can indeed view Flash. But some of us need more efforts thant others. As an AMD64 user, viewing flash isn't really straightforward for me. I can get by with some utils or elbow grease to find out how to get at the flv file and feed it to mplayer but most of the time I'm not motivated enough and just pass. Flash is probably even less useful for other non x86 folks (Linux or *BSD on PowerPC, StrongARM or other less known architectures).</p><p>Personnally I would have preferred a mp4 or divx file, these are open formats for which integrated players (meaning browser plugins) exists for every system with enough juice to play them.</p><p>In fact mplayerplug-in can handle most of the Quicktime files (in fact maybe all of them, it's quite some time since I tried to view one that wasn't supported), so I guess QuickTime could be more of a 'anyone can watch' format depending on your perspective.</p><p>Just my 2 cents.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-11-06T23:43:00+00:00">November 6, 2006 at 11:43 pm</time></p>
      <p><em>As an AMD64 user, viewing flash isn't really straightforward for me.</em></p><p>More accurately as a Linux AMD64 user, right? But yes, your point is noted. Flash on Linux can be a little iffy, I've found, and I don't know about its support on non x86 platforms, although if I extend "anyone" to perhaps 99% of users, it's probably still about right.. more than the percentage who have QuickTime installed at least :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ian Ozsvald</strong> &middot; <time datetime="2006-11-07T09:56:00+00:00">November 7, 2006 at 9:56 am</time></p>
      <p>Hi Lionel, Peter.  Just to clarify (as Peter has said), we've converted the videos to Flash in the hope that more people can access them conveniently.  </p><p>Up until October we hosted QuickTime MOVs which some people (particularly Linux people) found hard to access as they didn't know about mplayer and VLC.  We've switched to Flash 7 (compatible with most Linux distros, rather than Flash 8) and our users are very happy with the switch.  </p><p>On most Linux distros our videos just play in the browser (sorry to hear that yours didn't though).  If you want to ping me some instructions, I can add notes to our wiki for other Linux AMD64 users?</p><p>Regards, Ian.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Lionel</strong> &middot; <time datetime="2006-11-08T00:26:00+00:00">November 8, 2006 at 12:26 am</time></p>
      <p>More choice is always a good thing Ian. In the case of the screencast in flash on a pure Linux AMD64 (no 32 bit firefox and so no flash), you'll have to look at the source file, and you'll see in a script tag the following string :<br>
movie:"../static/flv/flvplayer.swf?file=http://208.109.0.142/ShowMeDos/rubyWeblogIn15Mins.flv&amp;image=...</p><p>You'll have to download the flv file itself, ie:<br>
<a href="http://208.109.0.142/ShowMeDos/rubyWeblogIn15Mins.flv" rel="nofollow">http://208.109.0.142/ShowMeDos/rubyWeblogIn15Mins.flv</a><br>
and then play it with mplayer (unfortunately streaming directly doesn't work).</p><p>Other options tried :<br>
- Xine-0.99.4 streaming works... but unfortunately the audio track isn't recognised.<br>
- VLC works without streaming (and you must deactivate any deinterlacing to avoid jerky output).</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
