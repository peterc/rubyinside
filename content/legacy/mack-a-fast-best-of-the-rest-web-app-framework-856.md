---
title: 'Mack: A Fast, “Best of the Rest” Web App Framework'
date: '2008-04-11'
author: Peter Cooper
author_slug: admin
post_id: 856
slug: mack-a-fast-best-of-the-rest-web-app-framework-856
url: "/mack-a-fast-best-of-the-rest-web-app-framework-856.html"
categories:
- miscellaneous
- ruby-on-rails
---

{{< rawhtml >}}
<p><a href="http://www.mackframework.com/"><img src="/assets/2008/04/markmorrisonreturnofthe4295-f.jpg" width="301" height="300" alt="MarkMorrisonReturnOfThe4295_f.jpg" style="border:1px #000000 solid;"></a></p>
<p><a href="http://www.mackframework.com/">Mack</a> is an interesting new Ruby Web app framework (<a href="waves-a-new-rails-like-web-applications-framework-782.html">of</a> <a href="wuby-another-light-weight-web-framework-for-ruby-654.html">which</a>, as we know, <a href="http://sinatrarb.com/Welcome">there</a> <a href="http://ramaze.net/">are</a> <a href="http://www.rubyonrails.org/">many</a><a href="http://www.merbivore.com/">!</a>) that takes some of the best elements of other Web app frameworks (including <a href="http://rack.rubyforge.org/">Rack</a> support!) and presents itself in a very modular, "agile" way. Developer Mark Bates gives the inspiration for Mack's development as "portals" and says that a lot of Mack's development will be focused on this, including features like a distributed routing system and interoperability between multiple trusted, local apps.</p>
<p>I've personally used Mack (along with jQuery) in the last day or two to develop a chat client. It's worked out very well. Mack is very fast and very light, but offers a familiar Rails-style directory and file structure. I chose DataMapper (one of many options) for my ORM, and it worked seamlessly. Mack also has <a href="http://api.mackframework.com/">thorough documentation</a>.</p>
<p>Mack is certainly worth a try if you're either a Web application framework junkie or looking for something that's modular and fast and won't be too alien if you're already familiar with Rails.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Aman Gupta</strong> &middot; <time datetime="2008-04-11T23:39:00+00:00">April 11, 2008 at 11:39 pm</time></p>
      <p>Are there any example apps online? Is the source for your chat client available?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-04-12T00:07:00+00:00">April 12, 2008 at 12:07 am</time></p>
      <p>Not sure on the first question. No to the second question. It really was just a very scrappy playabout :) Not even sure if I'll ever make it live!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aman Gupta</strong> &middot; <time datetime="2008-04-12T00:39:00+00:00">April 12, 2008 at 12:39 am</time></p>
      <p>I can't seem to find a hello world, or any other simple blog/wiki/etc examples.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-04-12T00:56:00+00:00">April 12, 2008 at 12:56 am</time></p>
      <p>One problem is that it'd be different depending on what ORM you used.</p><p>However, just from my limited use, the directory structure is nearly identical to Rails (app, config, lib, log, public, test, tmp and vendor), and the files in their default state are similar but a lot "lighter". For example.. config/boot.rb is just:</p><p>require 'rubygems'<br>
require 'rack'<br>
require 'fileutils'</p><p>gem 'mack'<br>
require 'mack'</p><p>The routes file is simpler. The environments files are YAML files instead of Ruby (and empty by default). database.yml is the same.</p><p>Views work in a similar way to Rails. app/views/whatever/index.html.erb, etc.</p><p>No /script folder as everything is handled through Rake tasks.</p><p>Just imagine a stripped down Rails really.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-04-12T00:57:00+00:00">April 12, 2008 at 12:57 am</time></p>
      <p>But, yes, there is probably a lot more the developer could do about documentation and example (true for every project, even Ruby itself!) and hopefully this post will get enough people interested that it gets produced :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark Bates</strong> &middot; <time datetime="2008-04-12T00:57:00+00:00">April 12, 2008 at 12:57 am</time></p>
      <p>Peter, thanks for the great review! I'm a huge fan of the site, and I'm enjoying RubyFlow even more these days.</p><p>Aman, You can find a blog demo here:<br>
<a href="http://www.mackframework.com/2008/03/19/adding-rssxml-feeds-to-our-blog-demo/" rel="nofollow">http://www.mackframework.com/2008/03/19/adding-rssxml-feeds-to-our-blog-demo/</a></p><p>It's from an older version of the framework, but it's still good. The source can be found here:<br>
git://github.com/markbates/mack_blog_demo.git</p><p>By the end of the weekend I'm going to have the next version of Mack up which will feature migration support for ActiveRecord and DataMapper. I'm also working on a distributed routes demo app, but it's not quite finished yet.</p><p>Enjoy.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aman Gupta</strong> &middot; <time datetime="2008-04-13T00:25:00+00:00">April 13, 2008 at 12:25 am</time></p>
      <p>Thanks Mark. You mention that Mack is suitable for "distributed, portal-like applications".. could you elaborate?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark Bates</strong> &middot; <time datetime="2008-04-13T02:58:00+00:00">April 13, 2008 at 2:58 am</time></p>
      <p>Aman, in the current release there is support for distributed routing. That means that multiple apps can share their routes with the other apps. This means that all your apps can be aware of each others routing, even if that routing changes. Something that I think is pretty dang cool. I've rewritten the distributed routes stuff in the next release, 0.4.5, due out in a few days. It's been rewritten to use Rinda. That's the first of many distributed features that are going to be built into Mack.</p><p>Mack is going to include a bunch of helpers, and services to make dealing with distributed apps easier, including automatic searching/retrieval of unknown services.</p><p>As far as portal stuff is concerned, I haven't put a lot of stuff in there just yet, but there is a render(:url =&gt; "http://www.mackframework.com") allows for in the inline rendering of a webpage. It allows for all the REST verbs, and a parameters, etc... In a future release this method will be smart enough to know 'local' requests, and handle them accordingly. There'll also be a 'portlet' registration system that will allows you to wrap this render type with standard parameters that always need to be passed, as well as other attributes. </p><p>It's a young framework, and there's a lot to be done. If you've got some good ideas for features, I'd love to hear them. You can find the code at <a href="http://github.com/markbates/mack/tree/master" rel="nofollow">http://github.com/markbates/mack/tree/master</a> if you want to contributed.</p><p>Hope that helps.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
