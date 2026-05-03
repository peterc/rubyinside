---
title: 21 Ruby Tricks You Should Be Using In Your Own Code
date: '2008-05-26'
author: Peter Cooper
author_slug: admin
post_id: 902
slug: 21-ruby-tricks-902
url: "/21-ruby-tricks-902.html"
categories:
- compilations
- cool
- ruby-tricks
---

{{< rawhtml >}}
<p>Writing for Ruby Inside, I get to see a lot of Ruby code. Most is good, but sometimes we forget some of Ruby's shortcuts and tricks and reinvent the wheel instead. In this post I present 21 different Ruby "tricks," from those that most experienced developers use every day to the more obscure. Whatever your level, a refresh may help you the next time you encounter certain coding scenarios.</p>
<p><em><strong>Note to beginners:</strong> If you're still learning Ruby, check out my <a href="http://beginningruby.org/">Beginning Ruby</a> book.</em></p>
<p style="background-color: #ffc"><strong>2009 Update:</strong> This post was written in early 2008 and looking back on it, there are a couple of tricks that I wouldn't recommend anymore - or to which extra warnings need to be added. I've added paragraphs like this where necessary. Enjoy! :-)</p>
<h3>1 - Extract regular expression matches quickly</h3>
<p>A typical way to extract data from text using a regular expression is to use the <em>match</em> method. There is a shortcut, however, that can take the pain out of the process:</p>
<pre><span class="ident">email</span> <span class="punct">=</span> <span class="punct">"</span><span class="string">Fred Bloggs &lt;fred@<!--*-->bloggs.com&gt;</span><span class="punct">"</span>
<span class="ident">email</span><span class="punct">.</span><span class="ident">match</span><span class="punct">(/</span><span class="regex">&lt;(.*?)&gt;</span><span class="punct">/)[</span><span class="number">1</span><span class="punct">]</span>            <span class="comment"># =&gt; "fred@<!--*-->bloggs.com"</span>
<span class="ident">email</span><span class="punct">[/</span><span class="regex">&lt;(.*?)&gt;</span><span class="punct">/,</span> <span class="number">1</span><span class="punct">]</span>                  <span class="comment"># =&gt; "fred@<!--*-->bloggs.com"</span>
<span class="ident">email</span><span class="punct">.</span><span class="ident">match</span><span class="punct">(/</span><span class="regex">(x)</span><span class="punct">/)[</span><span class="number">1</span><span class="punct">]</span>                <span class="comment"># =&gt; NoMethodError [:(]</span>
<span class="ident">email</span><span class="punct">[/</span><span class="regex">(x)</span><span class="punct">/,</span> <span class="number">1</span><span class="punct">]</span>                      <span class="comment"># =&gt; nil</span>
<span class="ident">email</span><span class="punct">[/</span><span class="regex">([bcd]).*?([fgh])</span><span class="punct">/,</span> <span class="number">2</span><span class="punct">]</span>        <span class="comment"># =&gt; "g"</span></pre>
<p>Ultimately, using the <code>String#[]</code> approach is cleaner though it might seem more "magic" to you. It's also possible to use it without including an extra argument if you just want to match the entire regular expression. For example:</p>
<pre>x = 'this is a test'
x[/[aeiou].+?[aeiou]/]    # =&gt; 'is i'</pre>
<p>In this example, we match the first example of "a vowel, some other characters, then another vowel."</p>
<h3>2 - Shortcut for Array#join</h3>
<p>It's common knowledge that <code>Array#*</code>, when supplied with a number, multiplies the size of the array by using duplicate elements:</p>
<pre>[1, 2, 3] * 3 == [1, 2, 3, 1, 2, 3, 1, 2, 3]</pre>
<p>It's <em>not</em> well known, however, that when given a string as an argument <code>Array#*</code> does a <em>join</em>!</p>
<pre><span class="punct">%w{</span><span class="string">this is a test</span><span class="punct">}</span> <span class="punct">*</span> <span class="punct">"</span><span class="string">, </span><span class="punct">"</span>                 <span class="comment"># =&gt; "this, is, a, test"</span>
<span class="ident">h</span> <span class="punct">=</span> <span class="punct">{</span> <span class="symbol">:name</span> <span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">Fred</span><span class="punct">",</span> <span class="symbol">:age</span> <span class="punct">=&gt;</span> <span class="number">77</span> <span class="punct">}</span>
<span class="ident">h</span><span class="punct">.</span><span class="ident">map</span> <span class="punct">{</span> <span class="punct">|</span><span class="ident">i</span><span class="punct">|</span> <span class="ident">i</span> <span class="punct">*</span> <span class="punct">"</span><span class="string">=</span><span class="punct">"</span> <span class="punct">}</span> <span class="punct">*</span> <span class="punct">"</span><span class="string"><span class="escape">n</span></span><span class="punct">"</span>              <span class="comment"># =&gt; "age=77nname=Fred"</span></pre>
<h3>3 - Format decimal amounts quickly</h3>
<p>Formatting floating point numbers into a form used for prices can be done with <em>sprintf</em> or, alternatively, with a formatting interpolation:</p>
<pre><span class="ident">money</span> <span class="punct">=</span> <span class="number">9.5</span>
<span class="punct">"</span><span class="string">%.2f</span><span class="punct">"</span> <span class="punct">%</span> <span class="ident">money</span>                       <span class="comment"># =&gt; "9.50"</span></pre>
<h3>4 - Interpolate text quickly</h3>
<p>The formatting interpolation technique from #3 comes out again, this time to insert a string inside another:</p>
<pre><span class="punct">"</span><span class="string">[%s]</span><span class="punct">"</span> <span class="punct">%</span> <span class="punct">"</span><span class="string">same old drag</span><span class="punct">"</span>             <span class="comment"># =&gt; "[same old drag]"</span></pre>
<p>You can use an array of elements to substitute in too:</p>
<pre><span class="ident">x</span> <span class="punct">=</span> <span class="punct">%w{</span><span class="string">p hello p</span><span class="punct">}</span>
<span class="punct">"</span><span class="string">&lt;%s&gt;%s&lt;/%s&gt;</span><span class="punct">"</span> <span class="punct">%</span> <span class="ident">x</span>                    <span class="comment"># =&gt; "&lt;p&gt;hello&lt;/p&gt;"</span></pre>
<h3>5 - Delete trees of files</h3>
<p>Don't resort to using the shell to delete directories. Ruby comes with a handy file utilities library called <code>FileUtils</code> that can do the hard work:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">fileutils</span><span class="punct">'</span>
<span class="constant">FileUtils</span><span class="punct">.</span><span class="ident">rm_r</span> <span class="punct">'</span><span class="string">somedir</span><span class="punct">'</span></pre>
<p>Be careful how you use this one! There's a <code>FileUtils.rm_rf</code> too..</p>
<h3>6 - Exploding enumerables</h3>
<p><em>*</em> can be used to "explode" enumerables (arrays and hashes). "Exploding" is sort of an implicit on-the-fly conversion from an array to regular method arguments. We'll let the examples do the talking:</p>
<pre><span class="ident">a</span> <span class="punct">=</span> <span class="punct">%w{</span><span class="string">a b</span><span class="punct">}</span>
<span class="ident">b</span> <span class="punct">=</span> <span class="punct">%w{</span><span class="string">c d</span><span class="punct">}</span>
<span class="punct">[</span><span class="ident">a</span> <span class="punct">+</span> <span class="ident">b</span><span class="punct">]</span>                              <span class="comment"># =&gt; [["a", "b", "c", "d"]]</span>
<span class="punct">[*</span><span class="ident">a</span> <span class="punct">+</span> <span class="ident">b</span><span class="punct">]</span>                             <span class="comment"># =&gt; ["a", "b", "c", "d"]</span></pre>
<pre><span class="ident">a</span> <span class="punct">=</span> <span class="punct">{</span> <span class="symbol">:name</span> <span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">Fred</span><span class="punct">",</span> <span class="symbol">:age</span> <span class="punct">=&gt;</span> <span class="number">93</span> <span class="punct">}</span>
<span class="punct">[</span><span class="ident">a</span><span class="punct">]</span>                                  <span class="comment"># =&gt; [{:name =&gt; "Fred", :age =&gt;93}]</span>
<span class="punct">[*</span><span class="ident">a</span><span class="punct">]</span>                                 <span class="comment"># =&gt; [[:name, "Fred"], [:age, 93]]</span></pre>
<pre><span class="ident">a</span> <span class="punct">=</span> <span class="punct">%w{</span><span class="string">a b c d e f g h</span><span class="punct">}</span>
<span class="ident">b</span> <span class="punct">=</span> <span class="punct">[</span><span class="number">0</span><span class="punct">,</span> <span class="number">5</span><span class="punct">,</span> <span class="number">6</span><span class="punct">]</span>
<span class="ident">a</span><span class="punct">.</span><span class="ident">values_at</span><span class="punct">(*</span><span class="ident">b</span><span class="punct">).</span><span class="ident">inspect</span>              <span class="comment"># =&gt; ["a", "f", "g"]</span></pre>
<h3>7 - Cut down on local variable definitions</h3>
<p>Instead of defining a local variable with some initial content (often just an empty hash or array), you can instead define it "on the go" so you can perform operations on it at the same time:</p>
<pre><span class="punct">(</span><span class="ident">z</span> <span class="punct">||=</span> <span class="punct">[])</span> <span class="punct">&lt;&lt;</span> <span class="punct">'</span><span class="string">test</span><span class="punct">'</span></pre>
<p style="background-color: #ffc"><strong>2009 Update:</strong> This is pretty rancid, to be honest. I've changed my mind; you <em>shouldn't</em> be doing this :)</p>
<h3>8 - Using non-strings or symbols as hash keys</h3>
<p>It's rare you see anyone use non-strings or symbols as hash keys. It's totally possible though, and sometimes handy (and, no, this isn't necessarily a great example!):</p>
<pre><span class="ident">does</span> <span class="punct">=</span> <span class="ident">is</span> <span class="punct">=</span> <span class="punct">{</span> <span class="constant">true</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">Yes</span><span class="punct">',</span> <span class="constant">false</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">No</span><span class="punct">'</span> <span class="punct">}</span>
<span class="ident">does</span><span class="punct">[</span><span class="number">10</span> <span class="punct">==</span> <span class="number">50</span><span class="punct">]</span>                       <span class="comment"># =&gt; "No"</span>
<span class="ident">is</span><span class="punct">[</span><span class="number">10</span> <span class="punct">&gt;</span> <span class="number">5</span><span class="punct">]</span>                           <span class="comment"># =&gt; "Yes"</span></pre>
<h3>9 - Use 'and' and 'or' to group operations for single liners</h3>
<p>This is a trick that more confident Ruby developers use to tighten up their code and remove short multi-line if and unless statements:</p>
<pre><span class="ident">queue</span> <span class="punct">=</span> <span class="punct">[]</span>
<span class="punct">%w{</span><span class="string">hello x world</span><span class="punct">}.</span><span class="ident">each</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">word</span><span class="punct">|</span>
  <span class="ident">queue</span> <span class="punct">&lt;&lt;</span> <span class="ident">word</span> <span class="keyword">and</span> <span class="ident">puts</span> <span class="punct">"</span><span class="string">Added to queue</span><span class="punct">"</span> <span class="keyword">unless</span> <span class="ident">word</span><span class="punct">.</span><span class="ident">length</span> <span class="punct">&lt; </span> <span class="number">2</span>
<span class="keyword">end</span>
<span class="ident">puts</span> <span class="ident">queue</span><span class="punct">.</span><span class="ident">inspect</span>

<span class="comment"># Output:</span>
<span class="comment">#   Added to queue</span>
<span class="comment">#   Added to queue</span>
<span class="comment">#   ["hello", "world"]</span></pre>
<p style="background-color: #ffc"><strong>2009 Update:</strong> Be careful here - this one can sting you in the butt if your first expression returns <code>nil</code> even when it <em>works.</em> A key example of this is with the <code>puts</code> method which returns <code>nil</code> even after printing the supplied arguments.</p>
<h3>10 - Do something only if the code is being implicitly run, not <em>require</em>d</h3>
<p>This is a very common pattern amongst experienced Ruby developers. If you're writing a Ruby script that could be used either as a library OR directly from the command line, you can use this trick to determine whether you're running the script directly or not:</p>
<pre><span class="keyword">if</span> <span class="constant">__FILE__</span> <span class="punct">==</span> <span class="global">$0</span>
  <span class="comment"># Do something.. run tests, call a method, etc. We're direct.</span>
<span class="keyword">end</span></pre>
<h3>11 - Quick mass assignments</h3>
<p>Mass assignment is something most Ruby developers learn early on, but it's amazing how little it's used relative to its terseness:</p>
<pre><span class="ident">a</span><span class="punct">,</span> <span class="ident">b</span><span class="punct">,</span> <span class="ident">c</span><span class="punct">,</span> <span class="ident">d</span> <span class="punct">=</span> <span class="number">1</span><span class="punct">,</span> <span class="number">2</span><span class="punct">,</span> <span class="number">3</span><span class="punct">,</span> <span class="number">4</span></pre>
<p>It can come in particularly useful for slurping method arguments that have been bundled into an array with *:</p>
<pre><span class="keyword">def </span><span class="method">my_method</span><span class="punct">(*</span><span class="ident">args</span><span class="punct">)</span>
  <span class="ident">a</span><span class="punct">,</span> <span class="ident">b</span><span class="punct">,</span> <span class="ident">c</span><span class="punct">,</span> <span class="ident">d</span> <span class="punct">=</span> <span class="ident">args</span>
<span class="keyword">end</span></pre>
<p>If you want to get really smart (although this is more 'clever' than truly wise):</p>
<pre><span class="keyword">def </span><span class="method">initialize</span><span class="punct">(</span><span class="ident">args</span><span class="punct">)</span>
  <span class="ident">args</span><span class="punct">.</span><span class="ident">keys</span><span class="punct">.</span><span class="ident">each</span> <span class="punct">{</span> <span class="punct">|</span><span class="ident">name</span><span class="punct">|</span> <span class="ident">instance_variable_set</span> <span class="punct">"</span><span class="string">@</span><span class="punct">"</span> <span class="punct">+</span> <span class="ident">name</span><span class="punct">.</span><span class="ident">to_s</span><span class="punct">,</span> <span class="ident">args</span><span class="punct">[</span><span class="ident">name</span><span class="punct">]</span> <span class="punct">}</span>
<span class="keyword">end</span></pre>
<h3>12 - Use ranges instead of complex comparisons for numbers</h3>
<p>No more <em>if x &gt; 1000 &amp;&amp; x &lt; 2000</em> nonsense. Instead:</p>
<pre><span class="ident">year</span> <span class="punct">=</span> <span class="number">1972</span>
<span class="ident">puts</span>  <span class="keyword">case</span> <span class="ident">year</span>
        <span class="keyword">when</span> <span class="number">1970</span><span class="punct">..</span><span class="number">1979</span><span class="punct">:</span> <span class="punct">"</span><span class="string">Seventies</span><span class="punct">"</span>
        <span class="keyword">when</span> <span class="number">1980</span><span class="punct">..</span><span class="number">1989</span><span class="punct">:</span> <span class="punct">"</span><span class="string">Eighties</span><span class="punct">"</span>
        <span class="keyword">when</span> <span class="number">1990</span><span class="punct">..</span><span class="number">1999</span><span class="punct">:</span> <span class="punct">"</span><span class="string">Nineties</span><span class="punct">"</span>
      <span class="keyword">end</span></pre>
<h3>13 - Use enumerations to cut down repetitive code</h3>
<p>Rubyists are often keen to remove repetition - often espousing "DRY" (Don't Repeat Yourself). You can take this to extremes using Ruby's enumerators to perform similar operations multiple times. Consider requiring multiple files, for instance:</p>
<pre><span class="punct">%w{</span><span class="string">rubygems daemons eventmachine</span><span class="punct">}.</span><span class="ident">each</span> <span class="punct">{</span> <span class="punct">|</span><span class="ident">x</span><span class="punct">|</span> <span class="ident">require</span> <span class="ident">x</span> <span class="punct">}</span></pre>
<h3>14 - The Ternary Operator</h3>
<p>Another trick that's usually learned early on by Ruby developers but rarely in less experienced developers' code is the "ternary operator." The ternary operator is not a fix-all, but it can sometimes make things tighter, particularly in view templates.</p>
<pre><span class="ident">puts</span> <span class="ident">x</span> <span class="punct">==</span> <span class="number">10</span> <span class="punct">?</span> <span class="punct">"</span><span class="string">x is ten</span><span class="punct">"</span> <span class="punct">:</span> <span class="punct">"</span><span class="string">x is not ten</span><span class="punct">"</span>

<span class="comment"># Or.. an assignment based on the results of a ternary operation:</span>
<span class="constant">LOG</span><span class="punct">.</span><span class="ident">sev_threshold</span> <span class="punct">=</span> <span class="constant">ENVIRONMENT</span> <span class="punct">==</span> <span class="symbol">:development</span> <span class="punct">?</span> <span class="constant">Logger</span><span class="punct">::</span><span class="constant">DEBUG</span> <span class="punct">:</span> <span class="constant">Logger</span><span class="punct">::</span><span class="constant">INFO</span>
</pre>
<h3>15 - Nested Ternary Operators</h3>
<p>It can be asking for trouble but ternary operators <em>can</em> be nested within each other (after all, they only return objects, like everything else):</p>
<pre><span class="ident">qty</span> <span class="punct">=</span> <span class="number">1</span>
<span class="ident">qty</span> <span class="punct">==</span> <span class="number">0</span> <span class="punct">?</span> <span class="punct">'</span><span class="string">none</span><span class="punct">'</span> <span class="punct">:</span> <span class="ident">qty</span> <span class="punct">==</span> <span class="number">1</span> <span class="punct">?</span> <span class="punct">'</span><span class="string">one</span><span class="punct">'</span> <span class="punct">:</span> <span class="punct">'</span><span class="string">many</span><span class="punct">'</span>
<span class="comment"># Just to illustrate, in case of confusion:</span>
<span class="punct">(</span><span class="ident">qty</span> <span class="punct">==</span> <span class="number">0</span> <span class="punct">?</span> <span class="punct">'</span><span class="string">none</span><span class="punct">'</span> <span class="punct">:</span> <span class="punct">(</span><span class="ident">qty</span> <span class="punct">==</span> <span class="number">1</span> <span class="punct">?</span> <span class="punct">'</span><span class="string">one</span><span class="punct">'</span> <span class="punct">:</span> <span class="punct">'</span><span class="string">many</span><span class="punct">'))</span>
</pre>
<h3>16 - Fight redundancy with Ruby's "logic" features</h3>
<p>I commonly see methods using this sort of pattern:</p>
<pre><span class="keyword">def </span><span class="method">is_odd</span><span class="punct">(</span><span class="ident">x</span><span class="punct">)</span>
  <span class="comment"># Wayyyy too long..</span>
  <span class="keyword">if</span> <span class="ident">x</span> <span class="punct">%</span> <span class="number">2</span> <span class="punct">==</span> <span class="number">0</span>
    <span class="keyword">return</span> <span class="constant">false</span>
  <span class="keyword">else</span>
    <span class="keyword">return</span> <span class="constant">true</span>
  <span class="keyword">end</span>
<span class="keyword">end</span></pre>
<p>Perhaps we can use a ternary operator to improve things?</p>
<pre><span class="keyword">def </span><span class="method">is_odd</span><span class="punct">(</span><span class="ident">x</span><span class="punct">)</span>
  <span class="ident">x</span> <span class="punct">%</span> <span class="number">2</span> <span class="punct">==</span> <span class="number">0</span> <span class="punct">?</span> <span class="constant">false</span> <span class="punct">:</span> <span class="constant">true</span>
<span class="keyword">end</span></pre>
<p>It's shorter, and I've seen that pattern a <b>lot</b> (sadly) but you should go one step further and rely on the <em>true / false</em> responses Ruby's comparison operators <b>already</b> give!</p>
<pre><span class="keyword">def </span><span class="method">is_odd</span><span class="punct">(</span><span class="ident">x</span><span class="punct">)</span>
  <span class="comment"># Use the logical results provided to you by Ruby already..</span>
  <span class="ident">x</span> <span class="punct">%</span> <span class="number">2</span> <span class="punct">!=</span> <span class="number">0</span>
<span class="keyword">end</span></pre>
<p>Sometimes, though, you want to explicitly convert implicit true/false scenarios into explicit true/false results:</p>
<pre>class String
  def contains_digits?
    self[/\d/] ? true : false
  end
end</pre>
<p>If we hadn't done this, you'd get back either <em>nil</em> or the first matched digit rather than true or false.</p>
<h3>17 - See the whole of an exception's backtrace</h3>
<pre><span class="keyword">def </span><span class="method">do_division_by_zero</span><span class="punct">;</span> <span class="number">5</span> <span class="punct">/</span> <span class="number">0</span><span class="punct">;</span> <span class="keyword">end</span>
<span class="keyword">begin</span>
  <span class="ident">do_division_by_zero</span>
<span class="keyword">rescue</span> <span class="punct">=&gt;</span> <span class="ident">exception</span>
  <span class="ident">puts</span> <span class="ident">exception</span><span class="punct">.</span><span class="ident">backtrace</span>
<span class="keyword">end</span></pre>
<h3>18 - Allow both single items AND arrays to be enumerated against</h3>
<pre><span class="comment"># [*items] converts a single object into an array with that single object</span>
<span class="comment"># of converts an array back into, well, an array again</span>
<span class="punct">[*</span><span class="ident">items</span><span class="punct">].</span><span class="ident">each</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">item</span><span class="punct">|</span>
  <span class="comment"># ...</span>
<span class="keyword">end</span></pre>
<h3>19 - Rescue blocks don't need to be tied to a 'begin'</h3>
<pre><span class="keyword">def </span><span class="method">x</span>
  <span class="keyword">begin</span>
    <span class="comment"># ...</span>
  <span class="keyword">rescue</span>
    <span class="comment"># ...</span>
  <span class="keyword">end</span>
<span class="keyword">end</span></pre>
<pre><span class="keyword">def </span><span class="method">x</span>
  <span class="comment"># ...</span>
<span class="keyword">rescue</span>
  <span class="comment"># ...</span>
<span class="keyword">end</span></pre>
<h3>20 - Block comments</h3>
<p>I tend to see this in more 'old-school' Ruby code. It's surprisingly under-used though, but looks a lot better than a giant row of pound signs in many cases:</p>
<pre><span class="ident">puts</span> <span class="punct">"</span><span class="string">x</span><span class="punct">"</span>
<span class="comment">=begin
  this is a block comment
  You can put anything you like here!

  puts "y"
=end</span>
<span class="ident">puts</span> <span class="punct">"</span><span class="string">z</span><span class="punct">"</span></pre>
<p style="background-color: #ffc"><strong>2009 Update:</strong> Curiously, I've not seen any significant uptake of block comments in Ruby but.. I don't use them myself either anymore. I suspect with column editing and keyboard shortcuts in common text editors, the motivation here has lessened.</p>
<h3>21 - Rescue to the rescue</h3>
<p>You can use <em>rescue</em> in its single line form to return a value when other things on the line go awry:</p>
<pre><span class="ident">h</span> <span class="punct">=</span> <span class="punct">{</span> <span class="symbol">:age</span> <span class="punct">=&gt;</span> <span class="number">10</span> <span class="punct">}</span>
<span class="ident">h</span><span class="punct">[</span><span class="symbol">:name</span><span class="punct">].</span><span class="ident">downcase</span>                         <span class="comment"># ERROR</span>
<span class="ident">h</span><span class="punct">[</span><span class="symbol">:name</span><span class="punct">].</span><span class="ident">downcase</span> <span class="keyword">rescue</span> <span class="punct">"</span><span class="string">No name</span><span class="punct">"</span>        <span class="comment"># =&gt; "No name"</span></pre>
<p>If you want to post your own list of Ruby tricks to your blog, send trackback here or leave a comment, and I'll link to all of them in a future post. Alternatively, feel free to post your own Ruby tricks as comments here, or critique or improve on those above.</p>
<p><em>As an aside, Ruby Inside is exactly two years old today. Thanks for your support! Intriguingly, the <a href="initializing-instance-variables-from-the-parameter-list-4.html">first post was <b>another Ruby trick</b></a> that I forgot to include above, so check that out too.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Gianni Chiappetta</strong> &middot; <time datetime="2008-05-26T19:31:00+00:00">May 26, 2008 at 7:31 pm</time></p>
      <p>Hey, great article! Will be using tons of these tips! You need to escape your right and left angled brackets in the first example string though.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>AkitaOnRails</strong> &middot; <time datetime="2008-05-26T19:47:00+00:00">May 26, 2008 at 7:47 pm</time></p>
      <p>Awesome compilations, didn't know some bits of it myself!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Henrik N</strong> &middot; <time datetime="2008-05-26T20:05:00+00:00">May 26, 2008 at 8:05 pm</time></p>
      <p>Another way to do #18 is with Array(items). Though IIRC ActiveRecord proxies don't play nice with that, since their method_missing magic calls the deprecated Object#to_a.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Giles Bowkett</strong> &middot; <time datetime="2008-05-26T20:09:00+00:00">May 26, 2008 at 8:09 pm</time></p>
      <p>Some of these I like a lot, but I think a few could actually be a sign of knowing Ruby too well. The rescue stuff, exception.backtrace, the use of ranges in case statements, I think the world would be a better place with more of that, but #7 is just asking for trouble.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-05-26T20:13:00+00:00">May 26, 2008 at 8:13 pm</time></p>
      <p>Gianni: Thanks! I've edited this piece about 10 times already due to the "tweaks" WordPress has made to it.. :) Got that one now.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Austin Putman</strong> &middot; <time datetime="2008-05-26T20:19:00+00:00">May 26, 2008 at 8:19 pm</time></p>
      <p>Hey Peter,</p><p>this looks great!  I am still not seeing the full email-address string for the first example in safari, ff, or opera.  The example becomes confusing quickly unless you know what it should be looking for.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Soleone</strong> &middot; <time datetime="2008-05-26T20:31:00+00:00">May 26, 2008 at 8:31 pm</time></p>
      <p>Wow, really nice indeed!<br>
That is some sweet Ruby code right there, I need to suck it all up!!</p><p>Great post! Someone should make a screencast out of it...</p><p>...no not me, I am too lazy...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Fabio Cevasco</strong> &middot; <time datetime="2008-05-26T20:34:00+00:00">May 26, 2008 at 8:34 pm</time></p>
      <p>Really, really awesome! Thanks for sharing those nice tips Peter, I'd like to see more of these posts, personally!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2008-05-26T20:43:00+00:00">May 26, 2008 at 8:43 pm</time></p>
      <p>There's a secret #22 in #17...  being able to exclude Exception on a rescue. :)</p><p>begin<br>
   jump<br>
rescue =&gt; exception<br>
   put exception.backtrace<br>
end</p><p>is short for</p><p>begin<br>
   jump<br>
rescue Exception =&gt; exception<br>
   put exception.backtrace<br>
end</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stefan Lang</strong> &middot; <time datetime="2008-05-26T20:45:00+00:00">May 26, 2008 at 8:45 pm</time></p>
      <p>Please refrain from #9. The given example is especially horrible. I'm using Ruby for a couple of years now and I would have interpreted it wrong.</p><p>If you really want to put it on one line use parens and semicolon:</p><p>    (queue &lt;&lt; word; puts "Added to queue") unless word.length &lt;  2</p><p>And "puts queue.inspect" is highly unidiomatic, it does the same as "p queue".</p><p>Otherwise a nice list, thanks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-05-26T20:51:00+00:00">May 26, 2008 at 8:51 pm</time></p>
      <p>Seems I had to fix something else too :) #1 should now be working okay. Thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-05-26T20:53:00+00:00">May 26, 2008 at 8:53 pm</time></p>
      <p>Stefan: One place where #9 can come in useful is in Rails when you want to render something and return all based on a condition. Rather than do four lines (if / render / return / end), you can use that technique to get it on one line. (At least, you did at one point, whether things have changed now I don't know as I haven't used Rails 2.1 yet.)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark Wilden</strong> &middot; <time datetime="2008-05-26T20:54:00+00:00">May 26, 2008 at 8:54 pm</time></p>
      <p>Some of these are good tricks, some are blindingly obvious to decent programmers,  some are unnecessary, and some are actually bad (all IMHO, of course). They are certainly not all things we "should" be using in our own code.</p><p>1. Good tip, but the first line is wrong, I think.</p><p>2. As Array#join is so prevalent, I think it should be continued to be used in place of the utterly unmnemonic * .</p><p>4. The Ruby idiom for interpolating text is #{}. Using the C equivalent is just going to confuse people (even if just for a second).</p><p>7. What's wrong with z = ['test'] ?</p><p>8. If this is such a good tip, let's see a good example!</p><p>9. This, like a lot of these tips, is predicated on shorter code being better. Most of the time I would agree, but I see no point in using 'and' here instead of just putting a separate operation on a separate line. Besides, wouldn't 'or' work just as well? That's the sign of a bad construct, it seems to me.</p><p>16. It's sad that people use true and false in this way, but they do, so it's a good tip. Unfortunately.</p><p>18. Not sure if this is a good example. If 'items' is a single object, it shouldn't be called 'items.'  I would hope it to be rare to want to enumerate over a single object anyway. Certainly, it should be rare, in which case, this code expands an array and then immediately collapses it again.</p><p>20. I think comments are a code smell.</p><p>21. Using exception handling in place of a control structure is generally frowned upon. I have to admit, though, that this is nice and neat, it avoids things like andand, and I do see it in "real" code. It's probably way slower than the more straightforward technique, but that's not a real issue.</p><p>Overall, an interesting article - interesting enough to take the time to disagree with some of it. :)</p><p>///ark</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Zoran Rilak</strong> &middot; <time datetime="2008-05-26T21:15:00+00:00">May 26, 2008 at 9:15 pm</time></p>
      <p>Hi Peter,</p><p>good list!  Most of those really can be seen "in the wild", especially among more experienced Rubyists.  I suspect there will be some dissent over certain points, as there always is, and I imagine point number 7 to be the first to come under close scrutiny :)  For example,</p><p># generate the first 12 Fibonacci numbers<br>
fib = [1, 1]<br>
10.times { fib &lt;&lt; fib[-1] + fib[-2] }</p><p>is (to me, at least) more immediately accessible than</p><p># generate the first 12 Fibonacci numbers<br>
10.times { (fib ||= [1, 1]) &lt;&lt; fib[-1] + fib[-2] }</p><p>Also, I've come to realize that grouping local initializations at the beginning of the function helps me immensely later when debugging or writing tests.  Probably a matter of taste. :)</p><p>Speaking of grouping things, this is how I test for valid arguments:</p><p>def send_letter(address, letter)<br>
  throw "Address must be a string" unless address.is_a?(String)<br>
  throw "Need a Letter instance" unless letter.is_a?(Letter)<br>
  throw "Can't send as a letter" unless letter.mass &lt;= 16.oz<br>
  ...<br>
end</p><p>Which is fairly obvious to some, if not most people, but perhaps bears a mention.</p><p>Cheers,<br>
Zoran</p>
    </li>
      <li>
      <p class="comment-meta"><strong>zimbatm</strong> &middot; <time datetime="2008-05-26T21:31:00+00:00">May 26, 2008 at 9:31 pm</time></p>
      <p>#12 : Some other handy case usage</p><p>var = "hello"<br>
case var<br>
when /el/<br>
  puts "Regexp matched"<br>
when String<br>
  puts "Class matched"<br>
when 1,2,3<br>
  puts "Multiple arguments matching"<br>
end</p><p>#21: This is generally a bad practice for two reasons :<br>
  1) Running ruby with --debug will show all those unnecessary exceptions<br>
  2) The backtrace gets built even if not used and it is expensive</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-05-26T21:34:00+00:00">May 26, 2008 at 9:34 pm</time></p>
      <p>Mark:</p><p>1: WordPress didn't escape the brackets. Should be sorted now.</p><p>2: I mostly agree, although this is a very cute trick that I am sure to use in certain, off the cuff situations.</p><p>7: It's really for situations where you repeat something over and over. For example, appending something to an instance variable in a class. I tend to use it with class variables that store references to objects of that class. (@@objs ||= []) &lt;&lt; self, for example.</p><p>18: There are some instances where external data define whether you have a single object or an array, and you /could/ check for that and fix it to always be an array, but it's easier just to use this trick. I believe one instance is when Rails converts params.. if there are multiples with the same name, you can get an array of strings, otherwise you just get the string.. if you want to iterate over whatever you get back, this trick sorts it out.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-05-26T21:35:00+00:00">May 26, 2008 at 9:35 pm</time></p>
      <p>Anyway, critiques are certainly encouraged and welcomed on this. If people can "correct" any bad usages, that will help everyone else who comes here to check out the tricks. That said, they are "tricks" and not all of them are 100% smell-free :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>David Black</strong> &middot; <time datetime="2008-05-26T21:52:00+00:00">May 26, 2008 at 9:52 pm</time></p>
      <p>Hi Peter --</p><p>It's good to see this stuff -- I've definitely been too immersed recently in discussions of changing Ruby, and not enough of what one can actually do with it! Like everyone else, I have my likes and dislikes, but I think overall it's a good list and every single one is worth knowing about and thinking about. </p><p>I'd just like to expand on #19 by pointing out the possibly obvious, which is that leaving out 'begin' only works in method definitions (where 'def' carries a kind of implicit begin). Also, there will of course be occasions where one wants a begin in a method, namely in cases where you don't want the whole method governed by the rescue clause. </p><p>David</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stephen Celis</strong> &middot; <time datetime="2008-05-26T22:17:00+00:00">May 26, 2008 at 10:17 pm</time></p>
      <p>Re: 12</p><p>I wouldn't encourage people to get in the habit of using</p><p>- `when something: another_thing`</p><p>The colon is deprecated (and raises an exception in 1.9). Use either `then` or semi-colon:</p><p>- `when something then another_thing`<br>
