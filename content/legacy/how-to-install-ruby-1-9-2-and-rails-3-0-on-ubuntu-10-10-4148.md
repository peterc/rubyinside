---
title: How to Install Ruby 1.9.2 and Rails 3.0 on Ubuntu 10.10
date: '2010-12-29'
author: Peter Cooper
author_slug: admin
post_id: 4148
slug: how-to-install-ruby-1-9-2-and-rails-3-0-on-ubuntu-10-10-4148
url: "/how-to-install-ruby-1-9-2-and-rails-3-0-on-ubuntu-10-10-4148.html"
categories:
- linux-specific
- tutorials
---

{{< rawhtml >}}
<p>For better or worse, Ubuntu has become one of the most popular Linux variants on which to deploy Ruby and Rails apps. It was <a href="http://www.linode.com/railsrumble/2010/">used for 84%</a> of the <em>2010 Rails Rumble</em> projects, for example. Back in 2009, I wrote <a href="how-to-install-a-ruby-18-stack-on-ubuntu-810-from-scratch-1566.html">a guide to installing a Ruby 1.8 stack on Ubuntu 8.10</a> so it was only a matter of time before I had to tackle 10.10 (Maverick Meerkat) and Ruby 1.9.</p>
<p><em>Tip: If you're still on 1.8, check out <a href="http://rubyinside.com/19walkthrough/">The Ruby 1.9 Walkthrough</a>, a mega screencast aimed at Ruby 1.8.7 developers who want to learn all about what's new, what's gone, and what's different in Ruby 1.9.2 and 1.9.3.</em></p>
<p>A few days ago I needed to produce a screencast on installing Ruby 1.9.2 on Ubuntu 10.10 for students in my <a href="http://codelesson.com/ruby">forthcoming Ruby class</a> to use. It was a pleasant surprise, then, to discover that Ryan Bigg had posted <strong><a href="http://ryanbigg.com/2010/12/ubuntu-ruby-rvm-rails-and-you">Ubuntu, Ruby, RVM, Rails and You</a></strong> on Christmas Day. It's a written walkthrough of installing Ruby 1.9.2 and Rails 3.0 on Ubuntu 10.10. So if you want a written walkthrough, <strong><a href="http://ryanbigg.com/2010/12/ubuntu-ruby-rvm-rails-and-you">read his post.</a></strong></p>
<p>I still needed a screencast though so I compared Ryan's technique to mine, made some minor tweaks, and followed his general process when making the following screencast. So if you prefer screencasts to blog posts, you're in luck. The video is <a href="https://www.youtube.com/watch?v=NmWYZVUln4E">available on YouTube as <em>"How to Install Ruby 1.9.2 and Rails 3.0 on Ubuntu 10.10"</em></a> or if you're on the Web, you can see it embedded below:</p>
<p><object width="620" height="373"><param name="movie" value="https://www.youtube.com/v/NmWYZVUln4E?fs=1&amp;hl=en_US&amp;hd=1">
<param name="allowFullScreen" value="true">
<param name="allowscriptaccess" value="always">
<embed src="https://www.youtube.com/v/NmWYZVUln4E?fs=1&amp;hl=en_US&amp;hd=1" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="620" height="373"></embed></object></p>
<p><em>Errata: 1) The aspect ratio for the video is wrong. I don't tend to do HD uploads so I learned a lesson there. This doesn't affect the content, though. 2) I call Ryan Bigg "Ryan Biggs" once or twice. Curiously this seems to be a common mistake on Ruby blogs..</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Isaiah P.</strong> &middot; <time datetime="2010-12-29T05:20:00+00:00">December 29, 2010 at 5:20 am</time></p>
      <p>I highly doubt that "how to install" is a subject needs blogged. Especially on rubyinside.<br>
The ruby and rails site should have plenty of instructions already.<br>
No more spam like this, PLEASE. Do something valuable instead.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael</strong> &middot; <time datetime="2010-12-29T09:37:00+00:00">December 29, 2010 at 9:37 am</time></p>
      <p>Hello Peter, you have the perfect voice for screencasts and podcasts! I have one comment and a question:<br>
