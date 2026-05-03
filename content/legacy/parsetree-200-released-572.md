---
title: ParseTree 2.0.0 Released
date: '2007-08-06'
author: Peter Cooper
author_slug: admin
post_id: 572
slug: parsetree-200-released-572
url: "/parsetree-200-released-572.html"
categories:
- cool
- news
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2007/08/treepower.jpg" height="143" width="211" border="1" hspace="4" vspace="4" alt="Treepower"></p>
<p>Ryan Davis has released the second major version of <a href="http://www.zenspider.com/ZSS/Products/ParseTree/">ParseTree</a>, a much loved Ruby library that extracts parse trees for Ruby classes and methods and returns them in an s-expression type format using standard Ruby data types. It relies on Ryan's other well known library, <a href="http://www.zenspider.com/ZSS/Products/RubyInline/">RubyInline</a>. In his announcement, Ryan gives a demonstration:</p>
<blockquote>
<p>As an example:</p>
<p>  def conditional1(arg1)<br>
    if arg1 == 0 then<br>
      return 1<br>
    end<br>
    return 0<br>
  end</p>
<p>becomes:</p>
<p>  [:defn,<br>
    :conditional1,<br>
    [:scope,<br>
     [:block,<br>
      [:args, :arg1],<br>
      [:if,<br>
       [:call, [:lvar, :arg1], :==, [:array, [:lit, 0]]],<br>
       [:return, [:lit, 1]],<br>
       nil],<br>
      [:return, [:lit, 0]]]]]</p>
</blockquote>
<p>There are many significant enhancements beyond the 1.x.x family, so check it out.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Mourner</strong> &middot; <time datetime="2007-08-06T12:24:00+00:00">August 6, 2007 at 12:24 pm</time></p>
      <p>I would love to understand someday where, how and why it is used - at the moment this is one of the most bizarre ruby libraries for me.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>carlity</strong> &middot; <time datetime="2007-08-06T21:57:00+00:00">August 6, 2007 at 9:57 pm</time></p>
      <p>I too would like to know where people are using ruby code converted to s expressions.  Maybe for converting ruby to other languages?  Anyone have small and practical examples?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ben</strong> &middot; <time datetime="2007-08-06T22:13:00+00:00">August 6, 2007 at 10:13 pm</time></p>
      <p>Could this be the basis for a rubytidy?  (a'la perltidy - <a href="http://perltidy.sourceforge.net/" rel="nofollow">http://perltidy.sourceforge.net/</a> - source re-formatter).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Martijn</strong> &middot; <time datetime="2007-08-07T09:42:00+00:00">August 7, 2007 at 9:42 am</time></p>
      <p>I have no idea how or why this is used. Can someone who does please enlighten us?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>shadytrees</strong> &middot; <time datetime="2007-08-07T21:28:00+00:00">August 7, 2007 at 9:28 pm</time></p>
      <p>RubyTidy's already taken, but the project seems to be standstill without any tidy code in SVN.<br>
<a href="https://rubyforge.org/projects/rubytidy/" rel="nofollow">https://rubyforge.org/projects/rubytidy/</a></p><p>Polish would be a nice name for a Ruby tidy-er though.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
