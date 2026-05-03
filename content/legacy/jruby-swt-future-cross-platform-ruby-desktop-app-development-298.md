---
title: JRuby + SWT = Future Cross Platform Ruby Desktop App Development?
date: '2006-11-09'
author: Peter Cooper
author_slug: admin
post_id: 298
slug: jruby-swt-future-cross-platform-ruby-desktop-app-development-298
url: "/jruby-swt-future-cross-platform-ruby-desktop-app-development-298.html"
categories:
- jruby
- miscellaneous
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2006/11/rubyswt.jpg" height="124" width="265" border="1" hspace="4" vspace="4" alt="Rubyswt"><br>
<em><br>
(Disclaimer: I'm no Java wiz, so if I get anything wrong about Java or its libraries, post comments!)<br>
</em><br>
The SWT (Standard Widget Toolkit) is a GUI widget toolkit for the Java platform. Unlike AWT and Swing, it uses the local operating system's own controls. This means you can develop Java apps that 'look native' on multiple platforms. The popular <a href="http://www.eclipse.org/">Eclipse IDE</a> uses SWT to work and looks graphically native on multiple platforms (as does Azureus). SWT is also, reputedly, faster than the other alternatives. Sounds great for developers, right? Java developers.. sure.</p>
<p>I decided SWT was too good an idea to not investigate, so I downloaded <a href="http://jruby.codehaus.org/">JRuby</a> 0.9.1 (a Ruby interpreter written in Java and which provides access to Java classes from Ruby) and set to work. All I had to do was copy the <em>swt.jar</em> and supporting files for my platform into the <em>jruby/lib</em> folder, add <span style="text-decoration:underline;"><em>"-Djava.library.path=$JRUBY_BASE/lib"  </em></span> into the Java call in the <em>bin/jruby</em> helper script.. and then I could write and run code like this:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">java</span><span class="punct">'</span>

<span class="keyword">module </span><span class="module">SWTTest</span>

  <span class="ident">include_package</span> <span class="punct">'</span><span class="string">org.eclipse.swt</span><span class="punct">'</span>
  <span class="ident">include_package</span> <span class="punct">'</span><span class="string">org.eclipse.swt.layout</span><span class="punct">'</span>
  <span class="ident">include_package</span> <span class="punct">'</span><span class="string">org.eclipse.swt.widgets</span><span class="punct">'</span>

  <span class="constant">Display</span><span class="punct">.</span><span class="ident">setAppName</span> <span class="punct">"</span><span class="string">Ruby SWT Test</span><span class="punct">"</span>

  <span class="ident">display</span> <span class="punct">=</span> <span class="constant">Display</span><span class="punct">.</span><span class="ident">new</span>
  <span class="ident">shell</span> <span class="punct">=</span> <span class="constant">Shell</span><span class="punct">.</span><span class="ident">new</span> <span class="ident">display</span>
  <span class="ident">shell</span><span class="punct">.</span><span class="ident">setSize</span><span class="punct">(</span><span class="number">450</span><span class="punct">,</span> <span class="number">200</span><span class="punct">)</span>

  <span class="ident">layout</span> <span class="punct">=</span> <span class="constant">RowLayout</span><span class="punct">.</span><span class="ident">new</span>
  <span class="ident">layout</span><span class="punct">.</span><span class="ident">wrap</span> <span class="punct">=</span> <span class="constant">true</span>

  <span class="ident">shell</span><span class="punct">.</span><span class="ident">setLayout</span> <span class="ident">layout</span>
  <span class="ident">shell</span><span class="punct">.</span><span class="ident">setText</span> <span class="punct">"</span><span class="string">Ruby SWT Test</span><span class="punct">"</span>

  <span class="ident">label</span> <span class="punct">=</span> <span class="constant">Label</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="ident">shell</span><span class="punct">,</span> <span class="constant">SWT</span><span class="punct">::</span><span class="constant">CENTER</span><span class="punct">)</span>
  <span class="ident">label</span><span class="punct">.</span><span class="ident">setText</span> <span class="punct">"</span><span class="string">Ruby SWT Test</span><span class="punct">"</span>

  <span class="constant">Button</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="ident">shell</span><span class="punct">,</span> <span class="constant">SWT</span><span class="punct">::</span><span class="constant">PUSH</span><span class="punct">).</span><span class="ident">setText</span><span class="punct">("</span><span class="string">Test Button 1</span><span class="punct">")</span>

  <span class="ident">shell</span><span class="punct">.</span><span class="ident">pack</span>
  <span class="ident">shell</span><span class="punct">.</span><span class="ident">open</span>

  <span class="keyword">while</span> <span class="punct">(!</span><span class="ident">shell</span><span class="punct">.</span><span class="ident">isDisposed</span><span class="punct">)</span> <span class="keyword">do</span>
	  <span class="ident">display</span><span class="punct">.</span><span class="ident">sleep</span> <span class="keyword">unless</span> <span class="ident">display</span><span class="punct">.</span><span class="ident">readAndDispatch</span>
  <span class="keyword">end</span>

  <span class="ident">display</span><span class="punct">.</span><span class="ident">dispose</span>
