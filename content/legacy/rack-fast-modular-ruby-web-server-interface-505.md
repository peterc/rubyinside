---
title: 'Rack: Fast Modular Ruby Web Server Interface'
date: '2007-05-27'
author: Hendy Irawan
author_slug: hendy-irawan
post_id: 505
slug: rack-fast-modular-ruby-web-server-interface-505
url: "/rack-fast-modular-ruby-web-server-interface-505.html"
categories:
- cool
- elsewhere
- news
- tools
---

{{< rawhtml >}}
<p><a href="http://rubyforge.org/projects/rack">Rack</a>, recently <a href="http://chneukirchen.org/blog/archive/2007/05/rack-0-2-a-modular-ruby-webserver-interface.html">announced</a> at version 0.2 by <a href="http://chneukirchen.org/blog/">Christian Neukirchen</a>, is a minimal, modular and adaptable interface for developing Ruby web applications.  By wrapping HTTP requests and responses in the simplest way possible, it unifies and distills the API for web servers, web frameworks, and software in between (the so-called middleware) into a single method call.</p>
<p>A simple Rack application looks like this:</p>
<pre>class HelloWorld
def call(env)
[200, {"Content-Type"=&gt;"text/plain"}, ["Hello world!"]]
end
end</pre>
<p>If you ever think Rails is a bit overkill for some of your projects, you might just really like Rack. It supports web frameworks such as <a href="http://code.whytheluckystiff.net/camping/">Camping</a>, <a href="http://ramaze.rubyforge.org/">Ramaze</a>, <a href="http://maveric.rubyforge.org/">Maveric</a>, and <a href="http://lucumr.pocoo.org/trac/repos/racktools/">Racktools::SimpleApplication</a>. The new version now supports FastCGI in addition to WEBrick, Mongrel/Swiftcore, and plain CGI.</p>
<p>Rack is installable as a Ruby gem:</p>
<pre>gem install rack</pre>
<p>Check out Chris' blog posts for <a href="http://chneukirchen.org/blog/archive/2007/05/rack-0-2-a-modular-ruby-webserver-interface.html">more</a> <a href="http://chneukirchen.org/blog/archive/2007/03/rack-0-1-a-modular-ruby-webserver-interface.html">detailed</a> <a href="http://chneukirchen.org/blog/archive/2007/02/introducing-rack.html">information</a> about Rack.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>johan</strong> &middot; <time datetime="2007-05-27T18:36:00+00:00">May 27, 2007 at 6:36 pm</time></p>
      <p>rack has supported fcgi since 0.1</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