- `when something; another_thing`</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Phil</strong> &middot; <time datetime="2008-05-26T22:25:00+00:00">May 26, 2008 at 10:25 pm</time></p>
      <p>&gt; x % 2 != 0</p><p>You can also do this: not (x % 2).zero?</p><p>Not sure how much better that is, but it's definitely an overlooked trick.</p><p>Code that doesn't use #16 is a personal pet peeve of mine.</p><p>Chris: no no no... "rescue =&gt; e" does NOT imply Exception, it implies StandardError. Big difference. Getting the two confused is another pet peeve of mine, as it makes code impossible to escape from via Ctrl-C since Interrupts get rescued. no fun.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>topfunky</strong> &middot; <time datetime="2008-05-26T22:55:00+00:00">May 26, 2008 at 10:55 pm</time></p>
      <p>I can tell that this list was written by an ex-Perl programmer, especially #15. ;-)</p><p>It's too bad that Ruby doesn't have the wantarray method as in Perl. I've used it a few times for situations like #11, mass assignment and returning arrays.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Roman Le Négrate</strong> &middot; <time datetime="2008-05-26T22:58:00+00:00">May 26, 2008 at 10:58 pm</time></p>
      <p>6 - Why "explode"? I believe it's called the "splat" operator. Makes more sense to me.</p><p>7 - Could be just: (z = []) &lt; '-u', :group =&gt; '-g'}[kind] or raise ArgumentError.</p><p>17 - In Ruby 1.9, Array#to_s is an alias of #inspect so the backtrace wouldn't be displayed in a readable manner.</p><p>18 - Ok in Ruby 1.9. But in 1.8, be careful with strings: the splat operator calls #to_a that splits strings on new lines, which might not be the expected behaviour. [items].flatten is a safer alternative.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Roman Le Négrate</strong> &middot; <time datetime="2008-05-26T23:02:00+00:00">May 26, 2008 at 11:02 pm</time></p>
      <p>Sorry about my comment above: my comment about point 7 has been garbaged and the one about point 8 dropped. Here they are:</p><p>7 - Could be just: (z = []).push "test".</p><p>8 - I like to use Hashes to make one line case statements like: flag = {:user =&gt; '-u', :group =&gt; '-g'}[kind] or raise ArgumentError.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-05-26T23:38:00+00:00">May 26, 2008 at 11:38 pm</time></p>
      <p>Roman: On your comment for number 7, what you are suggesting wouldn't want for what was intended. If you repeat that over and over, the array doesn't get bigger as z is reinitialized to [] each time, hence the ||= variation. </p><p>On your comment for #18.. very interesting! I didn't realize that. Unfortunately even Array("x\ny\nz") does that split too. Your flatten technique appears to be a good one here.</p><p>Your one line case statements using hashes.. that's a good trick! I might try that myself..</p><p>You should consider making your own list, Roman. I'd definitely link to it. You clearly have a deep experience of some of the pitfalls regarding Ruby trickery! :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tom H</strong> &middot; <time datetime="2008-05-27T00:09:00+00:00">May 27, 2008 at 12:09 am</time></p>
      <p>Thanks!  </p><p>Some are great, but some are clever (or just plain obtuse) at the expense of readability.  Elegance is not the same as terseness.  Elegance is always good.  </p><p>Terseness and its evil twin verbosity will always be in bitter war against each other, both in pursuit of elegance.  The winner is not always clear.</p><p>C, C++, Perl, Smalltalk and others have all allowed its practitioners to fall into the "terse is good" trap.  We should aim for succinct.  Or, as Einstein may have said, "everything should be as simple as possible, but no simpler."</p><p>Tom</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Shalon Wood</strong> &middot; <time datetime="2008-05-27T00:29:00+00:00">May 27, 2008 at 12:29 am</time></p>
      <p>#15... no, no, a thousand times no! I dislike the use of the ternary operator in general, honestly, but if you _are_ going to use it, never, ever, _ever_ nest it! Down that path lies madness for whoever comes along behind you and has to maintain the code.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Buntine</strong> &middot; <time datetime="2008-05-27T00:51:00+00:00">May 27, 2008 at 12:51 am</time></p>
      <p>Great list. I don't know if "should be using" applies to all of these tricks, however.</p><p>I have a friend who is currently serving 27 years in prison for nesting ternary operators. Please don't do it!!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Yeah</strong> &middot; <time datetime="2008-05-27T01:14:00+00:00">May 27, 2008 at 1:14 am</time></p>
      <p>My, all this BRAINPOWER and it has not occurred to anyone to make a FUCKING PRINT FRIENDLY version available??!!??</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paul Prestidge</strong> &middot; <time datetime="2008-05-27T01:46:00+00:00">May 27, 2008 at 1:46 am</time></p>
      <p>"[items].flatten is a safer alternative"</p><p>Won't that break nested arrays?  You can write a "flatten one level" method, but otherwise I think #18 is the best way.  You should know if your code is expecting strings or not!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>segfault</strong> &middot; <time datetime="2008-05-27T02:40:00+00:00">May 27, 2008 at 2:40 am</time></p>
      <p>Nice List Peter.</p><p>As with many of the other comments, any issues I have with the items are derived from personal taste. </p><p>[item].flatten ftw.<br>
