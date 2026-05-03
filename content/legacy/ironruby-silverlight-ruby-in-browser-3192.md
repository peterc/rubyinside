---
title: A Walkthrough of Ruby In The Web Browser using IronRuby and Silverlight
date: '2010-04-01'
author: Jimmy Schementi
author_slug: jimmyschementi
post_id: 3192
slug: ironruby-silverlight-ruby-in-browser-3192
url: "/ironruby-silverlight-ruby-in-browser-3192.html"
categories:
- miscellaneous
- tutorials
---

{{< rawhtml >}}
<p>With Microsoft's IronRuby and Silverlight, Ruby can become a first-class citizen in the browser on Windows, Linux <i>and</i> OS X.. think <code>&lt;script type="text/ruby"&gt;</code> - yes, it's possible! This walkthrough will get you started with using Ruby in the browser for HTML and vector-graphics-based applications. IronRuby enables Web developers to use Ruby to write client-side browser applications and even reuse code between the server and the client.</p>
<h3>Background</h3>
<p><a href="http://ironruby.net/" title="IronRuby homepage">IronRuby</a> is a Ruby 1.8.6-compatible implementation, with ever-increasing support for 1.9 features that runs on Microsoft's <a href="http://www.ecma-international.org/publications/standards/Ecma-335.htm" title="Common Language Infrastructure">Common Language Infrastructure</a>. The CLI blesses IronRuby with some powerful features like an efficient just-in-time compiler and sophisticated garbage collector. However, certain runtime-specific Ruby features are not supported on IronRuby, like <a href="http://ruby-doc.org/core/classes/Kernel.html#M005947">continuations</a> which interact with the runtime, certain performance-bogging parts of <a href="http://ruby-doc.org/core/classes/ObjectSpace.html">ObjectSpace</a>, and the <a href="http://www.eqqon.com/index.php/Ruby_C_Extension" title="native Ruby C API">native Ruby C API</a>. To support native-code interop we are planning on supporting <a href="http://github.com/ffi/ffi">FFI</a> in the future (though today you can use the Win32API for Win32 calls, and the <a href="http://msdn.microsoft.com/en-us/library/aa288468%28VS.71%29.aspx" title=".NET platform invoke APIs">platform invoke APIs</a> for the rest).</p>
<p>IronRuby runs on the <a href="http://www.microsoft.com/net/" title=".NET framework">.NET framework</a> (2.0 SP1+) and <a href="http://www.mono-project.com/" title="Mono project">Mono</a>(2.0+), so IronRuby runs on a ton of platforms, including Mac OS and Linux. IronRuby also runs in the browser on <a href="http://microsoft.com/silverlight">Silverlight</a> and <a href="http://www.go-mono.com/moonlight/">Moonlight</a>, a fairly-complete-but-tiny runtime which allows you to build "rich internet applications" ... basically anything doing vector-graphics, webcam, audio, etc, in the browser.</p>
<h3>Getting Started</h3>
<p><em>Note: All code shown in this article <a href="http://github.com/jschementi/ironruby-rubyinside-article">can be found on GitHub.</a></em></p>
<p>To develop browser applications with IronRuby, you just need a Web server, text-editor, Web browser, and Silverlight installed for your browser to use:</p>
<p><b>1. Download and Install Silverlight for</b> <a href="http://go.microsoft.com/fwlink/?LinkID=150227"><b>Mac</b></a> <b>or</b> <a href="http://go.microsoft.com/fwlink/?LinkID=150228"><b>Windows</b></a></p>
<p>You'll notice these installers are larger than advertised (7MB Windows, 13MB Mac): these are the "developer" versions since they contain error-message strings rather than just error codes, which is all the "consumer" versions have.</p>
<p><b>2. Set up any Web server, text-editor, and Web browser</b></p>
<p>I'll be using the latest version of Firefox for the Web browser, the Apache Web server (which is part of Mac OS), and <a href="http://macromates.com/">TextMate</a> as the text-editor; on Windows you can use IIS (or any Web server of your choice) and any text-editor of your choice (notepad.exe is already installed, but I'd suggest <a href="http://www.e-texteditor.com/">E-TextEditor</a>, <a href="http://intype.info/">InType</a>, or even <a href="http://www.vim.org/download.php#pc">gVim</a> for the more courageous). Silverlight <i>officially</i> supports IE, Firefox on Windows, and Firefox and Safari on Mac OS, but Opera and Google Chrome on both operating systems are known to work. <a href="http://www.microsoft.com/silverlight/get-started/install/default.aspx#sysreq" title="See the system requirements page for more details">See the system requirements page for more details</a>.</p>
<p><b>3. Write Ruby in HTML pages</b></p>
<p>Here's a simple "Hello, World"-style Ruby application in the browser:</p>
<p><img src="/assets/2010/04/1.png" width="590" height="249" alt="1.png"></p>
<p>Open the text-editor, place <a href="http://github.com/jschementi/ironruby-rubyinside-article/blob/master/ruby.html" title="this code">this code</a> into it, and save the file to a convenient location where your Web server can access it; I'm saving mine to <code>~/Sites/ruby.html</code>, since that will let me access it from <code>http://localhost/~&lt;username&gt;/ruby.html</code> (IIS users will have to put the file under <code>C:inetpubwwwroot</code>, which will let you access it from <code>http://localhost/ruby.html</code>) When you visit the site in a Web browser, you will see "Ruby says hello!":</p>
<p><img src="/assets/2010/04/2.png" width="433" height="203" alt="2.png"></p>
<p><em>Note: if you just see "Loading ..." for a very long time ... did you already install Silverlight? There is <code>no install detection</code> in these examples. If you're on a slow connection, make sure files aren't still being downloaded (see below). And this will not run direct from the file system due to Silverlight's security sandbox, so make sure you access it through a Web server.</em></p>
<h3>Behind the scenes</h3>
<p><b>That's it!</b> It's very simple to get started with IronRuby in Silverlight, especially versus using ActionScript in Flash, or even the other languages like C# or VB.NET in Silverlight. Let me briefly explain what is going on behind the scenes to make IronRuby work so transparently with Silverlight.</p>
<p>The first script-tag runs <code>dlr-&lt;releasedate&gt;.js</code> which sets up a hidden Silverlight control on the page to download IronRuby and run any Ruby script-tags. The IronRuby binaries are downloaded to the browser cache, so they are not re-downloaded for any other application, unless the browser cache is cleared or is invalidated (Fig 2 and 3). These binaries set up the Silverlight control to process Ruby script-tags and execute them with IronRuby.</p>
<p><img src="/assets/2010/04/3.png" width="620" height="117" alt="3.png"></p>
<p><img src="/assets/2010/04/4.png" width="620" height="82" alt="4.png"></p>
<p><em>Note: IronRuby is not currently part of the Silverlight installation because keeping IronRuby open-source is a priority, and Silverlight is a closed-source project. The ability to download the binaries on the first load lets IronRuby stay as a separate project.</em></p>
<p>The specification for how all this works is in the <a href="http://ironruby.com/browser/sl-back-to-just-text.pdf" title="Silverlight - Back to Just-Text">Silverlight - Back to Just-Text</a> paper; it is also a great source of documentation for the IronRuby-specific features, over and above what <a href="http://msdn.microsoft.com/en-us/library/cc838158%28VS.95%29.aspx" title="Silverlight already provides">Silverlight already provides</a>.</p>
<p>It's worth pointing out that the entire application is just text; Silverlight IronRuby applications are made up of script-tags which have inline ruby code, or point to a ruby file on the Web server, along with other supported file-types referenced by script-tags to use vector graphics, archives of Ruby libraries (like the Ruby standard library, or a Gem), or even .NET assemblies.</p>
<h3>Vector Graphics</h3>
<p>A similar "Hello, World" example can be done with Silverlight's vector-graphics as well:</p>
<p><img src="/assets/2010/04/5.png" width="620" height="143" alt="5.png"></p>
<p><img src="/assets/2010/04/6.png" width="436" height="206" alt="6.png"></p>
<p>The vector-graphics markup is called <a href="http://msdn.microsoft.com/en-us/library/cc189054%28VS.95%29.aspx">XAML</a>, providing a simple XML-based markup language for defining any vector-graphics, like a user-interface. However, visual elements defined with XAML can also be defined through code; for example that <code>&lt;TextBlock&gt;</code> tag could have also been created from Ruby code, so you can decide to use XAML or just Ruby code to build vector-graphics:</p>
<pre>
<code>t = TextBlock.new
t.name, t.text, t.font_size = "message", "Loading ...", 14
</code>
</pre>
<p>XAML is useful as there are great designer tools like <a href="http://www.microsoft.com/expression/products/Blend_Overview.aspx" title="Expression Blend">Expression Blend</a> which generate XAML that is directly consumable by Silverlight. However, if designers-tools aren't your thing, the <a href="http://github.com/thbar/magic" title="Magic DSL">Magic</a> library provides a very clean Ruby DSL for building user-interfaces.</p>
<h3>In-Browser Ruby Console</h3>
<p>A lot of Ruby development happens at an interactive Ruby command-prompt, and there is no exception with running Ruby in the browser. Turning on the Ruby command-prompt is simple; just enable the "console" setting for this page, and a Ruby command-prompt will appear at the bottom of the page, letting you run code against the active application:</p>
<p><img src="/assets/2010/04/7.png" width="592" height="78" alt="7.png"></p>
<p><img src="/assets/2010/04/8.png" width="520" height="367" alt="8.png"></p>
<p><code>document.message</code> represents the DOM element with the id property of <code>message</code> (<code>document.get_element_by_id("message")</code> also works) and the <code>click</code> DOM event is hooked with the block, which changes the <code>innerHTML</code> of the clicked element. You can play around with code in this console window, and then when your satisfied move it into the actual HTML file.</p>
<p>Everything in Silverlight is usable through Ruby, just like it was originally written in Ruby. The is possible because IronRuby is directly integrated with the CLR. For example, you can see what methods are on the first DOM object in the HTML body by using normal Ruby idioms. For more information on what APIs are available in Silverlight, see the <b><a href="http://msdn.microsoft.com/en-us/library/cc838158%28VS.95%29.aspx" title="Full Silverlight 3 Documentation">Full Silverlight 3 Documentation</a>.</b></p>
<h3><b>2D Drawing</b></h3>
<p>A good way to get acquainted with new technology is to focus on an area and have some fun; here I'll be using the 2D drawing libraries in Silverlight to make some "art". The first example is <a href="http://github.com/jschementi/ironruby-rubyinside-article/blob/master/ruby-squares.html">ruby-squares.html</a>, which draws 200 randomly size and randomly colored squares.</p>
<p><img src="/assets/2010/04/9.png" width="620" height="439" alt="9.png"></p>
<p><img src="/assets/2010/04/10.png" width="485" height="444" alt="10.png"></p>
<p>However, that's not all the Ruby code running in the app; in the HTML file you'll notice four script-tags before the code shown above. These files provide various helpers for working with Silverlight from Ruby.</p>
<p><img src="/assets/2010/04/11.png" width="372" height="67" alt="11.png"></p>
<p><code>repl.rb</code> provides a way of enabling the command window through code, along with controlling when it's visible based on the query-string (<code>ruby-square.html</code> doesn't show the console at all, <code>ruby-square.html?console</code> will open the IronRuby Console panel, and <code>ruby-square.html?console=off</code> show the console with all panels hidden).</p>
<p><code>wpf_ext.rb</code> contains some helpers to make dealing with Silverlight's graphics libraries nicer from Ruby. This is only a fraction of the functionality that <code>wpf_ext.rb</code> normally provides, as this file was truncated for the article.</p>
<p><code>sketch.rb</code> sets up Silverlight for 2D drawing, calling those setup and draw methods described above at the appropriate times; largely influenced by <a href="http://wiki.github.com/jashkenas/ruby-processing">ruby-processing</a>.</p>
<p><code>bouncer.rb</code> bounce any Silverlight object around a Silverlight canvas; I'll use this directly in the drawings. To experiment with it, run <code>$sketch.toggle_bounce</code> from the command-window to begin bouncing all the objects on the screen around. You can also re-run <code>$sketch.setup</code> to add more objects:</p>
<p><object width="480" height="417"><param name="allowfullscreen" value="true">
<param name="allowscriptaccess" value="always">
<param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=8602586&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=1&amp;color=00ADEF&amp;fullscreen=1">
<embed src="http://vimeo.com/moogaloop.swf?clip_id=8602586&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=1&amp;color=00ADEF&amp;fullscreen=1" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" width="480" height="417"></embed></object></p>
<p>Speaking of ruby-processing, <a href="http://github.com/jschementi/ironruby-rubyinside-article/blob/master/ruby-circles.html">ruby-circles.html</a> is <a href="http://github.com/jcasimir/code_of_art/raw/master/documents/Code%20of%20Art%20-%20Tutorial.pdf" title="one of the ruby-processing examples">one of the ruby-processing examples</a> which <a href="http://blog.jimmy.schementi.com/2009/12/ironruby-rubyconf-2009-part-35.html" title="I showed running in a Windows desktop app at RubyConf 2009">I showed running in a Windows desktop app at RubyConf 2009</a>, but can also run on the Mac through Silverlight.</p>
<p><img src="/assets/2010/04/12.png" width="579" height="434" alt="12.png"></p>
<p><object width="480" height="612"><param name="allowfullscreen" value="true">
<param name="allowscriptaccess" value="always">
<param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=8602618&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=1&amp;color=00ADEF&amp;fullscreen=1">
<embed src="http://vimeo.com/moogaloop.swf?clip_id=8602618&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=1&amp;color=00ADEF&amp;fullscreen=1" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" width="480" height="612"></embed></object></p>
<h3>Flickr Photo Viewer</h3>
<p>While 2D animations are a fun way of exploring Ruby in the browser, they don't really capture what making a "real-world" client-side web application would be like, with more standard user-interactions like clicking links and typing into text boxes. A simple Flickr photo viewer should do the trick though; using Flickr's Web service to search for images and displaying them on the page:</p>
<p><img src="/assets/2010/04/13.png" width="620" height="627" alt="13.png"></p>
<p>The first thing this application needs to do is react when the "search" button is pressed. Ruby blocks (as well as procs) are used to handle events from the HTML page:</p>
<p><img src="/assets/2010/04/14.png" width="598" height="65" alt="14.png"></p>
<p>The <code>create_request</code> method takes the text in the textbox and makes a Web request to the appropriate Flickr Web service URL. When the request is complete, the applications shows the images Flickr returned:</p>
<p><img src="/assets/2010/04/15.png" width="620" height="87" alt="15.png"></p>
<p>The <code>show_images</code> method parses the response from Flickr into Ruby objects, and then the application's view render the photos with <a href="http://www.ruby-doc.org/stdlib/libdoc/erb/rdoc/classes/ERB.html">ERB</a>:</p>
<p><img src="/assets/2010/04/16.png" width="457" height="41" alt="16.png"></p>
<p><a href="http://github.com/jschementi/ironruby-rubyinside-article/blob/master/photoviewer/render.rb#L12">view.rb</a> - rendering HTML from ERB templates</p>
<p><img src="/assets/2010/04/17.png" width="620" height="246" alt="17.png"></p>
<p><a href="http://github.com/jschementi/ironruby-rubyinside-article/blob/master/photoviewer/images.erb">images.erb</a> - an ERB template which creates HTML for displaying Flickr images</p>
<p>The <code>erb</code> method uses the exact same <a href="http://www.ruby-doc.org/stdlib/libdoc/erb/rdoc/classes/ERB.html">ERB</a> that is part of the Ruby standard library, and what Rails uses by default in views. The ability to run the same libraries, such as ERB, or even your own application code, on both the client and the server is unique way of being "DRY". It can help to blur the line between your client and server code, since everything can be written in Ruby, and open up new ways of sharing code and being productive.</p>
<h3>Learn More</h3>
<p>I hope this article has inspired you to look at using IronRuby for your next project, be it in the browser or not. Here are more resources to get you going with IronRuby in the browser:</p>
<div style="margin-left: 1.5em">
<p><b><a href="http://blog.jimmy.schementi.com/">jimmy.thinking</a></b> - My blog has a bunch of tutorials on some interesting things that can be done with Silverlight and IronRuby, including <a href="http://blog.jimmy.schementi.com/2009/03/testing-c-silverlight-apps-with.html" title="Testing with Ruby">Testing with Ruby</a> and <a href="http://blog.jimmy.schementi.com/2009/12/ironruby-rubyconf-2009-part-35.html" title="Embedding IronRuby in existing applications">Embedding IronRuby in existing applications</a> (though that article is for a native windows application, the same principles apply to the browser). Also, if you just want an update of IronRuby in general, my latest <a href="http://blog.jimmy.schementi.com/2009/12/ironruby-rubyconf-2009-part-4-project.html" title="blog entry about the project's status">blog entry about the project's status from RubyConf 2009</a> has all the latest information, as well as the other posts in that series.</p>
<p><b><a href="http://ironruby.com/browser/sl-back-to-just-text.pdf" title="documentation PDF">Documentation PDF</a></b> - Paper about how the IronRuby in Silverlight integration works.</p>
<p><b><a href="http://ironruby.com/browser" title="IronRuby website">ironruby.com/browser</a></b> - Placeholder website for IronRuby in the browser; it currently has a redistributable download and some simple samples. Content from <a href="http://visitmix.com/labs/gestalt/samples/" title="Gestalt's website">Gestalt's website</a> is currently under transition to this site, but the <a href="http://visitmix.com/labs/gestalt/samples/">samples</a> on that site are still relevant, as well as the newly released <a href="http://visitmix.com/labs/gestalt/widgets/" title="Gestalt Widget Pack">Gestalt Widget Pack</a>, built on the latest version of IronRuby.</p>
<p><b><a href="http://msdn.microsoft.com/en-us/library/cc838158%28VS.95%29.aspx" title="Full Silverlight 3 Documentation">Full Silverlight 3 Documentation</a></b> - Covers everything you can do with Silverlight 3. Examples are in C# or VB.NET, but are straight-forward to convert to Ruby.</p>
<p><b><a href="http://github.com/ironruby/ironruby">github.com/ironruby/ironruby</a></b> - IronRuby source code; Silverlight specific sources are all <a href="http://github.com/ironruby/ironruby/tree/master/Merlin/Main/Hosts/SilverLight/">here</a>. You can <a href="http://ironruby.codeplex.com/WorkItem/Create.aspx" title="open bugs">open bugs</a> on the <a href="http://ironruby.codeplex.com/" title="CodePlex project page">CodePlex project page</a>.</p>
</div>
<p><b>And when in doubt</b>, contact the <a href="http://rubyforge.org/mailman/listinfo/ironruby-core" title="IronRuby mailling list">IronRuby mailing list</a> - you can also <a href="http://www.ruby-forum.com/forum/34" title="post online through ruby-forum">post online through ruby-forum</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Brandon Hauff</strong> &middot; <time datetime="2010-04-01T13:32:00+00:00">April 1, 2010 at 1:32 pm</time></p>
      <p>This was a very nice article.  BTW, do you need a local webserver, or could you just open the html file in your browser straight from the file system?  I wasn't clear on what the webserver was providing.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Steve Smith</strong> &middot; <time datetime="2010-04-01T13:36:00+00:00">April 1, 2010 at 1:36 pm</time></p>
      <p>Very impressive.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Martijn van Brandevoort</strong> &middot; <time datetime="2010-04-01T13:45:00+00:00">April 1, 2010 at 1:45 pm</time></p>
      <p>You had me at &lt;script type="text/ruby :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-04-01T13:57:00+00:00">April 1, 2010 at 1:57 pm</time></p>
      <p>@Brandon: Because of this:</p><p><em>And this will not run direct from the file system due to Silverlight's security sandbox, so make sure you access it through a Web server.</em></p><p>Some Flash apps have a similar issue I've found..</p><p>I can't help Windows users, but on Linux and OS X you can run this from a folder to have it work as an HTTP server on localhost:8000: </p><p><code>python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"</code></p>
    </li>
      <li>
      <p class="comment-meta"><strong>grimen</strong> &middot; <time datetime="2010-04-01T21:23:00+00:00">April 1, 2010 at 9:23 pm</time></p>
      <p>You had me at:</p><p>You had me at &lt;script type="text/ruby</p><p>...but lost my interest at:</p><p>Silverlight</p><p>...because of:</p><p>the concept of an open web</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jimmy Schementi</strong> &middot; <time datetime="2010-04-02T04:15:00+00:00">April 2, 2010 at 4:15 am</time></p>
      <p>Thanks for the nice comments and support!</p><p>@peter and @brandon: though a web-server is required today, we're looking into ways in making just the html file opened from the file-system work as well; I believe if we limit the downloading of external files from the file-system things will work ... but that still means that  will only work from a web-server.</p><p>@grimen: if you don't feel comfortable using Silverlight because it's not open-source, you can always use the open-source implementation called Moonlight: <a href="http://www.go-mono.com/moonlight/" rel="nofollow">http://www.go-mono.com/moonlight/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jimmy Schementi</strong> &middot; <time datetime="2010-04-02T04:17:00+00:00">April 2, 2010 at 4:17 am</time></p>
      <p>... slight correction: the last sentence in the @peter/@brandon reply should read "... but that still means that external scripts (script src="foo.rb") will only work from a web-server.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Puss Boots</strong> &middot; <time datetime="2010-04-02T09:22:00+00:00">April 2, 2010 at 9:22 am</time></p>
      <p>@grimen very true. especially when you're using a closed source mac.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-04-02T11:05:00+00:00">April 2, 2010 at 11:05 am</time></p>
      <p>@Puss Boots: The Web is a totally different layer to the operating system. With an open, functional Web, it doesn't matter so much if user systems are closed source or not.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Woodhouse</strong> &middot; <time datetime="2010-04-09T16:32:00+00:00">April 9, 2010 at 4:32 pm</time></p>
      <p>FYI, The "Ruby says hello" code on Github doesn't quite tally with the picture in the main article: this</p><p>should, I think, read</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Woodhouse</strong> &middot; <time datetime="2010-04-09T16:33:00+00:00">April 9, 2010 at 4:33 pm</time></p>
      <p>D'Oh. Let's try that again without embedding script HTML tags...</p><p>%lt;script src="ironruby/dlr.js" type="text/javascript"%gt;%lt;/script%gt;</p><p>should perhaps be changed to </p><p>%lt;script src="http://gestalt.ironruby.net/dlr-latest.js" type="text/javascript"%gt;%lt;/script%gt;</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Woodhouse</strong> &middot; <time datetime="2010-04-09T16:34:00+00:00">April 9, 2010 at 4:34 pm</time></p>
      <p>D'oh * 2. Time to go home. One last try, this time with feeling...</p><p>&lt;script src="ironruby/dlr.js" type="text/javascript"&gt;&lt;/script&gt;</p><p>&lt;script src="http://gestalt.ironruby.net/dlr-latest.js" type="text/javascript"&gt;&lt;/script&gt;</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Krister</strong> &middot; <time datetime="2010-04-11T03:36:00+00:00">April 11, 2010 at 3:36 am</time></p>
      <p>Ruby! In the browser! I'm off to install silverli...BAH! Well played, microsoft. Well played.</p><p>Still a bad idea. Try again silverlight. You evil temptress you.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
