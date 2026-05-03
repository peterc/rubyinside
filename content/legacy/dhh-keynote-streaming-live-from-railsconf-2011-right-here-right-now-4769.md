---
title: DHH’s RailsConf 2011 Keynote Live-Blogged Here
date: '2011-05-17'
author: Peter Cooper
author_slug: admin
post_id: 4769
slug: dhh-keynote-streaming-live-from-railsconf-2011-right-here-right-now-4769
url: "/dhh-keynote-streaming-live-from-railsconf-2011-right-here-right-now-4769.html"
categories:
- news
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2011/03/dh-rofl-h.gif" alt="" title="dh-rofl-h" width="120" height="158" class="alignnone size-full wp-image-4611" style="float: right; margin-left: 18px; border: 1px solid #333">Ruby on Rails' creator David Heinemeier Hansson is currently at <a href="http://www.railsconf.com/">RailsConf 2011</a> along with hundreds of other Ruby and Rails developers. In a first for RailsConf, there's a live stream of some of the event which <strike>is</strike> was embedded below so you could watch DHH's keynote.</p>
<p>DHH's keynote <strike>starts</strike> started at around 9.15am Eastern on May 17, 2011 and while I had a embedded live stream here, I've now replaced it with the final archive video from YouTube:</p>
<p><iframe width="640" height="390" src="https://www.youtube.com/embed/cGdCI2HhfAU" frameborder="0" allowfullscreen></iframe></p>
<p><em>If you can't see the video above, you're in a feed reader/similar that doesn't support embedded streams and you'll need to click through to Ruby Inside to view it.</em></p>
<h3>Live Blogging and Notes from DHH's Keynote</h3>
<p><img src="/assets/2011/05/Screen-shot-2011-05-17-at-14.13.42.png" alt="" title="Screen shot 2011-05-17 at 14.13.42" width="564" height="411" class="alignnone size-full wp-image-4772"></p>
<p><em>Illustration by the awesome <a href="http://rohdesign.com/">Mike Rohde</a> (who illustrated Rework too).</em></p>
<p><img src="/assets/2011/05/dhh1.png" alt="" title="dhh1" width="358" height="294" class="alignnone size-full wp-image-4776"></p>
<p>09:17AM - DHH is talking about he can look at a piece of code and begin to wonder how the code could be better and how it could be less of a mess. He says that the Rails team focuses on finding pain points like these and then implementing solutions to make development nicer.</p>
<p><img src="/assets/2011/05/dhh2.png" alt="" title="dhh2" width="413" height="282" class="alignnone size-full wp-image-4778"></p>
<p>09:19AM - DHH shows a listing of the 'javascripts' directory in 37signals' Basecamp project. He notes that it's a mess and he wants more organization there. For example, the 'calendar' JavaScripts are all mixed in other JavaScript plugins, etc. He compares it to a 'junk drawer'.</p>
<p><img src="/assets/2011/05/dhh3.png" alt="" title="dhh3" width="356" height="185" class="alignnone size-full wp-image-4780"></p>
<p>09:21AM - He says that if you have more than 13 things in a single directory or grouped together, things start to feel messy. And when things start to feel messy "you need a cop" to enforce order. He uses the boiling frog story to demonstrate how these issues can creep up on you in a codebase. He wonders how we can enforce cleanliness and order in these asset directories and says limiting folders to having only 13 folders isn't a very good solution.</p>
<p><img src="/assets/2011/05/dhh4.png" alt="" title="dhh4" width="311" height="240" class="alignnone size-full wp-image-4782"></p>
<p>09:23AM - The REST structure on controllers was an attempt at cleaning up a proliferation of methods in controllers. A different scope but a similar sort of cleanliness.</p>
<p><img src="/assets/2011/05/dhh5.png" alt="" title="dhh5" width="381" height="124" class="alignnone size-full wp-image-4783"></p>
<p>09:24AM - The <code>javascript_include_tag</code> helper was added to make it easier to include a larger group of JavaScript into a view at once, but it didn't help clear up the underlying file structure.</p>
<p><img src="/assets/2011/05/dhh6.png" alt="" title="dhh6" width="324" height="304" class="alignnone size-full wp-image-4784"></p>
<p>09:25AM - JavaScript and CSS have been treated as 'second class citizens' and considered less important to get right structurally than the Ruby code.</p>
<p><img src="/assets/2011/05/dhh7.png" alt="" title="dhh7" width="441" height="208" class="alignnone size-full wp-image-4786"></p>
<p>09:26AM - "I think empty folders and empty files are two of the pivotal innovations in Rails that have encouraged us to write clean applications since the framework appeared." DHH says that having a giant folder of random JavaScript files leads to more mess because people just randomly throw 'trash' into the folder without any guilt. With clean folders, though, people will think more carefully about where they put things.</p>
<p><img src="/assets/2011/05/dhh8.png" alt="" title="dhh8" width="404" height="216" class="alignnone size-full wp-image-4787"></p>
<p>09:27AM - Rails will be introducing..  "empty folders". Places for assets to go and be structured nicely on the file system. There will be "assets" folders within the default Rails project, including app/assets, lib/assets, and vendor/assets.</p>
<p><img src="/assets/2011/05/dhh9.png" alt="" title="dhh9" width="403" height="131" class="alignnone size-full wp-image-4788"></p>
<p>09:29AM - There's a new config feature (shown above) to add paths to the asset pipeline. It makes the assets in that folder 'accessible from everywhere'.</p>
<p><img src="/assets/2011/05/dhh10.png" alt="" title="dhh10" width="420" height="213" class="alignnone size-full wp-image-4789"></p>
<p>09:30AM - DHH is showing off a gem that 37signals uses called signal_id which includes 'namespaced assets.' "All this is good for dependency management."</p>
<p>09:31AM - "There's no copying of assets anymore." DHH explains how you don't need to copy assets across from various places into your app. You can keep the assets bundled up and then bring them into the asset pipeline in future versions of Rails.</p>
<p>09:33AM - "For Rails 3.1, we have a new gem. Or an updated gem. Called jquery-rails.gem." It includes the actual jQuery files into a Rails app but keeps them in their own gem with its own dependencies (for jquery_ujs, etc). We can then just reference the gem and everything jQuery related gets bundled in. <em>[Weird farting/trumpet noise.]</em></p>
<p><img src="/assets/2011/05/dhh11.png" alt="" title="dhh11" width="350" height="122" class="alignnone size-full wp-image-4791"></p>
<p>09:35AM - Switching back and forth between different JavaScript libraries is now incredibly easy. It's as simple as the slide above. jQuery or Prototype don't need to be inside the default Rails app anymore. They're included in from their respective gems.</p>
<p>09:35AM - All of this applies to CSS and stylesheets too.</p>
<p><img src="/assets/2011/05/dhh12.png" alt="" title="dhh12" width="387" height="290" class="alignnone size-full wp-image-4792"></p>
<p>09:37AM - DHH responds to the storm that went down over the inclusion of CoffeeScript as a dependency in Rails and points to a lot of the meme and Reddit-based images that came out of the now-infamous thread. "It's good fun, I must say."</p>
<p><img src="/assets/2011/05/dhh13.png" alt="" title="dhh13" width="427" height="199" class="alignnone size-full wp-image-4794"></p>
<p>09:39AM - "Maybe, sometimes, it's time to chill the fuck out." DHH points to some quotes by Brendan Eich, creator of JavaScript, about the benefits of CoffeeScript and how things should keep getting pushed forward.</p>
<p><img src="/assets/2011/05/dhh15.png" alt="" title="dhh15" width="419" height="221" class="alignnone size-full wp-image-4796"></p>
<p>09:41AM - CoffeeScript cuts down on the "cruft" you need to deal with in JavaScript. He shows an example (above) of his CoffeeScript code versus the equivalent JavaScript.</p>
<p><img src="/assets/2011/05/dhh16.png" alt="" title="dhh16" width="411" height="223" class="alignnone size-full wp-image-4797"><img src="/assets/2011/05/dhh17.png" alt="" title="dhh17" width="403" height="156" class="alignnone size-full wp-image-4798"></p>
<p>09:41AM - "Looking at CoffeeScript was the first time I got a little bit of language envy." Showing some more examples (above).</p>
<p>09:43AM - DHH recommends going to <a href="http://jashkenas.github.com/coffee-script/">CoffeeScript.org</a> to learn more. He stresses, again, that CoffeeScript is a nicer, "well spoken" version of JavaScript. "So that's the JavaScript side of things.."</p>
<p>09:43AM - "The stylesheet side of things is interesting too." CoffeeScript is just a pre-processor we're putting on top of JavaScript. It'll automatically compile your CoffeeScript if the gem is included. Sass/SCSS is a pre-processor for stylesheets which basically does the same thing CoffeeScript does for JavaScript but with a smaller scope.</p>
<p><img src="/assets/2011/05/dhh18.png" alt="" title="dhh18" width="232" height="248" class="alignnone size-full wp-image-4801"></p>
<p>09:45AM - DHH talks about Hampton Catlin, creator of Sass and Haml. DHH didn't find the transformation from HTML to Haml to be "aesthetically pleasing" but he appreciates and understands the meaning behind it. He wrote off Haml because it didn't appeal to his sense of aesthetics and so he ignored Sass too.</p>
<p><img src="/assets/2011/05/dhh19.png" alt="" title="dhh19" width="329" height="122" class="alignnone size-full wp-image-4802"><img src="/assets/2011/05/dhh20.png" alt="" title="dhh20" width="396" height="215" class="alignnone size-full wp-image-4803"></p>
<p>09:47AM - So Sass basically adds a few things on top of CSS. The thing DHH  has seen used the most and which he appreciates the most is nesting in order to define CSS rules more easily. Sass adds just enough to CSS to keep it CSS but still be useful and a time saver.</p>
<p><img src="/assets/2011/05/dhh21.png" alt="" title="dhh21" width="411" height="114" class="alignnone size-full wp-image-4805"></p>
<p>09:49AM - The default assumption now is that you will want to use CoffeeScript and SCSS in Rails apps from now on. For example, when you create a new resource, as above. "We're elevating this stuff up to the same importance as Ruby code itself."</p>
<p><img src="/assets/2011/05/dhh22.png" alt="" title="dhh22" width="311" height="98" class="alignnone size-full wp-image-4806"></p>
<p>09:50AM - Thanks to Tilt, you can keep appending formats to allow extra levels of processing, so you can, say, write SCSS code that includes ERB first. <em>[audience claps]</em></p>
<p><img src="/assets/2011/05/dhh23.png" alt="" title="dhh23" width="416" height="301" class="alignnone size-full wp-image-4808"></p>
<p>09:51AM - There's a group that thinks there should be strong defaults in Rails versus those who think there should be no specific defaults. "Default won." DHH stresses that this opinion is not going to change. Rails will have strong defaults. They might change over time but Rails will remain opinionated.</p>
<p>09:53AM - DHH compares Rails to a burger that comes unfinished but says he prefers it when things come complete and finished. He raises the idea of the "curated framework" which presents "what most people want to do most of the time." He says that people, most of the time, will want to use CoffeeScript and Sass from here on out.</p>
<p><img src="/assets/2011/05/dhh24.png" alt="" title="dhh24" width="310" height="111" class="alignnone size-full wp-image-4810"></p>
<p>09:55AM - Sass and CoffeeScript will be included in the default Rails Gemfile, but they're "soft dependencies" because you can just comment those lines out and Bundler won't install them.</p>
<p><img src="/assets/2011/05/dhh25.png" alt="" title="dhh25" width="356" height="123" class="alignnone size-full wp-image-4811"></p>
<p>09:56AM - A new Rake task (see above) which compiles assets into <code>public/assets</code>. This will help things scale performance wise. They're compiled to files with names that include MD5 hashes (rather than timestamps).</p>
<p><img src="/assets/2011/05/dhh26.png" alt="" title="dhh26" width="343" height="93" class="alignnone size-full wp-image-4812"><img src="/assets/2011/05/dhh27.png" alt="" title="dhh27" width="389" height="271" class="alignnone size-full wp-image-4813"></p>
<p>09:58AM - "To top that off, we have compressors." Compressors can be brought in for JavaScript and CSS to crush them down to the smallest possible code to send over the wire. "All this is based on Sprockets."</p>
<p><img src="/assets/2011/05/dhh28.png" alt="" title="dhh28" width="352" height="193" class="alignnone size-full wp-image-4814"></p>
<p>10:00AM - There will be a Rails 3.1 Release Candidate THIS WEEK. <em>[audience claps]</em></p>
<p>10:02AM - "I want to write things for the Web. I do not care about being inside of someone else's walled garden." "Our alternative to writing a native app [for a mobile platform] was Cinco."</p>
<p><img src="/assets/2011/05/dhh29.png" alt="" title="dhh29" width="369" height="241" class="alignnone size-full wp-image-4816"></p>
<p>10:03AM - DHH notes that if you're building a rich internet app, you end up with a "tall stack" with MVC implemented at both client and server ends, etc. He fears a "split" between people working on the back-end app and those working on the front-end apps. He doesn't like that idea.</p>
<p><img src="/assets/2011/05/dhh30.png" alt="" title="dhh30" width="295" height="151" class="alignnone size-full wp-image-4817"></p>
<p>10:05AM - DHH likes the simplicity of looking at small pieces of Node.js code, but doesn't like how things look once you're dealing with multiple screens of code and larger projects. As with the "13 things" point raised at the start of the talk, things like Node.js and Sinatra can encourage messiness once projects using them get larger.</p>
<p><img src="/assets/2011/05/dhh31.png" alt="" title="dhh31" width="436" height="264" class="alignnone size-full wp-image-4818"></p>
<p>10:07AM - "I want Rails to be a post-modern framework. I want Rails to take a little bit here, a little bit there. Not to have a single driving idea."</p>
<p><img src="/assets/2011/05/dhh32.png" alt="" title="dhh32" width="371" height="262" class="alignnone size-full wp-image-4820"></p>
<p>10:08AM - DHH shows off a screenshot from Basecamp. He notes that there are lots of different elements on the page and that they have different demands. Some things don't need to be AJAXified (i.e. preference screens) whereas other things need to be more dynamic and "highly interactive" (e.g. draggable to-do lists).</p>
<p>10:10AM - DHH is showing off <a href="http://pjax.heroku.com/">pjax</a> which plugs into a page and treats the layout as being stable and only loads the changing elements with AJAX. It still keeps the address bar in the browser updated though. So you save on having to render the layout on every new "page". Only the content is updated. DHH suggests pjax may be a standard part of the Rails spec "from the next version on."</p>
<p>10:14AM - Off stage. Live stream is now playing an older keynote of DHH's from RailsConf 2010.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Semyon</strong> &middot; <time datetime="2011-05-17T15:27:00+00:00">May 17, 2011 at 3:27 pm</time></p>
      <p>Is there the recording somewhere?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Martijn</strong> &middot; <time datetime="2011-05-17T16:02:00+00:00">May 17, 2011 at 4:02 pm</time></p>
      <p>Thanks for the liveblog, very interesting read. I guess DHH has become kind of a Steve Jobs in our world ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-05-17T16:23:00+00:00">May 17, 2011 at 4:23 pm</time></p>
      <p>@Semyon: Not yet, I suspect..</p><p>@Martijn: It's funny you say that. He felt very "Jobsian" this time which was quite an interesting vibe.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ankur sethi</strong> &middot; <time datetime="2011-05-17T16:28:00+00:00">May 17, 2011 at 4:28 pm</time></p>
      <p>Wow, great notes.  You really distilled the talk, really useful! Glad to see the opinionated software moving forward.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Don Park</strong> &middot; <time datetime="2011-05-17T17:08:00+00:00">May 17, 2011 at 5:08 pm</time></p>
      <p>Video is up at<br>