<span class="keyword">end</span>
</pre>
<p>This works on OS X (screenshot of result is at the top of this post) but it's all generic so if you can get JRuby and the SWT JAR and support files for your platform, this same code will render a native looking window with a label and button control on whatever platform you're running. The major downsides so far are that it's a bit unstable (if I move the window much, the app crashes) and I can't seem to create events for the controls, although I think this might be due to my lack of Java <em>nous</em>. Also.. it's an experimental piece of software running on an experimental compiler, so it's far from ready for real use, and there are undoubtedly better solutions, but if you like to hack...</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Dr Nic</strong> &middot; <time datetime="2006-11-09T08:56:00+00:00">November 9, 2006 at 8:56 am</time></p>
      <p>Perhaps write a JRuby -&gt; Java converter for the production code :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Johannes Rudolph</strong> &middot; <time datetime="2006-11-09T13:04:00+00:00">November 9, 2006 at 1:04 pm</time></p>
      <p>I started a GUI builder framework two months ago which makes it easy to build a user interface using SWT and JRuby.<br>
Using the fast and crossplattform SWT together with the ruby syntax is really a powerful combination...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>murphee</strong> &middot; <time datetime="2006-11-09T13:09:00+00:00">November 9, 2006 at 1:09 pm</time></p>
      <p>There's a library that's using the builder concept to create SWT GUIs with JRuby:<br>
<a href="http://sweetgui.rubyforge.org/doc/" rel="nofollow">http://sweetgui.rubyforge.org/doc/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Danno</strong> &middot; <time datetime="2006-11-09T14:54:00+00:00">November 9, 2006 at 2:54 pm</time></p>
      <p>I dunno, that code looks pretty 'blech', very not Ruby.</p><p>Compare: <a href="http://www.oreillynet.com/pub/a/mac/2004/07/27/ruby_pt3.html" rel="nofollow">http://www.oreillynet.com/pub/a/mac/2004/07/27/ruby_pt3.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alan</strong> &middot; <time datetime="2006-11-09T15:05:00+00:00">November 9, 2006 at 3:05 pm</time></p>
      <p>There is also a company that has a Flash-based replacement for all SWT widgets (and the Flash can be customized with XML).</p><p><a href="http://inspyre.sesma.com/fclspyre.htm" rel="nofollow">http://inspyre.sesma.com/fclspyre.htm</a></p><p>They have a nice screencast of the product working</p><p><a href="http://inspyre.sesma.com/evaluation/screencast/fling.htm" rel="nofollow">http://inspyre.sesma.com/evaluation/screencast/fling.htm</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nick Sieger</strong> &middot; <time datetime="2006-11-09T15:28:00+00:00">November 9, 2006 at 3:28 pm</time></p>
      <p>@DrNic: most of the work is probably being done by Java here, so you may not need to ever convert it!  That's the best thing about using Ruby here, it's just the gluing together of the SWT comps.</p><p>@Danno:  those kinds of mini-DSLs should be easy to create as light wrappers around SWT.  With a little bit of work Peter's example could look more like this:</p><p>require 'java'</p><p>module SWTTest<br>
  Display   = org.eclipse.swt.widgets.Display<br>
  Shell     = org.eclipse.swt.widgets.Shell<br>
  RowLayout = org.eclipse.swt.layout.RowLayout<br>
  Label     = org.eclipse.swt.widgets.Label<br>
  Button    = org.eclipse.swt.widgets.Button<br>
  Display.app_name = "Ruby SWT Test"</p><p>  display = Display.new<br>
  shell = Shell.new(d) do |sh|<br>
    sh.set_size(450, 200)<br>
    sh.text = "Ruby SWT Test"</p><p>    sh.layout = RowLayout.new do |layout|<br>
      layout.wrap = true<br>
    end</p><p>    Label.new(shell, SWT::CENTER).text = "Ruby SWT Test"<br>
    Button.new(shell, SWT::PUSH).text = "Test Button 1"<br>
  end</p><p>  shell.pack<br>
  shell.open</p><p>  while (!shell.isDisposed) do<br>
    display.sleep unless display.readAndDispatch<br>
  end</p><p>  display.dispose<br>
