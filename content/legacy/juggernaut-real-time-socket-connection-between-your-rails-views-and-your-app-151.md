---
title: 'Juggernaut: Real-time socket connection between your Rails views and your
  app'
date: '2006-07-20'
author: Peter Cooper
author_slug: admin
post_id: 151
slug: juggernaut-real-time-socket-connection-between-your-rails-views-and-your-app-151
url: "/juggernaut-real-time-socket-connection-between-your-rails-views-and-your-app-151.html"
categories:
- cool
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2006/07/juggernaut.jpg" height="260" width="354" border="1" hspace="4" vspace="4" alt="Juggernaut"><span style="font-size:12pt;"><br>
</span><br>
Alex MacCraw has been working on <a href="http://juggernaut.rubyforge.org/">a great plugin called Juggernaut,</a> and has now made his first public release:</p>
<blockquote><p><em>The Juggernaut plugin for Ruby on Rails aims to revolutionize your Rails app by letting the server initiate a connection and push data to the client. In other words your app can have a real time connection to the server with the advantage of instant updates. Although the obvious use of this is for chat, the most exciting prospect is collaborative cms and wikis.</em></p></blockquote>
<p>Basically, your view will contain a hidden piece of Flash that opens up a socket connection to a socket server that your Rails app can then interact with. This means you can easily 'push' data in real time to your views and have it update in real time too.</p>
<p>The most obvious use is for making a chat system. Whenever someone in your channel posts a message, simply push it to the socket server, which then pushes the message out to all of the listening clients updating their chat pages in real-time. It uses Flash 6, and has been tested on Firefox, IE, and Safari.</p>
<p>I'm very excited to see how this gets used. Alex envisions real-time updating wikis and collaborative CMSes.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Danno</strong> &middot; <time datetime="2006-07-20T15:36:00+00:00">July 20, 2006 at 3:36 pm</time></p>
      <p>Ewww, Flash.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James Hughes</strong> &middot; <time datetime="2006-07-20T17:18:00+00:00">July 20, 2006 at 5:18 pm</time></p>
      <p>This was demonstrated by DHH at the Canada on Rails conference in April. (He called it 'Armageddon') Were you there or did you somehow come up with this completely independently of that?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>_ugly</strong> &middot; <time datetime="2006-07-20T18:13:00+00:00">July 20, 2006 at 6:13 pm</time></p>
      <p>honestly, who really cares if it's flash.  this is frickin sweet!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-07-20T18:30:00+00:00">July 20, 2006 at 6:30 pm</time></p>
      <p>Alex told me that he was inspired by that but it was supposedly unfinished and he wanted something slick and ready for production. Hence, Juggernaut.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