and ( mylist ||= []) &lt;&lt; "stuff" can cause some interesting trouble when used without considering scoping.</p><p>A note to Zoran tho, throw != raise. It's deceptive when coming from a java,c#,c++ background as throw seems more akin to goto.  </p><p>Cheers</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Todd Werth</strong> &middot; <time datetime="2008-05-27T05:56:00+00:00">May 27, 2008 at 5:56 am</time></p>
      <p>This is an interesting list, I learned a few things.  Thank you.</p><p>However, the ternary operator is a pet peeve of mine.  It seems to be loved by those who were taught, wrongly, that having fewer lines of code is better; that somehow vertical size is worse than horizontal size.  if/else is concise enough, very readable, and everyone understands it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>indeed</strong> &middot; <time datetime="2008-05-27T06:07:00+00:00">May 27, 2008 at 6:07 am</time></p>
      <p>you can just put a normal case statement on a line.  the multiple 'when' is pretty ugly tho</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Piers Cawley</strong> &middot; <time datetime="2008-05-27T06:18:00+00:00">May 27, 2008 at 6:18 am</time></p>
      <p>I've been bitten badly by inline rescue a little too often I'm afraid. It catches too many types of exception, and you then have a hard time tracking down the spurious nil and what caused it because you've thrown away the exception information.</p><p>@Mark Wilden: I've used it for memoizing the calculation of candidates in a kakuro solver. Skeleton solution looked something like:</p><p><code>@@result_cache = Hash.new {|args| self[args] = calculate_possibles(*args)}</code></p><p>def self.possible_values(target_sum, places, candidates)<br>
  @@result_cache[[target_sum, places, candidates]]<br>