end</p><p>Note that the block-initialize stuff doesn't exist, but that's the glue that should be easy to write.  JRuby does allow you to add methods to java objects (they just aren't visible from Java, yet).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Danno</strong> &middot; <time datetime="2006-11-09T21:13:00+00:00">November 9, 2006 at 9:13 pm</time></p>
      <p>Hmm... well, I hesitated to even post the TK stuff because while it's more Rubyish, it's still not as Ruby as I want to see.</p><p>I dunno, I'm not going to be doing any windowing toolkit wrappers in the near future, so I probably shouldn't complain.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-11-09T21:47:00+00:00">November 9, 2006 at 9:47 pm</time></p>
      <p>Well yeah, it was only a quick trial.. you get things working, then you make them nice ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hendy Irawan</strong> &middot; <time datetime="2006-11-10T02:44:00+00:00">November 10, 2006 at 2:44 am</time></p>
      <p>Hi Peter, I agree with you that JRuby + SWT (or Swing) is likely to be the future of cross-platform desktop application development using Ruby.</p><p>IMHO, there's little reason why we shouldn't use [some of] the Java platform to make our Ruby GUI desktop programming easier. After all, Ruby programming is all about productivity. There are other alternatives though, such as FXRuby (uses FOX, not native), and wxRuby (which uses wxWidgets, the "de-facto" cross platform native GUI toolkit).</p><p>A few downsides seem be lack of tools (such as visual form designer) and stability. I've researched quite a bit on this:</p><p><a href="http://web2withrubyonrails.gauldong.net/2006/11/07/the-best-cross-platform-toolkits-and-environments-a-journey/" rel="nofollow">http://web2withrubyonrails.gauldong.net/2006/11/07/the-best-cross-platform-toolkits-and-environments-a-journey/</a><br>
<a href="http://web2withrubyonrails.gauldong.net/2006/11/08/the-search-for-cross-platform-toolstack-the-research/" rel="nofollow">http://web2withrubyonrails.gauldong.net/2006/11/08/the-search-for-cross-platform-toolstack-the-research/</a></p><p>[Spoiler] The current conclusion was: JRuby+Java isn't very feasible yet for general GUI programming, so I concluded that Java+Swing/SWT better for productivity. JRuby+Swing/SWT is a very attractive alternative and I can bet in the near future it'll be a very popular way of developing GUI cross-platform desktop applications. (do you also imagine writing J2ME applications using Ruby?) ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Graham Lea</strong> &middot; <time datetime="2006-11-10T05:50:00+00:00">November 10, 2006 at 5:50 am</time></p>
      <p>Some comments on Java, as requested. :)</p><p>&gt;Unlike AWT and Swing, it uses the local operating system's own controls.</p><p>AWT also uses the local operating system's controls.<br>
