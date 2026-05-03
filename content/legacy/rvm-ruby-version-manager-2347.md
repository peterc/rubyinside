---
title: 'Ruby Version Manager: Easily Use Multiple Ruby Versions At Once'
date: '2009-08-26'
author: Peter Cooper
author_slug: admin
post_id: 2347
slug: rvm-ruby-version-manager-2347
url: "/rvm-ruby-version-manager-2347.html"
categories:
- cool
- ruby-tricks
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2009/08/multiple-rubys.png" width="100" height="100" alt="multiple-rubys.png" style="float:left; margin-right:12px; margin-bottom:12px;"><strong><a href="http://rvm.beginrescueend.com/">Ruby Version Manager</a> <sup><a href="http://github.com/wayneeseguin/rvm/tree/master">GitHub repo</a></sup> (a.k.a. <span class="caps">RVM</span>) makes it <i>ridiculously easy</i> to install and switch between multiple Ruby versions on OS X and Linux.</strong> Over the last 24 hours, I've been playing with <span class="caps">RVM</span> and talking to creator Wayne E. Seguin and have been blown away with how cool (and simple) it is - you will definitely want to check this one out.</p>
<p><span class="caps">RVM</span>'s most compelling feature is that it caters for six different distributions out of the box (MRI 1.8.6, <span class="caps">MRI</span> 1.8.7, 1.9.1, 1.9.2, Ruby Enterprise Edition 1.8.6, JRuby 1.3.1) and it'll install them the first time you need to use them. <span class="caps">RVM</span> doesn't mess up your current Ruby install - the <span class="caps">RVM</span> installed implementations are only activated manually by you and you can switch back to the "default" with one line.</p>
<p>It's possible to <a href="http://rvm.beginrescueend.com/patchlevels/">install different patch levels</a> if you like too and Wayne has put together a list of <a href="http://rvm.beginrescueend.com/examples/">examples</a> to show you the various things RVM can do from the command line (including gem management).</p>
<h3>Using Ruby Version Manager</h3>
<p>I find shell sessions demonstrate how things work better than narrated instructions, so.. enjoy:</p>
<p><b>Installation</b></p>
<pre>
# gem install rvm
# rvm-install
 [Follow the prompts.. you can let it edit your ~/.profile or you can do it manually]
</pre>
<p><strong>Using a different Ruby</strong></p>
<pre>
# rvm use 1.9.2

  &lt;i&gt; Installing Ruby from source to: /Users/peter/.rvm/ruby-1.9.2-preview1
  &lt;i&gt;   Extracting ruby-1.9.2-preview1...
  &lt;i&gt;   Configuring ruby-1.9.2-preview1 using '--enable-shared', this may take a while depending on your cpu(s)...
  &lt;i&gt;   Compiling ruby-1.9.2-preview1, this may take a while, depending on your cpu(s)...
  &lt;i&gt;   Installing ruby-1.9.2-preview1
  &lt;i&gt;   Installing rubygems dedicated to ruby-1.9.2-preview1...
  &lt;i&gt; Installation of ruby-1.9.2-preview1 complete.
  &lt;i&gt; Installing rake

# ruby -v
  ruby 1.9.2dev (2009-07-18 trunk 24186) [i386-darwin9.8.0]

# gem list

  *** LOCAL GEMS ***

  hoe (1.11.0)
  libxml-ruby (1.1.2)
  minitest (1.4.2)
  rake (0.8.4)
  rdoc (2.2.2)
  rubyforge (1.0.3)
</pre>
<p>Note that instead of 1.9.2, you could use “ree”, “1.9.1”, “jruby” and more..</p>
<p><strong>Returning to your default Ruby</strong></p>
<pre>
# rvm use default

  &lt;i&gt; Switching to default   ...

# ruby -v
  ruby 1.8.6 (2008-08-11 patchlevel 287) [universal-darwin9.0]
