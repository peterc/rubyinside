---
title: 'Redcar: A Programmer’s Text Editor Written in Ruby'
date: '2009-04-13'
author: Peter Cooper
author_slug: admin
post_id: 1683
slug: redcar-a-programmers-text-editor-written-in-ruby-1683
url: "/redcar-a-programmers-text-editor-written-in-ruby-1683.html"
categories:
- cool
- linux-specific
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2009/04/redcarss.png" width="137" height="127" alt="redcarss.png" style="float:left; margin-right:12px; margin-bottom:12px;"> <a href="http://redcareditor.com/">Redcar</a> is a programmer's text editor for GNOME, written in Ruby and <a href="http://live.gnome.org/Vala">Vala</a> (a curious C# like language for use with GNOME), by Daniel B Lucraft.</p>
<p>Redcar probably isn't going to be your next editor, at least not yet. It's still in its early stages with version 0.1 only being released a week ago and you have to get it running from source (no binary distributions yet). Despite all of this, it already boasts compatibly with Textmate highlighting, snippets, and quite a lot of Textmate bundle commands. It's GPL2 licensed, too. The <a href="http://github.com/danlucraft/redcar/tree/master">code is available in a Github repository</a>.</p>
<p>Despite the focus on GNOME, it should be possible to get Redcar running on both Windows and Mac OS X as well as Linux, but I've personally found the dependencies for <a href="http://ruby-gnome2.sourceforge.jp/">Ruby-GNOME2</a> to be an absolute beast to install on OS X. <a href="http://github.com/danlucraft/redcar/blob/a857d50174631fa67f2b0d7d52043ce59c9ad39f/INSTALL.txt">Installation instructions</a> are provided, however, for the brave.</p>
<p>Redcar is already a good looking app (on Linux, at least) and even though it's in its early days, it provides an interesting case study for if you want to build a Ruby GUI app based around Ruby-GNOME2.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Daniel B Lucraft</strong> &middot; <time datetime="2009-04-13T09:20:00+00:00">April 13, 2009 at 9:20 am</time></p>
      <p>Thanks for the writeup Peter. I agree that Ruby-GNOME2 is a pain on Mac OSX - I don't know of anyone using it on that platform. Still I hope that one day it can be made to work, especially with the progress of the GTK native port. But Gnome Linux distributions are the focus for Redcar for now.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nicolas Kassis</strong> &middot; <time datetime="2009-04-13T13:32:00+00:00">April 13, 2009 at 1:32 pm</time></p>
      <p>Could this be enough for me to stop using OSX daily? Maybe, Textmate is one of the major reason I boot into OSX for work. Developing on Ubuntu (particularly Rails) is sometimes easier.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hubert Łępicki</strong> &middot; <time datetime="2009-04-14T07:21:00+00:00">April 14, 2009 at 7:21 am</time></p>
      <p>What I really like is that they are going to develop more than editor - the real goal is to provide ruby-centric IDE, which would be great. I love text editors for quick editing of scripts (Vim), but for all-day development I use Netbeans, as I can run my specs, visual debugger and SCM from within.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Wells</strong> &middot; <time datetime="2009-04-14T17:08:00+00:00">April 14, 2009 at 5:08 pm</time></p>
      <p>It'd be even more interesting to see this written with a layer of abstraction between the editor and the UI toolkit used. Perhaps this would be very difficult, but with Qt now truly open source it seems a very interesting alternative to Gtk. Tis a shame an editor like Redcar has to be so closely coupled with the UI libs.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>AW</strong> &middot; <time datetime="2009-04-14T18:04:00+00:00">April 14, 2009 at 6:04 pm</time></p>
      <p>Looks sweet. Glad it's using Ruby-GNOME, since Ubuntu is my flavor of choice. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hubert Łępicki</strong> &middot; <time datetime="2009-04-15T12:08:00+00:00">April 15, 2009 at 12:08 pm</time></p>
      <p>@John: I partially agree with you - Qt version should look better on Mac, windows or KDE, would be easier to port... but if goal is to create editor for Ubuntu, which standard desktop is Gnome, then their obvious choice. Qt apps doesn't look good under Gnome, GTK apps under KDE - it's the pain, but it's how it is. I am KDE user myself, can live with GTK apps looking different but guess Mac users won't be very happy.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alex</strong> &middot; <time datetime="2009-04-16T05:29:00+00:00">April 16, 2009 at 5:29 am</time></p>
      <p>I always wondering why so many editors always doing terrible-giant toolbar buttons ...<br>
I think it should be ready to use "by default" without changing all this settings.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2009-04-21T20:00:00+00:00">April 21, 2009 at 8:00 pm</time></p>
      <p>for tk fans, there's the arcadia editor (written in ruby/tk).</p><p><a href="http://github.com/angal/arcadia/tree/master" rel="nofollow">http://github.com/angal/arcadia/tree/master</a><br>
I like redcar it almost reminds me of the happy days when I used OS X.  It won't even untar on windows currently, though I suppose you could still run it via andlinux.  Maybe.  It does work well on ubuntu though.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
