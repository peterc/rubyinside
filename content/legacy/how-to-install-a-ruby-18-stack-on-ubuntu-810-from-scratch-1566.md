---
title: How To Install A Ruby 1.8 Stack on Ubuntu 8.10 From Scratch
date: '2009-02-27'
author: Peter Cooper
author_slug: admin
post_id: 1566
slug: how-to-install-a-ruby-18-stack-on-ubuntu-810-from-scratch-1566
url: "/how-to-install-a-ruby-18-stack-on-ubuntu-810-from-scratch-1566.html"
categories:
- linux-specific
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2009/02/ubuntu.png" width="94" height="93" alt="ubuntu.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;">Want to install Ruby, RubyGems, and a collection of common gems on Ubuntu 8.10 (Intrepid Ibex) in just a few minutes? Here's the skinny.</p>
<p>If you want, you <em>could</em> use something like <a href="passenger-stack-quickly-install-a-full-ruby-and-passenger-stack-1533.html">Passenger-Stack</a> to do the legwork for you, but I prefer doing manual installations so I know the full score. There are several "how to install Ruby on Ubuntu Intrepid" guides out there but none of them got it totally right for me. I've just used these instructions twice in a row so I know they work. Another bonus is you get ImageMagick and rmagick installed which <a href="http://search.twitter.com/search?q=rmagick">some people</a> get really frustrated with..</p>
<blockquote>
<p><em><strong>Note:</strong></em> These instructions assume you're running as <code>root</code> for convenience. You can alternatively <code>sudo</code> every line or just run <code>sudo bash</code> until you're done.</p>
</blockquote>
<h3>Install the system level basics</h3>
<pre>
apt-get update
apt-get -y install build-essential zlib1g zlib1g-dev libxml2 libxml2-dev libxslt-dev sqlite3 libsqlite3-dev locate git-core
apt-get -y install curl wget
</pre>
<h3>Install ImageMagick (for rmagick)</h3>
<pre>
apt-get -y install libmagick9-dev
</pre>
<h3>Install Ruby 1.8 (MRI)</h3>
<pre>
apt-get -y install ruby1.8-dev ruby1.8 ri1.8 rdoc1.8 irb1.8 libreadline-ruby1.8 libruby1.8 libopenssl-ruby
ln -s /usr/bin/ruby1.8 /usr/bin/ruby
ln -s /usr/bin/rdoc1.8 /usr/bin/rdoc
ln -s /usr/bin/irb1.8 /usr/bin/irb
ln -s /usr/bin/ri1.8 /usr/bin/ri
</pre>
<blockquote>
<p><em><strong>Note:</strong></em> Some advise <em>not</em> to use the packaged version of Ruby on Ubuntu due to its performance. I'm not worried about this. If you are, replace this section with a download of the Ruby source code (<code><a href="http://ftp.ruby-lang.org/pub/ruby/1.8/ruby-1.8.7-p72.tar.gz">http://ftp.ruby-lang.org/pub/ruby/1.8/ruby-1.8.7-p72.tar.gz</a></code>) and un<code>tar</code>, <code>./configure</code>, <code>make</code> and <code>make install</code> it by hand. You're on your own with that though.</p>
</blockquote>
<h3>Install RubyGems (from source)</h3>
<pre>
curl http://rubyforge.org/frs/download.php/60718/rubygems-1.3.5.tgz | tar -xzv
cd rubygems-1.3.5 &amp;&amp; ruby setup.rb install
cd .. &amp;&amp; rm -rf rubygems-1.3.5
ln -s /usr/bin/gem1.8 /usr/local/bin/gem
gem sources -a http://gems.github.com # add Github as a gem source, you won't regret it
</pre>
<h3>Install a set of starter Ruby gems</h3>
<pre>
gem install rake nokogiri hpricot builder cheat daemons json uuid rmagick sqlite3-ruby fastthread rack
</pre>
<h3>What next?</h3>
<p>By this point you now have Ruby installed with RubyGems, a collection of gems (including <em>rmagick</em>) and you can branch off where you want. If you want to develop a Sinatra app, install the <code>sinatra</code> gem and you're away. If you want to install Rails, <code>gem install rails</code>. And so forth.</p>
<p>If you want to install Apache with Passenger for hosting your apps, however, read on..</p>
<h3>Optional: Install Apache and Passenger</h3>
<pre>
echo "deb http://apt.brightbox.net hardy main" &gt; /etc/apt/sources.list.d/brightbox.list
wget -q -O - http://apt.brightbox.net/release.asc | apt-key add -
apt-get update
apt-get -y install libapache2-mod-passenger
</pre>
<p><span style="font-style: italic; font-weight: bold;">Note:</span> Brightbox's Passenger package is officially for Ubuntu 8.04 (Hardy) but it works fine on Intrepid in my experience.</p>
<h4>If you need PHP5 as well:</h4>
<pre>
apt-get -y install php5 libapache2-mod-php5 php5-mysql
/etc/init.d/apache2 restart
</pre>
<h3>Optional: Need a very, very basic firewall?</h3>
<pre>
apt-get -y install ufw
ufw allow to 0.0.0.0/0 port 80
ufw allow to 0.0.0.0/0 port 22 # (or whichever port you use for ssh)
ufw allow to 0.0.0.0/0 port 25 # (if you need mail in)
ufw enable
</pre>
<blockquote><p><em><strong>Note:</strong></em> You're installing the firewall, not me, so don't complain if you get locked out because of the firewall or something :) Ensure you have the correct ports and/or a console access to your server just in case (such as <a href="http://www.linode.com/">Linode</a> supplies).</p></blockquote>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Kevin Bullock</strong> &middot; <time datetime="2009-02-27T04:36:00+00:00">February 27, 2009 at 4:36 am</time></p>
      <p>*ACK* *COUGH* Creating symlinks by hand in /usr/bin is a bad idea. Rather than typing all those extra 1.8's, why not just do this?</p><p>apt-get -y install ruby-dev ruby ri rdoc irb libreadline-ruby libopenssl-ruby</p><p>Then the symlinks are created and managed automatically.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-02-27T04:43:00+00:00">February 27, 2009 at 4:43 am</time></p>
      <p>But is there a danger that those might get updated to Ruby 1.9 at some point?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-02-27T05:16:00+00:00">February 27, 2009 at 5:16 am</time></p>
      <p>Also, if you could elaborate on why it's a bad idea, that'd be awesome. I'd like this to be a good guide. I've used symlinks for this sort of thing for years with no issues but am always happy to learn!</p><p>(If it's the "when you upgrade, those symlinks might get overwritten" reason, then I'm not too concerned. If one's performing major upgrades, one should be testing one's results.)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Bailey</strong> &middot; <time datetime="2009-02-27T07:42:00+00:00">February 27, 2009 at 7:42 am</time></p>
      <p>/usr/local is where you put packages that weren't installed using your systems package installer. That way they won't get clobbered when you do a system update.</p><p>If you install system packages then don't link them into /usr/local.<br>
