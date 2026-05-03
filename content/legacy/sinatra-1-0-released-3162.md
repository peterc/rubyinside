---
title: 'Sinatra 1.0 Released: Major Milestone for Ruby’s Best Webapp DSL'
date: '2010-03-23'
author: Peter Cooper
author_slug: admin
post_id: 3162
slug: sinatra-1-0-released-3162
url: "/sinatra-1-0-released-3162.html"
categories:
- cool
- news
---

{{< rawhtml >}}
<p><img src="/assets/2010/03/sinatrahat.png" class="alignleft size-thumbnail notbordered">In November 2007, we <a href="reprise-a-ruby-powered-blogging-app-in-100-lines-including-templates-646.html">casually mentioned</a> a new Ruby webapp library called <a href="http://www.sinatrarb.com/">Sinatra</a>. It took a year to capture the imagination of the Ruby community as a whole and we eventually <a href="sinatra-29-links-and-resources-for-a-quicker-easier-way-to-build-webapps-1371.html">covered it in more depth</a> but today <strong>we're proud to (exclusively) announce that <a href="http://www.sinatrarb.com/">Sinatra</a> has today reached its landmark 1.0 release!</strong></p>
<p style="background-color: #ffd; padding: 6px">Impromptu release party in the official <code>#sinatra</code> channel on <code>irc.freenode.net</code>, anyone? :-)</p>
<p>Sinatra is well known in the Ruby community for providing developers with a simple way to put together Web apps big and small. The canonical <strong>ultra</strong>-simple example:</p>
<pre><code>require 'rubygems'
require 'sinatra'

get '/hi' do
  "Hello World!"
end</code></pre>
<p>Sinatra's lead developers — Ryan Tomayko, Simon Rozet, and Blake Mizerany — have done a great job, along with about 50 other contributors, to produce a slick and powerful Web application <span class="caps">DSL</span> for Rubyists. Their ideas have even inspired similar frameworks in other languages (such as <a href="http://code.quirkey.com/sammy/">Sammy</a> in JavaScript). Satish Talim put together a great piece, <a href="http://rubylearning.com/blog/2009/06/29/20-rubyists-using-sinatra-do-you/">20+ Rubyists are using Sinatra - Do you?</a>, last year that got a good feel for how Sinatra's being used for Web apps both big and small by a collection of Rubyists.</p>
<h3>What's New?</h3>
<p>As an avid user of Sinatra 0.9, I asked Blake Mizerany what the biggest changes were going to 1.0:</p>
<blockquote>
<p>I think the biggest changes are what we cleaned up. <a href="http://github.com/rtomayko/tilt">Tilt</a> is a great new under-the-hood addition. Sinatra has matured; we're done messing around. It's super solid. The extension <span class="caps">API</span> has matured to something really killer. Extensions are ridiculously simple to create now - you can easily install helper methods, <span class="caps">DSL</span> methods, and install new routes on apps, and the user need only <code>require 'sinatra/your-extension'</code> - that's it.</p>
</blockquote>
<p>Unsurprisingly, the <a href="http://github.com/sinatra/sinatra/blob/master/CHANGES">official changelog</a> also provides useful information to existing Sinatra developers.</p>
<p>A more significant longer-term change for Sinatra over the past year has been in how it integrates with <a href="http://rack.rubyforge.org/">Rack</a>. In <a href="http://www.slideshare.net/benschwarz/sinatra-rack-and-middleware-1509268">Sinatra Rack And Middleware</a>, Ben Schwarz looks at how Sinatra interacts with Rack and how you can use Rack's middleware and multi-application features with Sinatra. A key aspect of this is the ability to produce "modular" Sinatra applications by subclassing <code>Sinatra::Base</code> to separate discrete applications or application portions:</p>
<pre><code>require 'rubygems'
require 'sinatra/base'

class MyApp &lt; Sinatra::Base
  get '/' do
    "Hello world!"
  end
end</code></pre>
<p>And then, in a Rackup file:</p>
<pre><code>require 'my_app'
run MyApp</code></pre>
<h3>Installing and Trying Sinatra</h3>
<p>If you're not yet using Sinatra and want to give it a quick try, you can install it with RubyGems:</p>
<pre><code>gem install sinatra</code></pre>
<p>Put the following basic example into a file, say example.rb:</p>
<pre><code>require 'rubygems'
require 'sinatra'

get '/hi' do
  "Hello World!"
