---
title: 'Pusher: WebSocket-powered Realtime Browser Push Service for Rubyists'
date: '2010-05-07'
author: Peter Cooper
author_slug: admin
post_id: 3246
slug: pusher-websocket-service-3246
url: "/pusher-websocket-service-3246.html"
categories:
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2010/05/pusher.png" class="alignleft size-thumbnail bordered"><a href="http://www.pusherapp.com/">Pusher</a> is a new Web service from <a href="http://new-bamboo.co.uk">New Bamboo</a> that makes it easy to push data to users of your web applications "live", outside of the request response cycle. They've embraced <a href="http://en.wikipedia.org/wiki/Web_Sockets">Web Sockets</a> technology and built a <span class="caps">REST</span> <span class="caps">API</span> to which you can post events. Its flexible channels are based on a publish/subscribe model and you can send events as <span class="caps">JSON</span> which communicate with all connected browsers.</p>
<p><img src="/assets/2010/05/pusher2.png" alt=""></p>
<p>Websockets are part of the specification for HTML5, and are essentially long-running native <span class="caps">TCP</span> connections in the browser. These allow a client to establish a connection to a server, and have immediate feedback when there are events they need to be notified of. Websockets make your applications more dynamic, and break them out of the traditional stateless request-response cycle. Your applications can therefore rely on maintained state in the browser which will be kept fresh with messages from your server.</p>
<p>Pusher makes adding Websockets to your application a quick and easy process. Pusher provides <a href="http://github.com/newbamboo/pusher-gem">a simple Ruby gem</a>) for interacting with its <span class="caps">REST</span> <span class="caps">API</span>, which includes authentication. There's <a href="http://pusherapp.com/docs">lots of documentation</a> on the site, along with some more in-depth tutorials. Pusher also provides simple tools for debugging the socket connections to your application. Their event-based abstraction is handled in a Javascript library which also includes support for <a href="http://github.com/newbamboo/pusher-js">a flash fallback option</a>.</p>
<h3>Or.. try the <span class="caps">DIY</span> approach</h3>
<p>The tools for creating a similar systems yourself are widely available, and it's pretty easy. Ilya Grigorik recently put together a <a href="http://www.igvita.com/2009/12/22/ruby-websockets-tcp-for-the-browser/">walkthrough of creating a simple Web Sockets server in Ruby</a> using EventMachine. There are plenty of other open source solutions for message pushing generally like <a href="http://juggernaut.rubyforge.org/">Juggernaut</a> and <a href="cramp-asychronous-event-driven-ruby-web-app-framework-2928.html">Cramp</a>.</p>
<p>In many cases running your own standalone socket server gives you a lot of flexibility for more bespoke deployments. However, maintaining these socket servers, debugging the various issues that come up, and keeping up with the specs is not something everyone wants to be doing. Given the popularity of utility-based hosting providers such as Heroku, Pusher is an interesting option for a de-coupled socket service you can use to keep your infrastructure lean.</p>
<p><em>Disclaimer: New Bamboo is a sponsor of Ruby Inside for their <a href="http://pandastream.com/">Panda</a> service. I only noticed this had happened after working on this post (!) but a disclaimer is required nonetheless ;-)</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Ilya Grigorik</strong> &middot; <time datetime="2010-05-09T18:45:00+00:00">May 9, 2010 at 6:45 pm</time></p>
      <p>Great writeup Peter. As far as I'm aware, Pusher is actually powered by em-websocket under the hood! Also, someone recently contributed the flash fallback example into the repo as well, so it's all there for the taking!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sohan</strong> &middot; <time datetime="2010-05-10T13:15:00+00:00">May 10, 2010 at 1:15 pm</time></p>
      <p>The Drink Rails blog linked to your post as one of the top ruby on rails blogs of the day.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
