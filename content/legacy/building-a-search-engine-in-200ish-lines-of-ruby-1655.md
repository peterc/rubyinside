---
title: Building a Search Engine in 200ish Lines of Ruby
date: '2009-03-20'
author: Peter Cooper
author_slug: admin
post_id: 1655
slug: building-a-search-engine-in-200ish-lines-of-ruby-1655
url: "/building-a-search-engine-in-200ish-lines-of-ruby-1655.html"
categories:
- cool
- elsewhere
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2009/03/somesearchthing.jpg" width="98" height="88" alt="somesearchthing.jpeg" style="float:left; margin-right:12px; margin-bottom:12px;">Sau Sheong Chang works at Yahoo!'s Singapore office. Yahoo! isn't implemented in Ruby, of course, but Sau's made an attempt at implementing a basic search engine in Ruby and has written <a href="http://blog.saush.com/2009/03/write-an-internet-search-engine-with-200-lines-of-ruby-code/">a pretty interesting, indepth article about the whole process</a>. Sau's search engine is formed of a crawler, indexer, and query system, and uses <a href="http://wiki.github.com/why/hpricot">Hpricot</a>, <a href="http://datamapper.org/doku.php">DataMapper</a>, and <a href="http://www.sinatrarb.com/">Sinatra</a> to get things done. Lots of code, lots of explanations - go read it.</p>
<p>If you want to grab Sau's code for yourself, check out <a href="http://github.com/sausheong/saushengine/tree/master">the saushengine repository</a> on Github. You can also attempt to try a live version of the engine for yourself at <a href="http://saushengine.saush.net/">http://saushengine.saush.net/</a> - it's down at the time of writing though and Sau warns its availability will be poor.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Guillaume Noireaux</strong> &middot; <time datetime="2009-03-21T03:27:00+00:00">March 21, 2009 at 3:27 am</time></p>
      <p>What would be the location of these Yahoo! offices again? (Sorry, I've worked as a proof reader. Can't control myself now.)<br>
Thanks for the link and your great service to the spreading of knowledge in the community.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Guillaume Noireaux</strong> &middot; <time datetime="2009-03-21T03:35:00+00:00">March 21, 2009 at 3:35 am</time></p>
      <p>...and yes, I have a funny way of writing proofreader.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-03-21T05:40:00+00:00">March 21, 2009 at 5:40 am</time></p>
      <p>Good catch - thanks :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hubert Łępicki</strong> &middot; <time datetime="2009-03-23T21:50:00+00:00">March 23, 2009 at 9:50 pm</time></p>
      <p>Nice. It's a nice article. I wish I had read this couple of months ago when I built my own crawler for one web application... it'd save me lots of time!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>feedbackmine</strong> &middot; <time datetime="2009-03-26T04:45:00+00:00">March 26, 2009 at 4:45 am</time></p>
      <p>My tweetjobsearch ( <a href="http://github.com/feedbackmine/tweetjobsearch/tree/master" rel="nofollow">http://github.com/feedbackmine/tweetjobsearch/tree/master</a> ) is an open source twitter job search engine. It is a good example of building search engine in ruby. To make it more interesting, it uses libsvm to classify text.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
