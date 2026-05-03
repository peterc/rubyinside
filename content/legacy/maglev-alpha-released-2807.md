---
title: 'MagLev Alpha Released: A New, Scalable Ruby Implementation'
date: '2009-11-21'
author: Peter Cooper
author_slug: admin
post_id: 2807
slug: maglev-alpha-released-2807
url: "/maglev-alpha-released-2807.html"
categories:
- cool
- linux-specific
- news
- os-x-specific
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2009/11/maglev.png" width="102" height="101" alt="maglev.png" style="float:left; margin-right:12px; margin-bottom:12px;"><a href="http://ruby.gemstone.com/">MagLev</a> is a new(ish) Ruby implementation built by <a href="http://www.gemstone.com/">Gemstone Systems</a> that focuses on providing an integrated object persistence layer and a distributed shared cache - a truly scalable Ruby implementation. Maglev has, however, had an air of vaporware about it, having been hyped up in early 2008 and only available to a small group of alpha testers till now. That changes today with <a href="http://groups.google.com/group/maglev-discussion/browse_thread/thread/1102993e9e21492a">the first public, alpha release!</a></p>
<p>Back in early 2008, MagLev program manager Bob Walker did <a href="http://www.infoq.com/news/2008/04/maglev-gemstone-builds-ruby">an interview with InfoQ about the project</a> where he said that 8 people were working on MagLev, so this is a pretty big deal for them. Developer Avi Bryant then did <a href="http://www.vimeo.com/1147409">a short presentation at RailsConf 2008</a> where he gave a comprehensive overview of what MagLev is along with some live demonstrations.</p>
<h3>Why Should You Care?</h3>
<p>In short, MagLev is cool for a few reasons. Two key ones being that 1) MagLev runs on the SmallTalk virtual machine which, it is claimed, should yield significant performance increases for a language like Ruby, and 2) a MagLev environment allows multiple Ruby processes over multiple machines (if you wish) to use the same objects simultaneously for easy scalability. <a href="http://www.vimeo.com/1147409">Avi's video</a> is great if you want to get a grasp on it:</p>
<p><object width="400" height="302"><param name="allowfullscreen" value="true">
<param name="allowscriptaccess" value="always">
<param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=1147409&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=0&amp;color=&amp;fullscreen=1">
<embed src="http://vimeo.com/moogaloop.swf?clip_id=1147409&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=0&amp;color=&amp;fullscreen=1" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" width="400" height="302"></embed></object>
</p>
<p><a href="http://vimeo.com/1147409">MagLev presentation at RailsConf 2008</a> from <a href="http://vimeo.com/montywilliams">Monty Williams</a> on <a href="http://vimeo.com">Vimeo</a>.</p>
<p>Developer Monty Williams is keen to stress that this is an alpha, not a beta, so you can't expect it to run Rails or any gems that require C extensions. That said, it does run Sinatra, Rack, and RubyGems, plus a significant effort has been put into passing the <a href="http://rubyspec.org/">RubySpec</a>, so it's not as if it's a crippled implementation as such.</p>
<p>If you want to learn more, consider following the MagLev team on Twitter <a href="http://twitter.com/maglev">@MagLev</a> and checking out <a href="http://groups.google.com/group/maglev-discussion">the official mailing list "maglev-discussion."</a></p>
<h3>Installation (i.e. getting to an irb prompt that works)</h3>
<p>Bear in mind that MagLev will only work on 64 bit versions of OS X, Linux, and Solaris, so if you're in the 32 bit club, there's no point in going any further (yet).</p>
<p>If you download the <a href="http://maglev-discussion.googlegroups.com/web/MagLev-installer.zip">MagLev Installer script</a> (small ZIP file), you can run the <code>installMaglev.sh</code> script and install the latest version like so:</p>
<pre>./installMaglev.sh 22578</pre>
<p><em>The announcement post doesn't make it clear you need to provide a version number of what version number to provide. 22578 was mentioned earlier in the day though, and it seems to work.</em></p>
<p>Once installed, MagLev provides some info about environment variables you need to add to your .bashrc or .bash_profile. Follow these, then open a new terminal and here's how you get to an irb session:</p>
<pre>$ <strong>maglev start</strong>
startnetldi[Info]: Starting GemStone network server "gs64ldi".
startnetldi[Error]:  could not start server
startstone[Info]: Starting Stone repository monitor "maglev".
startstone[Info]: GemStone server 'maglev' has been started.

