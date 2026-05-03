---
title: Roxy – An Object Proxying Library for Ruby
date: '2008-11-13'
author: Peter Cooper
author_slug: admin
post_id: 1328
slug: roxy-ruby-object-proxying-1328
url: "/roxy-ruby-object-proxying-1328.html"
categories:
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2008/11/roxy-new.png" width="137" height="137" alt="roxy-new.png" style="float:left; margin-right:12px; margin-bottom:12px;">When you want your objects to refer to / have associations with other objects, it can quickly become a complex procedure. Ryan Daigle to the rescue! Ryan has built <a href="http://github.com/yfactorial/roxy/tree/master">Roxy</a>, a "Ruby Proxy-Object Library." He's also put together <a href="http://ryandaigle.com/articles/2008/11/10/implement-ruby-proxy-objects-with-roxy">an awesome blog post</a> with the motivation for developing Roxy and some code examples showing how it works. Roxy gives you the ability to add some rather ActiveRecord-esque functionality to your classes and their instances.</p>
<p>Straight from the horse's mouth:</p>
<blockquote>
<p>Roxy is a basic proxy library that lets you quickly create proxies between your ruby objects. Its syntax is loosely based on Association Extensions in ActiveRecord as that is a well-known use of proxies.</p>
</blockquote>
<p>Still not convinced to jump straight over to <a href="http://ryandaigle.com/articles/2008/11/10/implement-ruby-proxy-objects-with-roxy">Ryan's blog post</a>? Code example coming up in 3..2..1..:</p>
<pre><span class="keyword">class </span><span class="class">Person</span>
  <span class="ident">include</span> <span class="constant">Roxy</span><span class="punct">::</span><span class="constant">Moxie</span>    

  <span class="ident">attr_accessor</span> <span class="symbol">:first</span><span class="punct">,</span> <span class="symbol">:last</span><span class="punct">,</span> <span class="symbol">:parents</span> 

  <span class="ident">proxy</span> <span class="symbol">:parents</span> <span class="keyword">do</span>
    <span class="keyword">def </span><span class="method">divorced?</span>
      <span class="ident">proxy_target</span><span class="punct">.</span><span class="ident">size</span> <span class="punct">&gt;</span> <span class="number">1</span> <span class="keyword">and</span> <span class="ident">proxy_target</span><span class="punct">.</span><span class="ident">collect</span> <span class="punct">{</span> <span class="punct">|</span><span class="ident">parent</span><span class="punct">|</span> <span class="ident">parent</span><span class="punct">.</span><span class="ident">last</span> <span class="punct">}.</span><span class="ident">uniq</span><span class="punct">.</span><span class="ident">size</span> <span class="punct">&gt;</span> <span class="number">1</span>
    <span class="keyword">end</span>
  <span class="keyword">end</span>
<span class="keyword">end</span>

<span class="comment"># Can then invoke your proxy methods directly on parents</span>
<span class="ident">person</span><span class="punct">.</span><span class="ident">parents</span><span class="punct">.</span><span class="ident">divorced?</span></pre>
<p class="s" style="font-family:verdana;font-style:italic;padding:8px;font-size: 12px">Supported by: <strong><a href="http://gearsquare.com/actiongear/">ActionGear</a> is a menu-bar app for task management on your Mac.</strong> It's lightweight, quick, and helps you get stuff done. <strong><a href="http://gearsquare.com/actiongear/">Try it out for free.</a></strong></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Ryan Daigle</strong> &middot; <time datetime="2008-11-14T01:47:00+00:00">November 14, 2008 at 1:47 am</time></p>
      <p>Hey Peter, great logo!  Can I yank it and use it for Roxy?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-11-14T01:53:00+00:00">November 14, 2008 at 1:53 am</time></p>
      <p>Noooo.. in fact, I don't think I should even be using it at all and might remove it.</p><p>This is one of those cases where I've done a quick and nasty screenshot from a Google Image result just to get the job done. It turns out this logo belongs to a clothing manufacturer of some sort. While this usage isn't likely to hurt them, they might not be too keen on seeing it used as an actual logo.</p><p>That said, it's an awfully interesting logo because it /looks/ like a Ruby in there, but it's actually a tongue if you see the full thing (at least, I think so).</p><p>So, sorry, but it's not my logo to give away :(</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Martin</strong> &middot; <time datetime="2008-11-14T10:39:00+00:00">November 14, 2008 at 10:39 am</time></p>
      <p>I'm surprised to see a logo from a brand for surfing clothing for girls for a Ruby library ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Daigle</strong> &middot; <time datetime="2008-11-14T12:15:00+00:00">November 14, 2008 at 12:15 pm</time></p>
      <p>Good to hear you're just as fly-by-the-seat-of-your-pants as I, Peter :)</p><p>And Martin - Roxy is a feminine name so the logo _kinda_ makes sense, yeah?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jacob Swanner</strong> &middot; <time datetime="2008-11-14T14:57:00+00:00">November 14, 2008 at 2:57 pm</time></p>
      <p>Roxy is the female line of quiksilver clothing (surfing related clothing), that Ruby looking thing is two, mirrored quiksilver logos.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-11-14T15:42:00+00:00">November 14, 2008 at 3:42 pm</time></p>
      <p>Great bit of trivia, Jacob! That logo is pretty cool actually.</p><p>Since it seems to be associated with a big company and I don't fancy getting a C&amp;D anytime soon, I've replaced it with something far worse but free of copyright issues ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Daigle</strong> &middot; <time datetime="2008-11-26T21:01:00+00:00">November 26, 2008 at 9:01 pm</time></p>
      <p>That log is downright sexy, Peter.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Daigle</strong> &middot; <time datetime="2008-11-26T21:02:00+00:00">November 26, 2008 at 9:02 pm</time></p>
      <p>Crap.  ^log^logo.</p><p>That LOGO is down right sexy.</p><p>How unfortunate.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
