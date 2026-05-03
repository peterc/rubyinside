---
title: 'StaticMatic: Ruby-Powered Static Web Site System'
date: '2007-09-18'
author: Peter Cooper
author_slug: admin
post_id: 603
slug: staticmatic-ruby-powered-static-web-site-system-603
url: "/staticmatic-ruby-powered-static-web-site-system-603.html"
categories:
- miscellaneous
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2007/09/staticmatic.jpg" height="204" width="208" border="1" hspace="4" vspace="4" alt="Staticmatic"></p>
<p><a href="http://staticmatic.rubyforge.org/">StaticMatic</a> is a new alternative to dynamic systems like Ruby on Rails for putting together regular, static Web sites. It uses the superb <a href="haml-17-released-now-16-times-faster-than-markaby-555.html">Haml</a> templating language, and if you're of the Haml mindset, StaticMatic makes putting together static Web sites a snap. It also allows you to quickly "preview" your sites using a stand alone daemon but also to "build" your site to HTML to upload elsewhere.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Gareth</strong> &middot; <time datetime="2007-09-18T08:14:00+00:00">September 18, 2007 at 8:14 am</time></p>
      <p>This had me torn.</p><p>On the one hand, I like the idea of abstracting away HTML from developers, it's just another place where stupid mistakes can be made. On the other hand HAML never really grabbed me as a good solution - I don't know why, it just doesn't feel right the same way Rails does or the way coffee goes with a doughnut.</p><p>Anyway, in the middle of this internal struggle I mistakenly decided to validate their home page (<a href="http://validator.w3.org/check?verbose=1&amp;uri=http%3A%2F%2Fstaticmatic.rubyforge.org" rel="nofollow">http://validator.w3.org/check?verbose=1&amp;uri=http%3A%2F%2Fstaticmatic.rubyforge.org</a>). Even though it's a good idea, and we forgive the XHTML Transitional doctype, a web templating language that doesn't produce valid code on its showcase site still has some way to go for me</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Christian Romney</strong> &middot; <time datetime="2007-09-18T14:33:00+00:00">September 18, 2007 at 2:33 pm</time></p>
      <p>HAML doesn't abstract away HTML, it alleviates typing. The HAML constructs map 1-to-1 to HTML, so there is no conceptual mismatch. In fact, you could argue HAML is conceptually no different from Textmate's bundles - both are simple macro expansions.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joe Grossberg</strong> &middot; <time datetime="2007-09-18T15:33:00+00:00">September 18, 2007 at 3:33 pm</time></p>
      <p>This looks really cool, with a giant caveat ... how many websites *stay* static?</p><p>Maybe this is best used as a prototyping tool?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Juan Alvarez</strong> &middot; <time datetime="2007-09-18T16:37:00+00:00">September 18, 2007 at 4:37 pm</time></p>
      <p>Looks promising. Not so long ago I was looking for a tool to build a static site. I really wanted to find one that used Haml but couldn't find one. I  found webgen though and I think it's fantastic. It would be interesting to see some of webgen's features in StaticMatic like plugins and html validation at build time or, perhaps even better, to see webgen supporting Haml.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stephen Bartholomew</strong> &middot; <time datetime="2007-09-18T18:16:00+00:00">September 18, 2007 at 6:16 pm</time></p>
      <p>@Gareth: Thanks for spotting the validation issues - they're all sorted now.  As others have mentioned, Haml doesn't really abstract HTML - it just reduces typing.  You can write bad haml just the same as bad HTML.  It's also worth noting that Haml is not specific to StaticMatic - it's a library in its own right - one that's far more popular!</p><p>@Joe: Absolutely agreed.  We do still manage static HTML when we feel CMS is overkill for a client - which is often the case.  We also use it extensively for prototyping before working on an application and as we use Haml in our Rails apps, we can quite often just drop the templates in ready for coding.</p><p>StaticMatic is changing a lot at the moment and we're getting a lot of feedback and great ideas that we'll be putting into new releases.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
