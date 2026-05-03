---
title: 'Let’s Build a Simple Video Game with JRuby: A Tutorial'
date: '2011-12-15'
author: Peter Cooper
author_slug: admin
post_id: 5726
slug: video-game-ruby-tutorial-5726
url: "/video-game-ruby-tutorial-5726.html"
categories:
- cool
- jruby
- tutorials
---

{{< rawhtml >}}
<p>Ruby isn't known for its game development chops despite having a <a href="http://mon-ouie.github.com/projects/ray.html">handful</a> <a href="http://rubygame.org/">of</a> <a href="http://www.libgosu.org/">interesting</a> <a href="https://github.com/ippa/chingu">libraries</a> suited to it. Java, on the other hand, has a thriving and popular game development scene flooded with powerful libraries, tutorials and <a href="http://www.java-gaming.org/">forums.</a> Can we drag some of Java's thunder kicking and screaming over to the world of Ruby? Yep! - thanks to <a href="http://jruby.org/">JRuby.</a> Let's run through the steps to build a simple 'bat and ball' game now.</p>
<p><img class="alignnone size-full wp-image-5742" title="mast" src="/assets/2011/12/mast.jpg" alt="" width="640" height="324"></p>
<h3>The Technologies We'll Be Using</h3>
<h4>JRuby</h4>
<p>If you're part of the "meh, JRuby" brigade, suspend your disbelief for a minute. JRuby is easy to install, easy to use, and isn't going to trample all over your system or suck up all your memory. It will be OK!</p>
<p>One of <a href="http://jruby.org/">JRuby's</a> killer features is its ability to use Java libraries and generally dwell as a first class citizen on the <a href="http://en.wikipedia.org/wiki/Java_Virtual_Machine">JVM.</a> JRuby lets us use performant Java powered game development libraries in a Rubyesque way, lean on Java-based tutorials, and basically <em>have our cake and eat it too.</em></p>
<p>To install JRuby, I recommend <a href="http://beginrescueend.com/">RVM</a> (Ruby Version Manager). I think the JRuby core team prefer you to use their own installer but <code>rvm install jruby</code> has always proven quick and effective for me. Once you get it installed, <code>rvm use jruby</code> and you're done.</p>
<h4>Slick and LWJGL</h4>
<p>The <a href="http://slick.cokeandcode.com/">Slick</a> library is a thin layer of structural classes over the top of <a href="http://lwjgl.org/">LWJGL</a> (Lightweight Java Game Library), a mature and popular library that abstracts away most of the boring system level work.</p>
<p>Out of the box LWJGL gives us OpenGL for graphics, OpenAL for audio, controller inputs, and even OpenCL if we wanted to do heavy parallelism or throw work out to the GPU. Slick gives us constructs like game states, geometry, particle effects, and SVG integration, while allowing us to drop down to using LWJGL for anything we like.</p>
<h3>Getting Started: Installing Slick and LWJGL</h3>
<p>Rather than waste precious time on theory, let's get down to the nitty gritty of getting a basic window and some graphics on screen:</p>
<ul>
<li>First, create a folder in which to store your game and its associated files. From here I'll assume it's <code>/mygame</code>
</li>
<li>Go to the <a href="http://slick.cokeandcode.com/">Slick homepage</a> and choose "Download Full Distribution" (<a href="http://slick.cokeandcode.com/downloads/slick.zip">direct link to .zip here</a>).</li>
<li>Unzip the download and copy the <code>lib</code> folder into your <code>/mygame</code> as <code>/mygame/lib</code> - this folder includes both LWGWL and Slick.</li>
<li>In <code>/mygame/lib</code>, we need to unpack the <code>natives-[your os].jar</code> file and move its contents directly into <code>/mygame</code>.<strong>Mac OS X:</strong> Right click on the <code>natives-mac.jar</code> file and select to unarchive it (if you have a problem, grab the awesome free <em>The Unarchiver</em> from the App Store) then drag the files in <code>/mygame/lib/native-mac/*</code> directly into <code>/mygame</code>.
<p><em>Linux and Windows:</em> Running <code>jar -xf natives-linux.jar</code> or <code>jar -xf natives-win32.jar</code> and copying the extracted files back to <code>/mygame</code> should do the trick.</p>
</li>
<li>Now your project folder should look a little like this:<img class="alignnone size-full wp-image-5739" title="files" src="/assets/2011/12/files.png" alt="" width="422" height="452">
<p>If so, we're ready to code.</p>
</li>
</ul>
<h3>A Bare Bones Example</h3>
<p>Leaping in with a bare bones example, create <code>/mygame/verybasic.rb</code> and include this code:</p>
<pre>$:.push File.expand_path('../lib', __FILE__)

require 'java'
require 'lwjgl.jar'
require 'slick.jar'

java_import org.newdawn.slick.BasicGame
java_import org.newdawn.slick.GameContainer
java_import org.newdawn.slick.Graphics
java_import org.newdawn.slick.Input
java_import org.newdawn.slick.SlickException
java_import org.newdawn.slick.AppGameContainer

class Demo &lt; BasicGame
def render(container, graphics)
graphics.draw_string('JRuby Demo (ESC to exit)', 8, container.height - 30)
end

# Due to how Java decides which method to call based on its
# method prototype, it's good practice to fill out all necessary
# methods even with empty definitions.
def init(container)
end

def update(container, delta)
# Grab input and exit if escape is pressed
input = container.get_input
container.exit if input.is_key_down(Input::KEY_ESCAPE)
end
end

app = AppGameContainer.new(Demo.new('SlickDemo'))
app.set_display_mode(640, 480, false)
app.start</pre>
<p>Ensure <span>that <code>ruby</code> actually runs JRuby (using <code>ruby -v</code>) and then run it from the command line with <code>ruby verybasic.rb</code>. Assuming all goes well, you'll see this:</span></p>
<p><img class="alignnone size-full wp-image-5738" title="demo1" src="/assets/2011/12/demo1.jpg" alt="" width="640" height="507"></p>
<p>If you don't see something like the above, feel free to comment here, but your problems most likely orient around not having the right 'native' libraries in the current directory or from not running the game in its own directory in the first place (if you get <code>probable missing dependency: no lwjgl in java.library.path</code> - bingo).</p>
<h4>Explanation of the demo code</h4>
<ul>
<li>
<code>$:.push File.expand_path('../lib', __FILE__)</code> pushes the 'lib' folder onto the load path. (I've used <code>push</code> because my preferred &lt;&lt; approach breaks WordPress ;-))</li>
<li>
<code>require 'java'</code> enables a lot of JRuby's Java integration functionality.</li>
<li>Note that we can use <code>require</code> to load the .jar files from the lib directory.</li>
<li>The <code>java_import</code> lines bring the named classes into play. It's a <em>little</em> like <code>include</code>, but not quite.</li>
<li>We lean on Slick's <code>BasicGame</code> class by subclassing it and adding our own functionality.</li>
<li>
<code>render</code> is called frequently by the underlying game engine. All activities relevant to rendering the game window go here.</li>
<li>
<code>init</code> is called when a game is started.</li>
<li>
<code>update</code> is called frequently by the underlying game engine. Activities related to updating game data or processing input can go here.</li>
<li>The code at the end of the file creates a new <code>AppGameContainer</code> which in turn is given an instance of our game. We set the resolution to 640x480, ensure it's not in full screen mode, and start the game.</li>
</ul>
<h3>Fleshing Out a Bat and Ball Game</h3>
<p>The demo above is <em>something</em> but there are no graphics or a game mechanic, so it's far from being a 'video game.' Let's flesh it out to include some images and a simple pong-style bat and ball mechanic.</p>
<blockquote>
<p>Note: I'm going to ignore most structural and object oriented concerns to flesh out this basic prototype. The aim is to get a game running and to understand how to use some of Slick and LWJGL's features. We can do it again properly later :-)</p>
<p>All of the assets and code files demonstrated here are also available <a href="http://ruby-inside.s3.amazonaws.com/mygame.zip">in an archive</a> if you get stuck. Doing it all by hand to start with will definitely help though.</p>
</blockquote>
<h4>A New Code File</h4>
<p>Start a new game file called <code>pong.rb</code> and start off with this new bootstrap code (very much like the demo above but with some key tweaks):</p>
<pre>$:.push File.expand_path('../lib', __FILE__)

require 'java'
require 'lwjgl.jar'
require 'slick.jar'

java_import org.newdawn.slick.BasicGame
java_import org.newdawn.slick.GameContainer
java_import org.newdawn.slick.Graphics
java_import org.newdawn.slick.Image
java_import org.newdawn.slick.Input
java_import org.newdawn.slick.SlickException
java_import org.newdawn.slick.AppGameContainer

class PongGame &lt; BasicGame
def render(container, graphics)
graphics.draw_string('RubyPong (ESC to exit)', 8, container.height - 30)
end

def init(container)
end

def update(container, delta)
input = container.get_input
container.exit if input.is_key_down(Input::KEY_ESCAPE)
end
end

app = AppGameContainer.new(PongGame.new('RubyPong'))
app.set_display_mode(640, 480, false)
app.start</pre>
<p>Make sure it runs, then move on to fleshing it <span>out.</span></p>
<h4>A Background Image</h4>
<p>It'd be nice for our game to have an elegant background. I've created one called <code>bg.png</code> which you can drag or copy and paste from here (so it becomes <code>/mygame/bg.png</code>):</p>
<p><a href="/assets/2011/12/bg.png"><img class="alignnone size-full wp-image-5737" title="bg" src="/assets/2011/12/bg.png" alt="" width="640" height="480"></a></p>
<p>Now we want to load the background image when the game starts and render it constantly.</p>
<p>To load the game at game start, update the <code>init</code> and <code>render</code> methods like so:</p>
<pre>def render(container, graphics)
@bg.draw(0, 0)
graphics.draw_string('RubyPong (ESC to exit)', 8, container.height - 30)
end

def init(container)
@bg = Image.new('bg.png')
end</pre>
<p>The <code>@bg</code> instance variable picks up an image and then we issue its <code>draw</code> method to draw it on to the window every time the game engine demands that the game render itself. Run <code>pong.rb</code> and check it out.</p>
<h4>Adding A Ball and Paddle</h4>
<p>Adding a ball and paddle is similar to doing the background. So let's give it a go:</p>
<pre>def render(container, graphics)
@bg.draw(0, 0)
@ball.draw(@ball_x, @ball_y)
@paddle.draw(@paddle_x, 400)
graphics.draw_string('RubyPong (ESC to exit)', 8, container.height - 30)
end

def init(container)
@bg = Image.new('bg.png')
@ball = Image.new('ball.png')
@paddle = Image.new('paddle.png')
@paddle_x = 200
@ball_x = 200
@ball_y = 200
@ball_angle = 45
end</pre>
<p>The graphics for <code>ball.png</code> and <code>paddle.png</code> are here. Place them directly in <code>/mygame</code>.</p>
<p><a href="/assets/2011/12/ball.png"><img class="alignnone size-full wp-image-5736" title="ball" src="/assets/2011/12/ball.png" alt="" width="30" height="30"></a> <a href="/assets/2011/12/paddle.png"><img class="alignnone size-full wp-image-5743" title="paddle" src="/assets/2011/12/paddle.png" alt="" width="120" height="30"></a></p>
<p>We now have this:</p>
<p><img class="alignnone size-full wp-image-5741" title="game2" src="/assets/2011/12/game2.jpg" alt="" width="640" height="497"></p>
<blockquote><p>Note: As I said previously, we're ignoring good OO practices and structural concerns here but in the long run having separate classes for paddles and balls would be useful since we could encapsulate the position information and sprites all together. For now, we'll 'rough it' for speed.</p></blockquote>
<h4>Making the Paddle Move</h4>
<p>Making the paddle move is pretty easy. We already have an input handler in <code>update</code> dealing with the Escape key. Let's extend it to allowing use of the arrow keys to update <code>@paddle_x</code> too:</p>
<pre>def update(container, delta)
input = container.get_input
container.exit if input.is_key_down(Input::KEY_ESCAPE)

if input.is_key_down(Input::KEY_LEFT) and @paddle_x &gt; 0
@paddle_x -= 0.3 * delta
end

if input.is_key_down(Input::KEY_RIGHT) and @paddle_x &lt; container.width - @paddle.width
@paddle_x += 0.3 * delta
end
end</pre>
<p><span>It's crude but it works! (P.S. I'd normally use <code>&amp;&amp;</code> instead of <code>and</code> but WordPress is being a bastard - I swear I'm switching one day.)</span></p>
<p>If the left arrow key is detected and the paddle isn't off the left hand side of the screen, <code>@paddle_x</code> is reduced by <code>0.3 * delta</code> and vice versa for the right arrow.</p>
<p>The reason for using <code>delta</code> is because we don't know how often <code>update</code> is being called. <code>delta</code> contains the number of milliseconds since <code>update</code> was last called so we can use it to 'weight' the changes we make. In this case I want to limit the paddle to moving at 300 pixels per second and 0.3 * 1000 (1000ms = 1s) == 300.</p>
<h4>Making the Ball Move</h4>
<p>Making the ball move is similar to the paddle but we'll be basing the <code>@ball_x</code> and <code>@ball_y</code> changes on <code>@ball_angle</code> using a little basic trigonometry just like in games at <a href="https://sattaking-up.com">up satta king</a>.</p>
<p>If you stretch your mind back to high school, you might recall that we can use sines and cosines to work out the offset of a point at a certain angle within a <a href="http://en.wikipedia.org/wiki/Unit_circle">unit circle.</a> For example, our ball is currently moving at an angle of <code>45</code>, so:</p>
<pre>Math.sin(45 * Math::PI / 180) # =&gt; 0.707106781186547
Math.cos(45 * Math::PI / 180) # =&gt; 0.707106781186548</pre>
<p><em>Note: The <code>* Math::PI / 180</code> is to convert degrees into radians.</em></p>
<p>We can use these figures as deltas by which to move our ball based upon a chosen ball speed and the <code>delta</code> time variable that Slick gives us.</p>
<p>Add this code to the end of <code>update</code>:</p>
<pre>@ball_x += 0.3 * delta * Math.cos(@ball_angle * Math::PI / 180)
@ball_y -= 0.3 * delta * Math.sin(@ball_angle * Math::PI / 180)</pre>
<p>If you run the game now, the ball will move up and right at an angle of 45 degrees, though it will continue past the game edge and never return. We have more logic to do!</p>
<p><em>Note: We use <code>-=</code> with <code>@ball_y</code> because sines and cosines use regular cartesian coordinates where the y axis goes from bottom to top, not top to bottom as screen coordinates do.</em></p>
<p>Add some more code to <code>update</code> to deal with ball reflections:</p>
<pre>if (@ball_x &gt; container.width - @ball.width) || (@ball_y &lt; 0) || (@ball_x &lt; 0)
@ball_angle = (@ball_angle + 90) % 360
end</pre>
<p>This code is butt ugly and pretty naive (get ready for a nice OO design assignment later) but it'll do the trick for now. Run the game again and you'll notice the ball hop through a couple of bounces off of the walls and then off of the bottom of the <span>screen.</span></p>
<h4>Resetting the Game on Failure</h4>
<p>When the ball flies off of the bottom of the screen, we want the game to restart. Let's add this to <code>update</code>:</p>
<pre>if @ball_y &gt; container.height
@paddle_x = 200
@ball_x = 200
@ball_y = 200
@ball_angle = 45
end</pre>
<p>It's pretty naive again, but does the trick. Ideally, we would have a method specifically designed to reset the game environment, but our game is so simple that we'll stick to the basics.</p>
<h4>Paddle and Ball Action</h4>
<p>We want our paddle to hit the ball! All we need to do is cram another check into <code>update</code> (poor method - promise to refactor it later!) to get things going:</p>
<pre>if @ball_x &gt;= @paddle_x and @ball_x &lt; = (@paddle_x + @paddle.width) and @ball_y.round &gt;= (400 - @ball.height)
@ball_angle = (@ball_angle + 90) % 360
end</pre>
<p><em>Note: WordPress has borked the less than operator in the code above. Eugh. Fix that by hand ;-)</em></p>
<p>And bingo, we have it. Run the game and give it a go. We have a simple, but performant, video game running on JRuby.</p>
<p>If you'd prefer everything packaged up and ready to go, <a href="http://ruby-inside.s3.amazonaws.com/mygame.zip">grab this archive file of my /mygame directory.</a></p>
<h3>What Next?</h3>
<h4>Object orientation</h4>
<p>As I've taken pains to note throughout this article, the techniques outlined above for maintaining the ball and paddle are naive - an almost C-esque approach.</p>
<p>Building separate classes to maintain the sprite, position, and the logic associated with them (such as bouncing) will clean up the <code>update</code> method significantly. I leave this as a task for you, dear reader!</p>
<h4>Stateful Games</h4>
<p>Games typically have multiple states, including menus, game play, levels, high score screens, and so forth. Slick includes a <code>StateBasedGame</code> class to help with this, although you could rig up your own on top of <code>BasicGame</code> if you really wanted to.</p>
<p>The Slick wiki has <a href="http://slick.cokeandcode.com/wiki/doku.php?id=tutorials">some great tutorials</a> that go through various elements of the library, including a <a href="http://slick.cokeandcode.com/wiki/doku.php?id=02_-_slickblocks">Tetris clone that uses game states.</a> The tutorials are written in Java, naturally, but the API calls and method names are all directly transferrable (I'll be writing an article about 'reading' Java code for porting to Ruby soon).</p>
<h4>Packaging for Distribtion</h4>
<p>One of the main reasons I chose JRuby over the Ruby alternatives was the ability to package up games easily in a .jar file for distribution. The Ludum Dare contest involves having other participants judge your game and since most participants are probably not running Ruby, I wanted it to be relatively easy for them to run my game.</p>
<p><a href="https://github.com/jruby/warbler">Warbler</a> is a handy tool that can produce .jar files from a Ruby app. I've only done basic experiments so far but will be writing up an article once I have it all nailed.</p>
<h4>Ludum Dare</h4>
<p>I was inspired to start looking into JRuby and Java game libraries by the <a href="http://www.ludumdare.com/compo/">Ludum Dare game development contest.</a> They take place every few months and you get 48 hours to build your own game from scratch. I'm hoping to enter for the first time in just a couple of days and would love to see more Rubyists taking part.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Semyon Perepelitsa</strong> &middot; <time datetime="2011-12-15T03:47:00+00:00">December 15, 2011 at 3:47 am</time></p>
      <p>Peter, thanks for your tutorial! I have done some OOP refactoring to the code as you suggested, if anyone is interested check out at github  <a href="https://github.com/semaperepelitsa/pong_game" rel="nofollow">https://github.com/semaperepelitsa/pong_game</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Semyon Perepelitsa</strong> &middot; <time datetime="2011-12-15T03:53:00+00:00">December 15, 2011 at 3:53 am</time></p>
      <p>Also I am wondering why container is passed to every method and not stored as an instance variable?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-12-15T04:10:00+00:00">December 15, 2011 at 4:10 am</time></p>
      <p>Awesome! A good attempt. I've yet to think deeply on how I'd go about it myself.</p><p>On your question, they seem to be keeping the coupling down and injecting the dependencies every time. Those methods on the game are being called by the 'app game container.'</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Maurício Szabo</strong> &middot; <time datetime="2011-12-15T14:03:00+00:00">December 15, 2011 at 2:03 pm</time></p>
      <p>Great! Only one comment, I prefer to use $LOAD_PATH over $:.</p><p>Only one question, do these libraries support pixel-perfect collisions?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>AW</strong> &middot; <time datetime="2011-12-15T17:06:00+00:00">December 15, 2011 at 5:06 pm</time></p>
      <p>I'm a little rusty on my regular Ruby, but don't you normally store your Ruby application's source in the "/lib" directory by convention and "/vendor" stores your binary blobs / external third party dependencies?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-12-15T21:17:00+00:00">December 15, 2011 at 9:17 pm</time></p>
      <p>Sure. That's the convention for building libraries and proper, mass distributed (and ideally gemified) projects.</p><p>This is a scrappy tutorial to learn about JRuby integration with LWJGL and Slick. I skip intense structuring if it's a scrappy, throwaway project, especially in articles like this where it's just extraneous detail.</p><p>I mean, strictly, the classes would all be separate, stored in files and subdirectories under /lib and then you'd have to create a script to launch the app and put it in /bin, add a Gemfile, add a Rakefile, and follow TDD to build the entire thing. I'm skipping all of that here but, yeah, when you eventually build something at a professional level, it's time to pull all of those ideas together (although almost no game developers use TDD, I've noticed).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>AW</strong> &middot; <time datetime="2011-12-15T22:22:00+00:00">December 15, 2011 at 10:22 pm</time></p>
      <p>That's cool.</p><p>I was just wondering if putting the .jar files in /lib was a Java-specific thing that had to be done, but then I took a closer look and saw the $LOAD_PATH stuff.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gavin</strong> &middot; <time datetime="2011-12-15T22:39:00+00:00">December 15, 2011 at 10:39 pm</time></p>
      <p>Interesting; thanks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-12-15T22:42:00+00:00">December 15, 2011 at 10:42 pm</time></p>
      <p>AW: In this case, no. However, there's something to do with Java's load path that requires the 'native' libraries to be extracted and placed in the root folder which I haven't quite gotten to the bottom of yet. It would be great to clean that part up in particular.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>AW</strong> &middot; <time datetime="2011-12-16T04:07:00+00:00">December 16, 2011 at 4:07 am</time></p>
      <p>Also, if you're on Ubuntu (maybe Linux in general) and you can't shake "probable missing dependency: no lwjgl in java.library.path"</p><p>the fix is "LD_LIBRARY_PATH=/path/to/directory/that/has/liblwjgl.so/in/it ruby verybasic.rb"</p><p>This has to be done before running the `ruby` command; your best bet is to wrap it in a shell script or setup your IDE to automatically export LD_LIBRARY_PATH before running the ruby script.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tyler</strong> &middot; <time datetime="2011-12-16T19:29:00+00:00">December 16, 2011 at 7:29 pm</time></p>
      <p>Great post, Peter! I'm interested in game design using Ruby and this tutorial was a lot of fun.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Amer</strong> &middot; <time datetime="2011-12-16T22:10:00+00:00">December 16, 2011 at 10:10 pm</time></p>
      <p>Another way to get rid of "probable missing dependency: no lwjgl in java.library.path" in case of using Linux run your ruby app like this:</p><p>"ruby -J-Djava.library.path=. pong.rb"</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andy Wenk</strong> &middot; <time datetime="2011-12-18T21:59:00+00:00">December 18, 2011 at 9:59 pm</time></p>
      <p>Thanks for the great insight. </p><p>We use jruby for packing applications (with warbler) because they have to run in tomcat. And also for running the apps against a webservice. It's always like 'uh ... jruby wtf' because jruby is changing quite fast and breaks things from time to time. </p><p>But having rehacked your example made me think different. That's really cool and impressive. Loading Java libraries is this easy. </p><p>Beeing a webdeveloper I always wanted to code a desktop app. Now - task done! Ha ha ... </p><p>Btw - there is actually no other way than using awesome rvm!</p><p>Peter, please move on with providing all these fine knowledge articles and videos! </p><p>Cheers Andy</p>
    </li>
      <li>
      <p class="comment-meta"><strong>J</strong> &middot; <time datetime="2011-12-30T04:37:00+00:00">December 30, 2011 at 4:37 am</time></p>
      <p>Anybody managed to get jruby and slick2d working with webstart? I've got jruby and slick working great together on my local system; but stuck in a world of evil .jnlp at the moment. Any tips/tricks?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-12-30T05:24:00+00:00">December 30, 2011 at 5:24 am</time></p>
      <p>J: I've spent a horrific amount of time trying to get it working in an applet (which is a similar challenge) and eventually gave up as I wanted to get on with the Ludum Dare contest. But, yeah, crazy hard and not much documentation to help.. :-( If anyone figures it out, please post!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rich</strong> &middot; <time datetime="2012-01-10T01:37:00+00:00">January 10, 2012 at 1:37 am</time></p>
      <p>I've been trying to get this to work in linux, I've tried both of the fixes mentioned in the comments and I still cannot get it to work.(I get the "probable missing dependency: no lwjgl in java.library.path" error). I've tried it in windows and I get the error "cannot find entry point Init_lwjgl in lwjgl.dll" Does anyone else know how to fix this?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James</strong> &middot; <time datetime="2012-02-08T03:06:00+00:00">February 8, 2012 at 3:06 am</time></p>
      <p>Followed the instructions. Running 64-bit Windows 7 with Jruby 1.6.5. This is what happens when I try to run `jruby verybasic.rb`</p><p>LoadError: load error: lwjgl -- java.lang.UnsatisfiedLinkError: failed to load s<br>
him library, error: unknown<br>
  require at org/jruby/RubyKernel.java:1038<br>
   (root) at verybasic.rb:5</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alexcp</strong> &middot; <time datetime="2012-02-14T01:31:00+00:00">February 14, 2012 at 1:31 am</time></p>
      <p>Linux users should get the latest version of lwjgl.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Erik Skoglund</strong> &middot; <time datetime="2012-03-01T10:41:00+00:00">March 1, 2012 at 10:41 am</time></p>
      <p>Nice tutorial! I get an error when running the first sample though.</p><p><code><br>
NameError: cannot link Java class org.newdawn.slick.AppGameContainer, probable missing dependency: getPointer<br>
  get_proxy_or_package_under_package at org/jruby/javasupport/JavaUtilities.java:54<br>
                      method_missing at D:/jruby-1.6.7/lib/ruby/site_ruby/shared/builtin/javasupport/java.rb:51<br>
                              (root) at main.rb:10<br>
</code><br>
No idea what that means. I'll probably figure it out...</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
