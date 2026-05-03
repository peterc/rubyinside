---
title: Easier Unicode support in Rails (and eventually Ruby?)
date: '2006-06-16'
author: Peter Cooper
author_slug: admin
post_id: 96
slug: easier-unicode-support-in-rails-and-eventually-ruby-96
url: "/easier-unicode-support-in-rails-and-eventually-ruby-96.html"
categories:
- cool
- miscellaneous
- ruby-on-rails
---

{{< rawhtml >}}
<p>The guys over at <a href="http://www.fngtps.com/">Fingertips</a> present an article entitled '<a href="http://www.fngtps.com/2006/06/easier-unicode-support-in-rails">excellent and pragmatic proposal for easier Unicode support in Rails</a>'. Julian 'Julik' Tarkhanov has developed a proxy class for String that tweaks all of the methods to work properly with Unicode. You can then use code like this:</p>
<pre>text.chars.length &gt; length ? text.chars[0...l] + truncate_string : text
</pre>
<p><em>chars</em> provides the proxy object from the <em>text</em> string. You can also use code like <code>text.u.length</code> as chars is aliased to <em>u</em> too.</p>
<p>They want to see it accepted as a patch to Rails, although I'm personally more interested in seeing this become a gem and be available in Ruby generally. Undoubtedly it'd be easy to extract, but once an official version comes along, it'll be excellent.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Thijs van der Vossen</strong> &middot; <time datetime="2006-06-16T21:42:00+00:00">June 16, 2006 at 9:42 pm</time></p>
      <p>Just to clarify this, we at Fingertips did not actually develop the proxy class, it was developed by Julian 'Julik' Tarkhanov. We just think it's really an excellent and pragmatic proposal for easier Unicode support. :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-06-16T21:45:00+00:00">June 16, 2006 at 9:45 pm</time></p>
      <p>Oh, okay, I got the impression he was related to you. Thanks, I'll fix the post now :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Coda Hale</strong> &middot; <time datetime="2006-06-17T04:18:00+00:00">June 17, 2006 at 4:18 am</time></p>
      <p>Oh hells yes. Nice, transparent stop-gap measure until Matz finally drops the Unicode bomb on 1.9, or 2.0, or RSN.</p><p>Dropping it out to a gem wouldn't take that much effort, either. Just extract what he's using of ActionPack (because seriously--who doesn't love ActionPack?) and you're off to the races.</p><p>Can't wait to see how this shakes out. If it's stable and doesn't slow things down much, Core would have to be drunk not to fold this into Rails. I mean, talking about Unicode has always been a great way to get any Rubyist to cry.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
