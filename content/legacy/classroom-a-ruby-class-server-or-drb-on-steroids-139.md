---
title: 'ClassRoom: A Ruby class server (or DRb on steroids)'
date: '2006-07-12'
author: Peter Cooper
author_slug: admin
post_id: 139
slug: classroom-a-ruby-class-server-or-drb-on-steroids-139
url: "/classroom-a-ruby-class-server-or-drb-on-steroids-139.html"
categories:
- cool
- miscellaneous
- ruby-tricks
---

{{< rawhtml >}}
<p></p>
<center>
<img src="/assets/2006/07/classroomapple.png" height="105" width="250" border="0" align="middle" hspace="4" vspace="4" alt="Classroomapple" style="text-align: center"><br><span style="font-size:14pt;"><br>
</span><em>Install now with</em><strong><em> sudo gem install classroom</em></strong>
</center>
<p>ClassRoom (<a href="http://rubyforge.org/projects/classroom/">RubyForge project</a>) is a project to develop a distributed 'class server' powered by DRb that <a href="http://www.petercooper.co.uk/">I</a> have been working on. Let's skip long explanations and jump into code. First, we'll create a very basic "Dog" class with some basic features:</p>
<pre><span class="keyword">class </span><span class="class">Dog</span>
  <span class="ident">attr_accessor</span> <span class="symbol">:name</span>

  <span class="keyword">def </span><span class="method">self.count</span>
    <span class="attribute">@@count</span> <span class="punct">||=</span> <span class="number">0</span>
  <span class="keyword">end</span>

  <span class="keyword">def </span><span class="method">initialize</span><span class="punct">(</span><span class="ident">options</span><span class="punct">)</span>
    <span class="constant">self</span><span class="punct">.</span><span class="ident">name</span> <span class="punct">=</span> <span class="ident">options</span><span class="punct">[</span><span class="symbol">:name</span><span class="punct">]</span>
    <span class="attribute">@@count</span> <span class="punct">||=</span> <span class="number">0</span>
    <span class="attribute">@@count</span> <span class="punct">+=</span> <span class="number">1</span>
  <span class="keyword">end</span>
<span class="keyword">end</span>
</pre>
<p>Next, we'll create a program that can use Dog via ClassRoom:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">rubygems</span><span class="punct">'</span>
<span class="ident">require</span> <span class="punct">'</span><span class="string">classroom</span><span class="punct">'</span>

<span class="ident">class_server</span> <span class="punct">=</span> <span class="constant">ClassRoom</span><span class="punct">::</span><span class="constant">Client</span><span class="punct">.</span><span class="ident">new</span><span class="punct">('</span><span class="string">classroom://:2001</span><span class="punct">')</span>
<span class="ident">class_server</span><span class="punct">.</span><span class="ident">add_class</span><span class="punct">(</span><span class="constant">IO</span><span class="punct">.</span><span class="ident">read</span><span class="punct">('</span><span class="string">dog.rb</span><span class="punct">'))</span>
<span class="ident">class_server</span><span class="punct">.</span><span class="ident">load_class</span><span class="punct">(</span><span class="symbol">:all</span><span class="punct">)</span>

<span class="ident">puts</span> <span class="punct">"</span><span class="string">There are </span><span class="expr">#{Dog.count}</span> dogs<span class="punct">"</span>
<span class="ident">fido</span> <span class="punct">=</span> <span class="constant">Dog</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="symbol">:name</span> <span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">Fido</span><span class="punct">")</span>
<span class="ident">puts</span> <span class="punct">"</span><span class="string">There are </span><span class="expr">#{Dog.count}</span> dogs<span class="punct">"</span>
<span class="ident">rufus</span> <span class="punct">=</span> <span class="constant">Dog</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="symbol">:name</span> <span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">Rufus</span><span class="punct">")</span>
<span class="ident">puts</span> <span class="punct">"</span><span class="string">There are </span><span class="expr">#{Dog.count}</span> dogs<span class="punct">"</span>
<span class="ident">puts</span> <span class="punct">"</span><span class="string">fido's name is </span><span class="expr">#{fido.name}</span><span class="punct">"</span>

