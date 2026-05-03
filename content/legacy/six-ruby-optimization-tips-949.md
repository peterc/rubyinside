---
title: Six Quick Optimization Tips for the Ruby Interpreter
date: '2008-07-11'
author: Peter Cooper
author_slug: admin
post_id: 949
slug: six-ruby-optimization-tips-949
url: "/six-ruby-optimization-tips-949.html"
categories:
- ruby-tricks
---

{{< rawhtml >}}
<p>Ilya Grigorik of <a href="http://www.igvita.com/">Igvita</a> has put together a great article called <a href="http://www.igvita.com/2008/07/08/6-optimization-tips-for-ruby-mri/">6 Optimization Tips for Ruby MRI</a>. In it, he walks through six different things you can do to improve the performance of your code when running on the regular Ruby interpreter (MRI). For example, interpolation is quicker than concatenation when working with strings, destructive operations prevent wasteful object duplication, and hand-written blocks are a lot faster than Symbol#to_proc.</p>
<p>And.. metaprogramming, of course, comes in for some much deserved performance criticism:</p>
<blockquote>
<p>Ruby has a wonderful property of being highly dynamic, which in turn, allows us to create all kinds of spectacular meta-programming scenarios. However, this comes at a price of minimal runtime and compile time optimization (JRuby and some other VM's are changing this). Unlike most other languages, Ruby's MRI does not generate bytecode (Ruby 1.9 will change this), but relies solely on searching through the Abstract Syntax Tree (AST) for virtually every method call, variable, and so on. Sounds expensive? It is. Hence, next time you're saving yourself three lines of code by writing a meta function, consider inlining the logic directly.</p>
</blockquote>
<p>From personal experience, I know there are a lot of alternative coding techniques you can use to shave off valuable milliseconds here and there in Ruby. If you have any to share, post a comment, and I'll be putting together my own compilation of tips on Ruby Inside in the near future.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Dave</strong> &middot; <time datetime="2008-07-11T04:32:00+00:00">July 11, 2008 at 4:32 am</time></p>
      <p>Surely if we wanted to shave off valuable milliseconds we'd be using C rather than Ruby. Rubyists optimize their code for beauty (and maintainability) rather than speed or size.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jan Wedekind</strong> &middot; <time datetime="2008-07-11T19:23:00+00:00">July 11, 2008 at 7:23 pm</time></p>
      <p>Cool! I didn't know about the benchmarking extension (I was using Time.new.to_f so far).<br>
I've noted that Range::min and Range::max are very slow. Just try to execute the following line of code:</p><p>(1...2**22).max</p><p>For integers it is better to use Range::begin and Range::end-1. You can also simply override the methods like this:</p><p>class Range<br>
  alias_method :orig_min, :min<br>
  alias_method :orig_max, :max<br>
  def min<br>
    if Integer === self.begin<br>
      self.begin<br>
    else<br>
      orig_min<br>
    end<br>
  end<br>
  def max<br>
    if Integer === self.end<br>
      exclude_end? ? self.end - 1 : self.end<br>
    else<br>
      orig_max<br>
    end<br>
  end<br>
end</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
