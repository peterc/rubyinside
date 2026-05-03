---
title: Doodlekit – Website Creation and Hosting Tool Entirely on Rails
date: '2006-12-07'
author: Peter Cooper
author_slug: admin
post_id: 322
slug: doodlekit-website-creation-and-hosting-tool-entirely-on-rails-322
url: "/doodlekit-website-creation-and-hosting-tool-entirely-on-rails-322.html"
categories:
- cool
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2006/12/doodlekit-1.jpg" height="170" width="187" border="1" hspace="4" vspace="4" alt="Doodlekit-1">  <img src="/assets/2006/12/doodlekit2-1.png" height="170" width="175" border="1" hspace="4" vspace="4" alt="Doodlekit2-1"></p>
<p><a href="http://doodlekit.com/">Doodlekit</a> is a cute looking Rails-powered Web application developed by <a href="http://doodlebit.com/home">Doodlebit</a>. It's a complete Web design and hosting system in one, aimed at small businesses and families. <a href="http://doodlekit.com/home/features">Features</a> include a WYSIWYG editor, a photo album (with all resizing and tagging), blog system (with WYSIWYG editor, again), discussion forums, and contact form. The system is entirely hosted by Doodlekit, but you can create entire, powerful Web sites through their control panel, and even host them on your own domain name. Plans range from $9 to $45 per month.</p>
<p>I decided to give developer Ben Kittrell a quick interview to get a bit of background on Doodlekit, its development, and his opinions on Rails:</p>
<p><strong><em>Ruby Inside:</em></strong><strong> Hi Ben. What is Doodlekit?</strong></p>
<blockquote>
<p><em>Ben Kittrell:</em> Doodlekit is an online website builder. My partner Heath and I had the idea when we realized that almost all small businesses are looking for the same few things.  Either they need a Blog, Forum, Photo Gallery, CMS, or some combination of those. I thought about gluing together existing software, but I realized that it needed to be very simple and integrated. Software like Mambo, Gallery, and vBulletin are all very fine, but they can be very scary for people that are just now getting on the web. We are not targeting Web savvy users; there are plenty of options for that market already. Right now we're concentrating on small business. There's a whole market out there that no one wants to touch because they expect the world, but can't afford it.</p>
<p>In addition we're starting a doodlekit reseller program for web designers. We have a custom CSS tool that allows you to override any of the pre-defined layouts. There are also base layouts that have only have the basic structure defined, but can be easily extended. The idea is that any web designer can create a doodlekit layout and website, and sell it to their client however they want. </p>
</blockquote>
<p><strong>Where do you see Ruby and Rails' strengths being in your ability to provide Doodlekit?</strong></p>
<blockquote>
<p>Well I'm a J2EE developer by day, so the main strength is speed. The same amount of functionality that takes 6 developers over 4 months to implement in our J2EE environment, I can do in a few lunch breaks with Rails. I still like Java, and it has its place, but not in the applications I work on.</p>
<p>Then there's my sanity! It truly shows that both Ruby and Rails were written with the developer's happiness in mind. This is certainly not the case with Java. I have passion for coding again.</p>
</blockquote>
<p><strong>How is Doodlekit deployed? What technologies do you use?</strong></p>
<blockquote><p>It's currently hosted at <a href="http://railsmachine.com/">RailsMachine</a>, which I am very much in love with.  It runs on <em>mongrel_cluster</em> behind Apache, with a MySQL database.  I use Capistrano with the rails_machine recipes for deployment. These guys really have it together, and have been an absolute joy to work with. I chose a VPS, for now, so it can easily scale up if necessary. Currently we have about 50 sites running with low to moderate traffic.  I have been very impressed with the speed.</p></blockquote>
<p><strong>Do you envision implementing a REST-type interface / structure in the future, with the release of Rails 1.2?</strong></p>
<blockquote>
<p>Oh no, now you're going to get me in trouble. I'm torn on RESTful web applications. I think more conventions are good, and I'm really warming up to the idea of "love the CRUD", but PUT and DELETE... not so much.  I like the whole "resource" concept, but I guess I still haven't seen the light regarding using HTTP methods that browsers don't even support.  Is it expected that browsers will eventually support them, or does it even matter?  But I do have faith, and I'm not going to knock it till I really try it.  I've done a little REST on the rorbb project, but not enough to get a real feel for it.</p>
<p>Doodlekit started before REST-mania, so it is very far from it. I have started some major refactoring to make things CRUDier, but it would be quite a job to implement Active Resource.</p>
</blockquote>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>RSL</strong> &middot; <time datetime="2006-12-07T12:43:00+00:00">December 7, 2006 at 12:43 pm</time></p>
      <p>Is it just me or is the idea of implementing Web 2.0 RESTful methodologies while still using a WYSIWYG editor [read: anti-web-standards] kinda funny?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-12-07T14:19:00+00:00">December 7, 2006 at 2:19 pm</time></p>
      <p>Why should a WYSIWYG editor naturally be anti Web standards? Some can put out reasonably good, standard code. If you're talking about the construction of the WYSIWYG editor itself.. sadly there are few other choices (and not everyone will or should learn HTML).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Java guy</strong> &middot; <time datetime="2006-12-07T18:10:00+00:00">December 7, 2006 at 6:10 pm</time></p>
      <p>"The same amount of functionality that takes 6 developers over 4 months to implement in our J2EE environment, I can do in a few lunch breaks with Rails."</p><p>Please give a concrete example, otherwise I call this bullshit.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>RSL</strong> &middot; <time datetime="2006-12-07T21:46:00+00:00">December 7, 2006 at 9:46 pm</time></p>
      <p>Peter, in <em>theory</em> WYSIWYG doesn't equal anti Web Standards practices but in practice you get a bunch of bloated table-based layouts. But you're right, in <em>theory</em>.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-12-07T21:55:00+00:00">December 7, 2006 at 9:55 pm</time></p>
      <p>Well yes, I'm being extremely optimistic ;-)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
