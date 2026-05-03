---
title: 'RDoc: Some Alternative Ways Of Looking At Documentation'
date: '2009-05-22'
author: Matthew Lang
author_slug: mlang
post_id: 1785
slug: rdoc-some-alternative-ways-of-looking-at-documentation-1785
url: "/rdoc-some-alternative-ways-of-looking-at-documentation-1785.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><span><a href="/assets/2009/05/rdoc.gif"><img class="size-full wp-image-1791 alignleft" src="/assets/2009/05/rdoc.gif" alt="" width="128" height="64"></a>The great thing about the Ruby language is that there’s always multiple ways of doing things. The same goes for reading the documentation of your installed gems. Here’s a few ways of viewing the <a href="http://rdoc.sourceforge.net/">RDoc</a> documentation of your gems other than running the gem server command.</span></p>
<h3>Gembox</h3>
<p><span><a href="http://code.quirkey.com/gembox/">Gembox</a> (<a href="http://github.com/quirkey/gembox/tree/master">source</a>) is a Sinatra based web application by <a href="http://www.quirkey.com/">Aaron Quint</a> for browsing your RDocs. Once installed, Gembox lets you quickly browse through your gems as well as their included files and gem specs.</span></p>
<p><span>Running Gembox at your command-line starts a Sinatra application that gives you some basic information about your gems, including the RDocs for each gem. Aaron is hoping to add some more advanced options in the future. If you'd like to navigate your gem documentation in a more friendly format and getting more information on your gems than the standard interface, give Gembox a try.</span></p>
<h3>Sinatra Rubygems</h3>
<p><span><a href="http://github.com/jnewland/sinatra-rubygems/tree/master">Sinatra-Rubygems</a> is a project by <a href="http://jnewland.com/">Jesse Newland</a>. Similar to Gembox, this is also a Sinatra based web application. However where this differs to Gembox is that rather than being designed to run from the command-line, Sinatra-Rubygems can be run on a Passenger enabled server. By using the <a href="http://www.fngtps.com/2008/06/putting-the-pane-back-into-deployment">PassengerPane</a> you can have your RDocs running locally on your own web server.</span></p>
<p><span>Although there's slightly more to getting Sinatra-Rubygems up and running (but not by much!), this is handy for having your RDocs running locally.</span></p>
<h3>Bdoc</h3>
<p><span>If any of these sound like too much work and you just want quick and easy RDocs then check out <a href="http://manalang.com/">Rich Manalang’s</a> project <a href="http://github.com/manalang/bdoc/tree/master">Bdoc</a>. Once run from the command-line, Bdoc puts together a nice little IFRAMEd HTML page that lets you browse through your RDocs. You can quickly switch between different gems and there’s no need to run a server to display your RDocs.</span></p>
<p><span>Bdoc might not be as fancy as any of the Sinatra based applications, but it's a simple idea and one that doesn't need a server to run it. If quick and easy documentation is what you're after, then Bdoc could be the one for you.</span></p>
<h3>Fancy a new theme?</h3>
<p><span><a href="http://mislav.uniqpath.com/">Mislav Marohnic</a>, author of the great will_paginate plugin, has a great theme for RDoc called <a href="http://github.com/mislav/hanna/tree/master">Hanna</a>. With its familiar three panes on the left for navigation, and a neat ajax search field for methods, this theme brings your RDocs up to date.</span></p>
<p><em>Post by <a href="http://matthewlang.co.uk">Matthew Lang</a> - Matthew Lang is an ERP developer with a keen interest in Ruby and Rails programming.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>David Dai</strong> &middot; <time datetime="2009-05-22T08:48:00+00:00">May 22, 2009 at 8:48 am</time></p>
      <p>I have to say my favorite is sdoc: <a href="http://github.com/voloko/sdoc/tree/master" rel="nofollow">http://github.com/voloko/sdoc/tree/master</a> a.k.a. <a href="http://www.railsapi.com/" rel="nofollow">http://www.railsapi.com/</a>  Using it with Fluid (<a href="http://fluidapp.com/" rel="nofollow">http://fluidapp.com/</a>) on the Mac is just pure awesome!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>raggi</strong> &middot; <time datetime="2009-05-22T12:14:00+00:00">May 22, 2009 at 12:14 pm</time></p>
      <p>With regard to the new theme, you can actually just install the latest rdoc.</p><p>gem install rdoc for 2.4.x+, and it comes with the darkfish generator.</p><p>It's also quite a bit faster.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>stainless</strong> &middot; <time datetime="2009-05-23T08:07:00+00:00">May 23, 2009 at 8:07 am</time></p>
      <p>I prefer hanna than darkfish</p><p>I think rdoc should hanna as default template</p>
    </li>
      <li>
      <p class="comment-meta"><strong>seydar</strong> &middot; <time datetime="2009-05-23T16:30:00+00:00">May 23, 2009 at 4:30 pm</time></p>
      <p>Should YARD (<a href="http://github.com/lsegal/yard/tree/master" rel="nofollow">http://github.com/lsegal/yard/tree/master</a>) be noted for this category? It's an alternative doc generator to RDoc, and it lets you do some damn cool things with your code.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matthew Lang</strong> &middot; <time datetime="2009-05-25T19:55:00+00:00">May 25, 2009 at 7:55 pm</time></p>
      <p>Thanks for the link Seydar. I'll be sure to check that one out!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan Wedekind</strong> &middot; <time datetime="2009-05-29T11:15:00+00:00">May 29, 2009 at 11:15 am</time></p>
      <p>I use <a href="http://www.naturaldocs.org/" rel="nofollow">NaturalDocs</a> to document <a href="http://www.wedesoft.demon.co.uk/hornetseye-api/" rel="nofollow">HornetsEye</a>. NaturalDocs optionally supports frames but doesn't require them. In contrast to Doxygen (which does not support Ruby) it does not support custom HTML code and named hyperlinks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Josh</strong> &middot; <time datetime="2009-05-30T04:58:00+00:00">May 30, 2009 at 4:58 am</time></p>
      <p>So what's available for the poor soul who would hope to never touch a browser but loves man(1) and info(1)?</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