When using the system look and feel, Swing will (on Windows at least) uses the same Windows code to render controls as Windows uses, so they look identical.</p><p>&gt;This means you can develop Java apps that 'look native' on multiple platforms.</p><p>There are lots of people that think that this is important, but there are also a lot that think it doesn't matter, and growing evidence that users don't care. For instance, Windows Media Player has a very different look to other Windows programs and people are quite happy to use iTunes on Windows without ever saying "this looks funny!"</p><p>&gt;The popular Eclipse IDE uses SWT to work and looks graphically native on multiple platforms (as does Azureus).</p><p>True, but a Swing app also looks pretty darn close to native on most systems.<br>
Eclipse also has its own custom look for tabs (on Win at least), and probably some other components. This suggests that, while its developers espouse that platform fidelity is all-important, they admit by their actions that sometimes it's better for an app to look good than to match the platform.</p><p>&gt;SWT is also, reputedly, faster than the other alternatives. </p><p>There is a lot of SWT supporters who will say that SWT is faster and a lot of Swing supporters who will say Swing is faster. But think about this: Java is fast enough to run full-screen, 3D network games. If your Java GUI isn't performing it's not becuase your framework is slow but because you don't really know what you're doing.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>james hoskins</strong> &middot; <time datetime="2006-11-10T10:26:00+00:00">November 10, 2006 at 10:26 am</time></p>
      <p>I was looking through the transcripts of a talk given by Charles Nutter to the Gateway Java Users Group and noted some irb/gui stuff in swing - including a listener!</p><p>You can find a summary here:</p><p><a href="http://www.infoq.com/news/2006/11/gateway-jug-jruby" rel="nofollow">http://www.infoq.com/news/2006/11/gateway-jug-jruby</a></p><p>And the code examples on Alex Miller's blog.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Greg</strong> &middot; <time datetime="2006-11-10T16:10:00+00:00">November 10, 2006 at 4:10 pm</time></p>
      <p>When I think of cross-platform GUI, I think of Java's various GUI toolkits and I shudder. Then I think of Tk and company and shudder even worse. Then I remember Qt. Qt is an elegant, well-designed cross-platform toolkit which is primarily a GUI toolkit but includes a variety of other pieces (DB drivers, network API, etc.) as well. When it comes to implementing a non-web GUI on any platform, even if the app need not be cross-platform, my first choice is Qt. Even programming in C++, which is Qt's native language, it is my first choice.</p><p>But there's QtRuby. I can write my cross-platform GUI app in the language of my choice with the GUI toolkit of my choice. It doesn't even make it feel like I'm working in some hybrid of C++ and Ruby, since it affords a variety of Ruby niceties including using blocks for slots (event handlers). Hurray! Its only failing is that it is GPL rather than LGPL, which means that even purchasing a license from TrollTech does not free your from the obligations of the GPL.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rune Hammersland</strong> &middot; <time datetime="2006-11-10T18:07:00+00:00">November 10, 2006 at 6:07 pm</time></p>
      <p>Greg: Buying a license from TrollTech will give you a commercial license which gives you about the same things as the BSD license (if I'm not mistaken). You can have your application GPL, which means it's free to use QT, or you can distribute it under another license, but then you have to pay for the commercial QT license. You're not required to use GPL in both cases.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://blog.rukh.de/2006/11/12/maybe-java-isnt-that-bad/" rel="external nofollow" class="url">rukh.de</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charles McKnight</strong> &middot; <time datetime="2006-11-12T18:10:00+00:00">November 12, 2006 at 6:10 pm</time></p>
      <p>@Hendy Irawan</p><p>I can't imagine writing J2ME apps at all, let alone in JRuby+SWT. The JVMs are not standardized across devices so you end up porting everywhere. If I have to go to that degree of work, I'll write a code generator to kick out a native binary in 'C'. The mobile operators are pushing for a "standard" JVM, but there will be a noticeable gap between having the "standard" and having "standards-based" implementations across all platforms.</p><p>FWIW, even with the faster processors on mobile devices and more memory you'll find that most developers who write desktop applications write horribly bloated and inefficient mobile applications (doesn't have as much to do with language as mindset) since they are used to far more CPU processing power and memory than is available on most mobile devices. It's one area that the "old" people who had to get by with 8K or less memory really have an advantage in their thinking (IMHO).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Cliff</strong> &middot; <time datetime="2006-11-12T21:50:00+00:00">November 12, 2006 at 9:50 pm</time></p>
      <p>Why? Why purchase a jet plane to visit your next door neighbor? I have nothing against Ruby or JRuby but it puzzles me why someone would pickup a whole new language and API just to do something that you can do by extending Java. Groovy is perfect for writing GUIs in either Swing or SWT. (Admittedly I have not seen a SWTBuilder I think it would be somewhat simple to implement.) I see way too many articles comparing Ruby to Java all of which suggests that the language is the problem. They each overlook the simplest solution (Use a dynamic language) in favor of tossing the baby with the bath water and bringing on a whole new platform and\or API. The above example could be implemented just as neatly if not neater with Groovy. FWIW, I do appreciate the article. It just bothers me that no mention has been made of a potentially evquivalent or better solution.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-11-12T23:13:00+00:00">November 12, 2006 at 11:13 pm</time></p>
      <p>Cliff: Thanks for the valuable comments. Just to comment on the point of the article.. really, I know next to nothing about Java, and just wanted to see if JRuby was at a stage where it could interact with some cool Java technologies I'd heard about. I'm sure there are definitely far better things to be doing, especially if you're already a Java user, but I wanted to try out something experimental Ruby-related that I hadn't seen anyone else do before (since this is a Ruby blog and all :))</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan Erik</strong> &middot; <time datetime="2006-11-14T01:43:00+00:00">November 14, 2006 at 1:43 am</time></p>
      <p>Here is a Javascript + XML example so that you can compare.</p><p><a href="http://fabric.no/weblog/archives/2006/11/javascript_jfcpark_vs_jruby_sw.html" rel="nofollow">http://fabric.no/weblog/archives/2006/11/javascript_jfcpark_vs_jruby_sw.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paul King</strong> &middot; <time datetime="2006-11-27T20:26:00+00:00">November 27, 2006 at 8:26 pm</time></p>
      <p>Here is a similar example using Groovy (both with and without the builder notation):</p><p><a href="http://groovy.codehaus.org/GroovySWT" rel="nofollow">http://groovy.codehaus.org/GroovySWT</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
