---
title: How to create a Ruby extension in C in under 5 minutes
date: '2006-06-18'
author: Peter Cooper
author_slug: admin
post_id: 100
slug: how-to-create-a-ruby-extension-in-c-in-under-5-minutes-100
url: "/how-to-create-a-ruby-extension-in-c-in-under-5-minutes-100.html"
categories:
- cool
- reference
- ruby-tricks
- tutorials
---

{{< rawhtml >}}
<p>Many coders will reach a situation where developing a C extension makes sense, whether for doing 'heavy lifting', diving into assembly language, interfacing with other C code, etc. Luckily, developing a basic Ruby extension in C is easy.</p>
<p><strong>Note: This article assumes you are using a UNIX of some sort (this was all tested on OS X) and that you have Ruby installed properly (from source, ideally, so you have </strong><strong><em>ruby.h</em></strong><strong> available). If not, you may be stuck.</strong></p>
<p>First, create a directory called MyTest (or whatever you want your extension to be called) and in there create two files, <em>extconf.rb</em> and <em>MyTest.c </em>(if you want to download pre-written sources, they're in <a href="/assets/files/extension-code.tar.gz">this tar file</a>). In extconf.rb, put the following:</p>
<pre><span class="comment"># Loads mkmf which is used to make makefiles for Ruby extensions</span>
<span class="ident">require</span> <span class="punct">'</span><span class="string">mkmf</span><span class="punct">'</span>

<span class="comment"># Give it a name</span>
<span class="ident">extension_name</span> <span class="punct">=</span> <span class="punct">'</span><span class="string">mytest</span><span class="punct">'</span>

<span class="comment"># The destination</span>
<span class="ident">dir_config</span><span class="punct">(</span><span class="ident">extension_name</span><span class="punct">)</span>

<span class="comment"># Do the work</span>
<span class="ident">create_makefile</span><span class="punct">(</span><span class="ident">extension_name</span><span class="punct">)</span>
</pre>
<p>This code is pretty self descriptive. It loads up Ruby's makefile library, sets up the environment, and creates a Makefile. Next, create the actual extension in <em>MyTest.c</em>. Here's some demonstration code to create a basic module with a single method called 'test1' which returns '10' when called:</p>
<pre>// Include the Ruby headers and goodies
#include "ruby.h"

// Defining a space for information and references about the module to be stored internally
VALUE MyTest = Qnil;

// Prototype for the initialization method - Ruby calls this, not you
void Init_mytest();

// Prototype for our method 'test1' - methods are prefixed by 'method_' here
VALUE method_test1(VALUE self);

// The initialization method for this module
void Init_mytest() {
	MyTest = rb_define_module("MyTest");
	rb_define_method(MyTest, "test1", method_test1, 0);
}

// Our 'test1' method.. it simply returns a value of '10' for now.
VALUE method_test1(VALUE self) {
	int x = 10;
	return INT2NUM(x);
}
</pre>
<p>For C, it's reasonably simple code. We include the Ruby headers via <em>ruby.h</em>, set up a variable to store the module in, and create two functions, one which is called by Ruby when it initiates the module, and the other is our <em>test1</em> method <em>(Note that in the code above we define MyTest as a module, but you could just as easily use rb_define_class to create a class, if that's what you wanted to do.)</em></p>
<p>Next we need to compile our hard work. Make sure you're in the MyTest directory and run <em>ruby extconf.rb</em>, and it should say that the Makefile has been created. If so, you can then run <em>make</em> to compile and build the extension. As long as no errors occur, run up irb (or create a new Ruby program) and test out your newly build extension like so:</p>
<pre>irb(main):001:0&gt; require 'mytest'
=&gt; true
irb(main):002:0&gt; include MyTest
=&gt; Object
irb(main):003:0&gt; puts test1
10
</pre>
<p>Et voila! The world's simplest Ruby extension written in C in under 5 minutes. It doesn't do much, it's overly basic, but this is the springboard to greater things :)</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>zenspider</strong> &middot; <time datetime="2006-08-01T19:36:00+00:00">August 1, 2006 at 7:36 pm</time></p>
      <p>It should be noted that 5 minutes is glacial compared to what you can do with inline (and how much easier it is). The above example was done (and ran) in less than 30 seconds!</p><p>require 'rubygems'<br>
