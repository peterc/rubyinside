---
title: Haml 1.5 Released
date: '2007-03-21'
author: Peter Cooper
author_slug: admin
post_id: 429
slug: haml-15-released-429
url: "/haml-15-released-429.html"
categories:
- cool
- elsewhere
- news
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2007/03/haml.jpg" height="212" width="198" border="1" hspace="4" vspace="4" alt="Haml"></p>
<p>Back in September 2006, I <a href="haml-a-new-view-template-language-for-rails-235.html">posted about a new markup language for Rails templates</a> called Haml. For those who missed it, Haml is a high-level, semantic language that makes it rather hard to make HTML markup errors. It relies heavily on indentation, a la Python, for its structure.</p>
<p>Hampton Catlin has now released a significant new version, <a href="http://haml.hamptoncatlin.com/">Haml 1.5</a>. Along with this comes a great new logo (above) and <a href="http://haml.hamptoncatlin.com/">official Web site</a>. A very <a href="http://haml.hamptoncatlin.com/tutorial/">easy to follow tutorial</a> is also offered to whet your appetite.</p>
<p>Hampton says that a significant improvement in 1.5 is a feature called "Sass", a new way to define CSS stylesheets in a logical way, along with constants, operations, nesting, and selectors. Full <a href="http://haml.hamptoncatlin.com/1-5-release-notes">release notes</a> are available.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Dysinger</strong> &middot; <time datetime="2007-03-22T00:03:00+00:00">March 22, 2007 at 12:03 am</time></p>
      <p>Haml is a pain in the ass compared to Markaby.  Takes twice as long to learn and is twice as finiky with whitespace.   ....PASS!!!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-03-22T00:11:00+00:00">March 22, 2007 at 12:11 am</time></p>
      <p>I would certainly be interested in seeing a really top notch tutorial on Markaby + Rails usage at some point.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>JK</strong> &middot; <time datetime="2007-03-22T02:36:00+00:00">March 22, 2007 at 2:36 am</time></p>
      <p>I prefer Markaby but it's good to see a new version of Haml and it is a bit more actively developed.  I reckon ERB templates are the weak link in the rails stack and any alternatives are fine by me.</p><p>I wish fragment caching worked out of the box with Markaby though...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>merg</strong> &middot; <time datetime="2007-03-22T12:22:00+00:00">March 22, 2007 at 12:22 pm</time></p>
      <p>I started using #haml (and sass) in the latest project and I'm using it exclusively now. (when updates need to be done on existing screen they first get converted to #haml the same way .css files get converted to .sass). I'm new to rails so I can't compare it to anything else then rhtml, but I certainly like it more then rhtml.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>RSL</strong> &middot; <time datetime="2007-03-22T12:48:00+00:00">March 22, 2007 at 12:48 pm</time></p>
      <p>For me, Haml's been a dream. I really wish people could get over the fact that Haml uses a different markup system than standard Ruby. [uh, that's the point of it not being ERb, kittens... Isn't it?] HTML isn't Ruby either and you guys use _that_ in views without whining [too much].</p><p>And as far as whitespace goes... Do you kittens not indent your HTML? Having a templating system that keeps track of your levels of indentation is friggin' awesome as far as I can see. To suffer a little of "whitespace active" programming to achieve some GORGEOUS HTML output is well worth the price. God, I can't tell you how annoying [IMHO] it was to add a container div in my layout ERb and then have to update _every_ single piece of ERb that was underneath it with the new indentation.</p><p>I for one welcome the alternative methodology that Haml offers. And since it's an _alternative_, that means no one is forcing you whiners [with only two points against Haml] to use it. Aren't freedom and choices great?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Doug Bromley</strong> &middot; <time datetime="2007-03-23T06:46:00+00:00">March 23, 2007 at 6:46 am</time></p>
      <p>Do we really need anymore markup languages?</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
