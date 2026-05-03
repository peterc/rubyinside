---
title: 'Jekyll: A Ruby-Powered Static Site Generator'
date: '2009-11-05'
author: Ric Roberts
author_slug: ricroberts
post_id: 2716
slug: jekyll-a-ruby-powered-static-site-generator-2716
url: "/jekyll-a-ruby-powered-static-site-generator-2716.html"
categories:
- cool
- miscellaneous
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2009/11/jekyll.jpg" alt="jekyll" style="float:left; margin-right:12px; margin-bottom:12px"><a href="http://github.com/mojombo/jekyll">Jekyll</a> is a simple Ruby-powered static site generator, originally by <a href="http://tom.preston-werner.com/">Tom Preston-Werner</a> (aka <em><a href="http://wiki.github.com/mojombo/">mojombo</a></em>) of Github fame.  It's focused around blogging, but it can be configured to generate any kind of static site.  <em>(Note: Jekyll has been around for about a year - <a href="http://tom.preston-werner.com/2008/11/17/blogging-like-a-hacker.html">Tom originally blogged about</a> it in November last year, so apologies if this is old news to some readers, but I've only recently discovered it!)</em></p>
<p>Because Jekyll outputs a static site structure, it means you can host your blog (or site) from anywhere that you can serve static HTML, simply by using your favourite web server (e.g. Apache).  As Tom describes in his blog post, the idea came from wanting to be able to "Blog like a Hacker".  Jekyll lets you write from the comfort of your favourite text editor, and publish from the command line. Using familiar tools reduces the cognitive load involved with publishing a blog, and lets you focus on what you're writing. It doesn't hurt that even a pretty weak Web server could stand a pounding if it's just serving static files!</p>
<p>By default, Jekyll uses its own (slightly modified) flavour of <a href="http://github.com/tobi/liquid/">Liquid</a> templates, with help from <a href="http://pygments.org/">pygments</a> for syntax highlighting, and you can use textile or markdown for the content.  Each Jekyll blog article template needs a <a href="http://wiki.github.com/mojombo/jekyll/yaml-front-matter">header</a> containing some metadata about that article, such as what layout to use, the article's title, and any custom information you want to provide (such as tags for that article).</p>
<p>Generating your site is easy: just running the <code>jekyll</code> command turns your directory of templates into a complete website, ready to serve.  There's a Jekyll server that you can use for testing (passing <code>--auto</code> as an argument means it will automatically regenerate the site when things are changed).</p>
<pre>
jekyll --server --auto
</pre>
<p><em><a href="http://pages.github.com/">Github Pages</a></em> provides a neat way to publish your Jekyll-generated site.  Every Github page is actually run through Jekyll when you push content to your pages repo (this works because a normal static site is also a valid Jekyll site).</p>
<p>The easiest way to get started with Jekyll is by installing the gem (which is <a href="http://gemcutter.org/gems/jekyll">available on Gemcutter</a>), and checking out the <a href="http://wiki.github.com/mojombo/jekyll">wiki</a> on Github, where there's some great documentation.</p>
<pre>
sudo gem install jekyll
</pre>
<p>As you might expect, <a href="http://tom.preston-werner.com/">Tom Preson-Werner's personal blog</a> runs on Jekyll.  Its source is <a href="http://github.com/mojombo/tpw">publicly available on Github</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Sam Soffes</strong> &middot; <time datetime="2009-11-05T21:42:00+00:00">November 5, 2009 at 9:42 pm</time></p>
      <p>Jekyll is awesome. I've been using it for a couple of weeks with great success on GitHub Pages. It's definitely worth checking out. The Jekyll wiki has a lot of great blogs done in Jekyll that are open source on GitHub to learn from.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nick Quaranto</strong> &middot; <time datetime="2009-11-05T21:48:00+00:00">November 5, 2009 at 9:48 pm</time></p>
      <p>There's plenty of sites running on Jekyll, if you need more examples to get started. <a href="http://wiki.github.com/mojombo/jekyll/sites" rel="nofollow">http://wiki.github.com/mojombo/jekyll/sites</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>rs</strong> &middot; <time datetime="2009-11-06T05:14:00+00:00">November 6, 2009 at 5:14 am</time></p>
      <p>On top of Github pages, you can host your Jekyll sites on XP-Dev.com as well:</p><p><a href="http://docs.xp-dev.com/user-guide/directfilehosting.html" rel="nofollow">http://docs.xp-dev.com/user-guide/directfilehosting.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Fabio Cevasco</strong> &middot; <time datetime="2009-11-06T06:12:00+00:00">November 6, 2009 at 6:12 am</time></p>
      <p>It is kinda old news indeed, and the idea of Ruby-powered static site generators is hardly new itself. I counted *fourteen* different ones!</p><p>Jekyll is nice, mainly because it's integrated with GitHub pages, but personally I think nanoc (<a href="http://nanoc.stoneship.org/" rel="nofollow">http://nanoc.stoneship.org/</a>) is more mature and FAR more flexible. I recently moved my web site from Typo to nanoc and I didn't regret it -- just the ability to have custom metadata to associate to pages in nanoc made it worthwhile. Here's how I did it: <a href="http://www.h3rald.com/articles/take-back-your-site-with-nanoc/" rel="nofollow">http://www.h3rald.com/articles/take-back-your-site-with-nanoc/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sasa Brankovic</strong> &middot; <time datetime="2009-11-06T08:51:00+00:00">November 6, 2009 at 8:51 am</time></p>
      <p>&gt; just the ability to have custom metadata to associate to pages in nanoc made it worthwhile. </p><p>You can associate metadata with posts in Jekyll too, so it's no different than Nanoc in that regard. In fact it's done in the same way (mixing YAML and post content).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stuart Ellis</strong> &middot; <time datetime="2009-11-07T11:02:00+00:00">November 7, 2009 at 11:02 am</time></p>
      <p>I suspect that Jekyll is going to become the defacto standard static site generator, thanks to the GitHub association and name recognition. I've been happily using Webby (<a href="http://webby.rubyforge.org" rel="nofollow">http://webby.rubyforge.org</a>) for a while now, having switched from Nanoc. It supports all of the features mentioned, and has a nice Rails flavor, but doesn't seem to be talked about much.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-11-07T14:27:00+00:00">November 7, 2009 at 2:27 pm</time></p>
      <p>@Stuart: Agreed. Or.. as the Ruby way seems to be, we'll all be raving over some other new system within three months and Jekyll will be viewed as old hat. I only wish I were joking.. :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matt</strong> &middot; <time datetime="2009-11-08T22:09:00+00:00">November 8, 2009 at 10:09 pm</time></p>
      <p>staticmatic: <a href="http://staticmatic.rubyforge.org/" rel="nofollow">http://staticmatic.rubyforge.org/</a><br>
