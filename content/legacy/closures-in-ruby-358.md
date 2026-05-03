---
title: Closures in Ruby
date: '2007-01-16'
author: Peter Cooper
author_slug: admin
post_id: 358
slug: closures-in-ruby-358
url: "/closures-in-ruby-358.html"
categories:
- elsewhere
- tutorials
---

{{< rawhtml >}}
<p>Bruce Tate continues his fine <a href="http://www.ibm.com/developerworks/views/java/libraryview.jsp?search_by=crossing+borders:">Crossing Borders</a> series with <a href="http://www-128.ibm.com/developerworks/java/library/j-cb01097.html">a look at Ruby's support for closures</a>. If code blocks and block techniques used by routines such as Rails' <em>respond_to</em> confuse you, it's a great primer.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Brendan</strong> &middot; <time datetime="2007-01-16T17:38:00+00:00">January 16, 2007 at 5:38 pm</time></p>
      <p>Interesting link, but one caution for anyone about to read it:<br>
The author presents the 'def fun(&amp;b); yield; end' style as being an anonymous function, which it isn't; For instance, a return in the closure will kill it. Instead, for example, 'def fun(&amp;b); (lambda &amp;b).call; end' will allow full closures, complete with returns.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-01-16T17:44:00+00:00">January 16, 2007 at 5:44 pm</time></p>
      <p>That technique is also sometimes used with ERb to support 'return' in ERb templates.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Bex</strong> &middot; <time datetime="2007-01-17T08:21:00+00:00">January 17, 2007 at 8:21 am</time></p>
      <p>I think he's missing a major point of closures: the fact that they can refer to variables in the definition's surrounding scope even after the function in which they are defined has returned.  In Javascript, this is very natural:</p><p><code><br>
function make_adder(x) {<br>
   return function(y) { return x + y; };<br>
}</code></p><p>var add_ten = make_adder(10);<br>
alert(add_ten(1));  /* Displays 11 */<br>
</p><p>As has been mentioned, this is a little awkward in Ruby:</p><p><code><br>
def make_adder(x)<br>
  return Proc.new {|y| x + y}<br>
# Or<br>
  return lambda {|y| x + y }<br>
# Or<br>
  return lambda {|y| return x + y}<br>
# But not!<br>
  return Proc.new{|y| return x + y}<br>
# This gives an error 'unexpected return', because the function<br>
# this Proc is returning from is not itself, but make_adder, which is not<br>
# on the stack anymore<br>
end</code></p><p>add_ten = make_adder(10)<br>
puts add_ten.call(1)  # Displays 11</p><p>puts add_ten(1) # Gives an error<br>
</p><p>The requirement to use the call method makes it not as transparent as it should be, since closures are (or should be) simply functions, like in Javascript (or any Lisp)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ezra</strong> &middot; <time datetime="2007-01-17T23:52:00+00:00">January 17, 2007 at 11:52 pm</time></p>
      <p>you can use [] brackets to call a proc as well. so   </p><p>puts add_ten.call(1) # Displays 11</p><p>puts add_ten(1) # Gives an error</p><p>puts add_ten[1] # Displays 11</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
