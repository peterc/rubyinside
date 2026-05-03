---
title: How to Play with Rails 3.1, CoffeeScript and All That Jazz Right Now
date: '2011-04-14'
author: Peter Cooper
author_slug: admin
post_id: 4695
slug: how-to-rails-3-1-coffeescript-howto-4695
url: "/how-to-rails-3-1-coffeescript-howto-4695.html"
categories:
- ruby-on-rails
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2011/04/rails-3-1.gif" alt="" title="rails-3-1" width="110" height="122" class="alignnone size-full wp-image-4696" style="float: left; margin-right: 18px; border: 1px solid #333"></p>
<p>Maybe I'm weird (actually, there's no maybe about it) but when I first heard <a href="rails-3-1-adopts-coffeescript-jquery-sass-and-controversy-4669.html">about Rails 3.1 getting CoffeeScript and Sass out of the box</a>, I wanted to see how it worked and how smooth the process would be. So like quite a few people on IRC I've seen, I installed edge Rails (currently 3.1.0-beta) and got playing. <strong>(Yes, it's <em>PRE-RELEASE</em>. Expect mischief!)</strong></p>
<p>I hit a couple of stumbling blocks on my way so I thought I'd explain <strong>what I found to be the smoothest way through to getting to play with the new Rails 3.1 goodies.</strong> I'll only take you as far as making some changes and seeing the results, though - you're on your own from there!</p>
<p><em>Note: This post was written in April 2011. If you are reading much later on, much of this post may no longer be relevant and you should refer to guides about installing the eventual full release of Rails 3.1 instead. If I remember, I'll update this to reflect that ;-)</em></p>
<h3>Installing Edge Rails (Rails 3.1 Beta)</h3>
<p>Being a conservative kinda dude with the versions of things I run, I hadn't run the edge Rails gauntlet for some time. I naively tried <code>rails new myapp --edge</code> and while it <em>appeared</em> to work and installed edge Rails, there be dragons (that even <code>rake rails:update</code> couldn't slay). So do it this way instead:</p>
<ul>
<li>Head to whatever directory you use as the base for all of your git cloning. I'll assume <code>~/code</code> from here on out.</li>
<li>Clone the Rails repository from GitHub with:
<pre>git clone git://github.com/rails/rails.git</pre>
</li>
</ul>
<h3>Creating a Bare Rails 3.1 App</h3>
<p>Cloning edge Rails was the easy bit. Now let's create an app with the bad boy:</p>
<ul>
<li>Head to whatever directory you want to use as the base for your Rails projects. I'll assume you remain in <code>~/code</code>.</li>
<li>Create a new Rails app with:
<pre>~/code/rails/bin/rails new yourapp --edge</pre>
<p>It's important to note that we're explicitly calling the <code>rails</code> script that's in the edge Rails git repository we just cloned. And, of course, you can call the app whatever you like but I find <code>yourapp</code> to be both unique and catchy.</p>
</li>
<li>Enjoy watching your Rails app being created and waiting for Bundler to finish its work grabbing edge versions of all sorts of things.</li>
<li>Dive into your app's folder:
<pre>cd yourapp</pre>
</li>
<li>Check everything went OK so far by running:
<pre>rails server</pre>
</li>
<li>Browse to <code>http://localhost:3000/</code> (or whatever is relevant in your case)  and ensuring you get the usual Rails welcome page.</li>
<li>CTRL+C your way out of <code>rails server</code> and get back to the prompt.</li>
</ul>
<p>We have a working but dead boring Rails 3.1 app on our hands. Let's get something <em>happening</em> and see what Rails 3.1 is rocking in the CoffeeScript and Sass departments.</p>
<p>In the interests of having <em>something</em> running as soon as possible, we'll lean on the <code>scaffold</code> generator to get some default, core team approved model, controller, and view code up and running. Simply:</p>
<pre>rails generate scaffold Link title:string url:string slug:string visits:integer</pre>
<p><em>Yes, it's an example model for a URL shortener (the new "hello world" or "blog in 15 minutes" project)! That doesn't matter though - you can do whatever you like.</em></p>
<p>Don't forget to run:</p>
<pre>rake db:migrate</pre>
<p>I did ;-)</p>
<h3>Sprockets - Asset Packaging Shenanigans!</h3>
<p>Run <code>rails server</code> again now and browse to <code>http://localhost:3000/links/</code> - pretty typical scaffolding fare, right?</p>
<p><img src="/assets/2011/04/boring-app-is-boring-crap.png" alt="" title="boring-app-is-boring-crap" width="273" height="169" class="alignnone size-full wp-image-4716" style="border: 1px solid #333"></p>
<p>View the source though and check out the <code>&lt;head&gt;</code> section:</p>
<p><img src="/assets/2011/04/why-is-not-dead.png" alt="" title="why-is-not-dead" width="619" height="132" class="alignnone size-full wp-image-4712"></p>
<p>If you dig into <code>application.js</code> and <code>application.css</code> (as they're being served up by the server), you'll notice that they're a bit different to the same files in older Rails apps. They contain JavaScript code and CSS code respectively but if you look through the <code>/public</code> folder in your app, those files are nowhere to be found. Shenanigans!</p>
<p><img src="/assets/2011/04/sprockets.gif" alt="" title="sprockets" width="639" height="265" class="alignnone size-full wp-image-4713"></p>
<p>Or not. <a href="http://getsprockets.org/">Sprockets</a> is merely at play, melting and merging down multiple CSS and JavaScript files into a single gooey lump to send to your Web browser.</p>
<h3>Playing "Hunt The JavaScript and CSS"</h3>
<p>We're getting CSS and JavaScript being served up through <code>application.css</code> and <code>application.js</code> just fine then, but where are they coming from? Here's a clue!</p>
<p><img src="/assets/2011/04/jessica-fox.png" alt="" title="jessica-fox" width="258" height="261" class="alignnone size-full wp-image-4717" style="border: 1px solid #333"></p>
<p>Oh yes, there's a <code>app/assets</code> folder and its beautiful children <code>javascripts</code> and <code>stylesheets</code>. It seems these two fine specimens will become our friends when we make the transition to Rails 3.1.</p>
<p>You may notice that my file tree doesn't look quite the same as yours. That's because I've already started playing with CoffeeScript and Sass by creating an <code>app/assets/javascripts/awesome.js.coffee</code> file and a <code>app/assets/stylesheets/scaffold.css.scss</code> file (the latter just being a rename of the <code>scaffold.css</code> file you already have).</p>
<p>If you take a sneaky peek into <code>application.css</code> you'll notice there's not really any CSS in there. Merely a comment with a directive like so:</p>
<pre>/*
 * FIXME: Introduce SCSS &amp; Sprockets
 *= require_tree .
*/</pre>
<p><code>require_tree</code> is just telling the system to bundle together everything from the <code>stylesheets</code> folder into a single file. Awesome - thanks Sprockets!</p>
<h3>Playing with Sass</h3>
<p>To have a play with <a href="http://sass-lang.com/">Sass</a> first, rename <code>scaffold.css</code> to <code>scaffold.css.scss</code>. If you then reload the <code>/links</code> page in your Web browser you'll notice little difference. Why? Because Sass (or, more specifically, <em>SCSS</em>) is merely a <em>superset</em> of CSS and any existing CSS will work with it!</p>
<p>Open up <code>scaffold.css.scss</code> and you'll see it's pretty boring. It's just the standard stuff that comes with Rails after all. The first section looks something like this:</p>
<pre>body { background-color: #fff; color: #333; }</pre>
<p>Let's say we want to keep our background and text colors in variables so we can use them throughout our CSS later (meaning we only have to change a couple of variables instead of hundreds of references if we want to retheme our app). Rewrite the previous section to:</p>
<pre>$background_color: #fee;
$text_color: #000;

body { background-color: $background_color; color: $text_color; }</pre>
<p>Here I've assigned the colors to variables and then use the variables in the CSS. I've made some minor changes to the colors too so that I can definitely see a difference when I reload the page in my browser.</p>
<p>And, well, that's it. That's the <em>absolute bare basics</em> of using SCSS in Rails 3.1. Dead simple. Stick <code>.scss</code> on the end of a filename to trigger the SCSS/SASS parser and you're cooking with gas.</p>
<h3>Playing with CoffeeScript</h3>
<p>At the time of writing, the <code>application.js</code> file is a wee bit broken as it has a comment that's not being parsed out. Since this stuff was only added on the very day I wrote this post, I'll let them off. But in case it's broken for you still, get <code>application.js</code> looking like this:</p>
<pre>#= require jquery
#= require jquery_ujs
#= require_tree .</pre>
<p>These directives should remind you of the equivalent in <code>application.css</code>. As with there, they include other JavaScript files into <code>application.js</code> when it's served up. You get jQuery, the "unobstrusive" jQuery helpers for Rails, and any other files in the <code>javascripts</code> folder (currently none).</p>
<p>To give CoffeeScript a try, create a file called <code>awesome.js.coffee</code> in the <code>app/assets/javascripts</code> folder and populate it thus:</p>
<pre>square = (x) -&gt; x * x
alert square(10)</pre>
<p>If you refresh the <code>http://localhost:3000/links/</code> page again now, you'll have an annoying JavaScript alert window popping up with "100" in it (the result of <code>square(10)</code>).</p>
<p>This isn't the time or place to dig into what CoffeeScript does or how it works but.. you've just played with it nonetheless ;-) If you want to learn more about it, <a href="http://jashkenas.github.com/coffee-script/">its official homepage is packed with useful stuff.</a></p>
<p>Like the street walker I picked up solely to use the car pool lane, I'm going to dump you off at the curb here in the middle of conversation. It's been fun. Good luck and have fun breaking Rails 3.1. If you find any really nasty bugs, be sure to either raise a ticket so the lovely Rails developers can make Rails 3.1 even better or, y'know, submit a patch yourself.</p>
<p style="background-color: #ff6; padding: 8px; color: #000">Want to show some appreciation after this lovely blog post? Check out the <a href="http://rubyweekly.com/">Ruby Weekly</a> and <a href="http://javascriptweekly.com">JavaScript Weekly</a> e-mail newsletters or pass them on to your buddies or co-workers. People are loving them and they're doing great but the more the merrier!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Eric Anderson</strong> &middot; <time datetime="2011-04-14T02:22:00+00:00">April 14, 2011 at 2:22 am</time></p>
      <p>Good to see what they have planned for Rails 3.1. I recently started using Sprockets 2 in my Rails 3.1.x app. It took a little digging to figure out how to set things up (and my setup is a little different from what it looks like they are going to do in Rails 3) but for those wanting to go ahead and play with this goodness check out the guide I put together on the subject a few days ago.</p><p><a href="https://gist.github.com/911003" rel="nofollow">https://gist.github.com/911003</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-04-14T03:44:00+00:00">April 14, 2011 at 3:44 am</time></p>
      <p>Thanks Eric!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Darcy Laycock</strong> &middot; <time datetime="2011-04-14T06:57:00+00:00">April 14, 2011 at 6:57 am</time></p>
      <p>Or if you just want to play with CoffeeScript in your Rails {2,3} application / Sinatra or Rack application, you can also try out <a href="http://github.com/Sutto/barista" title="Oh look, you hovered? How nice of you!" rel="nofollow">barista</a> right now ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Patrick Muldoon</strong> &middot; <time datetime="2011-04-14T13:09:00+00:00">April 14, 2011 at 1:09 pm</time></p>
      <p>scaffold.css.sass should be scaffold.css.css above.  Being new to sass/scss following along with the above caused the Sprockets to complain about syntax..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>aaron</strong> &middot; <time datetime="2011-04-14T13:21:00+00:00">April 14, 2011 at 1:21 pm</time></p>
      <p>How is Rails 3.1 dealing with the Sass compilation?  Is it on-the-fly?  Is there a rake task?  Is it cached in the production environment?<br>
Same question for sprockets and coffescript.<br>
Another great article Peter!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-04-14T13:54:00+00:00">April 14, 2011 at 1:54 pm</time></p>
      <p>@Patrick: Odd. It works fine for me. Without the "sass" I ended up with non-compiled code. But.. they're tweaking edge Rails all of the time so a lot of what's in here could go "off" quite quickly ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Paul Ashenfelter</strong> &middot; <time datetime="2011-04-14T14:08:00+00:00">April 14, 2011 at 2:08 pm</time></p>
      <p>Starting with a clean rvm ruby 1.9.2 gemset, I had to install bundler and i18n to get things moving. Just FYI.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Patrick Muldoon</strong> &middot; <time datetime="2011-04-14T14:28:00+00:00">April 14, 2011 at 2:28 pm</time></p>
      <p>@peter. Yep all depends on which revision you get I would imagine.   But if you look, in the "Playing "Hunt The JavaScript and CSS" section you called it "scaffold.css.scss"  and in "Playing with Sass"  you called it "scaffold.css.scss".  Which is where I think the confusion is coming from. Regardless thanks for the post...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Patrick Muldoon</strong> &middot; <time datetime="2011-04-14T14:41:00+00:00">April 14, 2011 at 2:41 pm</time></p>
      <p>bah..  More coffee (and coffeescript needed..)  "playing with sass" section file is called "scaffold.css.sass".</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andy</strong> &middot; <time datetime="2011-04-14T16:26:00+00:00">April 14, 2011 at 4:26 pm</time></p>
      <p>Just wondering .. we'll write CoffeeScript and then debug JavaScript on Firebug??</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dr Nic Williams</strong> &middot; <time datetime="2011-04-14T17:47:00+00:00">April 14, 2011 at 5:47 pm</time></p>
      <p>I had to remove the following comments in application.js to get the coffeescript working:</p><p># FIXME: Tell people that this is a manifest file, real code should go into discrete files<br>
# FIXME: Tell people how Sprockets and CoffeeScript works<br>
#</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mislav Marohnić</strong> &middot; <time datetime="2011-04-14T18:52:00+00:00">April 14, 2011 at 6:52 pm</time></p>
      <p>@aaron's complaint was in the right place. You've mixed Sass and SCSS as if they were interchangeable. They are different, <strong>incompatible</strong> synaxes. SCSS is a superset of CSS and files of that type should end with ".scss". Sass is unlike CSS, so you can't just rename a file from ".css" to ".sass" and expect it to work.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-04-14T19:23:00+00:00">April 14, 2011 at 7:23 pm</time></p>
      <p>Mislav: Thanks. It turns out the mismatch was the other way around. I got the <em>filename</em> wrong rather than the superset assumption. My screenshot shows .css.scss whereas I <em>wrote</em> .css.sass, but meant the former. Thanks to everyone who hinted at this and I've now fixed the filename. (Rather than the stuff about Sass, because SCSS is the new, approved technique ;-))</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2011-04-14T21:53:00+00:00">April 14, 2011 at 9:53 pm</time></p>
      <p>When I run "rails new ..." it complains about i18n :</p><p>/rails/activesupport/lib/active_support/i18n.rb:2:in `require': no such file to load -- i18n (LoadError)</p><p>so i installed the latest i18n gem (0.5.0) with  "gem install i18n" and i still get the error.  Any idea what's wrong?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>vudu</strong> &middot; <time datetime="2011-04-15T00:56:00+00:00">April 15, 2011 at 12:56 am</time></p>
      <p>I got the same error as the above ...no such file to load -- i18n (LoadError)</p><p>So I added require 'rubygems' to active_support/i18n.rb</p><p>Which allowed me to fire up the new app</p><p>Then bundling ...</p><p>Updating git://github.com/sstephenson/sprockets.git<br>
error: cannot open FETCH_HEAD: Permission denied</p><p>An error has occurred in git when running `git fetch --force --quiet --tags "git://github.com/sstephenson/sprockets.git" refs/heads/*:refs/heads/*`. Cannot complete bundling.</p><p>bummed. looks like fun.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>vudu</strong> &middot; <time datetime="2011-04-15T01:01:00+00:00">April 15, 2011 at 1:01 am</time></p>
      <p>Doh, 'Permission denied', gotta sudo, rookie. Ok, no more spam, cheers.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>aaron</strong> &middot; <time datetime="2011-04-15T15:01:00+00:00">April 15, 2011 at 3:01 pm</time></p>
      <p>@Peter, @Mislav.  Hehe, I wasn't being snarkey, I really liked the article.  I  want those answers.  It totally looks trolley though ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2011-04-15T15:17:00+00:00">April 15, 2011 at 3:17 pm</time></p>
      <p>Why didn't they choose RubyJS? And, I have the same question that Andy has. How will we debug it?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Lars Smit</strong> &middot; <time datetime="2011-04-16T08:23:00+00:00">April 16, 2011 at 8:23 am</time></p>
      <p>After you created the links scaffold, you need to do a DB migration:</p><p><code>rake db:migrate</code></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jean-Baptiste Barth</strong> &middot; <time datetime="2011-04-16T10:21:00+00:00">April 16, 2011 at 10:21 am</time></p>
      <p>Great howto, thanks ! I had some trouble though on Ubuntu with an RVM-based ruby environment, so I made a blog post about it, check my website if you're under Ubuntu (TL;DR: needed an alias for "rails", and to install a JS runtime, because Ubuntu don't have any by default).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dan Croak</strong> &middot; <time datetime="2011-04-17T04:06:00+00:00">April 17, 2011 at 4:06 am</time></p>
      <p>Same as Dr. Nic. Had to delete the first three lines of application.js to get awesome.js.coffee working.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Marc</strong> &middot; <time datetime="2011-04-17T04:49:00+00:00">April 17, 2011 at 4:49 am</time></p>
      <p>Followed the instructions to the T, and keep getting:<br>
<code><br>
Started GET "/assets/application.js" for 127.0.0.1 at 2011-04-16 21:37:16 -0700<br>
[Sprockets] /application.js building</code></p><p>ExecJS::RuntimeError (TypeError: Cannot call method 'write' of undefined<br>
    at /var/folders/MJ/MJVJXVDlH2ua+mbx7TGGv++++TI/-Tmp-/execjs20110416-13726-1pglicv:12:20<br>
    at /var/folders/MJ/MJVJXVDlH2ua+mbx7TGGv++++TI/-Tmp-/execjs20110416-13726-1pglicv:26:16<br>
    at /var/folders/MJ/MJVJXVDlH2ua+mbx7TGGv++++TI/-Tmp-/execjs20110416-13726-1pglicv:1:121<br>
    at Object. (/var/folders/MJ/MJVJXVDlH2ua+mbx7TGGv++++TI/-Tmp-/execjs20110416-13726-1pglicv:1:138)<br>
    at [object Object]. (node.js:927:23)<br>
    at [object Object].emitSuccess (node.js:259:13)<br>
    at [object Object]. (node.js:652:21)<br>
    at [object Object].emitSuccess (node.js:259:13)<br>
    at node.js:509:29<br>
    at node.js:988:9<br>
)<br>
</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Marc</strong> &middot; <time datetime="2011-04-17T09:29:00+00:00">April 17, 2011 at 9:29 am</time></p>
      <p>Scratch my prior comment. I had an old version of Node installed. After upgrade, everything's working as expected.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-04-17T11:13:00+00:00">April 17, 2011 at 11:13 am</time></p>
      <p>Yeah, I did make the point ;-)</p><p><em>At the time of writing, the application.js file is a wee bit broken as it has a comment that's not being parsed out. Since this stuff was only added on the very day I wrote this post, I'll let them off. But in case it's broken for you still, get application.js looking like this:</em></p><p>Also, RubyJS? The thing that hasn't been updated in over 2 years..?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Evan</strong> &middot; <time datetime="2011-04-17T21:21:00+00:00">April 17, 2011 at 9:21 pm</time></p>
      <p>Any idea whether Rails 3.1 will support js and css compression (rather than just concatenation) in it's final version?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-04-18T00:59:00+00:00">April 18, 2011 at 12:59 am</time></p>
      <p>@Lars: Thanks! You're right - I've updated it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Étienne</strong> &middot; <time datetime="2011-04-18T08:43:00+00:00">April 18, 2011 at 8:43 am</time></p>
      <p>To avoid the aforementioned problems with i18n, I had to cd into the rails directory and use bundle exec:</p><p><code>$ bundle exec bin rails new ../yourapp</code></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew</strong> &middot; <time datetime="2011-04-23T03:49:00+00:00">April 23, 2011 at 3:49 am</time></p>
      <p>After I installed i18n and bundler it game me the message:</p><p><cite>Thor is not available.<br>
If you ran this command from a git checkout of Rails, please make sure thor is installed, and run this command as `ruby /Users/andrewgertig/documents/ruby/rails/bin/rails myappname --edge --dev`</cite></p><p>After installing thor I then ran the above command but with the addition of "new" between rails and myappname.</p><p>Then it worked smoothly.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>pogodan</strong> &middot; <time datetime="2011-04-24T15:05:00+00:00">April 24, 2011 at 3:05 pm</time></p>
      <p>Instead of installing an edge bundle and then creating a new app from that, we wrote up <a href="http://www.pogodan.com/blog/2011/4/24/easy-edge-rails" rel="nofollow">some instructions</a> on installing edge into a new gemset/bundle and then installing the app on top. Should be pretty foolproof</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Johnneylee Jack Rollins</strong> &middot; <time datetime="2011-04-26T16:56:00+00:00">April 26, 2011 at 4:56 pm</time></p>
      <p>You can also just do <code>rake install</code> in the rails repo and get all the 3.1.0beta gems.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Johnneylee Jack Rollins</strong> &middot; <time datetime="2011-04-26T16:59:00+00:00">April 26, 2011 at 4:59 pm</time></p>
      <p>Actually, it's evidently broken, try <code>rake all:install</code></p>
    </li>
      <li>
      <p class="comment-meta"><strong>drymlover</strong> &middot; <time datetime="2011-05-02T05:29:00+00:00">May 2, 2011 at 5:29 am</time></p>
      <p>Hey folks, on the HAML front... Haven't you ever seen or played with DRYML? I mean seriously, this eats HAML for breakfast, vomit's it during brunch, it's it again for lunch and then eats ERB for dinner.</p><p>If you've not seen it, you seriously owe yourself: <a href="http://bit.ly/dryml" rel="nofollow">http://bit.ly/dryml</a></p><p>This is better than sex on the beach... ;) Yeah, heh, talking about the drink.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Bethany</strong> &middot; <time datetime="2011-05-11T12:13:00+00:00">May 11, 2011 at 12:13 pm</time></p>
      <p>One way to use Rails 3.1 beta without worrying about messing up your existing install is to use RVM and create a new gemset: `rvm 1.9.2@rails_beta --create`.</p><p>Then you can muck about all you want and not have to worry about beta sneaking into production code... as long as you remember to switch back.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://trevorturk.com/2011/05/17/links-for-5-17-11/" rel="external nofollow" class="url">Trevor Turk — Links for 5-17-11</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://vinsol.com/blog/2011/06/17/a-rails-developers-impression-of-coffeescript-part-2/" rel="external nofollow" class="url">A Rails Developer’s impression of CoffeeScript – Part 2 | Vinsol - Leading Ruby on Rails Development and Consulting Firm in India</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Murray Bozinsky</strong> &middot; <time datetime="2011-06-20T17:12:00+00:00">June 20, 2011 at 5:12 pm</time></p>
      <p>Why is rails adding more redirection that only results in more places where something can go wrong?</p><p>All this stuff has its place, but like REST and Bundler, this crap should be in opt-in plugins, not opt-out.</p><p>At some point Rails needs to not break everyone's apps on minor point releases.</p><p>DHH has gone off the rails. it seems like anything remotely trendy gets stuffed into rails, bloating the framework, for no other discernible reason other than it is trendy.</p><p>DHH is messiah of the cargo cult.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://www.chrisb.com.br/blog/posts-tutoriais-screencasts-para-iniciantes-em-rails/" rel="external nofollow" class="url">Posts, tutoriais e screencasts para RoR devs | Chris B.</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
