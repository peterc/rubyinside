---
title: Make any Ruby object Rack-friendly with Rackable
date: '2009-07-20'
author: Ric Roberts
author_slug: ricroberts
post_id: 2088
slug: make-any-ruby-object-rack-friendly-with-rackable-2088
url: "/make-any-ruby-object-rack-friendly-with-rackable-2088.html"
categories:
- cool
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2009/07/rack-logo.jpg" style="float:left; margin-right:12px; margin-bottom:12px;" alt="rack"><a href="http://yapok.org/">François Vaux</a> has recently published a Ruby module called <a href="http://github.com/madx/rackable/tree/master">Rackable</a> which allows you to make any Ruby object <a href="http://github.com/rack/rack/tree/master">Rack</a>-friendly, providing it with a REST-like interface.</p>
<p>What does this mean?  Well, a Rack application is essentially a Ruby object that responds to <code>call()</code>. Rackable just gives your object a call method which uses the Rack environment to dispatch to a method.  </p>
<p>So, you just need to include Rackable in your class and implement methods for the the appropriate REST verbs. This means you can create a  hello_world.ru file like this:</p>
<pre>
require 'rackable'

class HelloWorld
  include Rackable

  def get()
    "Hello, world!"
  end

end

run HelloWorld.new
</pre>
<p>... start it with <a href="http://wiki.github.com/rack/rack/tutorial-rackup-howto">rackup</a>, and then use something like curl (or even your browser) to call the methods.</p>
<p>Thanks to <a href="http://alexyoung.org/">Alex Young</a> for putting me on to this.</p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><a href="http://devver.net/"><img src="/assets/2009/07/devver-icon.gif" width="156" height="40" alt="devver-icon.gif" style="float:right; margin-bottom:8px; margin-left:12px;"></a><em>Also..</em> Got a slow Test::Unit or RSpec suite? <b>Run them up to three times faster on</b> <a href="http://devver.net/"><b>Devver's cloud!</b></a> Setup is simple and requires no code changes. <a href="http://devver.net/">Request a beta invite today!</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>ehsanul</strong> &middot; <time datetime="2009-07-21T04:08:00+00:00">July 21, 2009 at 4:08 am</time></p>
      <p>Interesting. But why not just use Sinatra?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matthew</strong> &middot; <time datetime="2009-07-21T13:55:00+00:00">July 21, 2009 at 1:55 pm</time></p>
      <p>Ah beat me to it but I've actually been working on something similar recently. It takes the idea a bit further though, with support for content negotiation, caching, conditional requests, auth, subresource resolution, range requests and some other goodies. Hoping to develop it into something of a framework for restful API development.</p><p>Just put it up on github now: <a href="http://github.com/mjwillson/rest_on_rack/tree/master" rel="nofollow">http://github.com/mjwillson/rest_on_rack/tree/master</a></p><p>Although the rdoc might be a better place to start (Rack::REST::Resource and Rack::REST::Entity being the most important things to look at)<br>
<a href="http://dev.playlouder.com/doc/rest_on_rack/rdoc/" rel="nofollow">http://dev.playlouder.com/doc/rest_on_rack/rdoc/</a></p><p>Still a work in progress but a lot is already in place and tested, interested to hear from anyone interested in helping out / potentially using something like this, it's born somewhat out of frustration at doing pure API work in rails/merb.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2009-07-22T13:35:00+00:00">July 22, 2009 at 1:35 pm</time></p>
      <p>So, we can put this directly in our AR models and skip the views then right? ;)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