It's unneccessary and not in keeping with the Filesystem Hierarchy Standard (FHS). Your system should look for executables in /usr/local first and then look in the locations where the system (linux, osx, etc) installs code. This is controlled by you PATH environment variable.</p><p>e.g. /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin</p><p>Dan Benjamin wrote a good piece explaining /usr/local </p><p><a href="http://hivelogic.com/articles/2005/11/using_usr_local" rel="nofollow">http://hivelogic.com/articles/2005/11/using_usr_local</a></p><p>- Mike</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Seth Chandler</strong> &middot; <time datetime="2009-02-27T07:56:00+00:00">February 27, 2009 at 7:56 am</time></p>
      <p>I don't mean to start an editor flame-war here, but it seems like nano is completely unnecessary in this setup.  I'm not trying to take things off-topic, but the setup above (with the exception of the offending line) is completely editor neutral.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-02-27T08:02:00+00:00">February 27, 2009 at 8:02 am</time></p>
      <p>Thanks for all of your suggestions. I have made some tweaks to the instructions. The only downside to this is that I can't say hand-on-heart that they will definitely work anymore. However, I don't believe these changes should have had any effect since, yes, /usr/bin is in the path by default anyway.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-02-27T08:04:00+00:00">February 27, 2009 at 8:04 am</time></p>
      <p>Hmm.. it seems like /usr/bin/ruby might already be created actually. Ha, I'm totally screwed now unless I start fresh with another VM *groan* I'll leave it and cross my fingers for now.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-02-27T08:09:00+00:00">February 27, 2009 at 8:09 am</time></p>
      <p>Found a fresh Intrepid image here. Running through instructions again to make sure it's all cool.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-02-27T08:16:00+00:00">February 27, 2009 at 8:16 am</time></p>
      <p>Nope, it appears /usr/bin/ruby doesn't exist. It seems Brightbox's libapache2-mod-passenger is making the "ruby" package a dependency.. eugh. Perhaps going to the "ruby" packages would be a goer then. Unsure.</p><p>In any case, for anyone who's reading, the way presented above does work - it just might not be the 100% perfect way ;-) More reviews welcomed. The more peer reviewed it is, the better!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nazar</strong> &middot; <time datetime="2009-02-27T09:59:00+00:00">February 27, 2009 at 9:59 am</time></p>
      <p>Hi Peter.</p><p>I am not sure if this is relevant to your article but one issue I had with Ubuntu 8.10 is that it tried to install Ruby 1.8.7.x, whereas I was more comfortable with Ruby 1.8.6.x. </p><p>The workaround is detailed in this post:</p><p><a href="http://ubuntuforums.org/showthread.php?t=964978" rel="nofollow">http://ubuntuforums.org/showthread.php?t=964978</a></p><p>Cheers</p>
    </li>
      <li>
      <p class="comment-meta"><strong>rtgrtgrtg</strong> &middot; <time datetime="2009-02-27T14:29:00+00:00">February 27, 2009 at 2:29 pm</time></p>
      <p>I think installing ruby is not a rocket science, what really drives me crazy is RMagick. Which is used frequently by many of our customer projects, for *X systems most of the guides are not working and you always have to tweak the buld processes and reslove dependencies. Are there any good ressources on this, or is there another lib which provides same features, performacne and qulity as libmagick/RMagick?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>chetan</strong> &middot; <time datetime="2009-02-27T15:42:00+00:00">February 27, 2009 at 3:42 pm</time></p>
      <p>Good article Peter.<br>
