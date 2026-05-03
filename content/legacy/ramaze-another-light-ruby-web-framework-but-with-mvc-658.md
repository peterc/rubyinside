---
title: 'Ramaze: Another Light Ruby Web Framework, But With MVC!'
date: '2007-11-23'
author: Peter Cooper
author_slug: admin
post_id: 658
slug: ramaze-another-light-ruby-web-framework-but-with-mvc-658
url: "/ramaze-another-light-ruby-web-framework-but-with-mvc-658.html"
categories:
- cool
- miscellaneous
- ruby-on-rails
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2007/11/notrails.jpg" height="211" width="264" border="1" hspace="4" vspace="4" alt="Notrails"><br>
<a href="http://ramaze.net/">Ramaze</a> is a simple, light weight (in a good way!), modular Web framework developed in Ruby. Like Rails, and unlike some of its newer competitors, such as <a href="http://sinatra.rubyforge.org/">Sinatra</a>, Ramaze sticks to the MVC (Model, View, Controller) paradigm, making it more like a lighter, more modular <a href="http://merbivore.com/">Merb</a>-alike. Ramaze is already a year old, and one thing that the <a href="http://ramaze.net/">official Ramaze Web site</a> does right is provide lots of <a href="http://ramaze.net/getting-started">example code</a> and documentation. The framework has also seen four releases in the last six months, a sure sign that someone cares about it.</p>
<p>Inspired by Ruby Inside's recent post, "<a href="reprise-a-ruby-powered-blogging-app-in-100-lines-including-templates-646.html">Reprise: A Ruby-Powered Blogging App in 100 Lines Including Templates,</a>" Aman Gupta, one of the developers of Ramaze, has converted <a href="http://redflavor.com/reprise.rb">the code</a> from a Sinatra-based non-MVC format over to <a href="http://source.ramaze.net/#/examples/ramaise.rb">the Ramaze equivalent</a>, so you can get a direct comparison of the two different approaches by reading two sets of code for the same application.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>psi0nik</strong> &middot; <time datetime="2007-11-23T08:42:00+00:00">November 23, 2007 at 8:42 am</time></p>
      <p>I think it should be pointed out that, while not enforcing MVC, Sinatra in no way prohibits you from writing an MVC-style app.</p><p>It's easy to build discrete model classes, database-backed or otherwise, and templates in external files are supported. at it's core, it seems that most of the Sinatra DSL is essentially the (C)ontroller portion of MVC, and basically leaves it up to the developer to decide how to implement the remainder of the stack.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>cooler</strong> &middot; <time datetime="2007-11-23T10:10:00+00:00">November 23, 2007 at 10:10 am</time></p>
      <p>nice!<br>
