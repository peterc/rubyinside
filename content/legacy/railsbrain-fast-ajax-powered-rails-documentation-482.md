---
title: 'RailsBrain: Fast, AJAX-powered Rails documentation'
date: '2007-05-07'
author: Peter Cooper
author_slug: admin
post_id: 482
slug: railsbrain-fast-ajax-powered-rails-documentation-482
url: "/railsbrain-fast-ajax-powered-rails-documentation-482.html"
categories:
- cool
- elsewhere
- ruby-on-rails
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2007/05/railsbrain.jpg" height="248" width="434" border="1" hspace="4" vspace="4" alt="Railsbrain"></p>
<p>Rails documentation sites are almost ten a penny, but today I was surprised by a new site called <a href="http://www.railsbrain.com/">RailsBrain</a>. RailsBrain takes the usual "list of methods down the left" approach, but couples it with some nifty AJAX and (so far) a very quick server to serve up the docs in record time.</p>
<p>Being in Europe, I usually notice a couple of seconds here and there when loading pages, but RailsBrain is scarily quick at delivering pages when I click on a method name. Furthermore, RailsBrain makes it a lot easier to find the method you need to documentation for with a "live search" type effect in the left hand box. This definitely replaces <a href="http://api.rubyonrails.com/">api.rubyonrails.com</a> for me in the short term.</p>
<p><em>(Note: If you're already using </em><em><a href="http://gotapi.com/">GotAPI</a></em><em>, this isn't likely to interest you, as what it offers is no better, but is just easier to use on the quick.)</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>dmauldin</strong> &middot; <time datetime="2007-05-07T18:33:00+00:00">May 7, 2007 at 6:33 pm</time></p>
      <p>Wow!  This is awesome.  Totally love it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matthew</strong> &middot; <time datetime="2007-05-07T19:24:00+00:00">May 7, 2007 at 7:24 pm</time></p>
      <p>This makes looking for methods and classes so much easier than the current API. I'm glad I found this post about RailsBrain.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>court3nay</strong> &middot; <time datetime="2007-05-07T19:53:00+00:00">May 7, 2007 at 7:53 pm</time></p>
      <p>this is neat, look great, but it's a terrible example of ajax.</p><p>Most of the time when using the API there are a few things I want to do. Mainly, I'm either looking for information (navigating) or sharing a method with someone I'm helping (on IRC or otherwise).</p><p>Navigation.  It's fast, but there's no BACK BUTTON.  This is the failing of over-eager ajax development.  People moan about frames, but they're a zero-skill way of maintaining history.</p><p>Sharing.  I want to link to a method directly, or even bookmark it. Every link in this app is "#".  This could be fixed by the developer by actually linking to the method directly and then using an onclick to capture the click.<br>
This would probably also allow users to open links in new tabs.</p><p>These are all possible to do with ajax, and examples without them cast a bad light on rails in general.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brian Chamberlain</strong> &middot; <time datetime="2007-05-07T20:36:00+00:00">May 7, 2007 at 8:36 pm</time></p>
      <p>Hi all,<br>
My thanks to the people at RubyInside (a site I read on the regular) for posting an article about my pet project. I'm glad some of you have found it useful.<br>
I'm not going to get into a discussion of the proper use of AJAX here since I think the whole web community is trying to figure that one out...still. I will say that the project is still under development. I've recieved some great feedback from a lot of people (especially from the people in my local ruby group <a href="http://www.rubydc.org" rel="nofollow">http://www.rubydc.org</a>) and I'm going to be incorporating those ideas into the next version, which should be out soon.<br>
Yes, it will have back button support...and maybe even bookmarks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jerrett</strong> &middot; <time datetime="2007-05-07T23:37:00+00:00">May 7, 2007 at 11:37 pm</time></p>
      <p>GotAPI is actually quicker to use  if you use <a href="http://start.gotapi.com" rel="nofollow">http://start.gotapi.com</a>  - and it will go through Ruby Core, STDLIB, and Rails docs :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>David Berube</strong> &middot; <time datetime="2007-05-08T15:23:00+00:00">May 8, 2007 at 3:23 pm</time></p>
      <p>RailsAPI.org is pretty slick; it's PHP style documentation, so you can type RailsAPI.org/render into your location bar to get docs on the render method.</p><p>Take it easy,</p><p>Dave</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James H</strong> &middot; <time datetime="2007-05-08T16:16:00+00:00">May 8, 2007 at 4:16 pm</time></p>
      <p>Brain, if you're still reading this thread you should know the "about railsbrain" link is giving me a 404.  I was hoping to find an email address on there to show you a style issue (scrunched text) I have with RailsBrain using FF 2.0.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Logan Koester</strong> &middot; <time datetime="2007-05-08T18:53:00+00:00">May 8, 2007 at 6:53 pm</time></p>
      <p>I second Jerrett's recommendation of GotAPI, mainly because it also includes documentation for JQuery, HTML, CSS, Javascript etc</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ruby on Rails examples</strong> &middot; <time datetime="2007-05-10T16:21:00+00:00">May 10, 2007 at 4:21 pm</time></p>
      <p>It is so cool. I really live it.<br>
The one on rubyonrails uses frames and it is very hard to surf.</p><p>Thanks a lot!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