Very nice collation of steps.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-02-27T16:16:00+00:00">February 27, 2009 at 4:16 pm</time></p>
      <p>@rtgrtgrtg: What distribution / OS? On Ubuntu it's easy as shown above. Just install the libmagick9-dev package and then install the rmagick gem. It's also pretty easy on OS X as far as I recall using DarwinPorts though I can't remember the exact line for that. On CentOS it's not too bad either, there are a few yum packages that will install ImageMagick in the right way.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kevin Bullock</strong> &middot; <time datetime="2009-02-27T17:40:00+00:00">February 27, 2009 at 5:40 pm</time></p>
      <p>Re: #2 and #3, to elaborate:</p><p>It's best to let the package manager handle all of /usr/bin by itself, since yes, the symlinks could very well get overwritten, or worse: they could cause a fatal conflict causing dpkg to bail if you ever do try to install the 'ruby' package. (Not sure in this specific case what'd happen, but similar cases have bit me many times.)</p><p>There's no danger of 'ruby', 'irb', 'ri' etc. bumping up to depend on 1.9, except on a full-distro version upgrade (i.e. when jinky jellyfish comes out). And as you said yourself, "If one's performing major upgrades, one should be testing one's results."</p><p>Of course, either way, if you're testing on upgrades, you'll be okay. I find it generally less painful to stay well out of the way of dpkg's intents.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-02-27T17:59:00+00:00">February 27, 2009 at 5:59 pm</time></p>
      <p>Thanks for the clarifications, Kevin.</p><p>Brightbox's package does seem to make the "ruby" package install, yet, as far as I can tell, little happens. The symlink /usr/bin/ruby1.8 -&gt; /usr/bin/ruby is maintained, so either that's how the ruby package does it, or it doesn't want to overwrite.</p><p>I'm going to leave the instructions as-is for now, as I'm happy with a messier pragmatic approach over a formal one, but hopefully these comments will be of great help to people who do want to do things in slightly different ways (such as installing the ruby packages, as you suggest).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sean Bowman</strong> &middot; <time datetime="2009-02-27T19:48:00+00:00">February 27, 2009 at 7:48 pm</time></p>
      <p>On Ubuntu, you can also use:</p><p>apt-get install ruby-full</p><p>To get all the various irb, rdoc, etc. in one fell swoop.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://www.ruby-china.org/how-to-install-a-ruby-18-stack-on-ubuntu-810-from-scratch/" rel="external nofollow" class="url">Ruby-China</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>rtgrtgrtg</strong> &middot; <time datetime="2009-03-01T18:52:00+00:00">March 1, 2009 at 6:52 pm</time></p>
      <p>Hi Peter,</p><p>we had a lot of issues with debian etch64</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Phil</strong> &middot; <time datetime="2009-03-03T23:40:00+00:00">March 3, 2009 at 11:40 pm</time></p>
      <p>It's a good idea to let Debian's update-alternatives system handle the links between ruby1.8 and ruby etc. That's the package-manager-friendly way, and it's no more difficult than doing the symlinks manually.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2009-03-09T14:42:00+00:00">March 9, 2009 at 2:42 pm</time></p>
      <p>Is there a reason why apt-get is used instead of aptitude?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-03-09T14:48:00+00:00">March 9, 2009 at 2:48 pm</time></p>
      <p>Since apt-get added autoremove support, I don't think there's a significant difference between them (for just installing and removing packages without needing the snazzy menus, search, etc). Might be wrong though!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Fred</strong> &middot; <time datetime="2009-03-09T20:30:00+00:00">March 9, 2009 at 8:30 pm</time></p>
      <p>jezzz.. how many commands?!?!</p><p>in gentoo 2 commands would be enough...</p><p># emerge rubygems rmagick</p><p># gem install rails rake nokogiri hpricot builder cheat daemons json uuid sqlite3-ruby fastthread rack</p><p>:)</p><p>optionally:</p><p># echo "www-apache/passenger" &gt;&gt; /etc/portage/package.keywords<br>
# emerge passenger</p><p>cheers for ubuntu! ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Phil</strong> &middot; <time datetime="2009-03-10T09:18:00+00:00">March 10, 2009 at 9:18 am</time></p>
      <p>Ohh, I don't care about what should/shouldn't be done.<br>
To say that you've made this excellent Ruby installation a breeze<br>
is a must.</p><p>Thanks you so much Peter.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>fred</strong> &middot; <time datetime="2009-03-11T19:01:00+00:00">March 11, 2009 at 7:01 pm</time></p>
      <p>what about "apt-get install ruby-full" ?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matthew</strong> &middot; <time datetime="2009-03-17T21:33:00+00:00">March 17, 2009 at 9:33 pm</time></p>
      <p>Awesome guide. Got me 99% of the way there.</p><p>Just a quick note: I decided to go down the ruby compilation route (have has bad experiences with apt-get + ruby) I kept getting Zlib file not found errors when trying to install gems. The following steps fixed that:</p><p># cd /path/to/src/ruby-1.8.x-xx/ext/zlib/<br>
# ruby extconf.rb<br>
# make &amp;&amp; make install</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
