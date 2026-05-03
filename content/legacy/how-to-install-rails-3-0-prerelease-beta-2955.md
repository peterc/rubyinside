---
title: Rails 3.0 Beta/Prerelease Available Now and How To Install It
date: '2010-02-05'
author: Peter Cooper
author_slug: admin
post_id: 2955
slug: how-to-install-rails-3-0-prerelease-beta-2955
url: "/how-to-install-rails-3-0-prerelease-beta-2955.html"
categories:
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2010/02/rails-3-logo.png" width="125" height="137" alt="rails-3-logo.png" style="float:left; margin-right:12px; margin-bottom:12px;">Today, Rails core member Jeremy Kemper dropped the words that lots of ardent Rails developers have been waiting for: "Rails 3 beta is LIVE." It's true! Rails 3.0's first approved beta/pre-release version is <a href="http://weblog.rubyonrails.org/2010/2/5/rails-3-0-beta-release">now live</a> and ready for you to install.</p>
<p><img src="/assets/2010/02/rails3betalive.png" width="360" height="152" alt="rails3betalive.png" style="border:1px #000000 solid;"></p>
<p>Unfortunately, the installation process isn't as easy as Jeremy explains. RubyGems doesn't support the installation of prerequisites on pre-release gems, so you need to install them all manually. I think I have some instructions to cover that (works on 1.8.7 and 1.9.1):</p>
<p>
</p>
<pre><code>gem install i18n tzinfo builder memcache-client rack rack-test rack-mount erubis mail text-format thor bundler
# remember to prefix with "sudo" if your environment needs that</code></pre>

<p>And then, finally:</p>
<p>
</p>
<pre><code>gem install rails --pre</code></pre>

<p>Worth reading next is <a href="http://www.engineyard.com/blog/2010/rails-3-beta-is-out-a-retrospective/">a retrospective and summary of the work done for Rails 3.0</a> so far by Yehuda Katz.</p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><em>[news]</em> @peterc here! My next "big thing" is a new site called <a href="http://coder.io/">coder.io</a>. If you're into technologies like Ruby, Git, Python, the iPhone, MySQL, JavaScript, Clojure, etc, you might want to get on the coming soon list for some eventual freebies/bonuses along with exclusive early access. Thanks!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Caius Durling</strong> &middot; <time datetime="2010-02-05T03:35:00+00:00">February 5, 2010 at 3:35 am</time></p>
      <p>Cheers for that.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-02-05T03:42:00+00:00">February 5, 2010 at 3:42 am</time></p>
      <p>Just had to update it a little.. added i18n. Now tested on 1.8.7 and 1.9.1.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-02-05T03:45:00+00:00">February 5, 2010 at 3:45 am</time></p>
      <p>Before anyone bitches, I beat DHH's post on the official blog by 4 minutes here, so I didn't rip it off ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Karmen Blake</strong> &middot; <time datetime="2010-02-05T03:45:00+00:00">February 5, 2010 at 3:45 am</time></p>
      <p>I had to install i18n gem too, just in case anyone else needed to know.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-02-05T03:46:00+00:00">February 5, 2010 at 3:46 am</time></p>
      <p>Amusingly, the official blog post had the same missing i18n entry that I missed and similarly fixed it *g* Ha!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sam</strong> &middot; <time datetime="2010-02-05T12:17:00+00:00">February 5, 2010 at 12:17 pm</time></p>
      <p>I'm running rails 2.3.5 with no problems but everytime I try to upgrade to the 3 beta and  check the rails version I get this error :-</p><p>/usr/local/lib/ruby/site_ruby/1.9.1/rubygems.rb:384:in `bin_path': can't find executable rails for rails-3.0.0.beta (Gem::Exception)<br>
	from :345:in `method_missing'<br>
	from /usr/local/bin/rails:19:in `'</p><p>Works fine if I revert back to version 2.3.5. Anyone know whats happening?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joc</strong> &middot; <time datetime="2010-02-05T13:54:00+00:00">February 5, 2010 at 1:54 pm</time></p>
      <p>Hmm, anyone else having problems installing text-format on Leopard?</p><p>I'm getting</p><p>/Users/joc/.rvm/ruby-1.8.7-p248/lib/ruby/site_ruby/1.8/rubygems/spec_fetcher.rb:245: [BUG] Segmentation fault<br>