end</p><p>def calculate_possible_values(target_sum, places, candidates)<br>
  ...<br>
end<br>
</p><p>I've also used it in a rails plugin that did some tricks with the params hash. Because the params hash is just a hash (a mistake IMHO) rather than a hashlike object, you can't monkeypatch it easily. The only way I could pass information around was to come up with some kind of hash key that I could use which would never clash with the 'real' hash keys. So I did something like:</p><p><code>module DistinguishedHashKey<br>
end</code></p><p>...</p><p>params[DistinguishedHashKey] = ...<br>
</p><p>Admittedly that's not a _good_ solution, a better one would probably have involved submitting a patch introducing a RequestParams class to Rails, but life is short, time was marching on and I needed the problem solved then and there.</p><p>@Peter - one line case statements using hash. Those are especially useful when you start using lambas in the hash values. An _old_ perl trick that one...</p><p>Roman: The problem with [items].flatten is that it's too eager. Sure it fixes the string case, but it breaks [*[:foo, [:bar]]]. One fix:</p><p><code>begin<br>
  old, $/ = $/, ""<br>
  [*items]<br>
ensure<br>
  $/ = old<br>
end</code></p><p>Not even slightly pretty though.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tom Bille</strong> &middot; <time datetime="2008-05-27T06:27:00+00:00">May 27, 2008 at 6:27 am</time></p>
      <p>I always liked those tricks - but then again if they get used alot ruby will become the next read only language after perl. The next step would be the obfuscated ruby contest.<br>
