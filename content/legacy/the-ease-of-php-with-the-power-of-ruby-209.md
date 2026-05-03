---
title: The ease of PHP with the power of Ruby
date: '2006-08-27'
author: Peter Cooper
author_slug: admin
post_id: 209
slug: the-ease-of-php-with-the-power-of-ruby-209
url: "/the-ease-of-php-with-the-power-of-ruby-209.html"
categories:
- cool
- ruby-tricks
---

{{< rawhtml >}}
<pre><span class="comment">#!/usr/bin/ruby                                                                 </span>
<span class="ident">require</span> <span class="punct">'</span><span class="string">rubyhp</span><span class="punct">'</span>
<span class="comment">__END__
&lt;html&gt;
 &lt;body&gt;
  &lt;% cgi.params.each do |key, value| %&gt;
   &lt;%= key %&gt;: &lt;%= value %&gt;&lt;br /&gt;
  &lt;% end %&gt;
  &lt;% if cgi.params.empty? %&gt;
   Sorry, please enter some cgi parameters. How about "?foo=baz"?
  &lt;% end %&gt;
 &lt;/body&gt;
&lt;/html&gt;</span>
</pre>
<p>Christopher Cyll has put together a great little example of <a href="http://cyll.org/blog/tech/2006-08-26-makingrubyintophp.html">how to quickly create templated Web pages with Ruby</a> without requiring any frameworks. It relies on CGI, but sometimes that's all you need, and it makes throwing together tiny Ruby-powered Web pages possible as easy as creating a simple PHP page.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Aníbal Rojas</strong> &middot; <time datetime="2006-08-28T03:38:00+00:00">August 28, 2006 at 3:38 am</time></p>
      <p>What about:</p><p><a href="http://www.hiveminds.co.uk/node/3105" rel="nofollow">http://www.hiveminds.co.uk/node/3105</a></p><p>It is a little bit more elaborated, but almost the same. And I agree with you, not everything is a "application" there is a lot of space for quick n' dirty small scripts</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Christoffer Sawicki</strong> &middot; <time datetime="2006-08-28T17:22:00+00:00">August 28, 2006 at 5:22 pm</time></p>
      <p>A slightly better way:<br>
<a href="http://termos.vemod.net/making-ruby-into-php-take-two" rel="nofollow">http://termos.vemod.net/making-ruby-into-php-take-two</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>James</strong> &middot; <time datetime="2006-08-28T20:40:00+00:00">August 28, 2006 at 8:40 pm</time></p>
      <p>One of the things I like about Ruby's Nitro Web framework is that it makes it very easy to build dirt-simple, ASP/PHP-like pages, while providing a good migration path to more a sophisticated ORM/MVC-style architecture if you need that as the application evolves.</p><p><a href="http://nitroproject.org/" rel="nofollow">http://nitroproject.org/</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
