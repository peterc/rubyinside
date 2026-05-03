---
title: Converting Ruby 1.9 Bytecode to Python
date: '2008-05-05'
author: Peter Cooper
author_slug: admin
post_id: 884
slug: converting-ruby-19-bytecode-to-python-884
url: "/converting-ruby-19-bytecode-to-python-884.html"
categories:
- cool
- elsewhere
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2008/05/rubytopython.jpg" width="343" height="182" alt="rubytopython.jpg"></p>
<p>Never one to let us down on the ingenuity front, Why The Lucky Stiff (author of the <a href="http://poignantguide.net/">Poignant Guide</a> and creator of <a href="http://code.whytheluckystiff.net/shoes/">Shoes</a>) is busy working on <a href="http://hackety.org/2008/05/05/sneakingRubyThroughGoogleAppEngine.html">a system that can convert Ruby 1.9 bytecode to Python bytecode</a> (and from there into regular Python by way of Python's decompilation facilities). It's exactly the sort of thing that could take off with more eyes looking at it, and Why has <a href="http://github.com/why/unholy/tree/master">made it available on GitHub</a>. This technique isn't <span style="font-style: italic;">likely</span> to unite Python and Ruby in any deep and meaningful way (to the point of a shared interpreter), but the research and experiments involved are worth a try.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Geoffrey Grosenbach</strong> &middot; <time datetime="2008-05-07T16:32:00+00:00">May 7, 2008 at 4:32 pm</time></p>
      <p>I've often wondered why projects like YARV and Rubinius use their own bytecode format. Even if they hope to optimize for Ruby, there may be other benefits to using bytecodes for an existing VM, such as JRuby has done.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-05-07T18:56:00+00:00">May 7, 2008 at 6:56 pm</time></p>
      <p>I'd say there's not a great advantage to using existing bytecode formats if your virtual machine is going to act in a substantially different way to others. The JVMs instruction set, for example, is all stack-based, whereas Parrot's is register-based (more x86 like). I'm not sure what route YARV and Rubinius have taken but imagine there are enough differences to make it worthwhile starting with a fresh bytecode format.</p><p>It seems, however, that Python and Ruby could certainly be closer given the similarities between their virtual machines..</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
