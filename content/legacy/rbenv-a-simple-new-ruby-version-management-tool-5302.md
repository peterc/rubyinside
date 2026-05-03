---
title: 'rbenv: A Simple, New Ruby Version Management Tool'
date: '2011-08-16'
author: Peter Cooper
author_slug: admin
post_id: 5302
slug: rbenv-a-simple-new-ruby-version-management-tool-5302
url: "/rbenv-a-simple-new-ruby-version-management-tool-5302.html"
categories:
- tools
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2011/08/rbenv.png" alt="" title="rbenv" width="130" height="130" class="alignnone size-full wp-image-5303" style="float: right; margin-left: 18px; margin-bottom: 18px; border: 1px solid #666"><a href="https://github.com/sstephenson/rbenv">rbenv</a> is a new lightweight Ruby version management tool built by <a href="https://twitter.com/sstephenson">Sam Stephenson</a> (of 37signals and Prototype.js fame).</p>
<p>The established leader in the Ruby version management scene is <a href="http://beginrescueend.com/">RVM</a> but rbenv is an interesting alternative if you want or need something significantly lighter with fewer features. Think of it as a bit like Sinatra and Rails. It's not about which is the best, it's about which is better for <em>you</em> and your <em>current requirements</em>.</p>
<p><img src="/assets/2011/08/rbenv2.jpg" alt="" title="rbenv2" width="640" height="288" class="alignnone size-full wp-image-5314"></p>
<h3>What's the deal with rbenv?</h3>
<p>Compared to RVM, rbenv is <em>light</em>. For example, it doesn't include any mechanism to <em>install</em> Ruby implementations like RVM does. Its sole job is to manage multiple Ruby "environments" and it allows you to quickly switch between Ruby implementations either on a local directory or default 'system-wide' basis.</p>
<p>With rbenv, you install Ruby implementations <em>manually</em> or, if you prefer a little help, you can try <a href="https://github.com/sstephenson/ruby-build">ruby-build</a>, another project of Sam's that provides RVM esque <a href="https://github.com/sstephenson/ruby-build/tree/master/share/ruby-build">recipes</a> for installing seven popular Ruby implementation and version combos.</p>
<p>rbenv primarily works by creating 'shim' files in <code>~/.rbenv/shims</code> which call up the correct version of files for each Ruby implementation behind the scenes. This means <code>~/.rbenv/shims</code> will be in your path and there's no threat of incompatibilities between libraries or systems like Bundler and rbenv.</p>
<p>The key thing to be aware of, however, is that if you install a gem that includes 'binaries' (or any generally available command line scripts), you need to run <code>rbenv rehash</code> so that rbenv can create the necessary shim files.</p>
<h3>How to Install rbenv</h3>
<p>Firstly, it's worth noting that by default rbenv is incompatible with RVM because RVM overrides the <code>gem</code> command with a function. This means to get the full rbenv experience you'll need to do a <code>rvm implode</code> to wipe away your RVM installation or, at the least, remove/comment out the RVM loader line in your <code>.bash_profile</code> and/or <code>.bashrc</code>.</p>
<p>The installation instructions for rbenv are likely to change fast due to its youth, so I suggest <a href="https://github.com/sstephenson/rbenv/blob/master/README.md">the README.</a> However, rbenv has just been made into a homebrew package on OS X, so if you're a homebrew user (and if you're not, <a href="http://cooperpress.com/homebrew">check out my screencast</a>), try:</p>
<pre><code>brew update
brew install rbenv
rbenv rehash</code></pre>
<p>And then add this line to your <code>~/.bash_profile</code> or equivalent:</p>
<pre><code>eval "$(rbenv init -)"</code></pre>
<p>When you open a new shell now, you can run commands like <code>rbenv</code> and <code>rbenv version</code> to see what's going on. <code>rbenv versions</code> should return nothing since you won't have any rbenv-enabled Ruby installations yet, so move on to the next step..</p>
<h3>Installing Implementations for rbenv</h3>
<p>If you have <a href="https://github.com/sstephenson/ruby-build">ruby-build</a> installed, getting, say, Ruby 1.9.2-p290 installed is easy:</p>
<pre><code>ruby-build 1.9.2-p290 $HOME/.rbenv/versions/1.9.2-p290</code></pre>
<p>If you prefer to download tarballs and do your own Ruby installs, however, you just need to set the directory prefix at the <code>./configure</code> stage in most cases. For example:</p>
<pre><code>./configure --prefix=$HOME/.rbenv/versions/1.9.2-p290</code></pre>
<p>Once you've installed a new Ruby in this way, you need to run <code>rbenv rehash</code> in order for rbenv to create the 'shim' binaries necessary to make the correction version of Ruby available on the path at all times.</p>
<h3>The RVM Splashback</h3>
<p>In the interests of completeness, it'd be amiss to not mention the minor drama that kicked off on Twitter and Hacker News about rbenv's release.</p>
<p>rbenv <a href="http://news.ycombinator.com/item?id=2874862">made its way on to Hacker News</a> where, surprisingly, many people railed <em>against</em> RVM. This, coupled with a slightly antagonistic tone taken by rbenv's README (which has now been taken away), led RVM's maintainer Wayne E Seguin to vent some pressure on Twitter:</p>
<p><img src="/assets/2011/08/wayne.png" alt="" title="wayne" width="524" height="208" class="alignnone size-full wp-image-5307"></p>
<p>Sam quickly clarified his position:</p>
<p><img src="/assets/2011/08/Screen-shot-2011-08-12-at-16.00.59.png" alt="" title="Screen shot 2011-08-12 at 16.00.59" width="522" height="254" class="alignnone size-full wp-image-5308"></p>
<p>Nonetheless, Wayne took a little time off, and a <a href="http://pledgie.com/campaigns/9822">campaign to encourage donations to Wayne for his work on RVM</a> was kicked off on Twitter (by Ryan Bates, I believe). The campaign went well, taking RVM's donations from $7468 to $11370 (at time of writing), a jump of almost $4000 in a few days.</p>
<p>Part of the complaint made in rbenv's README was about RVM's "obnoxious" redefinition of the "cd" shell builtin. Essentially, RVM would create a new function which called "cd" but also took into account any .rvmrc files present in each directory so that it could change Ruby version automatically. While there was some validity to this concern, Ben Atkin took some time to write <a href="http://batkin.tumblr.com/post/8847990062/on-rvms-cd-script">a blog post correcting some of the misinformation</a> on this point.</p>
<p>In the end, however, all seems to be well, and Wayne is already making regular commits to the RVM project again just days later. Hopefully the outpouring of support from the Ruby community for RVM over the past couple of days has shown Wayne that RVM still has a significant user base, most of who aren't going anywhere new anytime soon. If you want to help out, of course, you can <a href="http://pledgie.com/campaigns/9822">still donate to the RVM Pledgie</a>.</p>
<h3>Conclusion</h3>
<p>If you're happy with RVM, there's not much in rbenv to really leap to. It's just a lighter and more modular way to achieve the <em>basic</em> functionality that RVM provides while missing out on a lot more (although you can use <a href="https://github.com/jamis/rbenv-gemset">rbenv-gemset</a> to get some basic gemset-like features).</p>
<p>If, however, you want something "lighter" than RVM, rbenv is certainly worth a look. Its approach feels cleaner and more transparent at a certain level, and if this is of utmost importance to you, you may prefer it. I suspect for the most part, however, RVM's well-deserved dominance of this area will be maintained.</p>
<p class="s" style="padding: 8px; background-color: #ff9"><em>[ad]</em> <strong><a href="http://engine.adzerk.net/redirect/0/5781/6670/1313/49d7733ba2d9412aa70a9c1663ef5472/19/24/8518/634490319046887003?keywords=">Code School</a></strong> is the interactive online marketplace where you can learn to code directly in the browser and the home of the famous "Rails for Zombies" course (which is free to take!) Other courses include Rails Best Practices, jQuery Air: First Flight, and Functional HTML5 &amp; CSS3.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>kenny</strong> &middot; <time datetime="2011-08-16T02:54:00+00:00">August 16, 2011 at 2:54 am</time></p>
      <p>Fantastic summary Peter.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>AW</strong> &middot; <time datetime="2011-08-16T03:53:00+00:00">August 16, 2011 at 3:53 am</time></p>
      <p>I never understood the reason for "lighter" when discussing tools and frameworks.</p><p>"Lighter" just means that the tool does less work and you do more.</p><p>I dunno. I'm a freelancer, so for me time is literally money, and RVM is a wonderful tool that handles the extremely boring task of getting different, isolated Ruby versions up and running with 0 effort.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Christoph Jasinski</strong> &middot; <time datetime="2011-08-16T09:22:00+00:00">August 16, 2011 at 9:22 am</time></p>
      <p>I'm also very thankfull for RVM. It works so smothly on my machine. But I don't have a problem with several Ruby version management tools being around. But what I definately don't get are the (emotional) "wars" inside the Ruby community. Is that anywhere (like Java or Python) or is it more specific to Ruby? Remember the RSpec drama (and I recently got notice of RubyGems). Please tell me.</p><p>As for now, I do understand people not diving much into the community. What for if drama and wars are almost always the result. Respect people.</p><p>Thanks to every civilized code commiter, regardless of the language!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-08-16T11:04:00+00:00">August 16, 2011 at 11:04 am</time></p>
      <p>Where there are humans, there is drama. The difference is that Rubyists are better at publishing their thoughts and feelings and the news spreads better. It's not that there's any less drama in other fields, it just doesn't spread as quickly.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Timothy Gregory</strong> &middot; <time datetime="2011-08-16T11:37:00+00:00">August 16, 2011 at 11:37 am</time></p>
      <p>Perhaps the next ruby 2.0 could include these ruby version compatibility solvers.<br>