$ <strong>maglev-irb</strong>
irb(main):001:0&gt; 20 + 20
=&gt; 40
irb(main):002:0&gt; exit
error , SystemExit Error,  nil,
          during /Users/peter/Downloads/MagLev-installer/MagLev-22578.MacOSX/bin/maglev-irb
SystemExit Error,  nil</pre>
<h3>Alternatively: GitHub installation</h3>
<p>MagLev <a href="http://github.com/MagLev/maglev">is also available from GitHub</a> to clone. To install MagLev from GitHub:</p>
<pre>git clone git://github.com/MagLev/maglev.git
cd maglev
./install.sh</pre>
<p>.. then follow the note about adding the path to your .bashrc or .bash_profile and running Rake in a new prompt (though still under the maglev project directory).</p>
<p>If you get any further with doing something interesting like, say, getting an IRB prompt up successfully on this, do post a comment ;-)</p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><a href="http://devver.net/caliper" rel="nofollow"><img src="/assets/2009/10/caliper-logo.png" width="98" height="42" alt="caliper-logo.png" style="float:right; margin-bottom:8px; margin-left:12px;"></a><em>[ad]</em> Find duplication, code smells, complex code and more in your Ruby code with <a href="http://devver.net/caliper" rel="nofollow">Caliper!</a> The metrics are free and setup takes just one click. <a href="http://devver.net/caliper" rel="nofollow">Get started!</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Monty Williams</strong> &middot; <time datetime="2009-11-21T03:36:00+00:00">November 21, 2009 at 3:36 am</time></p>
      <p>Hi Peter,</p><p>Ruby 186p287 isn't required required for most users. We need it internally because we have to bootstrap the parser and other low level initialization tasks. But the parser is committed to the repository as part of the build, so no specific MRI version is needed. You do need Rake installed, but any implementation of Rake should suffice.</p><p>What problem did you hit with the non-github installer? If anyone else hits a problem please post in the discussion group. Let us know what OS. Note: A 256 MB slice is too small unless you reduce some of the cache settings. That's been covered in the discussion group.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Monty Williams</strong> &middot; <time datetime="2009-11-21T03:39:00+00:00">November 21, 2009 at 3:39 am</time></p>
      <p>P.S. MagLev runs on Snow Leopard just fine. If anyone has problems getting MagLev installed, please let us know.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-11-21T03:47:00+00:00">November 21, 2009 at 3:47 am</time></p>
      <p>When I ran the installer it said it needed a version number. So I added the version number mentioned in the example to the command and it tried to download but couldn't find it. I discovered valid version numbers elsewhere but didn't try with those before I went the Github route. Example of using the installer:</p><pre>[03:45:41 ~/Downloads/MagLev-installer]$ ./installMaglev.sh