Wordpress can be a little insisting on reformating, you could try the plugin wp-unformatted - <a href="http://alexking.org/projects/wordpress/readme?project=wp-unformatted" rel="nofollow">http://alexking.org/projects/wordpress/readme?project=wp-unformatted</a>.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>François Vaux</strong> &middot; <time datetime="2008-05-27T06:35:00+00:00">May 27, 2008 at 6:35 am</time></p>
      <p>Nice list, I already knew some of these and I use them frequently.</p><p>If you combine 6. and 11. you can do things like</p><p>&gt; a, b, *c = 1, 2, 3, 4, 5, 6<br>
a =&gt; 1<br>
b =&gt; 2<br>
c =&gt; [3, 4, 5, 6]</p><p>That's pretty useful when used with Array#split :-)</p><p>I relly like String#% because it makes more readable code than the common interpolation method ( #{} ).  Compare :<br>
" %s " % [tag, contents, tag]<br>
" #{content} "</p><p>(Ok maybe it's not the best possible example :-/)</p><p>Thanks for the post Peter !</p>
    </li>
      <li>
      <p class="comment-meta"><strong>François Vaux</strong> &middot; <time datetime="2008-05-27T06:37:00+00:00">May 27, 2008 at 6:37 am</time></p>
      <p>Hmm, tags get stripped :/</p><p>The last example was :</p><p>"&lt;%s&gt; %s &lt;/%s&gt;" % [tag, contents, tag]<br>
"&lt;#{tag}&gt; #{contents} &lt;/#{tag}&gt;"</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jim Deville</strong> &middot; <time datetime="2008-05-27T06:44:00+00:00">May 27, 2008 at 6:44 am</time></p>
      <p>Todd Werth:<br>
(IMHO) The ternary is understood by everyone too. I usually prefer it in assignments from simple conditionals.</p><p>Peter:<br>
Sweet tricks. A lot of these I never knew, a few of them are good reminders.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>mike from africa</strong> &middot; <time datetime="2008-05-27T07:37:00+00:00">May 27, 2008 at 7:37 am</time></p>
      <p>like most programmers, i was never taught having few lines of vertical code is better than horizontal code, never mind whether it's wrong or correct. the use of ternary operators is certainly a personal preference, but why write in 5 lines can you can write in 1, that is readable and much more concise. and why not make use of those brackets to improve readability.</p><p>output = (x == 10)? "x is ten" : "x is not ten"</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Neil Wilson</strong> &middot; <time datetime="2008-05-27T08:40:00+00:00">May 27, 2008 at 8:40 am</time></p>
      <p>Ternary operators are evil. Nested ternary operators are really evil.</p><p>It is just so much more readable to use the words - remembering that conditionals in Ruby are just expressions and yield a value.</p><p>amount = if qty == 1 then "one" else "many" end</p><p>and it's even better if you use more than one line.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matteo Alessani</strong> &middot; <time datetime="2008-05-27T11:28:00+00:00">May 27, 2008 at 11:28 am</time></p>
      <p>Thanks for sharing these useful tips! The 16th is wonderful!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alan</strong> &middot; <time datetime="2008-05-27T12:39:00+00:00">May 27, 2008 at 12:39 pm</time></p>
      <p>Everyone knows ternary operators. Use them only in simple cases and don't worry about it. Nothing wrong with x = (condition) ? bar : baz</p><p>Mark Wilden: We have all had to maintain uncommented masses of poorly-written code. Some of us respond by swearing that from now on, our code will have comments. Some of us respond by swearing that from now on, our code will be more readable.</p><p>Why not do both?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Austin</strong> &middot; <time datetime="2008-05-27T13:09:00+00:00">May 27, 2008 at 1:09 pm</time></p>
      <p>Who are these people who can't read ternaries? Bad factoring makes code hard to maintain, not succinct syntax.</p><p>You forgot to mention !! in relation to number #16.</p><p>"abc"[/(d}/, 1]                        # =&gt; nil<br>
!!"abc"[/(d}/, 1]                      # =&gt; false</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Csaba</strong> &middot; <time datetime="2008-05-27T13:52:00+00:00">May 27, 2008 at 1:52 pm</time></p>
      <p>Hi,<br>
Interesting reading. Unfortunatly, for me, (far to) much look Perllish  (= obfuscated). Not really elgant readable code that Ruby is supposed to promote.</p><p>#2 Can't  Ruby with all its string functions format a floating number in a lucid way like: money.to_s(3.2f) or in the Basic style money.to_s("0.00")? I can do it in .NET Basic!</p><p># 14 Well used terniary operator is good. Even if easily missused. But so can everything.</p><p># 16 This example could be implemented in Basic since it got functions.<br>
(Well at least in HP9830 Basic since 1976).  But few realize it!<br>
I don't understand why the textbooks don't show it. </p><p>But the sigel line version returning sometbing else that the if test result requires the terniary operator.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Cowden</strong> &middot; <time datetime="2008-05-27T14:03:00+00:00">May 27, 2008 at 2:03 pm</time></p>
      <p>My basic rule of thumb:  if I get to a line of code that requires me to stop and put mental parenthesis around it--someone is trying to be cute or show how clever they are.</p><p>Please don't nest ternary operators.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Theill</strong> &middot; <time datetime="2008-05-27T14:14:00+00:00">May 27, 2008 at 2:14 pm</time></p>
      <p>Great article. I would really like to use tip #21 but according to all the comments I'm not sure I dare :)</p><p>I see many uses for this, though and I'm wondering if there might be a better solution if I want to do stuff like this:</p><p>  is_available = user.presence.availability == Online</p><p>and I really don't care if either "user" or "presence" is nil?</p><p>I see myself do code such as:</p><p>  is_available = (user &amp;&amp; user.presence ? user.presence.availability == Online : Offline)</p><p>What I really would like is something to eval a string and return either the value in the ending object or nil if the object tree can't be followed till the end e.g.:</p><p> availability = find_availability("user.presence.last_year.lastest_city.available")</p><p>Does anyone see my point? But then again, maybe "rescue" is acceptable enough in the above example? :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Todd Werth</strong> &middot; <time datetime="2008-05-27T15:26:00+00:00">May 27, 2008 at 3:26 pm</time></p>
      <p>If everyone knows ternary operators, why are they in a list of 21 ruby "tricks"?  From years of mentoring junior programmers, I can tell you that no, not everyone does.</p><p>There are cases when ternary operators are useful and make code more readable, but those cases are rare.</p><p>Mike Cowden, I totally agree.</p><p>I do understand that these are age old arguments, and partially a matter of style. So this is just my ever so humble opinion.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Avdi</strong> &middot; <time datetime="2008-05-27T15:37:00+00:00">May 27, 2008 at 3:37 pm</time></p>
      <p>Fantastic list!  There were actually a couple of points that were new to me, which doesn't happen much any more.</p><p>One nitpick: #18 would probably be better done as Array(items), as Object#to_ary is deprecated.  Kernel.Array() is the canonical way to say "make sure this is an array".</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John</strong> &middot; <time datetime="2008-05-27T15:54:00+00:00">May 27, 2008 at 3:54 pm</time></p>
      <p>@mark - "Using exception handling in place of a control structure is generally frowned upon. I have to admit, though, that this is nice and neat, it avoids things like andand, and I do see it in “real” code. It’s probably way slower than the more straightforward technique, but that’s not a real issue."</p><p>Not true. Exceptions are encouraged and should be used when an exception happens in your code. Someone did some benchmarking on this subject and found that Ruby exceptions are reasonably fast; about as fast as an equivalent control structure.</p><p>The only problem I do see with the example is that you are not specifying which exception you want to rescue, which, if you are not careful, can hide problems deep in your code.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Piers Cawley</strong> &middot; <time datetime="2008-05-27T16:14:00+00:00">May 27, 2008 at 4:14 pm</time></p>
      <p>Oh dear, someone suggested <code>!!</code>. Nil is perfectly falsy, pretty much everything else that isn't <code>false</code> is truthy. Why spend cycles to throw away information?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John</strong> &middot; <time datetime="2008-05-27T16:16:00+00:00">May 27, 2008 at 4:16 pm</time></p>
      <p>@Peter - " I’m wondering if there might be a better solution if I want to do stuff like this"</p><p>Based on your example, I find it's usually better to make the method available in the "base" object:</p><p>class User<br>
  def availability<br>
    presence ? presence.availability : Offline<br>
  end<br>
end</p><p>If you're running into this problem often, you might want to rethink your design. Although there are certainly cases where the rescue is your best bet.</p><p>Evaling a string like you describe is pretty straightforward.</p><p>class String<br>
  def try(string, caller)<br>
    string.split('.').inject(caller) do |result,method|<br>
      result.send(:eval, method) if result<br>
    end<br>
  end<br>
end</p><p>"thing(10).to_s.fail".try(self)</p><p>But, again, I'd reevaluate your design first.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dirceu Jr.</strong> &middot; <time datetime="2008-05-27T17:07:00+00:00">May 27, 2008 at 5:07 pm</time></p>
      <p>wow™<br>
really nice!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Marek</strong> &middot; <time datetime="2008-05-27T18:48:00+00:00">May 27, 2008 at 6:48 pm</time></p>
      <p>As for #9, it could be written in a more functional (i.e. no side effects) way, like this:</p><p>queue = %w{hello x world}.inject([]) do |queue, word|<br>
  (queue &lt;= 2; queue<br>
end<br>
puts queue.inspect</p><p>though it requires getting used to the inject construct...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Marek</strong> &middot; <time datetime="2008-05-27T18:51:00+00:00">May 27, 2008 at 6:51 pm</time></p>
      <p>The example is not very readable so I'a posting it again:</p><p>queue = %w{hello x world}.inject([]) do |queue, word|<br>
  (queue &lt;&lt; word; puts "Added to queue") if word.length &gt;= 2; queue<br>
end<br>
puts queue.inspect</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Greg W</strong> &middot; <time datetime="2008-05-27T22:14:00+00:00">May 27, 2008 at 10:14 pm</time></p>
      <p>In the age where readable code is getting so much emphasis, and people are encouraged to use more than one language, I'm not convinced that any of the "shortcuts" are an improved coding style. Explicit code = maintainable code IMO. Ruby is already cryptic enough IMO, eliminating words in favor of symbols and one-liners isn't an advantage to anyone but the original coder's "tricky" ego.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark Wilden</strong> &middot; <time datetime="2008-05-27T23:06:00+00:00">May 27, 2008 at 11:06 pm</time></p>
      <p>@John: That's one of the reason why exception handling for control is often bad - the swallowing.</p><p>If the code is truly responding to an exceptional circumstance, then exceptions are the way to go. This is because exceptions allow the code with the best understanding of what to do handle the situation, whether it's local or somewhere up the callstack. But if the code is merely providing a default, and the circumstance isn't truly exceptional I don't think exceptions are the most "intentional" (i.e. showing the intent of the code) way to do it.</p><p>@Alan: The issue of comments is a huge and eminently debatable. My summary comment is "All code that's tricky to understand should be commented. Code should not be tricky to understand." :)</p><p>@Piers: You probably know this, but the Rails params hash isn't actually just a Hash. It's a HashWithIndifferentAccess, allowing lookup by symbols or strings. :)</p><p>!! is an old C trick to convert an expression to 1 or 0 (true or false, in C). I agree it's not necessary in Ruby.</p><p>@Francois: The reason I don't like string formatting like the old C sprintf is that it makes the code less readable. To understand the output, you have to bop back and forth, rather than reading it inline.</p><p>@All: It's not the "ternary" (or even "terniary") operator. It's -a- ternary operator (the only one, as it happens). Its name is the "conditional operator," and yes, nesting them is evil.</p><p>///ark</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Evan</strong> &middot; <time datetime="2008-05-27T23:08:00+00:00">May 27, 2008 at 11:08 pm</time></p>
      <p>By far the most interesting thing I learned is that ; is an alternative to newline. (Who would have thought!) But the ability to do ternary 1-liners with multi-line blocks is pretty awesome.</p><p>"ruby" == "awesome" ? ((response = "i think so"); puts response) : (if true: puts "you know damn right" end)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Piers Cawley</strong> &middot; <time datetime="2008-05-28T08:08:00+00:00">May 28, 2008 at 8:08 am</time></p>
      <p>@Mark: The thing is, HashWithIndifferentAccess is still sending a datastructure to do an object's job. Where's the information about which route matched to provide that set of params? Where's the information about how the URI was parsed into keys? I get depressed by the amount of useful information that Rails throws away during route recognition. Some of that stuff, it it were available, could allow for a radical slimming down of controllers to the point where they become nearly invisible. </p><p>But that's a soapbox I probably shouldn't be climbing onto here.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>frank</strong> &middot; <time datetime="2008-05-28T09:35:00+00:00">May 28, 2008 at 9:35 am</time></p>
      <p>Just a little combining ...</p><p>queue = %w{hello x world}.map { |word|  word.length &gt;= 2 ? (puts "Added to queue"; word) : nil }.compact</p><p>p queue</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark Wilden</strong> &middot; <time datetime="2008-05-28T13:34:00+00:00">May 28, 2008 at 1:34 pm</time></p>
      <p>@Piers: You're absolutely right. I was just joking around, since I think HashWithIndifferentAccess is such a funny name. :)</p><p>@Frank: I have to say that adding nil to the queue then removing it later - just for code brevity - would not be my first choice.</p><p>///ark</p>
    </li>
      <li>
      <p class="comment-meta"><strong>frank</strong> &middot; <time datetime="2008-05-28T13:50:00+00:00">May 28, 2008 at 1:50 pm</time></p>
      <p>Sure.</p><p>p queue = %w{hello x world}.select { |word| word.length &gt;= 2 }</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Darcy</strong> &middot; <time datetime="2008-05-28T20:29:00+00:00">May 28, 2008 at 8:29 pm</time></p>
      <p>Yikes - some of that is scary. Just because you can do it doesn't mean you should! :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>K</strong> &middot; <time datetime="2008-05-28T20:57:00+00:00">May 28, 2008 at 8:57 pm</time></p>
      <p>I might be a little slow, but I don't get #7. </p><p>What is it supposed to replace? why is it better?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-05-28T22:08:00+00:00">May 28, 2008 at 10:08 pm</time></p>
      <p>K: It can be useful to remove the need to initialize variables. It's particularly useful for instance variables being used in one-liners.</p><p>Consider this somewhat arcane example of adding together "columns" within an array:</p><p>a = [ [1,2,3], [4,5], [6, 7, 8] ]<br>