* in Ubuntu there is a return in the bashrc. The RVM installation instructions specifically recommend changing it to an if-statement (in the troubleshooting-section of <a href="http://rvm.beginrescueend.com/rvm/install/" rel="nofollow">http://rvm.beginrescueend.com/rvm/install/</a>).<br>
* Would you mind to mention what tools you are using for capturing and processing the screencast in Ubuntu?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-29T09:51:00+00:00">December 29, 2010 at 9:51 am</time></p>
      <p>@Isaiah P: Thanks for sharing that with me, but have you visited the official Ruby or Rails sites? They don't cover this stuff. The <a href="http://www.ruby-lang.org/en/downloads/" rel="nofollow">official Ruby download/install page</a> merely advises to install a packaged version of a non-current version of Ruby (1.9.1) - next to useless advice (the official Ruby site is a quagmire of mostly out of date content on most fronts). The Rails site has nothing specific about installing Ruby beyond linking to a .tar.gz of Ruby 1.8.7 and a page that 404s.</p><p>Criticism is all well and good here, but a modicum of research before posting charged statements would be most appreciated.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-29T09:53:00+00:00">December 29, 2010 at 9:53 am</time></p>
      <p>@Michael: Thanks! I'm cheating. It's Ubuntu running under VMware Fusion on OS X. I then use the excellent ScreenFlow to capture it and edit together the video. Next time it'll be done at the right aspect ratio too ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrea</strong> &middot; <time datetime="2010-12-29T10:38:00+00:00">December 29, 2010 at 10:38 am</time></p>
      <p>Good post Peter.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nsm</strong> &middot; <time datetime="2010-12-29T12:54:00+00:00">December 29, 2010 at 12:54 pm</time></p>
      <p>@Michael: You can use <a href="http://recordmydesktop.sourceforge.net/about.php" rel="nofollow">http://recordmydesktop.sourceforge.net/about.php</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>r4ito</strong> &middot; <time datetime="2010-12-29T17:12:00+00:00">December 29, 2010 at 5:12 pm</time></p>
      <p>I was thinking "What kind of Internet speed does he have?" until I looked at the clock lol</p><p>Now a serious question, does Ubuntu 10.10 comes with ruby 1.8.7 installed? I don't see it on the notes but on Fedora 14 it says it's a requirement for compiling ruby 1.9.2</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Bigg</strong> &middot; <time datetime="2010-12-30T00:27:00+00:00">December 30, 2010 at 12:27 am</time></p>
      <p>First off: Thanks Peter for mentioning the post I wrote and doing a screencast about it. There's some who would prefer this method to a Wall Of Text.</p><p>Isaiah: I agree with you, the <a href="http://ruby-lang.org" rel="nofollow">http://ruby-lang.org</a> and <a href="http://rubyonrails.org" rel="nofollow">http://rubyonrails.org</a> sites *should* have instructions for installing Ruby and Rails already that cover the variety of operating systems out there. However, the problem is that there are so many different permutations out there for doing this and so there is no One True Source for installation documentation. </p><p>Personally, I would *love* to see guides on the official Ruby on Rails page for installing Ruby on Mac, Linux and Windows so that the barrier of entry is lowered even further. But who would volunteer their time to write and maintain these? That is another reason why they don't exist yet.</p><p>As for whether or not this is valuable, it's quite subjective.</p><p> For new people using Ubuntu and attempting to get into Ruby and Rails (as we see happen quite frequently over this part of the year), it is exceptionally valuable. There's people out there who know the best way to do this and have written posts and screencasts to take these new people through this process. Imagine, as a new person, attempting to do all of this yourself. You wouldn't know what "no such file to load -- zlib" meant!</p><p>For experienced people, it's probably not all that valuable. It's a very low-level install guide for a setup that they probably have. But not every single post should be written for the people with experience, as that does not provide a welcoming environment for newbies.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-30T07:09:00+00:00">December 30, 2010 at 7:09 am</time></p>
      <p><em>But who would volunteer their time to write and maintain these? That is another reason why they don't exist yet.</em></p><p>That's what <a href="http://rubyonrails.org/activists" rel="nofollow">the Rails Activism team</a> was about. While both of those guys are still doing a lot of work along those lines, it no longer seems to be on the official Rails site and on their own domains instead (I can't blame them either - better to own your own work).</p><p>Working on non-code stuff for projects like Ruby and Rails is a thankless task at the best of times. Code gets celebrated in a way that documentation almost never does. The best documentation tends to come from sources that get to profit from it in other ways (see Envy Labs and their Rails for Zombies work).</p><p><em>For experienced people, it's probably not all that valuable.</em></p><p>Speak for yourself ;-) I've been setting up Ruby installs for six years and I still tend to Google to see what the deal is on operating systems I'm not familiar with! I'd love to meet some of the Übermensch types who never look anything up one day though, but I don't even think they exist..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>r4ito</strong> &middot; <time datetime="2010-12-30T15:16:00+00:00">December 30, 2010 at 3:16 pm</time></p>
      <p>@myself, nvm, I see it now.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://www.quora.com/How-do-I-learn-Ruby-Im-a-complete-novice-who-has-never-programmed-before#ans199865" rel="external nofollow" class="url">How do I learn Ruby? I'm a complete novice who has never programmed before. - Quora</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dave Reynolds</strong> &middot; <time datetime="2010-12-30T18:38:00+00:00">December 30, 2010 at 6:38 pm</time></p>
      <p>Thanks for putting this one together!  I think that info on more advanced setup and installation is a bit weak in the Rails community.  It's usually the first chapter in an introductory tutorial and ignores irritating environmental issues (such as Windows environment variables and Linux package managers).  I'd love to see more on building up production environments for Rails on Linux and how to coax them to gracefully scale.  Also how to instrument them so you know when the wheels are about to come flying off.  Development environments for Rails aren't as intimidating, at least on Mac and Linux platforms.</p><p>If only the poor Windows users could be saved...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://www.arvag.net/2011/01/how-to-install-ruby-1-9-2-and-rails-3-0-on-ubuntu-10-10/" rel="external nofollow" class="url">How to Install Ruby 1.9.2 and Rails 3.0 on Ubuntu 10.10 | My playground!</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Bigg</strong> &middot; <time datetime="2011-01-01T10:58:00+00:00">January 1, 2011 at 10:58 am</time></p>
      <p>(Feel free to re-format this if I've ballsed it up)</p><p>*it no longer seems to be on the official Rails site and on their own domains instead (I can't blame them either - better to own your own work)*</p><p>Whilst it's a good thing to "own your own work", sharing *is* caring too! Also, having it on their own sites isn't as good as having it on the official site because it's fragmenting the information. Personally, I prefer there being one central location I can go to and learn everything I need to. A lot of the newbies who I've helped have brought this up too: all the good information seems to be on blogs that they happen to stumble across whilst doing a Google search.</p><p>Put it all in one easy-to-find location, or if that's too hard (or you want to "own your own work"), then at least link to it from the central location.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Azmir</strong> &middot; <time datetime="2011-01-04T14:09:00+00:00">January 4, 2011 at 2:09 pm</time></p>
      <p>Hi guys, </p><p>Want to ask dummy question,</p><p>Do i need Apache or Nginx as Web Server ? I didn't see Peter install it in screen-cast or, is it Ruby doesn't need Web Server at all?</p><p>And i also didnt see Peter install mysql.</p><p>Anyone please enlighten me, im very new with Ruby.<br>
Thanks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-01-04T14:17:00+00:00">January 4, 2011 at 2:17 pm</time></p>
      <p>Hi Azmir,</p><p>The video is just to show setting up a basic Ruby and Rails development environment organized around the defaults/basics. The Rails 3 app shown will be using SQLite 3 which is installed. You could then extend further to installing MySQL and so forth. Also, you'd be using "rails server" to run a development version of your app in this case, rather than a full-blown deployed version on Apache or Nginx (though you could do the latter with gem install passenger and then passenger-install-nginx, I think).</p><p>The topics you mention would be for a further video/tutorial, but you can get going using merely what's been covered so far.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://rails.arayuru.com/hateb-about-ror/6472.html" rel="external nofollow" class="url">How to Install Ruby 1.9.2 and Rails 3.0 on Ubuntu 10.10 | Ruby On Rails ニュース</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Azmir</strong> &middot; <time datetime="2011-01-04T23:54:00+00:00">January 4, 2011 at 11:54 pm</time></p>
      <p>@Peter: Thank you so much :D</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ronald</strong> &middot; <time datetime="2011-01-09T03:15:00+00:00">January 9, 2011 at 3:15 am</time></p>
      <p>Thanks a lot for the tutorial. It is very clear and works! I really appreciate it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paul</strong> &middot; <time datetime="2011-01-13T18:28:00+00:00">January 13, 2011 at 6:28 pm</time></p>
      <p>@Isaiah P.<br>
As a newbie to Ruby and Rails I can say that there are fewer starting guides than you think. Combine that with the fact that RVM, Ruby 1.9 and Rails 3 are much more different than previous versions and you have a lot of confused new developers. If it was not for a friend of mine that helped me with the install it would have taken me awhile to locate a tutorial that was both accurate and current. This post is not SPAM and I wish I had it a few months ago when I was getting started.</p><p>@Peter<br>
Thank you for this screencast. It answered many questions for me.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Arno Nyhm</strong> &middot; <time datetime="2011-01-16T02:33:00+00:00">January 16, 2011 at 2:33 am</time></p>
      <p>I would like to see a opposite way:<br>
How to deinstall ruby on osx?</p><p>Why? I like after this to install ruby fresh only with RVM?</p><p>Context: i got a iMac with osx and there was Ruby 1.8.?? was preinstalled. I do some updates and later i do some installations with RVM. Sometimes i got bad results in not having the right ruby version with rails</p><p>So how i get rid of all this settings and i an then follow the good RVM path?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>OJS</strong> &middot; <time datetime="2011-01-17T23:36:00+00:00">January 17, 2011 at 11:36 pm</time></p>
      <p>It's late and I have just found this posting on Installing a Ruby - Rails stack on Ubuntu 10.1  I find I am gratfull for as it  at least clears up some misunderstandings I had and it looks uncomplicated<br>
I have spent several hors trying to  set up a local host  development stack on a freshish  ubuntu 64bit server  box ,,without success  I have read many postings from arious bloggs  mostly offical  and some refered to from the  officaldom   non succesful to get me to a 1.9 2 + RAILS 3.0.3  working set up,  nearest was 1.8 7 and rails 3 .0<br>
tomorrow i will work carefully through " Mr Radars " instructions,  one line at a time and report back on what happens</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="rails-ready-ruby-and-rails-on-ubuntu-in-one-line-4214.html" rel="external nofollow" class="url">Rails Ready: Ruby and Rails on Ubuntu in One Line</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dave G</strong> &middot; <time datetime="2011-01-31T02:39:00+00:00">January 31, 2011 at 2:39 am</time></p>
      <p>First, cheers for posting this. As a newbie to Ubuntu, Ruby and Rails I learned a lot. I followed your directions without any trouble. However, I later decided that I want to install Radiant. I see on GitHub that Radiant is recommended to be run on Ruby 1.8.6 or 1.8.7. I understand that RVM enables having different versions of Ruby installed. Thus, I suspect that I can use RVM to install the appropriate version of Ruby and use that with Radiant. I see also on GitHub that Radiant ships with its own version of Rails. </p><p>As a newbie, this leaves me a little concerned about whether RVM will keep everything straight for the combination of Ruby, Rails and Radiant. I appreciate that you provided a warning about using the packaged Ruby provided with Ubuntu. Yet, for use with Radiant, it seems it may work better to go with the packaged version of Ruby. At least that's what the Radiant installation wiki at GitHub seems to imply. </p><p><a href="https://github.com/radiant/radiant/wiki/Installation" rel="nofollow">https://github.com/radiant/radiant/wiki/Installation</a></p><p>Resolving this issue likely seems trivial to people like Isaiah P., who called your post spam. However, other newbies like me who just installed Ubuntu, might like to know how to work with the latest versions of Ruby and Rails, but also have an installation of Radiant.</p><p>I realize that you posted this a month ago, but perhaps you could provide some helpful insight.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dave G</strong> &middot; <time datetime="2011-01-31T03:39:00+00:00">January 31, 2011 at 3:39 am</time></p>
      <p>Update:</p><p>After reviewing your posted video again and reading the general intro to RVM, I got a better understanding about how to proceed. Radiant had failed to install when I tried to install it using the command normally used to install Radiant, </p><p>$sudo gem install radiant </p><p>That generated an error message saying "sudo: gem: command not found" and left me wishing I had not installed Ruby and Rails using RVM.</p><p>I had thought that the gem command failed because I had the wrong version of Ruby installed. I now understand better from your video that when we use RVM, we do not need to use sudo, because RVM works through our local home directory. </p><p>Finally, I used the following sequence of commands to successfully install Radiant using the recommended version 1.8.7 of Ruby.</p><p>$rvm install 1.8.7<br>
$rvm 1.8.7<br>
$ruby -v                      (to see that it worked)<br>
$rvm --default use 1.8.7<br>
$gem install radiant          (without the sudo)</p><p>This experience helped me to understand the value of using RVM. It also helped me to appreciate your posting even more. Well done! Thanks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dave G</strong> &middot; <time datetime="2011-01-31T04:25:00+00:00">January 31, 2011 at 4:25 am</time></p>
      <p>Update again:</p><p>Although the install of Radiant worked. When I tried running Radiant, I ran into an error that I think must relate to the install. I will post a further update later.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dave G</strong> &middot; <time datetime="2011-01-31T06:05:00+00:00">January 31, 2011 at 6:05 am</time></p>
      <p>Update: 3rd</p><p>I did not resolve the issue yet. I used RVM to remove the installed 1.8.7 version of Ruby, together with its gemset. Then I tried staying within RVM and using the Radiant installation command for Ubuntu as directed at GitHub. I noticed that it differed from the general installation command. The one for Ubuntu included rails.</p><p>$gem install rails radiant</p><p>I think possibly my Ubuntu uses rails 3.0 for this. Anyway, I see the same behavior. The radiant command succeeds, but it doesn't work when I try to follow the full sequence given in the video of the Radiant installation at this URL, </p><p><a href="http://radiant.s3.amazonaws.com/screencasts/01_install.mov" rel="nofollow">http://radiant.s3.amazonaws.com/screencasts/01_install.mov</a></p><p>When executing the command,</p><p>$rake production db:bootstrap</p><p>it leads to the message:</p><p>(in /home/dave/radtest/radtest)<br>
rake aborted!<br>
no such file to load -- sqlite3</p><p>Yet, I see sqlite3 using either of these commands<br>
$which sqlite3<br>
$sqlite3 --help</p><p>Since I didn't try installing Radiant before I installed RVM. I don't know if it fails because of using RVM or not. I suppose the next step will involve removing RVM and trying to install Radiant without it.</p><p>Oh well. I still value what I learned about using RVM to install Ruby and Rails. I'm sure it will come in handy.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://www.atypicalcoder.com/installing-ruby-1-9-2-on-ubuntu/" rel="external nofollow" class="url">Installing Ruby 1.9.2 on Ubuntu « Atypical Coder</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://blog.bonomini.com.br/index.php/2011/02/22/instando-ruby-1-9-2-e-rails-3-no-ubuntu-10-10/" rel="external nofollow" class="url">Instando Ruby 1.9.2 e Rails 3 no Ubuntu 10.10 | Bonomini Blog</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://samjlevy.com/?p=1062" rel="external nofollow" class="url">sam j levy » Great video tutorial: Installing Ruby on Rails on Ubuntu</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://blog.malev.com.ar/2011/03/15/preparacion-de-un-entorno-ruby-on-rails-en-ubuntu-reloaded/" rel="external nofollow" class="url">Preparación de un entorno Ruby on Rails en Ubuntu – Reloaded | malev's blog</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
