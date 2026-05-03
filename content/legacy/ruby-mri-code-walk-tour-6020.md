---
title: A Simple Tour of the Ruby MRI Source Code with Pat Shaughnessy
date: '2012-12-03'
author: Peter Cooper
author_slug: admin
post_id: 6020
slug: ruby-mri-code-walk-tour-6020
url: "/ruby-mri-code-walk-tour-6020.html"
categories:
- cool
- interviews
- miscellaneous
---

{{< rawhtml >}}
<p><iframe width="640" height="360" src="http://www.youtube.com/embed/0npv906IQag" frameborder="0" allowfullscreen></iframe></p>
<p>I'm not in Ruby core or, well, even a confident C coder anymore, but I've long enjoyed digging in the <a href="https://github.com/ruby/ruby">Ruby MRI source code</a> to <a href="http://www.youtube.com/watch?v=9IX1NfwQP1s">understand weird behavior</a> and to pick up stuff for my <a href="https://cooperpress.com/rubyreloaded">Ruby course.</a></p>
<p><a href="http://patshaughnessy.net/">Pat Shaughnessy</a> is also a fan of digging around in Ruby's internals and has written some great posts like <a href="http://patshaughnessy.net/2012/6/29/how-ruby-executes-your-code">How Ruby Executes Your Code</a>, <a href="http://patshaughnessy.net/2012/7/26/objects-classes-and-modules">Objects, Classes and Modules</a>, and <a href="http://patshaughnessy.net/2012/4/3/exploring-rubys-regular-expression-algorithm">Exploring Ruby's Regular Expression Algorithm.</a></p>
<p>When Pat released his <a href="http://patshaughnessy.net/ruby-under-a-microscope">Ruby Under a Microscope</a> book, I knew it would be right up my street! He digs into how objects are represented internally, why MRI, Rubinius and JRuby act in certain ways and, of course, "lots more."</p>
<p>I invited Pat to take a <em>very high level</em> cruise through the MRI codebase with me so we could share that knowledge with Ruby programmers who haven't dared take a look 'under the hood' and to show it's not as scary or pointless as it may seem.</p>
<p>It's 100% free so enjoy it above or <a href="http://www.youtube.com/watch?v=0npv906IQag">on YouTube in 720p HD.</a></p>
<p><em>P.S. Pat is happy to do another video digging deeper into how Ruby actually takes your code and executes it and he's able to walk through the actual virtual machine for us. If the reaction to this video is good, we'll sit down again and see if we can do it! :-)</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jamal Abdou-Karim Bengeloun</strong> &middot; <time datetime="2012-12-03T19:48:00+00:00">December 3, 2012 at 7:48 pm</time></p>
      <p>What is the editor used in the video?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2012-12-03T19:57:00+00:00">December 3, 2012 at 7:57 pm</time></p>
      <p>Sublime Text 2.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jamal Abdou-Karim Bengeloun</strong> &middot; <time datetime="2012-12-03T20:23:00+00:00">December 3, 2012 at 8:23 pm</time></p>
      <p>Thanks a lot. Any added plug-ins? It does not quite look like the standard look &amp; feel. For example the search bar, etc.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jordon Bedwell</strong> &middot; <time datetime="2012-12-03T21:21:00+00:00">December 3, 2012 at 9:21 pm</time></p>
      <p>The search bar is pretty standard, actually the entire thing looks standard to me, press (CMD|CTRL)+F to open it, or +H to get the more advanced search and replace.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2012-12-03T21:31:00+00:00">December 3, 2012 at 9:31 pm</time></p>
      <p>It's the "Soda" theming. But I've switched to "Phoenix" in the last couple of days..</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
