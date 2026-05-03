---
title: Visually Inspect Ruby Object Models with DrX
date: '2010-04-28'
author: Peter Cooper
author_slug: admin
post_id: 3233
slug: drx-visually-inspect-ruby-objects-3233
url: "/drx-visually-inspect-ruby-objects-3233.html"
categories:
- linux-specific
- os-x-specific
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2010/04/drx.png" class="alignleft size-thumbnail bordered">When you want to inspect your objects in Ruby, <code>Object#inspect</code>, <code>p</code>, or <a href="awesome_print-a-new-pretty-printer-for-your-ruby-objects-3208.html">awesome_print</a> are all valuable. You're stuck with plain-text, though, and primarily designed to look at object data rather than object <em>models</em>. If you want to drill down into parent classes, see object and class relationships, etc, then, check out <a href="http://drx.rubyforge.org/">DrX</a>, a visual object inspector for Ruby!</p>
<p><a href="http://drx.rubyforge.org/">DrX</a> bills itself as a "small object inspector", but its key features are that it shows results visually (in a <span class="caps">GUI</span> interface) and that it focuses on showing the object model behind your objects, rather than the data contained within. A visual example of a DrX session should give you the idea:</p>
<p><img src="/assets/2010/04/drx2.jpg" alt=""></p>
<h3>Usage</h3>
<p>Once DrX is installed (more on that in the next section), you just <code>require 'drx'</code> it into your app (or even within <a href="irb-lets-bone-up-on-the-interactive-ruby-shell-1771.html">irb</a>) and then use the <code>Object#see</code> method to get DrX into action:</p>
<pre>require 'drx'
123.see</pre>
<p>Even this rudimentary example will bring up an interesting graph. The DrX author does, however, provide a more interesting example to show off DrX's introspective features:</p>
<pre>s = "wizard of oz"
def s.strong
"&lt;strong&gt;" + self + "!&lt;/strong&gt;"
end
s.see</pre>
<h3>Installation and Prerequisites</h3>
<p>Depending on your setup, DrX might take some serious work to get going. If you're running Linux and are heavy on your development experimentation, you might have everything ready to go. Just try <code>gem install drx</code> and see if the above examples work in <code>irb</code>.</p>
<p>Failing that, DrX uses <a href="http://www.tcl.tk/">Tk</a> for its <span class="caps">GUI</span> work in order to be cross-platform and also requires <a href="http://www.graphviz.org/">GraphViz</a> to be present. Install these with your package manager of choice and ensure that your Ruby installation has the Tk bindings installed (again, easier said than done).</p>
<p>On OS X 10.6 (Snow Leopard) I discovered that the stock Ruby installation does <strong>not</strong> include the Tk bindings, even though Tk is present otherwise. Rather than mess it up, I relied on the always-wonderful <a href="http://rvm.beginrescueend.com/" title="Ruby Version Manager"><span class="caps">RVM</span></a> and installed Ruby 1.9.2-preview1 (<code>rvm install ruby-1.9.2-preview1</code>). With this, Tk worked "out of the box" and <code>gem install rbx</code> was OK. For the Graphviz dependency, <code>sudo port install graphviz</code> did the trick and also "just worked." If you're one of the anti-Macports crowd, though, you might need to find a different approach.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Harold Giménez</strong> &middot; <time datetime="2010-04-28T22:54:00+00:00">April 28, 2010 at 10:54 pm</time></p>
      <p>brew install graphviz + your 1.9.2 preview1 trick worked fine here</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Wells</strong> &middot; <time datetime="2010-04-29T02:26:00+00:00">April 29, 2010 at 2:26 am</time></p>
      <p>I ran across a few issues getting it running on Ubuntu Lucid. I posted a short write-up here: <a href="http://bit.ly/d60Dee" rel="nofollow">http://bit.ly/d60Dee</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeff</strong> &middot; <time datetime="2010-04-29T04:08:00+00:00">April 29, 2010 at 4:08 am</time></p>
      <p>Setting up everything from scratch on OS X:</p><p>1) Install Homebrew:<br>
sudo mkdir /usr/local<br>
sudo chown -R yourusername /usr/local<br>
curl -L <a href="http://github.com/mxcl/homebrew/tarball/master" rel="nofollow">http://github.com/mxcl/homebrew/tarball/master</a> | tar xz --strip 1 -C /usr/local</p><p>2) Install RVM<br>
bash &lt; &gt; ~/.bash_profile<br>
source "$HOME/.rvm/scripts/rvm" </p><p>3) Install 1.9.2<br>
rvm install 1.9.2-preview1<br>
rvm use 1.9.2</p><p>4) Install GraphViz<br>
brew install graphviz</p><p>5) Install drx<br>
gem install drx</p><p>Ta-Da!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>mgutz</strong> &middot; <time datetime="2010-04-29T04:55:00+00:00">April 29, 2010 at 4:55 am</time></p>
      <p>seems to work with 1.9.2-head as well</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-04-29T05:11:00+00:00">April 29, 2010 at 5:11 am</time></p>
      <p>I tried 1.9.2-head too, but it seems to be broken install-wise with RVM right now (tried a fresh install and everything) :-( If you can get it running though, good to know.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Yi Wen</strong> &middot; <time datetime="2010-04-29T05:35:00+00:00">April 29, 2010 at 5:35 am</time></p>
      <p>Actually, ruby 1.8.7 works just fine. don't have to use 1.9.2 on SL</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-06-19T01:43:00+00:00">June 19, 2010 at 1:43 am</time></p>
      <p>Random test.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