<a href="http://www.livestream.com/oreillyconfs/video?clipId=pla_c4dbe404-de6f-4a53-8439-6694febec40c" rel="nofollow">http://www.livestream.com/oreillyconfs/video?clipId=pla_c4dbe404-de6f-4a53-8439-6694febec40c</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Guoliang Cao</strong> &middot; <time datetime="2011-05-17T19:25:00+00:00">May 17, 2011 at 7:25 pm</time></p>
      <p>What happened to Auto Flushing? He seems not talking about it much. I thought it is an important feature.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James Inman</strong> &middot; <time datetime="2011-05-17T20:13:00+00:00">May 17, 2011 at 8:13 pm</time></p>
      <p>Thanks for this! :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-05-17T20:23:00+00:00">May 17, 2011 at 8:23 pm</time></p>
      <p>@Guoliang: It's still on-going. Ryan Bates just did <a href="http://railscasts.com/episodes/266-http-streaming" rel="nofollow">a screencast about it</a> this week :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Greg</strong> &middot; <time datetime="2011-05-18T10:17:00+00:00">May 18, 2011 at 10:17 am</time></p>
      <p>Thank you Peter.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://tech.a-listers.jp/2011/05/19/dhh-keynote/" rel="external nofollow" class="url">DHH氏のキーノートスピーチに使われたイラスト « A-Listers</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://blog.oaqn.com/2011/week-1-signup" rel="external nofollow" class="url">Week 1: Signup | Oaqn</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>David</strong> &middot; <time datetime="2011-06-18T02:45:00+00:00">June 18, 2011 at 2:45 am</time></p>
      <p>This is a great post - incredible job.<br>
I wonder if there's a complete set of the actual words David H. Hansson said somewhere online, though.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