[Error] The upgradeToMaglev.sh command must have one argument
i.e. upgradeToMaglev.sh [version_string]
e.g. upgradeToMaglev.sh 22130</pre><p>If you can clear that up, I'll fix the post.</p><p>After the install and running the rake task, I seem to have some MagLev stuff running. maglev stop only stops one portion of that. maglev start complains it requires Ruby 1.8.6p287. I can't figure out how to really get anywhere beyond that, but I haven't had time to go through the mailing list to figure it out yet.. got a baby to look after :-)</p><p>If you can provide links or a basic step 1, step 2, step 3 for getting to an irb prompt, I'll get it up here and I'm sure readers would love it :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-11-21T03:58:00+00:00">November 21, 2009 at 3:58 am</time></p>
      <p>I've got installMaglev.sh working by putting version number 22578 on the end. The installer script doesn't make it clear that's what's necessary (and it's only a guess on my part based on a post earlier in the day that mentions that version #). I've updated the post anyway to cover this, as well as removing the part about Ruby 1.8.6p287.</p><p>I'm going to see if this other install does better in terms of getting to irb :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-11-21T04:00:00+00:00">November 21, 2009 at 4:00 am</time></p>
      <p>Hurrah! Installing 22578 from the installMaglev.sh script has been a lot more successful. <code>maglev start</code> did its work (though had one minor error):</p><pre>startnetldi[Info]: Starting GemStone network server "gs64ldi".
startnetldi[Error]:  could not start server
startstone[Info]: Starting Stone repository monitor "maglev".
startstone[Info]: GemStone server 'maglev' has been started.</pre><p>But after that, <code>maglev-irb</code> gets to an irb prompt :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-11-21T04:03:00+00:00">November 21, 2009 at 4:03 am</time></p>
      <p>Post updated with info on how to get to irb. Works for me now.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Monty Williams</strong> &middot; <time datetime="2009-11-21T04:17:00+00:00">November 21, 2009 at 4:17 am</time></p>
      <p>No problem. I shoulda mentioned the current version number.</p><p>There are some docs in the html directory or at<br>
<a href="http://maglev.gemstone.com/html/" rel="nofollow">http://maglev.gemstone.com/html/</a></p><p>Here's the suggested install steps for the non-github version.</p><p>mkdir MagLev<br>
cd MagLev</p><p>./installMaglev.sh 22578 # or later version number</p><p>cd $MAGLEV_HOME<br>
rake maglev:start<br>
# you can also use "maglev start", which doesn't use the rakefile<br>
# and thus can be run from anywhere</p><p># To get an IRB prompt<br>
maglev-irb</p><p># to run a ruby program<br>
maglev-ruby fib.rb # assuming you have a fib.rb of course</p><p># to shut down the server<br>
rake maglev:stop<br>
# you can also use "maglev stop"</p><p># If you see a tweet about a new version, you can use<br>
./upgradeMaglev.sh<br>
# instead of installMaglev.sh.</p><p>Here are a couple of other simple nuggets to try while in $MAGLEV_HOME:<br>
spec/mspec/bin/mspec spec/rubyspec/language/and_spec.rb<br>
rake bench:file FILE=benchmark/benchmarks/micro-benchmarks/bm_app_fib.rb</p><p>For more complex examples check the docs and READMEs</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-11-21T04:20:00+00:00">November 21, 2009 at 4:20 am</time></p>
      <p>Awesome, the bit getting to irb matches up with what I've discovered - cool! Thanks for providing the extra info.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>grantmichaels</strong> &middot; <time datetime="2009-11-21T04:27:00+00:00">November 21, 2009 at 4:27 am</time></p>
      <p>monty -</p><p>it's really exciting to see this out! i recall like it was yesterday when you first emailed me to "watch this space" ... it's a little bit insane to think that it's got to be fully a year and a half ago, or more ... oh, it's still gorgeous in florida =)</p><p>congrats,<br>
grantmichaels</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-11-21T04:31:00+00:00">November 21, 2009 at 4:31 am</time></p>
      <p>Perhaps I'm being dumb but I rigged up the same "hat" thing that Avi did but both of my IRB sessions have totally different $hat contents. I'm guessing there's no syncing happening, though am not sure how to resolve that. I'll go check out those docs you mentioned ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-11-21T04:38:00+00:00">November 21, 2009 at 4:38 am</time></p>
      <p>Seems some things have changed. Noted in the docs: </p><pre>1. Unmodified MRI code, when run on MagLev, runs just like in MRI.
2. Explicit action is necessary to take advantage of MagLev persistence</pre><p>So if anyone's trying to follow along with that video, don't. Check out the documentation and look at the examples :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-11-21T04:46:00+00:00">November 21, 2009 at 4:46 am</time></p>
      <p>Specifically <a href="http://maglev.gemstone.com/html/files/docs/persistence-api.html" rel="nofollow">this page on persistence</a> will get you up to speed with having two IRBs and moving objects around. You have to make sure the class is persisted, but also do commit_transaction in each place to see the updates..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-11-21T04:49:00+00:00">November 21, 2009 at 4:49 am</time></p>
      <p>FWIW, some very patchy benchmarks using the "fannkuchen" benchmark I'm keen on lately:</p><p>1.8.7 - 6.276s<br>
