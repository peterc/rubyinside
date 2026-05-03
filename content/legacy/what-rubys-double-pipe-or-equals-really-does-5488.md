---
title: What Ruby’s ||= (Double Pipe / Or Equals) Really Does
date: '2011-10-18'
author: Peter Cooper
author_slug: admin
post_id: 5488
slug: what-rubys-double-pipe-or-equals-really-does-5488
url: "/what-rubys-double-pipe-or-equals-really-does-5488.html"
categories:
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2011/10/pipe-pipe-the-what-now.gif" alt="" title="pipe-pipe-the-what-now" width="120" height="120" class="alignnone size-full wp-image-5492" style="float: right; margin-left: 18px; margin-bottom: 18px;">In <a href="http://dave.fayr.am/posts/2011-10-4-rubyists-already-use-monadic-patterns.html">Rubyists Already Use Monadic Patterns</a>, Dave Fayram made a passing reference to using <code>||=</code> to set a variable's value if its value were 'Nothing' (<code>false</code> or <code>nil</code> in Ruby). The <a href="http://www.reddit.com/r/ruby/comments/l2y8m/rubyists_already_use_monadic_patterns/">resulting Reddit</a> quickly picked up on his definition (which was fixed later) and argued about <code>||=</code>'s true meaning which isn't as obvious as many Rubyists think. This spread to Freenode's awesome <tt>#ruby-lang</tt> IRC channel where I picked it up.</p>
<h3>Abstract (or the TLDR Version)</h3>
<p><strong>A common misconception is that <code>a ||= b</code> is equivalent to <code>a = a || b</code>, but it behaves like <code>a || a = b</code></strong></p>
<p>In <code>a = a || b</code>, <code>a</code> is set to something by the statement on every run, whereas with <code>a || a = b</code>, <code>a</code> is only set if <code>a</code> is logically false (i.e. if it's <code>nil</code> or <code>false</code>) because || is 'short circuiting'. That is, if the left hand side of the <code>||</code> comparison is true, there's no need to check the right hand side.</p>
<h3>The Common Misconception</h3>
<p><code>a ||= b</code> being equivalent to <code>a = a || b</code> is a popular interpretation for two reasons:</p>
<ol>
<li>If <code>a</code> and <code>b</code> are both local variables, <code>a = a || b</code> is a short and natural reflection of the outcome.</li>
<li>Other operators like <code>+=</code> and <code>-=</code> <strong>do</strong> operate this way (and this standard dates back to C), e.g.: <code>a += b</code> is equivalent to <code>a = a + b</code>
</li>
</ol>
<blockquote class="stylized"><p>Do not confuse [op]= with anything related to ||= or &amp;&amp;=. They're entirely different ideas and are implemented entirely different[ly].</p></blockquote>
<p><cite>Evan Phoenix (of Rubinius fame)</cite></p>
<p>What's happening then, if not <code>a = a || b</code>?</p>
<h3>A Starter for One</h3>
<p>Here's a simple example of using <code>a ||= b</code>:</p>
<pre>a = nil
b = 20
a ||= b
a        # =&gt; 20</pre>
<p>In this case, <code>a ||= b</code> seems to behave like <code>a = a || b</code>. As mentioned earlier, this is entirely due to <code>a</code> and <code>b</code> both being local variables.</p>
<h3>Full Demonstration for Hashes and Arrays</h3>
<p>Let's try something more complicated:</p>
<pre>h = {}

def h.[]=(k, v)
  puts "Setting hash key #{k} with #{v.inspect}"
  super
end

# 1. The standard ||= approach
h[:x] ||= 10
h[:x] ||= 20

# 2. The a = a || b approach
h[:y] = h[:y] || 10
h[:y] = h[:y] || 20

# 3. The a || a = b approach
h[:z] || h[:z] = 10
h[:z] || h[:z] = 20</pre>
<p>The output:</p>
<pre>Setting hash key x with 10
Setting hash key y with 10
Setting hash key y with 10
Setting hash key z with 10</pre>
<p>Note that in the first case, using <code>||=</code>, the hash key's value is only set once. Once it becomes logically truthful (i.e. anything other than <code>nil</code> or <code>false</code>), <code>h[:x]</code> is no longer assigned any new values, not even itself.</p>
<p>The second case, using the <code>a = a || b</code> approach, <em>does</em> result in two assignments (of the same value). The value remains 10 but the syntax forces <code>h[:y]</code> to assign itself as a value again.</p>
<p>In the last case, the behavior is the same as in the first case, demonstrating that <code>a || a = b</code> is a more realistic notation.</p>
<p><em>Note: Exactly the same result occurs if we switch the hash for an array and the keys for integers.</em></p>
<h3>Full Demonstration for Getter/Setter Methods</h3>
<p>A similar outcome occurs if we're referring to objects with getter/setter methods (which you may call accessors):</p>
<pre>class MyClass
  attr_reader :val

  def val=(val)
    puts "Setting val to #{val.inspect}"
    @val = val
  end
end

# 1. The standard ||= approach
obj = MyClass.new
obj.val ||= 'a'
obj.val ||= 'b'

# 2. The a = a || b approach
obj = MyClass.new
obj.val = obj.val || 'c'
obj.val = obj.val || 'd'

# 3. The a || a = b approach
obj = MyClass.new
obj.val || obj.val = 'e'
obj.val || obj.val = 'f'</pre>
<p>And the output shows off similar behavior to the hash and array example:</p>
<pre>Setting val to "a"
Setting val to "c"
Setting val to "c"
Setting val to "e"</pre>
<h3>Default Hash Values: A Sneaky Edge Case?</h3>
<p>Our travels don't end there though. Back in 2008, David Black noticed <a href="http://dablog.rubypal.com/2008/3/25/a-short-circuit-edge-case">an edge case with hashes that have default values</a>. If you follow the logic above to the letter, this case will not surprise you, although from a pragmatic point of view, it's curious.</p>
<p>Let's take a look:</p>
<pre>hsh = Hash.new('default')

hsh[:x]         # =&gt; 'default'

# 1. The standard ||= approach
hsh[:x] ||= 10
p hsh           # =&gt; {}

# 2. The a = a || b approach
hsh[:y] = hsh[:y] || 10
p hsh           # {:y=&gt;"default"}

# 3. The a || a = b approach
hsh[:z] || hsh[:z] = 10
p hsh           # {:y=&gt;"default"}</pre>
<p>Hashes with default values act in an.. <em>interesting</em> way, depending on your point of view. Merely <em>accessing</em> a value doesn't mean that the value is reified (made concrete) in the hash itself. The reason for this is that you can assign Procs to a hash's <code>default_proc</code> in order to perform calculations (or even to set values) when an unset key is accessed. It would be undesirable to avoid this behavior merely because a key was accessed earlier on.</p>
<p>Again, we note that the <code>a || a = b</code>-style approach gives the result closest to the reality of <code>||=</code>.</p>
<blockquote class="stylized"><p>describe "Conditional operator assignment 'obj.meth op= expr'" do<br>
  it "is equivalent to 'obj.meth op obj.meth = expr'" do</p></blockquote>
<p><cite>RubySpec's variables_spec file</cite></p>
<h3>Undefined Variables: Another Tricky Case</h3>
<p>In the comments for this post, Vikrant Chaudhary brought up another interesting case:</p>
<blockquote class="stylized"><p>If a is <em>not</em> defined, <code>a || a = 42</code> raises NameError, while <code>a ||= 42</code> returns 42. So, they don't seem to be equivalent expressions.</p></blockquote>
<p><cite>Vikrant Chaudhary</cite></p>
<p>It's lucky I said <em>"behaves like"</em> earlier - phew! But joking aside, Vikrant makes a good point.</p>
<p>This tricky case is a little like the hash case. Something intriguing about how Ruby operates behind the scenes throws a spanner into the works again. That is, a variable assignment, even if not run, immediately summons that variable into being. For example:</p>
<pre>x = 10 if 2 == 5
puts x</pre>
<p>Even though the first line won't be run, <code>x</code> will exist on the second line and no exception will be raised. Another nasty one:</p>
<pre>x = x
puts x</pre>
<p>Whoa! Well, <code>a ||= 42</code> is working in a similar way. Ruby sees the assignment at the <em>parsing</em> stage and creates the variable in a way that it wouldn't with <code>a || a = 42</code>, even though it ends up behaving like the latter once actual execution occurs.</p>
<h3>Further Reading</h3>
<p>This appears to have been a popular discussion point in Rubyland over the years, so I would be remiss not to include links to some of the best references:</p>
<ul>
<li>
<a href="http://talklikeaduck.denhaven2.com/2008/04/26/x-y-redux">x ||= y, Redux</a> by Rick DeNatale.</li>
<li><a href="http://www.reddit.com/r/ruby/comments/l2y8m/rubyists_already_use_monadic_patterns/c2pjlt8">The Reddit discussion about Dave Fayram's post</a></li>
<li><a href="http://groups.google.com/group/comp.lang.ruby/browse_thread/thread/cb531a6aa93f43b7/763899255643ccac#763899255643ccac">comp.lang.ruby: Please explain nuances of ||=</a></li>
<li><a href="http://groups.google.com/group/comp.lang.ruby/browse_thread/thread/fe4fbc48e19105cd/bf7f73380e285aff">comp.lang.ruby: The definitive list of ||= (OR Equal) threads and pages</a></li>
<li><a href="http://groups.google.com/group/rubyonrails-talk/browse_thread/thread/5dd4563099f97113/afc2a425523cbcef?lnk=st&amp;q=#afc2a425523cbcef">rubyonrails-talk: What does "||=" mean?</a></li>
<li><a href="http://dablog.rubypal.com/2008/3/25/a-short-circuit-edge-case">A short-circuit (||=) edge case</a></li>
</ul>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Konstantin Haase</strong> &middot; <time datetime="2011-10-18T02:09:00+00:00">October 18, 2011 at 2:09 am</time></p>
      <p>Also, on 1.9, it will check if a constant is defined. So this</p><p><code>Foo ||= 42</code></p><p>Translates roughly into this:</p><pre><code>if defined? Foo
  Foo || Foo = 42
else
  Foo = 42
end</code></pre>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-10-18T02:15:00+00:00">October 18, 2011 at 2:15 am</time></p>
      <p>Handy extra detail. Hadn't even thought to try that! :-) Might be a funny^H^H^H^H^Hevil way to define classes ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Vikrant Chaudhary</strong> &middot; <time datetime="2011-10-18T06:46:00+00:00">October 18, 2011 at 6:46 am</time></p>
      <p>if a is _not_ defined, `a || a = 42` raises NameError, while `a ||= 42` returns 42. So, they don't seem to be equivalent expressions.</p><p>NOTE: `a || a = 42` will raise NameError only for the first time, second call to same expression `a || a = 42` will return 42. (Ruby 1.8.7).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Anne Ominous</strong> &middot; <time datetime="2011-10-18T06:56:00+00:00">October 18, 2011 at 6:56 am</time></p>
      <p>I didn't see any why. I only saw more examples of what.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>kikito</strong> &middot; <time datetime="2011-10-18T07:54:00+00:00">October 18, 2011 at 7:54 am</time></p>
      <p>I demand that this operator is called the "amazed duck" operator from now on.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-10-19T01:55:00+00:00">October 19, 2011 at 1:55 am</time></p>
      <p>Vikrant: I've updated the article with your observation. Thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Vikrant Chaudhary</strong> &middot; <time datetime="2011-10-20T13:05:00+00:00">October 20, 2011 at 1:05 pm</time></p>
      <p>@Peter: Welcome. :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>hjdivad</strong> &middot; <time datetime="2011-10-20T18:41:00+00:00">October 20, 2011 at 6:41 pm</time></p>
      <p>Is the hash 'edge case' example #3 not wrong?  You have the resulting hash matching the = a || b case and not the a || a = case.</p><blockquote cite="article"><p>
  # 3. The a || a = b approach<br>
  hsh[:z] || hsh[:z] = 10<br>
  p hsh           # {:y=&gt;"default"}
</p></blockquote><p>Instead of</p><blockquote cite="irb"><p>
  ruby-1.9.2-p290 :032 &gt;   hsh = Hash.new('default')<br>
   =&gt; {}<br>
  ruby-1.9.2-p290 :033 &gt;<br>
  ruby-1.9.2-p290 :034 &gt;   hsh[:z] || hsh[:z] = 10<br>
   =&gt; "default"<br>
  ruby-1.9.2-p290 :035 &gt; p hsh<br>
  {}
</p></blockquote>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Grimm</strong> &middot; <time datetime="2011-10-20T22:22:00+00:00">October 20, 2011 at 10:22 pm</time></p>
      <p>"(which was fixed later)" - is my browser broken? I'm still getting "becomes x = x || y" in the original article. I'm not meaning this as criticism of anyone, I'm just confused.</p><p>Another interesting thing about ||= is that it won't produce a warning on uninitialized instance variables, whereas the naive alternatives would:</p><p><code>$VERBOSE = true<br>
@a ||= 1 # No warning<br>
@b || @b = 2 # Warning<br>
@c = @c || 3</code> # Warning</p><p>You all know about this because you always use warnings, right? Right??</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Grimm</strong> &middot; <time datetime="2011-10-20T22:24:00+00:00">October 20, 2011 at 10:24 pm</time></p>
      <p>Does &amp;&amp;= behave the same way as ||=, except that it's and rather than or?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-10-20T22:42:00+00:00">October 20, 2011 at 10:42 pm</time></p>
      <p>@hjdivad: I see why I've caused confusion but that was intentional (although not necessarily the best idea). That's the code running all in one go, not refreshing the hash between techniques, so you get an unchanged result from technique 2 (which set that key as shown.. but this is why different keys are used on each technique).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>hjdivad</strong> &middot; <time datetime="2011-10-21T05:20:00+00:00">October 21, 2011 at 5:20 am</time></p>
      <p>Thanks Peter.  Of course, it's obvious now that I read the code more carefully and you've pointed out what to look for. ^_^</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Marc</strong> &middot; <time datetime="2011-10-21T12:43:00+00:00">October 21, 2011 at 12:43 pm</time></p>
      <p>If you're looking for a "real" Option monad (in the style of Scala's implementation), checkout the Rumonade gem: <a href="https://rubygems.org/gems/rumonade" rel="nofollow">https://rubygems.org/gems/rumonade</a></p><p>(full disclosure: I am the author of this gem)</p><p>Rumonade also contains a scala-like Either class, whose LeftProject and RightProjection are monads, and monadic extensions of Array.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>KirinDave</strong> &middot; <time datetime="2011-10-31T21:11:00+00:00">October 31, 2011 at 9:11 pm</time></p>
      <p>It bums me out that THIS is the most-discussed part of my blog post. Here I am pointing out the correspondence between a very interesting pattern and examples of good ruby code, and all people can do is focus on the pedantic out-of-scope "corrections".</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
