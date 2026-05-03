---
title: Deploy A Free, Ruby Powered Blog In 5 Minutes with Toto and Heroku
date: '2010-02-05'
author: Peter Cooper
author_slug: admin
post_id: 2962
slug: deploy-blog-with-toto-and-heroku-2962
url: "/deploy-blog-with-toto-and-heroku-2962.html"
categories:
- cool
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2010/02/heroku-dog.gif" width="120" height="110" alt="heroku-dog.gif" style="float:left; margin-right:12px; margin-bottom:12px;"> <a href="http://cloudhead.io/toto">Toto</a> <sup>(<a href="http://github.com/cloudhead/toto">GitHub repo</a>)</sup> is a new lightweight Ruby and Rack-based blogging engine designed specifically for "hackers" by Alexis Sellier. Content is managed entirely through <a href="http://git-scm.com/">Git</a> - so everything is version controlled - and articles are stored as text files with embedded YAML metadata. At only 300 lines, it's easy to hack to your own taste, too.</p>
<p>Alexis has decided to push Toto by <a href="http://cloudhead.io/toto">demonstrating</a> how easy it is to deploy - for free - on the <a href="heroku-gets-add-ons-serious-ruby-webapp-hosting-made-easy-2664.html">Heroku platform</a>. You can literally get a blog up on <a href="http://www.heroku.com/">Heroku</a> within 5 minutes, even if you haven't already got a Heroku account (I just tried it).</p>
<h3>How To Do It</h3>
<p>Here are the basic steps:</p>
<ul>
<li>
<a href="http://api.heroku.com/signup">Sign up for an account at Heroku.com</a> - all you have to do is provide an e-mail address, validate it, then enter a password.</li>
<li><code>gem install heroku</code></li>
<li><code>git clone git://github.com/cloudhead/dorothy.git your-blog-dir</code></li>
<li><font face="monospace">cd your-blog-dir</font></li>
<li><code>heroku create</code></li>
<li>Use the URL returned by <code>heroku create</code> and add a line in to the <code>Toto::Server.new</code> block in <code>config.ru</code> like: <code>set :url, 'http://your.heroku.url.here'</code>
</li>
<li><font face="monospace">git commit -am "Added URL"</font></li>
<li><font face="monospace">git push heroku master</font></li>
<li>You're live!</li>
</ul>
<p>It's that simple - I just tried it (see <a href="http://furious-fire-87.heroku.com">http://furious-fire-87.heroku.com</a> for a live demo)! Beyond this stage, you need to check out <a href="http://github.com/cloudhead/toto">Toto's documentation</a> and actually add some posts to your Toto install, customize the template, and what not.</p>
<p>If you're interested in lightweight systems like Toto, check out <a href="http://github.com/adamwiggins/scanty">Scanty</a> and <a href="http://github.com/mojombo/jekyll">Jekyll</a> (which includes a blog-like system but at heart is designed to cope with full sites).</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Mike</strong> &middot; <time datetime="2010-02-05T21:08:00+00:00">February 5, 2010 at 9:08 pm</time></p>
      <p>I did this last night on my site and it was pretty simple.</p><p>I've actually got it integrated into an existing rails site, and that was pretty straight forward too.</p><p>Basic steps are:</p><p>1.) create a folder in the root of your rails app for the blog...mkdir blog<br>
2.) copy the articles and templates directory (and sub directories) from the dorothy example app over to that directory.<br>
3.) Create a config.ru in your rails root.<br>
4.) Fill in the rails root as appropriate.  Mine looks like this:</p><pre>#config.ru
require 'toto'
require 'config/environment.rb'

use Rack::Static, :urls =&gt; ['/stylesheets', '/javascripts', '/images', '/favicon.ico'], :root =&gt; 'public'
use Rack::ShowExceptions
use Rack::CommonLogger

# Run application
toto = Toto::Server.new do
  Toto::Paths = {
    :templates =&gt; "blog/templates",
    :pages =&gt; "blog/templates/pages",
    :articles =&gt; "blog/articles"
  }

  set :title, "My Blog"
  set :date, lambda {|now| now.strftime("%B #{now.day.ordinal} %Y") }
  set :summary,   :max =&gt; 500
  set :root, "blog"
  if RAILS_ENV != 'production'
    set :url, "http://localhost:9292/blog/"
  else
    set :url, "http://my-blog.heroku.com/blog/"
  end
end

app = Rack::Builder.new do
	use Rack::CommonLogger

	map '/blog' do
		run toto
	end

	map '/' do
		use Rails::Rack::Static
		run ActionController::Dispatcher.new
	end
end.to_app

