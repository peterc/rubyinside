---
title: RESTful Rails Development PDF Released
date: '2007-02-20'
author: Peter Cooper
author_slug: admin
post_id: 392
slug: restful-rails-development-pdf-released-392
url: "/restful-rails-development-pdf-released-392.html"
categories:
- cool
- elsewhere
- ruby-on-rails
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2007/02/restfulrails.jpg" height="230" width="430" border="1" hspace="4" vspace="4" alt="Restfulrails"></p>
<p>A month ago I <a href="rest-auf-rails-auf-deutsch-365.html">reported on the release of a PDF (in German)</a> covering Rails' REST abilities by Ralf Wirdemann and Thomas Baustert (the authors of the first German Rails book, "<a href="http://www.amazon.de/Rapid-Web-Development-Ruby-Rails/dp/3446409327/ref=ed_oe_o/028-8389402-4845348">Rapid Web Development mit Ruby on Rails</a>"). With the help of Florian Görsdorf and Adam Groves, they've produced a fine English translation titled <a href="http://www.b-simple.de/documents">"RESTful Rails Development"</a>. It's still free (although donations are accepted).</p>
<p>It's only about thirty pages long, but in that space it packs in a lot of information about Rails and REST, including REST routing, URLs, view techniques, path methods, and how to nest resources. If, like me, you're a Rails developer who's pretty savvy at the 1.0 level but haven't made the leap into the world of REST, it's a great primer.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jesse Grosjean</strong> &middot; <time datetime="2007-02-20T04:00:00+00:00">February 20, 2007 at 4:00 am</time></p>
      <p>Does anyone know if source code is available for the "ontrack" application discussed in the article?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>AkitaOnRails</strong> &middot; <time datetime="2007-02-20T04:00:00+00:00">February 20, 2007 at 4:00 am</time></p>
      <p>This is really a fine tutorial. I am a brazilian Railer and I published the first portuguese RoR book in Brazil. I already managed the Getting Real book translation to portuguese and I am willing to translate this tutorial into portuguese as well, maintaining it as creative commons or whatever open source license the authors agree with. Do you know how can I contact them to obtain permission?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Anatol Pomozov</strong> &middot; <time datetime="2007-02-20T10:28:00+00:00">February 20, 2007 at 10:28 am</time></p>
      <p>[OT] What are you using for drawing such fancy schemes?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Martijn</strong> &middot; <time datetime="2007-02-20T12:40:00+00:00">February 20, 2007 at 12:40 pm</time></p>
      <p>I'm just like that. Getting it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeroen8</strong> &middot; <time datetime="2007-02-20T19:19:00+00:00">February 20, 2007 at 7:19 pm</time></p>
      <p>sometimes I see some PHP errors in the menu (like php_network_getaddresses:).<br>
Is it time to rewrite this site in Rails :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sandro Paganotti</strong> &middot; <time datetime="2007-02-20T19:19:00+00:00">February 20, 2007 at 7:19 pm</time></p>
      <p>Thank you for this amazing document. Now it's time for me to create my first RESTful application !</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-02-20T19:35:00+00:00">February 20, 2007 at 7:35 pm</time></p>
      <p>I can't answer for them, but it looks like an Omnigraffle diagram to me.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ralf Wirdemann</strong> &middot; <time datetime="2007-02-21T07:19:00+00:00">February 21, 2007 at 7:19 am</time></p>
      <p>Yes, it was OmniGraffle.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ralf Wirdemann</strong> &middot; <time datetime="2007-02-21T07:24:00+00:00">February 21, 2007 at 7:24 am</time></p>
      <p>@AkitaOnRails: It would be great if could translate the tutorial into portuguese. Please keep it under creative commons. Many thanks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>jennifer lindner</strong> &middot; <time datetime="2007-03-10T01:19:00+00:00">March 10, 2007 at 1:19 am</time></p>
      <p>i have a question, kind of a newbie question. i'm using a join table, a model that belongs_to two models. it seems to me the analogy to the code in your work would be if iterations belonged to projects and bulletins. so i'd like to make a url helper for the path:</p><p>iteration_path(:project_id =&gt; iteration.project, :bulletin_id =&gt; iteration.bulletin, :id =&gt; iteration)</p><p>instead of the example given in your tutorial:<br>
iteration_path(:project_id =&gt; iteration.project, :id =&gt; iteration) </p><p>but i don't even know where to put such code. in the iterations_helper.rb file? sort of like this?:</p><p>def iterations_path</p><p>iteration_path(:project_id =&gt; iteration.project, :bulletin_id =&gt; iteration.bulletin, :id =&gt; iteration)<br>
end</p><p>or, should this be part of the resource mapping in the routes.rb file?</p><p>help with this would be very very greatly appreciated.</p><p>thank you</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