<span class="comment"># =&gt; There are 0 dogs</span>
<span class="comment"># =&gt; There are 1 dogs</span>
<span class="comment"># =&gt; There are 2 dogs</span>
<span class="comment"># =&gt; fido's name is Fido</span>
</pre>
<p>Take care to notice that at no point is dog.rb actually included/'require'd. The Dog class doesn't exist until line 6. What happens is that the script connects to a <em>ClassRoom server</em>, uploads the Dog class to it, and then <em>loads</em> all of the classes from the ClassRoom server to be used as if they're local <em>(they're not, they run direct from the ClassRoom server, all the load does is create proxy classes)</em>.</p>
<p>If this looks a little familiar, it's because DRb provides some of this functionality. But <strong>DRb only lets you use an object remotely, whereas ClassRoom lets you use classes and objects naturally</strong> as you normally would. Class methods, object methods, initializers, etc, all work as you'd expect.</p>
<p>You can upload classes (or Modules or entire class hierarchies!) to a ClassRoom server on-the-fly and use them from any applications you like. You can, if you like, change the functionality of classes mid-execution and all of your client applications will use the new classes and methods seamlessly. Alternatively, you might want to load up classes from the server end only and allow them to be used by various applications. It's (mostly) up to you, and it's (mostly) seamless.</p>
<p>ClassRoom is VERY, VERY ALPHA right now, but if you know your bindings from your singletons, have a play with it. If you install the gem, there are about ten example demonstration scripts (including the <em>server.rb</em> you'll need) in the <em>/examples</em> folder where the gem is installed. These should fill in most of the gaps. In case you want to get experimenting immediately, here's a basic server:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">rubygems</span><span class="punct">'</span>
<span class="ident">require</span> <span class="punct">'</span><span class="string">classroom</span><span class="punct">'</span>

<span class="ident">url</span> <span class="punct">=</span> <span class="constant">ClassRoom</span><span class="punct">::</span><span class="constant">ClassServer</span><span class="punct">.</span><span class="ident">prepare</span>
<span class="comment"># ClassRoom::ClassServerContainer.add_class(IO.read('someclass.rb')) </span>
<span class="ident">puts</span> <span class="punct">"</span><span class="string">ClassRoom server running at </span><span class="expr">#{url}</span><span class="punct">"</span>
<span class="constant">ClassRoom</span><span class="punct">::</span><span class="constant">ClassServer</span><span class="punct">.</span><span class="ident">start</span>
</pre>
<p>Have a play and leave some comments. I want to open this up even more next.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Danno</strong> &middot; <time datetime="2006-07-12T03:11:00+00:00">July 12, 2006 at 3:11 am</time></p>
      <p>That's pretty nifty Pete!</p><p>I was working on something similar for a Final Project last semester, but more asynchronousy.</p><p>I'll make a note of looking at your code for ideas on how to clean-up/improve mine.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>anand</strong> &middot; <time datetime="2006-07-12T07:09:00+00:00">July 12, 2006 at 7:09 am</time></p>
      <p>"You can, if you like, change the functionality of classes mid-execution and all of your client applications will use the new classes and methods seamlessly."</p><p>Very interesting.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-07-12T16:00:00+00:00">July 12, 2006 at 4:00 pm</time></p>
      <p>Danno: I didn't think of it before you used the word 'asynchronous' but that definitely gives me some crazy ideas on how to speed this up (particularly for situations where the ClassRoom server is remote). :)</p><p>Next step is to add a little more security to it so I can roll out a 'public' ClassRoom server with some classes for people to play with (chat rooms, MUDs, text adventures, etc..)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Danno</strong> &middot; <time datetime="2006-07-12T18:42:00+00:00">July 12, 2006 at 6:42 pm</time></p>
      <p>Oooh, glad I've given you an idea.</p><p>I was focusing more on runtime systems as opposed to class distribution to be honest, but ClassRoom's looks like a solution to one of the issues that I had (specifically, how to hand classes out to clients).</p><p>I especially like the fact that you can roll out class changes dynamically.  That's super hot.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-07-12T18:44:00+00:00">July 12, 2006 at 6:44 pm</time></p>
      <p>That's mostly a function of Ruby. The classes exist in a santized, separate module at the server end, but you can simply use Ruby's regular overriding / reflection to make changes, add methods, etc. :)</p><p>I'm now working on making it so you can 'lock down' the module so you can, for instance, ONLY let clients use classes rather than upload their own. Once I do that, I'll roll out a public classroom server for people to play with.</p><p>It might also be nice to make sure different IPs can't override each other's classes!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Justin</strong> &middot; <time datetime="2006-07-12T19:05:00+00:00">July 12, 2006 at 7:05 pm</time></p>
      <p>Cool, I also hacked a little project like this with an eye for creating an object browser. Does ClassRoom have the ability to "reset" to an initial state, for example before any classes have been loaded?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-07-12T20:27:00+00:00">July 12, 2006 at 8:27 pm</time></p>
      <p>At which end? I just added some features to remove classes at the server end. At the client end, however.. not yet. One of the problems is that if you're not within a module, undefining classes is, well, hard. :(</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ezra</strong> &middot; <time datetime="2006-07-14T22:49:00+00:00">July 14, 2006 at 10:49 pm</time></p>
      <p>Hey Peter this is cool stuff man! DRb is one of my favorite parts of ruby. Awesome.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
