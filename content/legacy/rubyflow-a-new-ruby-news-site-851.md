---
title: 'RubyFlow: A New Ruby News Site'
date: '2008-04-10'
author: Peter Cooper
author_slug: admin
post_id: 851
slug: rubyflow-a-new-ruby-news-site-851
url: "/rubyflow-a-new-ruby-news-site-851.html"
categories:
- elsewhere
- news
---

{{< rawhtml >}}
<p><a href="http://www.rubyflow.com/"><img src="/assets/2008/04/rubyflow.jpg" width="350" height="298" alt="rubyflow.gif" style="border:1px #000000 solid;"></a></p>
<p><a href="http://www.rubyflow.com/">RubyFlow</a> is a new Ruby news site developed by... me over the last couple of days. It will suit developers looking more for a "filtered firehose" of Ruby news.</p>
<p>RubyFlow will be faster, quicker and more raw than Ruby Inside. Ruby Inside will continue with 1 - 2 "you gotta see this!" posts per day (max) but RubyFlow will be the place to go for immediacy and volume. Another big difference is that <strong>anyone can post to RubyFlow</strong>. You don't <em>need</em> to sign up to post although you'll be CAPTCHAed and suffer <code>rel="nofollow"</code> on your links if you don't (to prevent spam).</p>
<p>RubyFlow was developed because I get a lot of leads and see a lot of interesting Ruby stuff that either repeats something I recently posted about on Ruby Inside already, which is too minor, or which is too niche for the general Ruby Inside audience. RubyFlow will give a way for news about new releases of libraries, interesting blog posts, and niche news to be published. I'll also be able to use RubyFlow as a "tips" site and base Ruby Inside posts on the things I see there.. so if you want future exposure on Ruby Inside, get posting and get noticed!</p>
<p>The entire site and the style posts is heavily influenced by <a href="http://www.metafilter.com/">MetaFilter</a>, a very old school community weblog. Basically, it'll be interesting Ruby stuff, one to many links per post, and nice concise explanations. Social bookmarking sites like del.icio.us and Reddit fall down in that you usually only get to read the title of a link (which is useless in many cases) whereas on RubyFlow and MetaFilter links are explained with a small blurb that puts them into context. Keep this in mind if you post, otherwise the style police might tweak your post to fit.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-04-10T01:00:00+00:00">April 10, 2008 at 1:00 am</time></p>
      <p>For the detail-inclined, RubyFlow is a rapidly developed Rails app (Merb would have probably been a better choice, but I just started from what I know best) and was developed in several hours on Tuesday 8th April. It has bare functionality, and still runs on the default SQLite3 database! This is holding up very well so far, however, but will be migrated to MySQL when it seems to be a bad idea.. :) There's no caching either yet, but it can do over 100 requests a second easily so far.</p><p>The site is deployed using <a href="http://switchpipe.org/" rel="nofollow">SwitchPipe</a>, so I can turn the max number of Mongrels up and down in real time if I need to. Currently it's set to just two max, but will kill those if the site isn't used for at least 30 seconds (SwitchPipe users will know what I mean!)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Eric Beland</strong> &middot; <time datetime="2008-04-10T01:15:00+00:00">April 10, 2008 at 1:15 am</time></p>
      <p>Hey Peter,</p><p>I like the site a lot.  Very cool!!!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>daemianmack</strong> &middot; <time datetime="2008-04-10T01:26:00+00:00">April 10, 2008 at 1:26 am</time></p>
      <p>Thanks! I was _wondering_ what had happened to that "Is RubyInside moving fast enough?" survey.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris Shea</strong> &middot; <time datetime="2008-04-10T02:43:00+00:00">April 10, 2008 at 2:43 am</time></p>
      <p>Any chance of a RubyFlow feed?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-04-10T02:46:00+00:00">April 10, 2008 at 2:46 am</time></p>
      <p><a href="http://feeds.feedburner.com/Rubyflow" rel="nofollow">http://feeds.feedburner.com/Rubyflow</a></p><p>I should probably link it better, thanks for bringing it up!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonathan Conway</strong> &middot; <time datetime="2008-04-10T09:02:00+00:00">April 10, 2008 at 9:02 am</time></p>
      <p>Very cool! Just what I need to get my regular does of Ruby goodness:)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Timothy Johnson</strong> &middot; <time datetime="2008-04-10T14:17:00+00:00">April 10, 2008 at 2:17 pm</time></p>
      <p>Peter, just what I wanted, but...<br>
I can easily scan the Reddit page for links I haven't seen yet, for the simple fact of having a:visited defined as a different color. If you can do this, I can easily scan the page for links I haven't read, and I can't read everything! thanks</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-04-10T15:18:00+00:00">April 10, 2008 at 3:18 pm</time></p>
      <p>I've made some tweaks, hopefully it should be a bit better now :) Rather than use colors, which made it look a little odd (though I was probably picking the wrong colors!) I made it remove underlines from links you've already seen.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Turki</strong> &middot; <time datetime="2008-04-10T16:47:00+00:00">April 10, 2008 at 4:47 pm</time></p>
      <p>Really awesome site, directly my favorite list..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Doon</strong> &middot; <time datetime="2008-04-10T20:01:00+00:00">April 10, 2008 at 8:01 pm</time></p>
      <p>Pretty Cool Site and Idea,  Thanks. </p><p>Since it appears to be mostly links to other places, I wonder if creating a feed like Gruber does with the list @ Daring Fireball, so that clicking on the links in the feed brings you to the linked article. </p><p>Thanks again. (for this and the beginning ruby book)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ericson Smith</strong> &middot; <time datetime="2008-04-12T15:00:00+00:00">April 12, 2008 at 3:00 pm</time></p>
      <p>Peter, any chance you'll open-source the code behind that site?</p><p>I ask because:</p><p>a) I'm lazy (most important reason)<br>
b) It would be great to do something like that in another vertical<br>
c) It just looks so shiny, nice and simple :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-04-12T16:08:00+00:00">April 12, 2008 at 4:08 pm</time></p>
      <p>Maybe! It's dead simple, and it's not as if I'm looking for a job, so the complete lack of testing (well, almost) won't matter ;-)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