end</code></pre>
<p>Then run the Ruby file in the usual way, and a request to <code>http://localhost:4567/hi</code> should get you a "Hello World!" response.</p>
<h3>Learn More Online and on <span class="caps">IRC</span>
</h3>
<p>The examples shown above are as basic as Sinatra gets, but it goes a <strong>lot</strong> deeper than that (such as embedding Sinatra apps <strong>inside</strong> Rails apps) and the Sinatra Web site has some <a href="http://www.sinatrarb.com/intro">great code examples</a> of where you can go next. There's also <a href="http://www.sinatrarb.com/documentation">solid documentation</a> available and if you want to take a look at lots of existing Sinatra projects to get a feel for the patterns and techniques involved, there's a <a href="http://www.sinatrarb.com/wild.html">great list of Sinatra apps and extensions</a> too.</p>
<p>Lastly, if you're interested in asking questions about Sinatra or just hanging out with Sinatra's developers and users, head along to the <code>#sinatra</code> channel on <code>irc.freenode.net</code>. There's usually between 50-100 people hanging out there.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>nap</strong> &middot; <time datetime="2010-03-23T21:35:00+00:00">March 23, 2010 at 9:35 pm</time></p>
      <p>Congrats to the entire team! Sinatra is truly a piece of work (I mean that in a good way).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aslak Hellesøy</strong> &middot; <time datetime="2010-03-23T21:44:00+00:00">March 23, 2010 at 9:44 pm</time></p>
      <p>Sinatra is art. Thanks for the hard work!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Thibaut Barrère</strong> &middot; <time datetime="2010-03-23T21:59:00+00:00">March 23, 2010 at 9:59 pm</time></p>
      <p>Thanks for the hard-work on Sinatra - it's currently my favorite web framework!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ade</strong> &middot; <time datetime="2010-03-23T22:04:00+00:00">March 23, 2010 at 10:04 pm</time></p>
      <p>Congratulations to the Sinatra developers!  I absolutely love Sinatra.  It's a joy to work with.  If you haven't tried it, you really ought to.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Marc Chung</strong> &middot; <time datetime="2010-03-23T22:38:00+00:00">March 23, 2010 at 10:38 pm</time></p>
      <p>Sinatra is an amazing piece of software. Thank you for all your hard work.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jay</strong> &middot; <time datetime="2010-03-23T23:23:00+00:00">March 23, 2010 at 11:23 pm</time></p>
      <p>Congrats to Sinatra team on their major milestone. Its simple and very addictive.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>André</strong> &middot; <time datetime="2010-03-24T00:33:00+00:00">March 24, 2010 at 12:33 am</time></p>
      <p>I usually don't comment on blogs, but Sinatra truly rocks. Congrats to its developers.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kuroi Kenshi</strong> &middot; <time datetime="2010-03-24T01:02:00+00:00">March 24, 2010 at 1:02 am</time></p>
      <p>Sinitra kicks major ass! Can't live w/out it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Juanjo</strong> &middot; <time datetime="2010-03-24T09:23:00+00:00">March 24, 2010 at 9:23 am</time></p>
      <p>For the "inspired in Sinatra" list, from the Perl world:</p><p> - <a href="http://perldancer.org/" rel="nofollow">http://perldancer.org/</a><br>
 - <a href="http://mojolicious.org/" rel="nofollow">http://mojolicious.org/</a> (well, Mojolicius::Lite though)</p><p>I've used those two, and are great. We must thank Sinatra for the inspiration!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nico</strong> &middot; <time datetime="2010-03-24T12:43:00+00:00">March 24, 2010 at 12:43 pm</time></p>
      <p>Congratulations, Sinatra is a great framework!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Maurice</strong> &middot; <time datetime="2010-03-24T12:51:00+00:00">March 24, 2010 at 12:51 pm</time></p>
      <p>Sinatra is a rare blend of ridiculously useful and practical code poetry. Kudos for the team and contributors!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonty Davis</strong> &middot; <time datetime="2010-03-24T20:54:00+00:00">March 24, 2010 at 8:54 pm</time></p>
      <p>Just a note to say the documentation still says version 1.0 not yet out!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonty Davis</strong> &middot; <time datetime="2010-03-24T20:56:00+00:00">March 24, 2010 at 8:56 pm</time></p>
      <p>Oh and another so I don't seem churlish! Thanks a bunch for great work - I am awed by the simplicity</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sohan</strong> &middot; <time datetime="2010-03-24T22:01:00+00:00">March 24, 2010 at 10:01 pm</time></p>
      <p>Your post is linked at the drink rails link blog</p>
    </li>
      <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2010-03-24T22:58:00+00:00">March 24, 2010 at 10:58 pm</time></p>
      <p>wow those perl frameworks "inspired by Sinatra" actually look good. Way to go Sinatra!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Satish Talim</strong> &middot; <time datetime="2010-04-22T07:33:00+00:00">April 22, 2010 at 7:33 am</time></p>
      <p>To celebrate this milestone, we at RubyLearning announced a free, online "Introduction to Sinatra" course from 15t May, sponsored by 1stEasy.com. The course filled-up in 6 hours. Hopefully we shall do a repeat batch soon, provided we get a sponsor.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
