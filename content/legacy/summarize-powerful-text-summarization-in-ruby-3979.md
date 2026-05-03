---
title: Summarize – Powerful Text Summarization in Ruby
date: '2010-12-06'
author: Peter Cooper
author_slug: admin
post_id: 3979
slug: summarize-powerful-text-summarization-in-ruby-3979
url: "/summarize-powerful-text-summarization-in-ruby-3979.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<blockquote class="stylized"><p>Automatic text summarization is the technique where a computer program summarizes a document. A text is put into the computer and a highlighted (summarized) text is returned. The Open Text Summarizer is an open source tool for summarizing texts. The program reads a text and decides which sentences are important and which are not.</p></blockquote>
<p><cite>Nadav Rotem</cite></p>
<p><a href="http://intridea.com/2010/12/3/summarize-a-ruby-c-binding-for-open-text-summarizer">Summarize</a> is a new Ruby library that provides bindings to the C-based <a href="http://libots.sourceforge.net/">Open Text Summarizer</a> library. It's an ideal way to get a "summary" of a document and esteemed Rubyist Jeremy McAnally used it in his RailsRumble-winning app <a href="http://tldr.it">TLDR.it.</a></p>
<p>Once installed (<code>gem install summarize</code> - if you're lucky and have the dependencies), Summarize is easy to use since it adds a <code>summarize</code> method to the String class:</p>
<pre><code>your_string.summarize(:ratio =&gt; 25)</code></pre>
<p>In this case, Summarize returns a summary approximately 25% of the length of the original string in <code>your_string.</code></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Sean Soper</strong> &middot; <time datetime="2010-12-06T16:25:00+00:00">December 6, 2010 at 4:25 pm</time></p>
      <p>Thanks for the great write-up. FYI, I've just released a new version of the gem (1.0.3) which now can return topics as well.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Avinash</strong> &middot; <time datetime="2010-12-11T08:10:00+00:00">December 11, 2010 at 8:10 am</time></p>
      <p>How do i install it in a mac. i use rvm ruby 1.9.2. when i did a gem install summarize it thows an error glib.h is not found. ports couldn find a glib . Any idea ?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-11T08:15:00+00:00">December 11, 2010 at 8:15 am</time></p>
      <p>Odd.. you surely have the XCode stuff all installed, right? (I don't think RVM works without them..)</p><p>FWIW, I installed on OS X with no issues at all - very quick and clean. Might give it a go with 1.9.2 though as I did it just on the stock Ruby. Hmm.. just went without a hitch too..</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