sometimes I need "one page one application just like Ramaze's hello world exmple"</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Riku Räisänen</strong> &middot; <time datetime="2007-11-23T10:55:00+00:00">November 23, 2007 at 10:55 am</time></p>
      <p>Ramaze doesn't enforce MVC style in any way. When there's zero configuration, Ramaze acts as a VC. M can be easily plugged in with the ORM of your choice, of course.</p><p>Ramaze could also play the role of a simple file server(which would be pointless) with it's easily customizable Dispatchers. Customization is the thing I love about Ramaze - the code is really easy to understand and robust spec-tests tell me if I'm doing something wrong. Not to mention close to 100% covering documentation.</p><p>I've gone throught the route of PHP(spahghetti code), Rails, Nitro/Og and now Ramaze. Ramaze feels most comfy, thanks to: the freedom of choice(a hackers dream), zero configuration, simplicity and the most helpful community.</p><p>We have multiple Ramaze applications/portals/websites running live and I think the numbers will only grow. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chad Fowler</strong> &middot; <time datetime="2007-11-23T16:54:00+00:00">November 23, 2007 at 4:54 pm</time></p>
      <p>Reading this post and then the linked code, it looks like your definition of "MVC" requires separate classes for models, controllers, and (sorta) views.  </p><p>In reality, Sinatra and Ramaze are both MVC web frameworks (in as much as any modern web framework claiming to be an MVC framework really follows MVC).  I don't see any significant architectural/conceptual difference between the two frameworks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-11-23T17:13:00+00:00">November 23, 2007 at 5:13 pm</time></p>
      <p>Almost /anything/ can be considered to be MVC depending on the angle you look at it. The truth is, they are pretty similar, but one project has used the term MVC and the other hasn't. The term MVC is reasonably bogus anyway as even systems that reinforce the concept can easily be used without it at all, such as Rails. It's really down to whether a system makes it easy to separate the concerns or not, and in this respect Ramaze seems more focused towards that than Sinatra.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Philip Green</strong> &middot; <time datetime="2007-11-23T22:51:00+00:00">November 23, 2007 at 10:51 pm</time></p>
      <p>I wish Sinatra had a site with docs like Ramaze.</p><p>Actually, by way of framework sites, Merbivore's got them all beat on design right now. Blake should talk to whoever did that!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-11-23T23:10:00+00:00">November 23, 2007 at 11:10 pm</time></p>
      <p>As an aside, I want to do a big post about Merb soon. If anyone has any good links, tutorials they've written, stuff like that, do get in touch (or even leave them here in comments).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Blake Mizerany</strong> &middot; <time datetime="2007-11-24T00:28:00+00:00">November 24, 2007 at 12:28 am</time></p>
      <p>Sinatra is only six weeks old; it's fresh, very new, and has seen more press and more downloads than I had ever anticipated.  I'm putting as much free time into it as I can.  </p><p>The new site, and docs are all coming with the next release.  And yes, they will show you how to move to MVC when needed because Sinatra doesn't assume you should start with it.  I strongly believe in backing into a pattern.  See Principles, Patterns, and Practices - Chapter 24 - by Robert Martin</p><p>If you want to see a great example of how to do so with the current release, check out:</p><p><a href="http://blog.zerosum.org/2007/11/5/build-a-simple-pastie-clone-with-sinatra-datamapper-in-15-minutes" rel="nofollow">http://blog.zerosum.org/2007/11/5/build-a-simple-pastie-clone-with-sinatra-datamapper-in-15-minutes</a></p><p>Until then...</p><p>get '/your_favorite_framework'<br>
    'and keep cranking out killer apps'<br>
end</p><p>-Blake</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ezra</strong> &middot; <time datetime="2007-11-24T00:54:00+00:00">November 24, 2007 at 12:54 am</time></p>
      <p>Hey Peter-  </p><p>Here are some good links for merb stuff:</p><p><a href="http://pastie.caboo.se/pastes/121330" rel="nofollow">http://pastie.caboo.se/pastes/121330</a></p><p>But I have to say that I really like both ramaze and sinatra. The ability to make small webapps all in one file is pretty sweet and it's something merb doesn't do.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ben</strong> &middot; <time datetime="2007-11-24T06:00:00+00:00">November 24, 2007 at 6:00 am</time></p>
      <p>Ezra, Merb lacks a few things - and it hurts Merb badly (i and several people I know would use Merb except...) a) no community forums....  where should I share my merb knowledge?  the irc channel?  no thanks.  too disposable...  A community forums could do wonders for the progression of Merb.  b) Sample apps that actually work.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Curious User</strong> &middot; <time datetime="2007-11-27T16:35:00+00:00">November 27, 2007 at 4:35 pm</time></p>
      <p>All due respect to the developers of these frameworks, but who cares?  Why do we need 5 different versions of "Rails-lite"?  Honestly, wouldn't these guys be better off joining forces with Ezra on Merb or something?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James</strong> &middot; <time datetime="2007-12-13T20:34:00+00:00">December 13, 2007 at 8:34 pm</time></p>
      <p>Two points.</p><p>"Ramaze sticks to the MVC (Model, View, Controller) paradigm, ..."</p><p>Not really.  Ramaze makes it easy to build MVC Web apps, but also makes it easy to roll out single-file, PHP/ASP-like sites as well (a feature also found in Nitro, from which much of Ramaze seems drawn.)</p><p>To "Curious User":  Ruby does not have five versions of "Rails lite."   The various Ruby Web frameworks (some of which predate Rails) are each interesting approaches to Web development.  Each is opinionated software, and the diversity of opinions is refreshing.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