It tends to arise or occurs when a current software such as redmine or other ruby programs, require one to install an updated early ruby 1.8x rather than simply use the current installed latest version. Rails is also divided into version camps.<br>
It seems redundant once there are new versions and known issues for prior versions.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Josh Cheek</strong> &middot; <time datetime="2011-08-16T13:07:00+00:00">August 16, 2011 at 1:07 pm</time></p>
      <p>Thanks for the summary. I'll probably try it out at some point, to see for myself. But, since I use a pretty wide set of RVM's features, it's probably not the right tool for me.</p><p>Regarding the Drama, I think it's a little misplaced. Not everyone is going to like what you do, so not all feedback is going to be positive. Just because some people who exist don't like something doesn't mean it isn't good. Haters gonna hate.</p><p>I also don't understand what people are upset about cd for, it seems pedantic to me. I already had cd overridden with my own function when I first installed RVM, now I just use the hook it provides (doesn't it seem like the builtin cd should offer one?) Anyway, it looks like Wayne's defaulted this behaviour to off (I've already turned it back on) <a href="https://github.com/wayneeseguin/rvm/commit/9a9fef58731e822b03789445a859fcdb69e57fff" rel="nofollow">https://github.com/wayneeseguin/rvm/commit/9a9fef58731e822b03789445a859fcdb69e57fff</a></p><p>In the end, I think it's good that we have multiple solutions as it brings new tools and ideas to the table, and increases the probability of finding a solution that is good for a specific situation.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ric Roberts</strong> &middot; <time datetime="2011-08-16T13:53:00+00:00">August 16, 2011 at 1:53 pm</time></p>
      <p>A good, objective review. Hopefully things will settle down and people will just choose whichever works for them!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hampton Catlin</strong> &middot; <time datetime="2011-08-16T19:07:00+00:00">August 16, 2011 at 7:07 pm</time></p>
      <p>TEAM RVM!</p><p>Seriously, Wayne is a god among men. He is like the Ruby Jesus. He takes all of our shared pain... all those hours of stressing over installing Ruby and getting your environment *just* right... and he has taken the pain and suffering onto himself. Now, we have no pain at all! Its so super-easy!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Murray Bozinsky</strong> &middot; <time datetime="2011-08-16T22:57:00+00:00">August 16, 2011 at 10:57 pm</time></p>
      <p>Thank you very much for writing on this. I am a member of the absolutely hates RVM camp and this lighter version manager looks promising.</p><p>Hopefully it is easier than having to add entries in .bash_profile, but managing Rubies through this file is much more easy and less error-prone then the buggy and convoluted RVM.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Murray Bozinsky</strong> &middot; <time datetime="2011-08-16T23:03:00+00:00">August 16, 2011 at 11:03 pm</time></p>
      <p>Quote: "Lighter" just means that the tool does less work and you do more.</p><p>I have to disagree. Rails is much heavier than it was a few years ago and it now has fewer conventions and more configurations: ie you have to spend more time in the configuration files then you did in Rails 1.</p><p>Whether or not Rails is better for it is debatable, and I bounce between each side depending on whether or not I am wasting time wrestling with the overly complex routes file due to forcing REST into Rails.</p><p>Of course, I have never needed to create a web-based API and think the idea that beautiful URL's are important is a lot of meaningless noise. I don't create web apps that ever want to be indexed by web crawler. So I am definitely in the minority.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ben</strong> &middot; <time datetime="2011-08-18T00:53:00+00:00">August 18, 2011 at 12:53 am</time></p>
      <p>And yet, Sam is still being incredibly antagonistic. To wit, his latest tweet:</p><p>"Seeing reports on Twitter of faster shells for rbenv switchers—a consequence of not loading 8000+ LOC every time you open a new terminal."</p><p>The subtext I can't help but hear in this: "RVM loads 8000+ LOC of code, which is an obviously bad design decision."</p><p>Instead of extending any good faith that maybe those decisions were made for good reasons -- or, failing that, at least recognizing that Wayne did his damnedest to solve this problem the best he could figure how, and thus word his critique a little more gently, he just goes straight for the attack. I feel like I've seen too much of this behavior out of him to conclude anything less than  that he's just an asshole.</p><p>You don't see the Sinatra website talking tons of shit about how Rails is slow and bloated, it just speaks to the advantages of Sinatra. Maybe at some level saying that Sinatra takes "minimal effort" implies that there exists something that requires more effort, but it's a much softer slight.</p><p>The only parallel I can think of is Ack, whose website (betterthangrep.com) takes an openly hostile stance and lists testimonials and reasons why grep sucks, but I guess since grep has been around forever it feels a little more appropriate.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Biff</strong> &middot; <time datetime="2011-08-18T08:22:00+00:00">August 18, 2011 at 8:22 am</time></p>
      <p>"at least recognizing that Wayne did his damnedest to solve this problem the best he could figure how, and thus word his critique a little more gently, he just goes straight for the attack."</p><p>I see this sort of thing a lot. "Yeah, it is crap, but I worked hard on it! Give me a cookie"</p><p>Who cares? The fact(if it is a fact) that "Wayne did his damnedest to solve this problem the best he could figure how" and RVM is a bloated buggy mess, means that perhaps he shouldn't have released it? </p><p>At the end of the day, if you produce crap it doesn't matter if you worked hard on it, or was a slacker. Crap is crap.</p><p>Writing 8000 lines of code in a terrible mess of shell scripts, some of which override system commands is never a good idea and there was no good reason for it.</p><p>I truly and sincerely hope that if this new version manager ends up working well it takes the place of the De-facto version manager for Ruby. Of course it would be better if multiple versions of Ruby didn't conflict with each other. Java solved the problem, why can't Ruby.</p><p>Nothing is more frustrating and downright idiotic when you have 1 Ruby version and 1 JRuby version and typing irb gives you jirb, and before this new program your options were to screw around in .bash or use RVM. arrrrrrggggghhhhhh welcome to amateur hour</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Billy Gray</strong> &middot; <time datetime="2011-08-18T13:38:00+00:00">August 18, 2011 at 1:38 pm</time></p>
      <p>Nice write-up, Peter. Totally tangential, but what's with the reason for the blur on the @ usernames Wayne referenced? It only deepens a mystery for me. One of those fellows had a pretty funny reply (something along the lines of "what'd i do now?"), and the reference to both of them by Wayne in his tweet puzzled me, I was hoping I'd find out what he meant at some point.</p><p>Also, what Hampton said!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Iain</strong> &middot; <time datetime="2011-08-18T13:45:00+00:00">August 18, 2011 at 1:45 pm</time></p>
      <p>Thank you for summarising the drama; I've been hugely confused all week.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hussein Morsy</strong> &middot; <time datetime="2011-08-18T16:19:00+00:00">August 18, 2011 at 4:19 pm</time></p>
      <p>For me it is very important to understand the tools I am using.<br>
I never deeply understood how rvm is working under the hood.<br>
But rbenv is so easy to fully understand how it works. </p><p>I just deleted my 7G .rvm directory (with rvm implode) and installed rbenv. For every single project I created a gemset. But with bundler it is not necessary any more. For my old Ruby 2.3 projects I use also Bundler (see <a href="http://gembundler.com/rails23.html" rel="nofollow">http://gembundler.com/rails23.html</a>)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>jim</strong> &middot; <time datetime="2011-08-18T18:26:00+00:00">August 18, 2011 at 6:26 pm</time></p>
      <p>Seriously, we need to have an online version of that boxing game where when you win the other guy's head pops up.  Maybe we could host it here at rubyinside.com.  Whenever there is a war in the Ruby/Rails community, we can set up a "fight", and the people can log in at a certain time and have the video game boxing match, and others can watch.  We could have a picture of Peter Cooper as the referee off to the side.  The guy who loses can have his head fall off, explode, or his whole body fall to the ground.  It could be great fun!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris Your</strong> &middot; <time datetime="2011-08-18T18:29:00+00:00">August 18, 2011 at 6:29 pm</time></p>
      <p>I agree with Hampton, 100%.</p><p>Managing different Rubies and gemsets for multiple projects with RVM is dead simple. Not to mention using super-convenient .rvmrc files. That's why Wayne's dedication to his project is so appreciated. His work allows every developer to install multiple versions of Ruby and install and manage gems with ease and confidence.</p><p>I haven't tried rbenv yet. Maybe later.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>PM</strong> &middot; <time datetime="2011-09-19T16:33:00+00:00">September 19, 2011 at 4:33 pm</time></p>
      <p>I didn't try rbenv yet but if it can't install (and remove) a ruby it's not for me. It's too much trouble doing that manually, it's like downloading and compiling gems instead of using gem install, or packages instead of apt-get.</p><p>I don't mind if rvm rewrites cd.</p><p>Anyway, long live rbenv and long live rvm so that we can work with what we like most.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>bronson</strong> &middot; <time datetime="2011-10-09T15:51:00+00:00">October 9, 2011 at 3:51 pm</time></p>
      <p>PM, it supports building Rubies via plugin: <a href="https://github.com/sstephenson/ruby-build" rel="nofollow">https://github.com/sstephenson/ruby-build</a>  It works just like you'd expect:</p><p>rbenv install 1.9.2-p290</p><p>I really like that rbenv is modular.  Definitely try it out!  It's a great little utility.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