ruby 1.8.7 (2009-12-24 patchlevel 248) [i686-darwin9.8.0]</p><p>Abort trap</p><p>Any ideas?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sam</strong> &middot; <time datetime="2010-02-05T14:23:00+00:00">February 5, 2010 at 2:23 pm</time></p>
      <p>Ok, worked it out, had a problem with rubygems. Now to upgrade my latest project so I can start using it in all its goodness :D Keep up the great blog.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>grigio</strong> &middot; <time datetime="2010-02-05T15:09:00+00:00">February 5, 2010 at 3:09 pm</time></p>
      <p>I installed it but it is unusable :(</p><p><a href="http://gist.github.com/295790" rel="nofollow">http://gist.github.com/295790</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paul</strong> &middot; <time datetime="2010-02-05T15:17:00+00:00">February 5, 2010 at 3:17 pm</time></p>
      <p>If you're using a fresh 1.9.1 installation, RubyGems and Rake are included, but are not the supported version.  Do the following:</p><p>sudo gem update --system<br>
sudo gem install rake</p><p>Then the rest of the instructions work.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joc</strong> &middot; <time datetime="2010-02-05T19:25:00+00:00">February 5, 2010 at 7:25 pm</time></p>
      <p>In case anyone else gets the same problem I had above.</p><p>gem cleanup</p><p>seemed to clear everything out and i was then able to install text-format and then 3 beta</p>
    </li>
      <li>
      <p class="comment-meta"><strong>colin</strong> &middot; <time datetime="2010-02-06T01:24:00+00:00">February 6, 2010 at 1:24 am</time></p>
      <p>@Sam, could you please fill us in on what you did with rubygems to skirt the "can't find executable" issue?</p><p>Much appreciated.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ed Brannin</strong> &middot; <time datetime="2010-02-06T03:15:00+00:00">February 6, 2010 at 3:15 am</time></p>
      <p>I'm also having the same problem as @Sam and @colin.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Leigh</strong> &middot; <time datetime="2010-02-06T03:19:00+00:00">February 6, 2010 at 3:19 am</time></p>
      <p>@Sam, yes please sam as per Colin request, I'm having the same problem.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-02-06T04:39:00+00:00">February 6, 2010 at 4:39 am</time></p>
      <p>Y'all running at least Ruby 1.8.7 and the latest RubyGems?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris Moos</strong> &middot; <time datetime="2010-02-06T05:29:00+00:00">February 6, 2010 at 5:29 am</time></p>
      <p>@Leigh, @colin: I had the same bin_path problem, I deleted my ~/.gem folder, and then it was fine after. Go figure.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Justin Zollars</strong> &middot; <time datetime="2010-02-06T06:32:00+00:00">February 6, 2010 at 6:32 am</time></p>
      <p>@Sam, how did you fix that bug? I have the same problem on my system.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ed Brannin</strong> &middot; <time datetime="2010-02-06T12:35:00+00:00">February 6, 2010 at 12:35 pm</time></p>
      <p>@Peter Cooper: Yes, "gem update --system" didn't do anything.</p><p>My Ruby version: ruby 1.8.7 (2008-06-20 patchlevel 22) [i686-darwin9.3.0]</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ed Brannin</strong> &middot; <time datetime="2010-02-06T16:05:00+00:00">February 6, 2010 at 4:05 pm</time></p>
      <p>I upgraded Ruby to the latest version in Macports (and for the first time since upgrading to Snow Leopard), and now rails 3.0.0.beta works:</p><p>ruby 1.8.7 (2010-01-10 patchlevel 249) [i686-darwin10]</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paul Siegmann</strong> &middot; <time datetime="2010-02-06T16:23:00+00:00">February 6, 2010 at 4:23 pm</time></p>
      <p>@Leigh, @Colin Finally doing this:<br>
gem install railties --pre<br>
Fixed it for me.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ken foust</strong> &middot; <time datetime="2010-02-06T18:54:00+00:00">February 6, 2010 at 6:54 pm</time></p>
      <p>help whats up with this</p><p>rake aborted!<br>
uninitialized constant MysqlCompat::MysqlRes</p><p>thanks</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Adam Fortuna</strong> &middot; <time datetime="2010-02-06T19:59:00+00:00">February 6, 2010 at 7:59 pm</time></p>
      <p>Thanks Paul, I was having the same problem and "gem install railties --pre" solved it for me.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ken foust</strong> &middot; <time datetime="2010-02-06T20:51:00+00:00">February 6, 2010 at 8:51 pm</time></p>
      <p>also when I look in the rails-3.0.0.beta directory the only thing in there is .require_paths</p><p>Have I screwed up somewhere?</p><p>I have also updated ruby 1.9.1 and that is fine<br>
the rest of the beta gems are there<br>
using snow leopard and installing in /usr/local</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Vincent</strong> &middot; <time datetime="2010-02-07T13:09:00+00:00">February 7, 2010 at 1:09 pm</time></p>
      <p>Here is what I did:</p><p>Installed bundler on system ruby (1.8.7)</p><p>Did a clean rvm install, installed ruby 1.9.1, clean rails install using these 2 lines (also had to do gem install sqlite3-ruby because bundle pack wouldn't work otherwise)</p><p>Every time I do rails server or rails script it spews a whole lot of gemspec info. Made a gist of it. <a href="http://gist.github.com/297415" rel="nofollow">http://gist.github.com/297415</a></p><p>The funny thing is that everything works ... it just doesn't work very nicely.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Vincent</strong> &middot; <time datetime="2010-02-07T18:38:00+00:00">February 7, 2010 at 6:38 pm</time></p>
      <p>nevermind ... this is an issue with ruby 1.9.1 &amp; rubygems. thx for the writeup.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>andres</strong> &middot; <time datetime="2010-02-08T17:30:00+00:00">February 8, 2010 at 5:30 pm</time></p>
      <p>for some reason, after fiddling with bundler my rails-3.0.0.beta directory was empty, and had to re-install to populate it,</p><p>For generating the doc API (rake doc:rails),<br>
I had to symlink vendor/gems/gems to /usr/lib/ruby/gems/1.8/gems/<br>
(yep, I couldn't figure it out with bundler)<br>
so rake doesn't choke,<br>
also touch railties-3.0.0.beta/MIT-LICENSE<br>
because it's not there,</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Craig</strong> &middot; <time datetime="2010-02-10T16:42:00+00:00">February 10, 2010 at 4:42 pm</time></p>
      <p>I needed to install bundler </p><p>The latest rack-mount (0.5.0) is too new, it requires 0.4.x so I specified 0.4.0. ( sudo gem install rack-mount --version=0.4.0 )</p><p>I didn't need to install railties though to make the install work.</p><p>The error I got on my first attempt was:</p><p>ERROR:  Error installing rails:<br>
	actionpack requires rack-mount (~&gt; 0.4.0, runtime)</p><p>I'd never seen the '~&gt;' syntax before, despite using ruby for over 3 years --  I found it meant that exact branch (0.4.x), and not a higher one (which I had just installed [0.5.0]).</p><p>I found that at:<br>
<a href="https://rails.lighthouseapp.com/projects/8994/tickets/3918" rel="nofollow">https://rails.lighthouseapp.com/projects/8994/tickets/3918</a></p><p>Cheers!<br>
-- Craig</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ken foust</strong> &middot; <time datetime="2010-02-10T23:01:00+00:00">February 10, 2010 at 11:01 pm</time></p>
      <p>andres I am having the same problem but when I reinstalled I still have a empty directory  but the strange thing is that I am doing a tutorial with rails 3 and it works???????</p><p>on mac osx snow leopard<br>
any idea how to install properly??</p><p>gracias</p>
    </li>
      <li>
      <p class="comment-meta"><strong>pjammer</strong> &middot; <time datetime="2010-02-11T19:56:00+00:00">February 11, 2010 at 7:56 pm</time></p>
      <p>Paul Siegmann, comment #20 fixed the same problem SAM didn't really elude to... leave a blog next time dude.</p><p>I also, updated my gems as per Peter's suggestion, then when that didn't work i deleted .gems as Chris Moos said in #16, but that didn't work, so i tried SAM's suggestion.</p><p>Enjoy.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>paschelino</strong> &middot; <time datetime="2010-02-19T12:39:00+00:00">February 19, 2010 at 12:39 pm</time></p>
      <p>-&gt; the missing binary file issue</p><p>the manual installation of railties beta fixed it for me too.<br>
(ubuntu 9.04)</p><p>command:<br>
sudo gem install railties --pre</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-02-28T04:52:00+00:00">February 28, 2010 at 4:52 am</time></p>
      <p>rwerewrwe</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