</pre>
<p><strike>RVM is still in its early days so don't try this on your production boxes just yet - unless you're brave!</strike> <strong><em>(Note: Two months have passed since RVM's initial release and it is now considered production ready.)</em></strong> You can catch up with the creator, Wayne Seguin, on irc.freenode.net in #rvm if you'd like to discuss the project further or, perhaps contribution installation scripts of your own to be added to the project.</p>
<p><em>A massive thanks to <a href="http://www.jamievandyke.com/">Jamie Van Dyke</a> for giving me the lead on this useful tool.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Christian</strong> &middot; <time datetime="2009-08-26T19:31:00+00:00">August 26, 2009 at 7:31 pm</time></p>
      <p>Looks very promising! Unfortunately `rvm use 1.9.2` (and other versions) doesn't do anything: no output, no visible consequences. Same for `rvm usage`. I'm on Ubuntu 9.04.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Justin Blake</strong> &middot; <time datetime="2009-08-26T19:50:00+00:00">August 26, 2009 at 7:50 pm</time></p>
      <p>This is handy dandy. I finally have a super easy way to play with 1.9</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-08-26T19:54:00+00:00">August 26, 2009 at 7:54 pm</time></p>
      <p>Christian: I've been hanging out in irc.freenode.net #rvm for a while and a few little bugs here and there have come out of the woodwork but Wayne is working on them really quick. If you're at all able to drop in, we/he might be able to help. </p><p>Also try using --debug as a switch at the end to see what commands are being run. It might give a clue. Feel free to post stuff here.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-08-26T19:58:00+00:00">August 26, 2009 at 7:58 pm</time></p>
      <p>"wayneeseguin: holy crapintots.... 12 different people messaging me"</p><p>Haha.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stephan</strong> &middot; <time datetime="2009-08-26T20:11:00+00:00">August 26, 2009 at 8:11 pm</time></p>
      <p>Nifty!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Danny Tatom</strong> &middot; <time datetime="2009-08-26T20:35:00+00:00">August 26, 2009 at 8:35 pm</time></p>
      <p>I was kind of eerie to use these kind of things for a while, as I didn't want my system all cluttered up, but RVM is indeed pretty slick. Much thanks to Wayne for this. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Christian</strong> &middot; <time datetime="2009-08-26T20:40:00+00:00">August 26, 2009 at 8:40 pm</time></p>
      <p>Peter: No matter how I run the command (including with --debug) I get no response and no effects</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jerod Santo</strong> &middot; <time datetime="2009-08-26T21:40:00+00:00">August 26, 2009 at 9:40 pm</time></p>
      <p>This looks really cool, can't wait to give it a try!</p><p>I wonder if Wayne took any inspiration from Rip, as it seems very similar in design</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-08-26T21:42:00+00:00">August 26, 2009 at 9:42 pm</time></p>
      <p>I think I have an Ubuntu 9.04 VM. I'll come on and have a go :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-08-26T22:26:00+00:00">August 26, 2009 at 10:26 pm</time></p>
      <p>Just done some work with Ubuntu. If you're using the Ubuntu packaged version of RubyGems, RVM does not work. BUT.. the Ubuntu packaged version of RubyGems is commonly acknowledged as a steaming pile of crap. I installed RubyGems manually (on top of packaged Ruby) and RVM then works great.</p><p>If anyone wants instructions on installing RubyGems manually on Ubuntu (they work for 9.04 too), see <a href="how-to-install-a-ruby-18-stack-on-ubuntu-810-from-scratch-1566.html" rel="nofollow">http://www.rubyinside.com/how-to-install-a-ruby-18-stack-on-ubuntu-810-from-scratch-1566.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Wayne E. Seguin</strong> &middot; <time datetime="2009-08-26T22:56:00+00:00">August 26, 2009 at 10:56 pm</time></p>
      <p>Christian,</p><p>Please hop in #rvm on irc.freenode.net so that I can help you work through your issues in real time.</p><p>Jerod,</p><p>No I have not yet used / evaluated rip. I built rvm using my own ideas and then *lots* of feedback from the community.</p><p>  ~Wayne</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-08-26T23:39:00+00:00">August 26, 2009 at 11:39 pm</time></p>
      <p>Had an issue with REE on a stock Ubuntu 9.04. Turns out REE's installer was missing some things it wanted.. I had to install "libreadline5-dev" and "libssl-dev" packages. Now all works.</p><p>The error was:</p><p><tt>Installing ruby-enterprise-1.8.6-20090610, this may take a while, depending on your cpu(s)...<br>
chmod: cannot access `/home/notroot/.rvm/ruby-enterprise-1.8.6-20090610/bin/*': No such file or directory</tt></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-08-26T23:50:00+00:00">August 26, 2009 at 11:50 pm</time></p>
      <p>I identified why you get bizarre formatting in Snow Leopard. I suspect it will be fixed in the next gem release.. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris Herring</strong> &middot; <time datetime="2009-08-27T00:05:00+00:00">August 27, 2009 at 12:05 am</time></p>
      <p>Does changing my ruby with this affect my textmate ruby? Can I switch to 1.9 and test my application against straight from there?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2009-08-27T00:20:00+00:00">August 27, 2009 at 12:20 am</time></p>
      <p>For anyone interested in something similar for Windows, there is Pik:</p><p><a href="http://github.com/vertiginous/pik/tree/master" rel="nofollow">http://github.com/vertiginous/pik/tree/master</a></p><p>The good part is that no compilation is involved.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-08-27T01:55:00+00:00">August 27, 2009 at 1:55 am</time></p>
      <p>Chris: I just spent an hour looking into this, lol. TextMate is a pain in the ass in this regard. Basically it didn't respect the PATH switches RVM does at all and the TM stance seems to be you need to manually set the PATH in the preferences which is lame IMHO.</p><p>The fix to make it all "just work":</p><p>/Applications/TextMate.app/Contents/SharedSupport/Support/lib/tm/process.rb<br>
Line 125 becomes:  exec("bash -lc '" + cmd.compact.join(" ") + "'")</p><p>/Applications/TextMate.app/Contents/SharedSupport/Bundles/Ruby.tmbundle/Support/RubyMate/run_script.rb<br>
Add a line before line 37 with: ENV['TM_RUBY'] = nil if ENV['TM_RUBY'] == '/usr/bin/ruby'</p><p>The latter line is to override a bizarre TextMate default that people were complaining about way back in 2006... :P</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-08-27T01:55:00+00:00">August 27, 2009 at 1:55 am</time></p>
      <p>Yes, I know I should probably do this as a proper patch ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Victor</strong> &middot; <time datetime="2009-08-27T03:58:00+00:00">August 27, 2009 at 3:58 am</time></p>
      <p>When would I need to use such a tool? I never needed to switch between different Ruby versions</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris Herring</strong> &middot; <time datetime="2009-08-27T04:47:00+00:00">August 27, 2009 at 4:47 am</time></p>
      <p>Looks sweet. Something I will have to look into after I install Snow Leopard tomorrow :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Christian</strong> &middot; <time datetime="2009-08-27T05:42:00+00:00">August 27, 2009 at 5:42 am</time></p>
      <p>Wayne, Peter: Thanks for helping out! Unable to get on irc right now.</p><p>I'm off course using a properly installed RubyGems :) I also tried to update from 1.3.1 to 1.3.5 with no luck. Reinstalled rvm just to make sure, but still, no matter what I do, the rvm command has no output. Any other way I can debug this?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alexei</strong> &middot; <time datetime="2009-08-27T05:55:00+00:00">August 27, 2009 at 5:55 am</time></p>
      <p>Man, that is so cool, I have been recently trying to find a way of trying 1.9 and being able to switch back and forth.  More people will give 1.9 a no-pain try and I think the faster we switch to 1.9 the better. Great job!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>type</strong> &middot; <time datetime="2009-08-27T08:16:00+00:00">August 27, 2009 at 8:16 am</time></p>
      <p>@Christian:<br>
me too.<br>
I use Ubutnu8.0.4</p>
    </li>
      <li>
      <p class="comment-meta"><strong>nutjang</strong> &middot; <time datetime="2009-08-27T08:54:00+00:00">August 27, 2009 at 8:54 am</time></p>
      <p>So cool. I 've some problem with ruby version for a long time.  thanks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James Schorr</strong> &middot; <time datetime="2009-08-27T20:59:00+00:00">August 27, 2009 at 8:59 pm</time></p>
      <p>This works wonderfully!  I set up an alias as well in my .bash_profile file, which really helps as I develop a lot of Rails apps:</p><p>alias 19='rvm use ruby -v 1.9.1'<br>
alias 18='rvm use default'</p><p>You can then either type in source .bash_profile or open a new Terminal window.  Then, just type in 18 to use ruby 1.8.x, or 19 to use ruby 1.9.x.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Wayne E. Seguin</strong> &middot; <time datetime="2009-08-27T21:31:00+00:00">August 27, 2009 at 9:31 pm</time></p>
      <p>Christian,</p><p>Please try Release 0.0.24:</p><p>uninstall previous release gem, rm -rf ~/.rvm/ ; rvm-install ; open new terminal and give it a go.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>aunt darlene</strong> &middot; <time datetime="2009-08-28T03:15:00+00:00">August 28, 2009 at 3:15 am</time></p>
      <p>WAY TO GO NEPHEW!!!!!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alif Rachmawadi</strong> &middot; <time datetime="2009-08-28T03:52:00+00:00">August 28, 2009 at 3:52 am</time></p>
      <p>I am trying out rvm today and impress about it. Great concept.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Devin</strong> &middot; <time datetime="2009-08-28T06:30:00+00:00">August 28, 2009 at 6:30 am</time></p>
      <p>I was able to install rvm with minor issues that involved my .profile/.bash_profile/.bashrc on Linux and OSX 10.5 respectively.  If you choose to automatically add the rvm source line to your bash profile in `rvm-install`, it will add it to .bash_profile.  On OSX, .bash_profile trumps your .profile, so remove .bash_profile and add the line .profile instead.  On both Linux &amp;&amp; OSX it is a good idea to add the rvm source line to the end of your profile, after any `export PATH` lines you might have.</p><p>Wayne was an animal in #rvm.  I came in at like 5pm and Wayne was STILL actively coding, fixing, taking suggestions, and helping users get rvm working at 11:00pm.  The guy is an animal!  And, I should add, an incredibly nice guy.</p><p>Thanks so much Wayne.  rvm is a fantastic edition that might actually get developers to start updating their gems to 1.9. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Christian</strong> &middot; <time datetime="2009-08-28T07:43:00+00:00">August 28, 2009 at 7:43 am</time></p>
      <p>Wayne: Still no luck :( I'll my ass on irc this weekend, maybe I can help debug it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Wayne E. Seguin</strong> &middot; <time datetime="2009-08-28T16:58:00+00:00">August 28, 2009 at 4:58 pm</time></p>
      <p>Christian,</p><p>I should be around on and off this weekend. Leave a message and as I have time I'll help out. </p><p>Also, more importantly I am almost done paying my technical debt with early implementation details in rvm and will be releasing 0.0.25 soon. It will be quite solid so I hope it fixes your issues. Please also keep an eye on the faq/notes page: <a href="http://rvm.beginrescueend.com/faq/" rel="nofollow">http://rvm.beginrescueend.com/faq/</a> as perhaps someone will come across your particular issue. </p><p>Thanks!</p><p>  ~Wayne</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Devin</strong> &middot; <time datetime="2009-08-28T19:23:00+00:00">August 28, 2009 at 7:23 pm</time></p>
      <p>Christian, I had the same issue as you on OSX.  After speaking with wayne for a little bit I found that explicitly sourcing the rvm script (source ~/.rvm/bin/rvm) in my .profile fixed the issue completely.  Best of luck,</p><p>$ Devin</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Christian</strong> &middot; <time datetime="2009-08-28T20:14:00+00:00">August 28, 2009 at 8:14 pm</time></p>
      <p>Devin (and Wayne): sourcing the script explicitly solved the problems. Thanks alot, this gem is truly awesome!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Greg</strong> &middot; <time datetime="2009-08-29T02:51:00+00:00">August 29, 2009 at 2:51 am</time></p>
      <p>Nice gem! It'll make life a lot nicer when porting between versions or testing for suspected version incompatibility.</p><p>On OSX 10.5 I ran into a couple problems getting the Postgres drivers installed for ActiveRecord, Datamapper and DBI (ruby-pg, pg, do_postgres) . I finally figured out it was partly due to the voodoo involved in finding pg_config. I set PATH to include /usr/local/pgsql/bin/pg_config, which is where mine hides, and that took care of the problems. </p><p>I'm back to hitting my databases and now testing with 1.9.1 to upgrade some code. Thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joe Lapp</strong> &middot; <time datetime="2009-09-06T04:51:00+00:00">September 6, 2009 at 4:51 am</time></p>
      <p>On OSX 10.5 I get the following error attempting to run rvm-install:</p><p>sh: bash -l -c 'cd /Library/Ruby/Gems/1.8/gems/rvm-0.0.27 &amp;&amp; ./scripts/rvm-install  &amp;&amp; source ~/.rvm/scripts/rvm': No such file or directory</p><p>I have a feeling this is related to Christian's problem, but adding "source ~/.rvm/bin/rvm" to my .profile didn't help.  I have no clue what that does, so I don't know if I understood the suggested solution.</p><p>".../rvm-0.0.27/scripts/rvm-install" does exist, but "~/.rvm" does not.  I ran "sudo gem install rvm" and "sudo rvm-install" (failing with the above error) from my home directory.  Thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joe Lapp</strong> &middot; <time datetime="2009-09-08T04:16:00+00:00">September 8, 2009 at 4:16 am</time></p>
      <p>I couldn't resolve my problem and found a way to build 1.9.1 directly.  Don't think I need 1.8.x for new development.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Wayne E. Seguin</strong> &middot; <time datetime="2009-09-15T18:04:00+00:00">September 15, 2009 at 6:04 pm</time></p>
      <p>Joe,</p><p>Please hop in #rvm on irc and I will help you with any issues.</p><p>I am usually in there 09:00-17:00, 21:00-~00:00 EST</p><p>Thanks,</p><p>  ~Wayne</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
