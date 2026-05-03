---
title: 'Haml 1.7 Released: Now 16 Times Faster Than Markaby'
date: '2007-07-10'
author: Peter Cooper
author_slug: admin
post_id: 555
slug: haml-17-released-now-16-times-faster-than-markaby-555
url: "/haml-17-released-now-16-times-faster-than-markaby-555.html"
categories:
- miscellaneous
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2007/07/hamlagain.jpg" height="189" width="213" border="1" hspace="4" vspace="4" alt="Hamlagain"></p>
<p>Ruby Inside has mentioned <a href="http://haml.hamptoncatlin.com/">Haml</a>, a couple of <a href="haml-a-new-view-template-language-for-rails-235.html">times</a> <a href="haml-15-released-429.html">before</a>. It's a template language for Rails developed by Hampton Catlin, and it acts as a high-level, highly semantic alternative to RHTML. It relies on indentation for structure (a la Python) and includes a CSS meta-language (<a href="http://haml.hamptoncatlin.com/docs/sass">Sass</a>) to make it super easy to dynamically produce XHTML-compliant pages that are easy to tweak later on.</p>
<p>Hampton has just released Haml 1.7, a major revision that boosts Haml's speed to merely 30% less than that of raw Erb (which RHTML templates rely on), which, supposedly, makes it 16 times faster than <a href="http://redhanded.hobix.com/inspect/markabyForRails.html">Markaby</a>, another alternative page generation library. Hampton also says that they're planning for Haml to be <em>faster</em> than standard Erb by Haml 2.0.</p>
<p>Check out the <a href="http://haml.hamptoncatlin.com/">official Haml site</a>, there's lots of examples, and it's really easy to get up and running with it. If you haven't considered an alternative to standard Rails templates before, now's a good time to check it out.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jerrett</strong> &middot; <time datetime="2007-07-10T16:30:00+00:00">July 10, 2007 at 4:30 pm</time></p>
      <p>but still ugly :(</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sean</strong> &middot; <time datetime="2007-07-10T17:47:00+00:00">July 10, 2007 at 5:47 pm</time></p>
      <p>@Jerrett: Entirely a matter of opinion.  Personally,  I like it.  It also reduces validation/correctness bugs by auto-closing tags based on indentation... a big plus for me.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2007-07-10T18:09:00+00:00">July 10, 2007 at 6:09 pm</time></p>
      <p>Even so, I still prefer "Lilu":<a href="http://trac.railsware.com/lilu" rel="nofollow">http://trac.railsware.com/lilu</a></p><p>Still very alpha, but looks more promising and "designer frendly" than Markaby or Haml</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jerrett's Mom</strong> &middot; <time datetime="2007-07-10T19:18:00+00:00">July 10, 2007 at 7:18 pm</time></p>
      <p>Why must you always be so negative, dear?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dan</strong> &middot; <time datetime="2007-07-10T23:24:00+00:00">July 10, 2007 at 11:24 pm</time></p>
      <p>@Luis: designers /love/ haml, because it uses shares so much syntax with CSS.  Seen recently, "Loving haml, didn't think I would."</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis</strong> &middot; <time datetime="2007-07-11T03:23:00+00:00">July 11, 2007 at 3:23 am</time></p>
      <p>@Dan: didn't see that post in my RSS feeds, could you point me to the article?</p><p>(I do my homework and didn't find it with google ;-)</p><p>Anyway, when designer is not part of development team, or not a programmer, break the barrier and getting his hands dirty (or cleaner) with something new is often time you don't have, neither the team.</p><p>I have often worked with designs coming from outside, already created. AFAIK there is no way to designers show a html mockup without playing with a programming framework, and they are used to dreamweaver :-P</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jerrett</strong> &middot; <time datetime="2007-07-11T05:19:00+00:00">July 11, 2007 at 5:19 am</time></p>
      <p>I agree, it's a matter of opinion - I prefer Markaby's (which is Ruby) and it has all the same benefits you mentioned!</p><p>Anyway, you are right - it's all preference.  In my situation, we're doing a lot of html - and I prefer Ruby's (markaby) syntax anyday over css-esque (Haml), HTML (erubis,lilu). If you need a designer-friendly markup language, something like lilu is likely even better - plain, 100%, HTML. </p><p>One thing that jumps out about haml that i don't like is that it encourages extremely div-heavy markup. If everything is a div, it's fairly clean, but that's not typically considered good markup. If you want good markup, your haml starts to look less-clean!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>RSL</strong> &middot; <time datetime="2007-07-11T23:10:00+00:00">July 11, 2007 at 11:10 pm</time></p>
      <p>@ Jerrett: the div-bloat you write about Haml isn't because of Haml though but because some people don't understand that you can style other block-level elements [like ul, ol, p, ...] just as easily as you can a div. Haml just makes their bad habit more obvious.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chuck Vose</strong> &middot; <time datetime="2007-07-21T13:40:00+00:00">July 21, 2007 at 1:40 pm</time></p>
      <p>@Jarrett: One of the greatest things about Ruby, a facet borrowed directly from LISP, is that we can write DSL's for whatever domain we happen to be working it. Haml/Sass is still pure ruby just like Markaby except that it requires less typing. Both are beautiful, both have incredible shortcomings. For us, Haml/Sass are a wonderful thing but you're right that when working with a design team it can be rigid. My bet is that any intelligent designer could figure out Haml in 20 minutes though. I fear for the team where the designer is so set in their ways that they couldn't.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
