---
title: Review of The Merb Way by Foy Savas
date: '2009-09-08'
author: Ric Roberts
author_slug: ricroberts
post_id: 2415
slug: a-review-of-foy-savass-the-merb-way-2415
url: "/a-review-of-foy-savass-the-merb-way-2415.html"
categories:
- miscellaneous
- news
---

{{< rawhtml >}}
<p><img style="float:left; margin-right:12px; margin-bottom:12px" src="/assets/2009/09/themerbway.jpg" alt="the merb way">I've been reading the <a href="http://www.amazon.com/Merb-Way-Foy-Savas/dp/0321606388">Merb Way</a> by Foy Savas (Addison Wesley).  I was a little sceptical about this book at first, because of the <a href="http://yehudakatz.com/2008/12/23/rails-and-merb-merge/">recent marriage of the Merb and Rails core teams</a> and the announcement that the Merb codebase would be merged with Rails as part of the march towards Rails 3. As <a href="http://yehudakatz.com/">Yehuda Katz</a> put it, "Merb 2 is Rails 3".</p>
<p>So, is this book now redundant?  I don't think so. As <a href="http://obiefernandez.com/">Obie Fernandez</a> explains in the foreword, knowing about <a href="http://merbivore.com/">Merb</a> is still valuable as it is a fairly widely used framework, and it will probably continue to be seen in the wild for a good while after Rails 3 is released.  Additionally, learning how Merb works and exploring the underpinning philosophies will aid your understanding of some of the changes happening in Rails.</p>
<p>The book itself is engaging and well written, and serves as a great reference guide for developing Merb applications.  It's quite code-heavy, but this is by no means a criticism - Foy guides the reader through the Merb source, revealing how things are done in Merb, in order that the Ruby community can learn from it for developing our applications and future frameworks.</p>
<p>With under 300 pages of actual content, this is by no means a weighty tome, but it covers most things a Merb developer needs to know.  Foy starts with the fundamentals, explaining how Merb apps are structured and configured, as well as providing an introduction to some of the internals of Merb. The first part of the book is concerned with routing and MVC, which will be familiar to Rails developers.  It then moves onto more Merb-specific topics such as <a href="http://merbivore.com/documentation/current/doc/rdoc/merb-slices-1.0/index.html"><em>slices</em></a> (self-contained mini-apps that can be packaged as gems) and <a href="http://merbivore.com/documentation/current/doc/rdoc/merb_parts/index.html"><em>parts</em></a> (for reusable logic used in partials throughout your app). Sessions, authentication, and mailers are also covered, before the book concludes with a chapter on testing.</p>
<p>The Merb Way is available now from <a href="http://www.amazon.com/Merb-Way-Foy-Savas/dp/0321606388">Amazon</a> for $29.19 (or £23.19 from <a href="http://www.amazon.co.uk/Merb-Way-Addison-Wesley-Professional-Ruby/dp/0321606388/">Amazon UK</a>).</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Nathan Youngman</strong> &middot; <time datetime="2009-09-08T21:05:00+00:00">September 8, 2009 at 9:05 pm</time></p>
      <p>Just discovered this book while flipping through Sony's eBook Store last week (U.S. only). It's also available as a DRM-free PDF from the publisher (about time they dropped the DRM):<br>
<a href="http://www.informit.com/store/product.aspx?isbn=0321606388" rel="nofollow">http://www.informit.com/store/product.aspx?isbn=0321606388</a></p><p>Thanks for the review.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Lar Van Der Jagt</strong> &middot; <time datetime="2009-09-08T21:42:00+00:00">September 8, 2009 at 9:42 pm</time></p>
      <p>I've got this book as well, and thoroughly enjoyed it. I posted a lengthy review on my blog: <a href="http://www.supaspoida.com/2009/08/18/book-review-the-merb-way.html" rel="nofollow">The Merb Way from a Rails Developer's Perspective</a>.</p><p>In short, I think this is a great book for anybody interested in an in depth look at a really well designed framework. It gave me a lot of insight as to some of the design decisions that will be making their way into Rails 3. It will also give you the knowledge you need to work with Merb as it stands now.</p><p>Foy himself is also a great selling point for this book, as he is a great speaker &amp; great writer. He does an excellent job discussing the Merb code without getting too dry.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hubert Łępicki</strong> &middot; <time datetime="2009-09-10T20:56:00+00:00">September 10, 2009 at 8:56 pm</time></p>
      <p>Is it only my opinion, or does the whole "Rails 3" evolved in a bit different direction than merging with Merb? I was looking recently a bit closer on dev version of Rails that is hosted on Github. It brings really nice concepts. It's not yet complete which is understandable of course. But I can't see much merbish stuff in there. It's not as light and modular as Merb was, it doesn't allow one-file apps (or I don't know about this), it is ORM agnostic but in different way than Merb is/was, it's got the whole "Russian doll pattern", that is like merge of Engines and Parts, but more Engines into it.</p><p>I am just wondering if this book will be any useful when Merb2/Rails3 comes out. It probably is good stuff for Merb 1, and piece that was really missing, but I am afraid it will become more obsolete soon than "Agile Web Development With Rails" was that covered 1.2, when version 2.0 came out.</p><p>Merb 1 --&gt; Rails 3 seems to me like bigger change than Rails 1.2 --&gt; Rails 2.0, or any other change during Rails lifetime since 1.2.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter F. Dyle</strong> &middot; <time datetime="2009-09-11T14:58:00+00:00">September 11, 2009 at 2:58 pm</time></p>
      <p>Hi,</p><p>I also have the book. It is very well written. Starts easily, flowing towards Merb inners deep inside. Merb is beautifull. Rails not that much. Someone in a RubyConf whispered me: "I won't leave Merb, see... Rails if for kids"</p><p>My question is, are we going live in the state of like a secret society ? ssshht... Merbivore!</p><p>I am a Merbivore. I will not move into Rails 3 from what I read inside the code. People are being misguided on this Merb ending.<br>
Merb is alive. Developers are building web apps with Merb. If Merb solves your problems and you care about how well it is designed, stick with it.<br>
Do not fear everybody jumping the Rails bandwagon. Ezra himself keeps using Merb and maintaing his Merb apps.</p><p>Of course, for Engine Yard, it is extremely important to have such an important project like Rails3 being built inside (hoping DHH doesn't break the dishes any day sooner). But that is a company perspective. And a very valid one. EY is the awsome company! Really! Another perspective is how smart developers deal with it. If they find value in Merb, they will not for sure dump it for Rails3. Rails is another concept and it will not change that much. Merb is zen!</p><p>Merb is alive!</p><p>Peter Dyle<br>
"Merbivore! with proud"</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