1.9.1 - 3.539s<br>
MagLev Alpha - 2.975s<br>
MacRuby 0.5b2 - 4.649s<br>
MacRuby 0.5b2 (compiled) - 2.901s<br>
JRuby 1.4.0 (basic) - 5.579s</p><p>Always remember to take benchmarks with a pinch of salt. I only ran these for my own curiosity.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Monty Williams</strong> &middot; <time datetime="2009-11-21T05:53:00+00:00">November 21, 2009 at 5:53 am</time></p>
      <p>The netldi isn't needed except for remote sessions. There are sometimes issues starting it if you're not a static network, or are on VPN, or change networks :-(</p><p>You're right -- the persistence API has evolved since the Avi hat trick movie. There is a version of the hat trick in examples/hat_trick,  and more complex persistence examples in examples/mdb &amp;  examples/persistence/kdtree</p><p>You can run most benchmarks in the RBS suite using rake. See "rake -T bench" or the docs.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sho</strong> &middot; <time datetime="2009-11-21T06:14:00+00:00">November 21, 2009 at 6:14 am</time></p>
      <p>I also ran some initial benchmarks using Sinatra/webrick (no other web servers supported that I know of).</p><p>Ruby 1.8.7: Requests per second: 131.38<br>
Ruby 1.9.1: Requests per second: 144.77<br>
Maglev: Requests per second: 97.78 </p><p>I basically think that any benchmarks that are not using actual real world applications that people are actually using are bunk.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-11-21T15:15:00+00:00">November 21, 2009 at 3:15 pm</time></p>
      <p>Sho: Not always. I think they can be useful to get a general impression, though the accuracy is poor. It's useful to know, at least, that Maglev isn't 50 times slower than MRI or whatever though, and even basic benchmarks can give us an indication of very general levels of performance.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Wayne E. Seguin</strong> &middot; <time datetime="2009-11-21T20:23:00+00:00">November 21, 2009 at 8:23 pm</time></p>
      <p>Monty,</p><p>Several users of my rvm tool (<a href="http://rvm.beginrescueend.com/" rel="nofollow">http://rvm.beginrescueend.com/</a>) have requested that MagLev be added to it. Can you join #rvm on irc.freenode.net sometime and chat with me about it? (<a href="http://webchat.freenode.net/?channels=rvm" rel="nofollow">http://webchat.freenode.net/?channels=rvm</a>)</p><p>Another user is concerned that it would conflict with MagLev's license. So I at least have a few questions pertaining to that aspect.</p><p>Thank you very much!</p><p>  ~Wayne</p>
    </li>
      <li>
      <p class="comment-meta"><strong>TheRealQuestion</strong> &middot; <time datetime="2009-11-23T15:54:00+00:00">November 23, 2009 at 3:54 pm</time></p>
      <p>The real question is how expensive MagLev will be. From what I understand, MagLev is free but the runtime required to run it (GemStone) is not. That may be a nonstarter for most folks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Monty Williams</strong> &middot; <time datetime="2009-11-24T07:51:00+00:00">November 24, 2009 at 7:51 am</time></p>
      <p>We have a number of people running commercial sites using Seaside (<a href="http://seaside.gemstone.com/" rel="nofollow">http://seaside.gemstone.com/</a>) on a free version of GemStone. We haven't settled on the best strategy for MagLev, but I expect it'll be similar <a href="http://seaside.gemstone.com/" rel="nofollow">http://seaside.gemstone.com/</a></p><p>Other possibilites include paying for service &amp; support, hosting, etc. But there will be some way for you to use it at no charge.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Monty Williams</strong> &middot; <time datetime="2009-11-24T07:54:00+00:00">November 24, 2009 at 7:54 am</time></p>
      <p>Oops. I pasted the wrong URL. The link to the GemStone Seaside pricing model should have been <a href="http://bit.ly/5qxOYb" rel="nofollow">http://bit.ly/5qxOYb</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
