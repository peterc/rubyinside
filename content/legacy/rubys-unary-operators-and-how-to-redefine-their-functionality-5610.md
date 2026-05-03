---
title: Ruby’s Unary Operators and How to Redefine Their Functionality
date: '2014-10-16'
author: Peter Cooper
author_slug: admin
post_id: 5610
slug: rubys-unary-operators-and-how-to-redefine-their-functionality-5610
url: "/rubys-unary-operators-and-how-to-redefine-their-functionality-5610.html"
categories:
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2011/11/unary.gif" alt="" title="unary" width="140" height="140" class="alignnone size-full wp-image-5612" style="float: right; margin-left: 18px; margin-bottom: 18px; border: 1px solid #458">In math, a <a href="http://en.wikipedia.org/wiki/Unary_operation">unary operation</a> is an operation with a single input. <strong>In Ruby, a unary operator is an operator which only takes a single 'argument' in the form of a <em>receiver</em>.</strong> For example, the <code>-</code> on <code>-5</code> or <code>!</code> on <code>!true</code>.</p>
<p>In contrast, a <em>binary operator</em>, such as in <code>2 + 3</code>, deals with <em>two</em> arguments. Here, 2 and 3 (which become one receiver and one argument in a method call to <code>+</code>).</p>
<p>Ruby only has a handful of <em>unary</em> operators, and while it's common to redefine binary operators like <code>+</code> or <code>[]</code> to give your objects some added syntactic sugar, unary operators are less commonly redefined. In my experience, many Rubyists aren't aware that unary operators <em>can</em> be redefined and.. technically you can't "redefine an operator" but Ruby's operators frequently use specially named <em>methods</em> behind the scenes, and as you'll know.. redefining a method is easy in Ruby!</p>
<h3>A Quick Example with -@</h3>
<p>Let's ease into things with the <code>-</code> unary operator. The <code>-</code> unary operator is <strong>not the same thing as the - binary operator</strong> (where a binary operator has two operants). By default, the <code>-</code> unary operator is used as notation for a negative number, as in <code>-25</code>, whereas the <code>-</code> binary operator performs subtraction, as in <code>50 - 25</code>. <strong>While they look similar, these are different concepts, different operators, and resolve to different methods in Ruby.</strong></p>
<p>Using the - unary operator on a string in <em>irb</em>:</p>
<pre><code>&gt; <strong>-"this is a test"</strong>
NoMethodError: undefined method `<strong>-@</strong>' for "this is a test":String</code></pre>
<p>The String class doesn't have unary <code>-</code> defined but irb gives us a clue on where to go. Due to the conflict between the unary and binary versions of <code>-</code>, the unary version's method has a suffix of @. This helps us come up with a solution:</p>
<pre><code>str = "This is my STRING!"

def str.-@
  downcase
end

p str     # =&gt; "This is my STRING!"
p -str    # =&gt; "this is my string!"</code></pre>
<p>We've defined the unary <code>-</code> operator by defining its associated <code>-@</code> method to translate its receiving object to lower case.</p>
<h3>Some Other Operators: +@, ~, ! (and not)</h3>
<p>Let's try a larger example where we subclass String and add our own versions of several other easily overridden unary operators:</p>
<pre>class MagicString &lt; String
  def +@
    upcase
  end

  def -@
    downcase
  end

  def !
    swapcase
  end

  def ~
    # Do a ROT13 transformation - http://en.wikipedia.org/wiki/ROT13
    tr 'A-Za-z', 'N-ZA-Mn-za-m'
  end
end

str = MagicString.new("This is my string!")
p +str         # =&gt; "THIS IS MY STRING!"
p !str         # =&gt; "tHIS IS MY STRING!"
p (not str)    # =&gt; "tHIS IS MY STRING!"
p ~str         # =&gt; "Guvf vf zl fgevat!"
p +~str        # =&gt; "GUVF VF ZL FGEVAT!"
p !(~str)      # =&gt; "gUVF VF ZL FGEVAT!"</pre>
<p>This time we've not only redefined <code>-/-@</code>, but the <code>+</code> unary operator (using the <code>+@</code> method), <code>!</code> and <code>not</code> (using the <code>!</code> method), and <code>~</code>.</p>
<p>I'm not going to explain the example in full because it's as simple as I could get it while still being more illustrative than reams of text. Note what operation each unary operator is performing and see how that relates to what is called and what results in the output.</p>
<h3>Special Cases: &amp; and *</h3>
<p><code>&amp;</code> and <code>*</code> are also unary operators in Ruby, but they're special cases, bordering on 'mysterious syntax magic.' What do they do?</p>
<h4>&amp; and to_proc</h4>
<p>Reg Braithwaite's <a href="http://weblog.raganwald.com/2008/06/what-does-do-when-used-as-unary.html">The unary ampersand in Ruby</a> post gives a great explanation of <code>&amp;</code>, but in short &amp; can turn objects into procs/blocks by calling the <code>to_proc</code> method upon the object. For example:</p>
<pre><code>p ['hello', 'world'].map(&amp;:reverse)  # =&gt; ["olleh", "dlrow"]</code></pre>
<p>Enumerable#<code>map</code> usually takes a block instead of an argument, but <code>&amp;</code> calls Symbol#<code>to_proc</code> and generates a special proc object for the <code>reverse</code> method. This proc becomes the block for the <code>map</code> and thereby reverses the strings in the array.</p>
<p>You could, therefore, 'override' the <code>&amp;</code> unary operator (not to be confused by the equivalent binary operator!) by defining <code>to_proc</code> on an object, with the only restriction being that you <em>must</em> return a Proc object for things to behave. You'll see an example of this later on.</p>
<h4>* and splatting</h4>
<p>There's <a href="http://endofline.wordpress.com/2011/01/21/the-strange-ruby-splat/">a lot of magic to splatting</a> but in short,  <code>*</code> can be considered to be a unary operator that will 'explode' an array <em>or</em> an object that implements <code>to_a</code> and returns an array.</p>
<p>To override the unary <code>*</code> (and not the binary * - as in <code>20 * 32</code>), then, you can define a <code>to_a</code> method and return an array. The array you return, however, will face further consequences thanks to *'s typical behavior!</p>
<h3>A Full Example</h3>
<p>We've reached the end of our quick tour through Ruby's unary operators, so I wanted to provide an example that shows how to override (or partially override) them that should stand as its own documentation:</p>
<div class="highlight">
<pre><span class="k">class</span> <span class="nc">MagicString</span> <span class="o">&lt;</span> <span class="nb">String</span>
  <span class="k">def</span> <span class="nf">+@</span>
    <span class="n">upcase</span>
  <span class="k">end</span>

  <span class="k">def</span> <span class="nf">-@</span>
    <span class="n">downcase</span>
  <span class="k">end</span>

  <span class="k">def</span> <span class="nf">~</span>
    <span class="c1"># Do a ROT13 transformation - http://en.wikipedia.org/wiki/ROT13</span>
    <span class="n">tr</span> <span class="s1">'A-Za-z'</span><span class="p">,</span> <span class="s1">'N-ZA-Mn-za-m'</span>
  <span class="k">end</span>

  <span class="k">def</span> <span class="nf">to_proc</span>
    <span class="no">Proc</span><span class="o">.</span><span class="n">new</span> <span class="p">{</span> <span class="nb">self</span> <span class="p">}</span>
  <span class="k">end</span>

  <span class="k">def</span> <span class="nf">to_a</span>
    <span class="o">[</span><span class="nb">self</span><span class="o">.</span><span class="n">reverse</span><span class="o">]</span>
  <span class="k">end</span>

 def !
   swapcase
 end
<span class="k">end</span>

<span class="n">str</span> <span class="o">=</span> <span class="no">MagicString</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="s2">"This is my string!"</span><span class="p">)</span>
<span class="nb">p</span> <span class="o">+</span><span class="n">str</span>                   <span class="c1"># =&gt; "THIS IS MY STRING!"</span>
<span class="nb">p</span> <span class="o">~</span><span class="n">str</span>                   <span class="c1"># =&gt; "Guvf vf zl fgevat!"</span>
<span class="nb">p</span> <span class="o">+~</span><span class="n">str</span>                  <span class="c1"># =&gt; "GUVF VF ZL FGEVAT!"</span>
<span class="nb">p</span> <span class="sx">%w{a b}</span><span class="o">.</span><span class="n">map</span> <span class="o">&amp;</span><span class="n">str</span>       <span class="c1"># =&gt; ["This is my string!", "This is my string!"]</span>
<span class="nb">p</span> <span class="o">*</span><span class="n">str</span>                   <span class="c1"># =&gt; "!gnirts ym si sihT"</span>

<span class="nb">p</span> <span class="o">!</span><span class="n">str</span>                   <span class="c1"># =&gt; "tHIS IS MY STRING!"</span>
<span class="nb">p</span> <span class="p">(</span><span class="ow">not</span> <span class="n">str</span><span class="p">)</span>              <span class="c1"># =&gt; "tHIS IS MY STRING!"</span>
<span class="nb">p</span> <span class="o">!</span><span class="p">(</span><span class="o">~</span><span class="n">str</span><span class="p">)</span>                <span class="c1"># =&gt; "gUVF VF ZL FGEVAT!"</span>
</pre>
</div>
<p>It's almost a cheat sheet of unary operators :-)</p>
<h3>A Further Example: The TestRocket</h3>
<p><a href="https://github.com/peterc/testrocket">TestRocket</a> is a tiny testing library I built for fun a few years ago. It leans heavily on unary operators. For example, you can write tests like this:</p>
<pre><code>+-&gt; { Die.new(2) }
--&gt; { raise }
+-&gt; { 2 + 2 == 4 }

# These two tests will deliberately fail
+-&gt; { raise }
--&gt; { true }

# A 'pending' test
~-&gt; { "this is a pending test" }

# A description
!-&gt; { "use this for descriptive output and to separate your test parts" }</code></pre>
<p>The <code>-&gt; { }</code> sections are just Ruby 1.9+ style 'stabby lambdas' but, with assistance from Christoph Grabo, I added unary methods to them so that you can prefix <code>+</code>, <code>-</code>, <code>~</code>, or <code>!</code> to get different behaviors.</p>
<p>Hopefully you can come up with some more useful application for unary methods on your own objects ;-)</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>zipizap</strong> &middot; <time datetime="2014-10-16T07:22:00+00:00">October 16, 2014 at 7:22 am</time></p>
      <p>It seems dangerous to override the "!" operator, because when used in conditions (if, until, ...) the condition may not evaluate as expected... </p><p>For example (in Ruby 1.9):</p><pre>&gt;&gt; str = "hey"
"hey"
&gt;&gt; puts "if condition valued to true" if (str)      #(str) condition evaluated to "true"
if condition valued to true
nil
&gt;&gt; puts "if condition valued to true" if (!str)     #(str) condition evaluated to "false"
nil

### untill here, everything was normall
### now we overload the ! operator of "str" , and see how it impacts the if conditions-evaluation:

&gt;&gt; def str.!; swapcase; end
nil

&gt;&gt; puts "if condition valued to true" if (str)        #(str) condition evaluated to "true", as before
if condition valued to true
nil
&gt;&gt; puts "if condition valued to true" if (!str)       #(str) condition evaluated to **"true"** ----&gt; because of the ! overloading
if condition valued to true
nil</pre><p>It seems a very practical option to overload unary operators, but I should not use it for the "!", as it may give unexpected results inside conditions</p><p>Great post :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