a.each { |y| y.each_with_index { |i, j| (@r ||= [])[j] = @r.fetch(j, 0) + i.to_i } }</p><p>The (@r ||= []) part means I didn't need to do a @r = [] on the previous line. Whether or not this "shortcut" is suitable for you or not is a matter of personal taste, however :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alex</strong> &middot; <time datetime="2008-05-29T08:21:00+00:00">May 29, 2008 at 8:21 am</time></p>
      <p>@Peter Theill: There's a dynamic hash-tree snippet over at RubyForge.</p><p>class Node &lt; Hash<br>
  attr_accessor :value<br>
  def method_missing(key)<br>
    self[key]==nil ? self[key]=Node.new : self[key]<br>
  end<br>
end</p><p>tree = Node.new<br>
p tree.branch.leaf.value = 'Hello Worldd!'<br>
p tree.branch.leaf.value == 'Hello World!'<br>
p tree.branch.leaf.xxx.value == 'Hello World!'<br>
p tree.branch.value</p><p>Similarly you can create multidimensional hashes ( <a href="http://www.ruby-forum.com/topic/130324" rel="nofollow">http://www.ruby-forum.com/topic/130324</a> ).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tak</strong> &middot; <time datetime="2008-05-29T18:54:00+00:00">May 29, 2008 at 6:54 pm</time></p>
      <p>Wow.<br>
The basic stuff (use fileutils instead of shell, get exception backtrace) is useful, although I wouldn't call these things 'tricks.' The other things, (nested ternaries, cramming as many operations as possible into as few characters as possible), ...</p><p>Ruby is not perl; I'd like to keep it that way.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Name required</strong> &middot; <time datetime="2008-05-30T07:28:00+00:00">May 30, 2008 at 7:28 am</time></p>
      <p>What's that saying about those who fail to learn the lessons of the past are doomed to repeat its mistakes?</p><p>Using "tricks" results in code with lower maintainability, because fewer people will understand it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>carmen</strong> &middot; <time datetime="2008-05-30T16:10:00+00:00">May 30, 2008 at 4:10 pm</time></p>
      <p>#18 wording is misleading. it will really call to_splat, or to_a, and therefore a 'single object' wont necessarily stay a single object. a hash will be converted to an array and so forth</p>
    </li>
      <li>
      <p class="comment-meta"><strong>defsdoor</strong> &middot; <time datetime="2008-05-30T20:40:00+00:00">May 30, 2008 at 8:40 pm</time></p>
      <p>13 is just wrong on so many levels.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-05-30T22:08:00+00:00">May 30, 2008 at 10:08 pm</time></p>
      <p>#68: Very common though.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kurt</strong> &middot; <time datetime="2008-05-31T00:24:00+00:00">May 31, 2008 at 12:24 am</time></p>
      <p>Cool list, I learned some new ways to confuse my co-workers! :)  I liked #2.</p><p>Some of these create useless garbage objects that must be collected in the common cases and are much less efficient than other techniques.   Just be cause a Ruby program doesn't have to call free() doesn't mean that Ruby wont have to do it.</p><p>Ruby does not memoize constants, so it may look like a constant Range or String in your code, but it's just garbage.  Consider naming them with CONSTANTS.</p><p>Sorry I have to say it: using Floats for monetary values is always a bad idea.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-05-31T00:42:00+00:00">May 31, 2008 at 12:42 am</time></p>
      <p>Kurt: I use integers based on the lowest denomination of the currency (cents, pence, etc.) I still use the same format though, once I've divided the price by 100 (or whatever). "%.2f" % (amount / 100)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://www.churadesign.com/2008/06/03/%e3%81%82%e3%81%aa%e3%81%9f%e3%81%ae%e3%82%b3%e3%83%bc%e3%83%89%e3%81%ab%e4%bd%bf%e3%81%86%e3%81%b9%e3%81%8d21%e3%81%aeruby%e3%83%88%e3%83%aa%e3%83%83%e3%82%af/" rel="external nofollow" class="url">Churadesign</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tammo Freese</strong> &middot; <time datetime="2008-06-03T16:01:00+00:00">June 3, 2008 at 4:01 pm</time></p>
      <p>Nice compilation!</p><p>As Mark Wilder already pointed out, using #{} instead of<br>
