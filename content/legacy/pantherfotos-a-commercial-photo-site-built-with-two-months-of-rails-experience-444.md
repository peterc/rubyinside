---
title: PantherFotos – A commercial photo site built with two months of Rails experience
date: '2007-04-01'
author: Peter Cooper
author_slug: admin
post_id: 444
slug: pantherfotos-a-commercial-photo-site-built-with-two-months-of-rails-experience-444
url: "/pantherfotos-a-commercial-photo-site-built-with-two-months-of-rails-experience-444.html"
categories:
- elsewhere
- miscellaneous
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2007/03/pantherfotos.jpg" height="264" width="305" border="1" hspace="4" vspace="4" alt="Pantherfotos"></p>
<p><a href="http://pantherfotos.com/">pantherFotos</a> is a hosting service aimed at amateur and professional photographers, in a similar vein to many of the other photo sites out there. What makes it different, however, is that it was built by <a href="http://panthersoftware.com/modules/services/">Nazar Aziz</a>, a developer who only began to use Rails two months ago, during his daily train commute. The site provides a service where members can upload large and high resolution images which are resized, watermarked and catalogued. Members can then sell their pictures through the site for download by clients. Additional facilities including blogging, tagging, categorization, biography pages, contacts and so on are tools than can be used by photographers to engage with other visitors.</p>
<p>I caught up with Nazar for a quick interview about his experiences with Ruby and Rails so far and details of pantherFoto's implementation.<br>
<strong>Why did you create pantherFotos?</strong></p>
<blockquote><p>I build it primarily because I couldn't find a service that completely suited my needs. I've played with Flikcr and several commercial photographic libraries but did not find any that let me upload my photos in the resolutions, prices and provide facilities (i.e. blogging etc.) that I wanted. The other reason in developing pantherFotos was that I knew it would be a perfect project to try Rails on as it would be sufficiently complex to put this framework to the test. I was not disappointed!</p></blockquote>
<p><strong>How long did it take you to build the site? Did you already have any Ruby or Rails experience? If not, what was your background coming into the project?</strong></p>
<blockquote>
<p>The site took just over two months to code to the state that it is in today. On average I'd put in about 15-20 hours per week on the train journey between work and home. As for prior Ruby experience... I'll start with some background. By day I'm a freelance Delphi developer and have lived in this Client/Server database world for the last decade. During this time I've dabbled in writing web applications, starting in the late nineties with Delphi and ISAPI dlls on IIS (that was a disappointing experience). A few years later I stumbled onto PHP and got involved in the Xoops (xoops.org via xprojects.co.uk) community. Xoops was a very good framework that presented a collection of classes that could be used to abstract business logic from presentation (using SMARTY).</p>
<p>My problem with PHP was that it became unwieldy on larger applications. Frameworks like Xoops/Smarty/phpCake do help but again, that can take PHP only so far. Java was another alternative but after some investigation that didn't appeal to me (defecting developers and huge frameworks). By that stage I'd noticed the buzz surrounding Rails and decided to give that a shot.</p>
</blockquote>
<p><strong>pantherFotos seems to have many different functions. Are these all contained within a single app? How is/are your application(s) structured?</strong></p>
<blockquote>
<p>pantherFotos employs several excellent plugins, which include: act_as_commentable, acts_as_rateable, acts_as_taggable, active_merchant, nested_layouts and tabnav. Its these plugins that provide the "cool" functionality at the heart of pantherFotos. Other areas like the forums, blogs, gallery, cart and accounting system had to be coded from scratch as I could not find any plugins for this. I did investigate "engines" but decided against that route as there were mixed opinions on this.</p>
<p>I find that Rails allows applications to scale very well by providing a framework that allows modules to be loosely coupled. This means I can easily add extra functionality (I've got a long to-do list) without affecting existing code. Likewise, changes to existing functionality rarely has a system wide impact. As an example, pantherFotos has 36 models and I cannot see any issues if this doubles.. or trebles... if this was PHP I would be worried at 15 classes, which is where I find PHP starts working against you as opposed to with you.</p>
</blockquote>
<p><strong>How do you deploy and host pantherFotos?</strong></p>
<blockquote>
<p>Deployment has become my favourite part of developing pantherFotos! I cannot emphasise more on what a godsend Capistrano is. A "rake deploy" on my home Gentoo box connects to my dedicated server, which then pulls the latest code from a Subversion repository. The whole process takes about 30 seconds and is very very very satisfying to watch :)</p>
<p>pantherFotos lives on a dedicated server, running a sleek and minimal Gentoo build. Apache2 is serving up pantherFotos via mod_fcgid and mySQL. This is working very well and I am impressed on how snappy and responsive this is (despite reading that Ruby is very slow). I'd even say that Rails is more responsive than several PHP websites hosted on that box. mod_fcgid has been very solid so far (touch wood) and memory usage hovers around the 30-40 MB mark. I employ fragment caching on pantherFotos' left column and this provides a significant performance boost.</p>
</blockquote>
<p><strong>As a newer Rails developer, what has most impressed and surprised you about your Ruby and Rails experiences?</strong></p>
<blockquote>
<p>What I love most about Rails is what I hated most at first: Ruby! It took a good three or four frustrating days until my mind 'clicked' with Ruby's syntax. I continue to be impressed by how concise and powerful Ruby is. This now has the unfortunate side effect of showing me how painful and especially verbose traditional static languages like Delphi/Pascal/c# are in comparison. I can go on how 'gorgeous' Ruby is but that is a journey each of us must make on their own.</p>
<p>My main worry with Rails was my impression of it being a new API and hence lacking in functionality. This can't be further from the truth. It is very feature rich, supplying classes with properties and methods that do pretty much anything I want. My main impression of Rails is how well it is designed. As a developer I can 'feel' when something is badly designed or contrived: it just feels wrong. Rails is quite the opposite. It excels in so many areas: superb Ajax support, emphasis on code re-use and DRY, SQLless data manipulation, powerful model entity relationship support, growing list of Rails plugins. What most impresses about Rails is the cohesive and creative community driving it forward via an active blog landscape.</p>
<p>I finally understand why the Rails experience cannot be replicated on other languages: it is the combination of Ruby and Rails that delivers that killer combination.</p>
</blockquote>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Alexander</strong> &middot; <time datetime="2007-04-01T17:10:00+00:00">April 1, 2007 at 5:10 pm</time></p>
      <p><a href="http://kursovod.ru" rel="nofollow">http://kursovod.ru</a> - RoR site with 0 experience, Ruby also. The System allow post photos of any photo points. Photo point has real address.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Holmlund</strong> &middot; <time datetime="2007-04-06T11:39:00+00:00">April 6, 2007 at 11:39 am</time></p>
      <p>Also <a href="http://luckyoliver.com/" rel="nofollow">http://luckyoliver.com/</a> is written in Ruby on Rails.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nazar Aziz</strong> &middot; <time datetime="2007-04-19T20:51:00+00:00">April 19, 2007 at 8:51 pm</time></p>
      <p>Just wanted to say that I've just finished integrating Google Maps with PantherFotos (maybe a focus of a future article?). See it in action <a href="http://pantherfotos.com/maps" rel="nofollow">http://pantherfotos.com/maps</a>.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