has also been around for quite a while, as another way to do this kind of thing in ruby.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>George Ornbo</strong> &middot; <time datetime="2009-11-09T18:00:00+00:00">November 9, 2009 at 6:00 pm</time></p>
      <p>I moved my <a href="http://shapeshed.com/" rel="nofollow">blog</a> over to Jekyll after experimenting with a <a href="http://shapeshed.github.com/" rel="nofollow">a little site</a> on GitHub pages. As it is essentially text files it makes version control simple and there are all the benefits of serving just an HTML site. There are converters for anyone moving from the major blogging engines. </p><p>I haven't used any of the other Ruby based static site generators but I'm sold.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Włodek Bzyl</strong> &middot; <time datetime="2009-11-10T13:16:00+00:00">November 10, 2009 at 1:16 pm</time></p>
      <p>I would like to join this discussion as lately<br>
I have personally witnessed how powerful Jekyl is.</p><p>During one of my lectures I told my students to<br>
replace their notebooks with blog.<br>
I prepared a simple template for Jekyll and presented<br>
it to prove that having a blog is easy and fun.</p><p>The results exceeded my expectations.<br>
They can be seen here: <a href="http://github.com/popular/forked" rel="nofollow">http://github.com/popular/forked</a><br>
under "jBlog" (currently 175 forks %-).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matt Buck</strong> &middot; <time datetime="2009-11-16T22:40:00+00:00">November 16, 2009 at 10:40 pm</time></p>
      <p>I'm in the process of moving my blog to Middleman, a new entry into the Ruby-static-site-generator scene.  The biggest motivator for me was the built-in haml and sass support, but it's got a ton of other great stuff.  Check it out: <a href="http://github.com/tdreyno/middleman/" rel="nofollow">http://github.com/tdreyno/middleman/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sumit</strong> &middot; <time datetime="2009-11-19T09:03:00+00:00">November 19, 2009 at 9:03 am</time></p>
      <p>How To Make demon thread for the application </p><p> -d option is not working</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