sprintf would be more idiomatic. Your example was:</p><p>x = %w{p hello p}<br>
"%s" % x</p><p>If we give tag and text names,  it would look like:</p><p>tag, text = *%w{p hello}</p><p>"%s" % [tag, text, tag]</p><p>We may avoid the duplication by giving explicit positions<br>
in the format string:</p><p>"%2$s" % [tag, text]</p><p>The #{} form is a lot more readable:</p><p>"#{text}"</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Neil</strong> &middot; <time datetime="2008-06-03T20:04:00+00:00">June 3, 2008 at 8:04 pm</time></p>
      <p>#68 This is one reason why _why's Camping is so few lines.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tammo Freese</strong> &middot; <time datetime="2008-06-03T20:14:00+00:00">June 3, 2008 at 8:14 pm</time></p>
      <p>Unfortunately the comment function does not display most of the code I entered. Peter, could you please correct that?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-06-03T21:02:00+00:00">June 3, 2008 at 9:02 pm</time></p>
      <p>Tammo: I see the same here as I did in the e-mail from the WordPress installation to me, so if anything has been removed, it was removed at the earliest stage.. sanitization perhaps. Ideally code would be put into a pastie and then linked here.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://vbharat.com/Programming/2008/09/08/21-ruby-tricks-you-should-be-using-in-your-own-code" rel="external nofollow" class="url">vBharat.com » 21 Ruby Tricks You Should Be Using In Your Own Code</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
