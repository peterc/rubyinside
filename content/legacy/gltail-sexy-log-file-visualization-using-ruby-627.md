---
title: 'glTail: Sexy Log File Visualization using Ruby'
date: '2007-10-12'
author: Peter Cooper
author_slug: admin
post_id: 627
slug: gltail-sexy-log-file-visualization-using-ruby-627
url: "/gltail-sexy-log-file-visualization-using-ruby-627.html"
categories:
- cool
- miscellaneous
- ruby-tricks
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2007/10/gltail.jpg" height="143" width="267" border="1" hspace="4" vspace="4" alt="Gltail"></p>
<p><a href="http://www.fudgie.org/">glTail</a> is a great little Ruby script by Erlend Simonsen (aka <em>Fudgie</em>) that uses OpenGL and Ruby to visualize the events taking place in log files in real time. An example video on <a href="http://www.fudgie.org/">the official site</a> shows requests coming into an HTTP server, each represented by a "ball" which is thrown across the screen. The script uses net-ssh to connect to a server and then libopengl-ruby to output the graphics. Parsers are included for processing Apache, Rails, IIS and Postfix log files. Nice work! The <a href="http://www.fudgie.org/gl_tail-0.02.rb">code</a> is merely a couple hundred lines of Ruby, so if you've fancied putting together a basic OpenGL app, it's worth looking at it for that reason too.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Erlend Simonsen</strong> &middot; <time datetime="2007-10-12T16:34:00+00:00">October 12, 2007 at 4:34 pm</time></p>
      <p>Please grab version 0.05 instead, as it helps you get the correct versions of the required dependencies installed. </p><p>0.06 will be released soon as well, which has split the source into multiple files to make it easier to keep your local changes and tweaks around when upgrading.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Eckhard Rotte</strong> &middot; <time datetime="2007-10-12T17:08:00+00:00">October 12, 2007 at 5:08 pm</time></p>
      <p>Highly recommended and really as simple to setup as described on the project page. Install 2 gems, edit some parameters (login, location of logfile) ans the show starts!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike C</strong> &middot; <time datetime="2007-10-12T18:16:00+00:00">October 12, 2007 at 6:16 pm</time></p>
      <p>Just tried it out.  Very cool.  It even automagically notices signups and logins!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