require 'inline'</p><p>class Example<br>
  inline(:C) do |builder|<br>
    builder.c "int method_test1() {<br>
                 int x = 10;<br>
                 return x;<br>
               }"<br>
  end<br>
end</p><p>p Example.new.method_test1</p><p>Please take notice of a couple things. 1) you just write it and run it. This is important. No extra development cycles are needed. I realize that your mkmf example is pretty straight forward, but there is a world of difference between having to think about what you need to do next vs just running your script and having it taken care of automatically. That includes compiler/linker flag changes, missing a make, etc etc... 2) notice I just say int and return x. Type conversions are taken care for you. 3) the resultant code looks almost exactly like yours, but with 1/10th the effort and time.</p><p>As an aside, your MyTest should probably be made static, or better, just local to your Init. You can also avoid all your prototypes if you just reorder your two functions.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>zenspider</strong> &middot; <time datetime="2006-08-01T19:37:00+00:00">August 1, 2006 at 7:37 pm</time></p>
      <p>that looked prettier in the comment box. :/</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-08-01T19:49:00+00:00">August 1, 2006 at 7:49 pm</time></p>
      <p>Thanks for the example. RubyInline has been covered here, btw (and at InfoQ), and I'm keeping an eye on developments, it looks like it's going great. Well done!</p><p>I like these type conversions..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2006-08-02T08:18:00+00:00">August 2, 2006 at 8:18 am</time></p>
      <p>"require 'inline'<br>
LoadError: no such file to load -- inline"</p><p>How can i get the module 'inline'?  </p><p>Thanks</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-08-02T11:25:00+00:00">August 2, 2006 at 11:25 am</time></p>
      <p>gem install rubyinline  or gem install RubyInline  .. I forget :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Justin</strong> &middot; <time datetime="2006-08-02T17:50:00+00:00">August 2, 2006 at 5:50 pm</time></p>
      <p>Windows gets no love here. I think you have ot have Visual C++ 6.0 installed to use these tools. Ugh.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>crispee</strong> &middot; <time datetime="2006-08-02T18:41:00+00:00">August 2, 2006 at 6:41 pm</time></p>
      <p>awesome sample. thanks zenspider and peter.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://www.top-ten-tutorials.com/story/578/" rel="external nofollow" class="url">Anonymous</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Combatjuan</strong> &middot; <time datetime="2006-08-02T20:00:00+00:00">August 2, 2006 at 8:00 pm</time></p>
      <p>To Just and Windows Users:<br>
It tried this under Cygwin and it worked fine.  Don't bother with Visual C++ 6.0.  Cygwin is free and wonderful.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>RMX</strong> &middot; <time datetime="2006-08-02T22:43:00+00:00">August 2, 2006 at 10:43 pm</time></p>
      <p>What I'd rather see is a RubyInline example that interacts with arrays.   It's pretty rare that operating on a single value is the slow thing I want to extend; and pretty common that processing large arrays sucks.</p><p>Anyone have that kind of 5-minute example?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>anonny</strong> &middot; <time datetime="2006-08-02T22:53:00+00:00">August 2, 2006 at 10:53 pm</time></p>
      <p>sooo much easier with SWIG: <a href="http://www.swig.org" rel="nofollow">http://www.swig.org</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>peppermonkey</strong> &middot; <time datetime="2006-08-11T23:04:00+00:00">August 11, 2006 at 11:04 pm</time></p>
      <p>Hmm..using Cygwin (just installed).<br>
I get a Makefile:104: *** target pattern contains no '%'. Stop.<br>
error...any ideas?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>martynJ</strong> &middot; <time datetime="2006-08-25T20:46:00+00:00">August 25, 2006 at 8:46 pm</time></p>
      <p>Me too peppermonkey - maddening! did you find the solution?</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