run app</pre><p>5.) Add the toto and rdiscount gems to your .gems manifest or to your bundler gem file for heroku.</p><p>Then just deploy it to heroku and you should be good to go!</p><p>Enjoy.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-02-05T21:25:00+00:00">February 5, 2010 at 9:25 pm</time></p>
      <p>Awesome comment - just a shame WP cuts out the spacing, etc. I might try wrapping the code bits in PRE tags to see if it works..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>cloudhead</strong> &middot; <time datetime="2010-02-05T22:16:00+00:00">February 5, 2010 at 10:16 pm</time></p>
      <p>Just updated dorothy (the default template), to default to article.path instead of article.url, for links — this should make the `set :url` step optional.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dmitry</strong> &middot; <time datetime="2010-02-05T23:54:00+00:00">February 5, 2010 at 11:54 pm</time></p>
      <p>I've been playing around with toto for a bit now (cloudhead has shared with me the first few versions) and liked it so much I've decided to migrate my main blog over -- <a href="http://www.usabilitypost.com" rel="nofollow">http://www.usabilitypost.com</a> (DNS was only recently updated, so you may or may not see the toto version of the blog, I'm using OpenDNS and it loads the new site. You can tell if it's toto by the Disqus comments)</p><p>Migrated from WordPress without much pain. Extracted over 100 articles to text files and imported thousands of comments over to disqus (using their import plugin) and have just finished setting it up. Runs insanely fast on Heroku due to caching. Absolutely loving it. No need for WordPress ever again :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Lee Smith</strong> &middot; <time datetime="2010-02-06T01:41:00+00:00">February 6, 2010 at 1:41 am</time></p>
      <p>This is just freakin cool...heroku is pretty slick too.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Omnipresent</strong> &middot; <time datetime="2010-02-06T14:18:00+00:00">February 6, 2010 at 2:18 pm</time></p>
      <p>what if you want to add stuff like SYNTAX highlighting</p>
    </li>
      <li>
      <p class="comment-meta"><strong>hyperbolist</strong> &middot; <time datetime="2010-02-06T19:06:00+00:00">February 6, 2010 at 7:06 pm</time></p>
      <p>@omnipresent: The most effortless option I found is to use gist.github.com's embed feature.  Another reasonable option is rack-coderay <a href="http://github.com/webficient/rack-coderay" rel="nofollow">http://github.com/webficient/rack-coderay</a> which gives you a bit more flexibility.</p><p>But there are probably many other solutions as well.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-02-06T22:25:00+00:00">February 6, 2010 at 10:25 pm</time></p>
      <p>You could just hack support straight in to Toto, if you wanted. Fork it, add it, and see if the creator would like to pull it back - or not :-) The "syntax" gem would be good for this if you were focusing mainly on Ruby.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>jimbob2000</strong> &middot; <time datetime="2010-02-07T00:11:00+00:00">February 7, 2010 at 12:11 am</time></p>
      <p>Does it write the blog for me too?  Where can I get a gem for that?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-02-07T00:32:00+00:00">February 7, 2010 at 12:32 am</time></p>
      <p>jimbob: You want <a href="http://railstips.org/blog/archives/2007/04/29/lorem-ispum/" rel="nofollow">http://railstips.org/blog/archives/2007/04/29/lorem-ispum/</a> or <a href="http://github.com/glejeune/lipsum" rel="nofollow">http://github.com/glejeune/lipsum</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>svs</strong> &middot; <time datetime="2010-02-08T07:59:00+00:00">February 8, 2010 at 7:59 am</time></p>
      <p>I have a similar one I call blu.rb (except it's based off sinatra) It provides git backend, arbitrary layouts on any individual post, rss feeds and site update through post-commit hooks. I'm currently running <a href="http://prole.in" rel="nofollow">http://prole.in</a> off of blu.rb as well as this site <a href="http://vivekrajagopalan.com" rel="nofollow">http://vivekrajagopalan.com</a></p><p>It still needs to add caching and there are some loose ends that need to be tied up but it's working quite well for me as a blogging engine.</p><p>More info here <a href="http://prole.in/blog/A+Proletarian+Blogging+Engine.erb" rel="nofollow">http://prole.in/blog/A+Proletarian+Blogging+Engine.erb</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alex</strong> &middot; <time datetime="2010-02-09T02:51:00+00:00">February 9, 2010 at 2:51 am</time></p>
      <p>Getting fairly tough to find a RELIABLE open source server these days!  Thanks for the post!  Fortunately, I found a GREAT company to use!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hallison Batista</strong> &middot; <time datetime="2010-02-10T14:13:00+00:00">February 10, 2010 at 2:13 pm</time></p>
      <p>Great! But before the Dorothy's dog was coded, Postview has born (<a href="http://github.com/hallison/postview" rel="nofollow">http://github.com/hallison/postview</a>). Try a demo in <a href="http://postview.heroku.com/" rel="nofollow">http://postview.heroku.com/</a>.</p><p>Actualy, I'm working in a big refactor for v1.0.0.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
