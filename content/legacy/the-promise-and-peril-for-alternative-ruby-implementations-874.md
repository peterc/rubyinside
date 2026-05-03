---
title: The Promise and Peril for Alternative Ruby Implementations
date: '2008-04-27'
author: Peter Cooper
author_slug: admin
post_id: 874
slug: the-promise-and-peril-for-alternative-ruby-implementations-874
url: "/the-promise-and-peril-for-alternative-ruby-implementations-874.html"
categories:
- controversy
- jruby
- miscellaneous
- os-x-specific
- microsoft-windows
---

{{< rawhtml >}}
<p><img src="/assets/2008/04/25464trytr.jpg" width="324" height="211" alt="25464trytr.jpg"></p>
<p><a href="http://headius.blogspot.com/2008/04/promise-and-peril-for-alternative-ruby.html">Promise and Peril for Alternative Ruby Impls</a> [Implementations] is a lengthy, but interesting, essay by Charles Nutter of the JRuby team. He looks at Ruby 1.8, Ruby 1.9, JRuby, Rubinius, IronRuby, MacRuby, and some minor implementations, and covers their background along with their current development state and how they might proceed in future. For those interested in the state of the many Ruby implementations, this is a must read.</p>
<p>For those who want a shorter version without any of the context or smart insight Charles brings: <span style="font-style: italic;">the Ruby 1.8.7 previews have thrown a spanner in the works, Ruby 1.9 still doesn't run Rails (but will very soon), Ruby 1.9 might not prove better enough to woo developers, JRuby rocks, Rubinius is cool but improving performance will be hard, Rubinius seems to be retreating to using more and more C primitive functions and moving away from "Ruby in Ruby", IronRuby is clever but might have trouble running Rails properly, MacRuby is a great idea, and all of the other, minor implementations seem stuck in the mud.</span></p>
<p>Trivia: Two Freudian slips when writing this post. I mis-typed "Peril" as "Perl" in both cases.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Charles Oliver Nutter</strong> &middot; <time datetime="2008-04-27T18:37:00+00:00">April 27, 2008 at 6:37 pm</time></p>
      <p>Very nice summary :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Niket Patel</strong> &middot; <time datetime="2008-04-28T19:12:00+00:00">April 28, 2008 at 7:12 pm</time></p>
      <p><a href="http://blog.brightredglow.com/2008/4/28/ruby-in-ruby-seriously" rel="nofollow">http://blog.brightredglow.com/2008/4/28/ruby-in-ruby-seriously</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Francois</strong> &middot; <time datetime="2008-04-29T08:09:00+00:00">April 29, 2008 at 8:09 am</time></p>
      <p>JRuby is fast... only after startup; that's OK for load-once-run-forever server applications like Rails. JRuby startup time for a one line "puts 'hello world'" ruby script is about 2 seconds on my machine, versus 5 milliseconds for MRI. Am I the only one left who write CGI scripts from time to time?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-04-29T11:37:00+00:00">April 29, 2008 at 11:37 am</time></p>
      <p>I write CGI scripts with Ruby every now and then (but not often). The MRI is actually rather good at it. As long as you don't expect thousands of hits a day, it works well. The Ruby Inside advent calendar was just an index.cgi written in Ruby :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Radarek</strong> &middot; <time datetime="2008-04-29T14:00:00+00:00">April 29, 2008 at 2:00 pm</time></p>
      <p>I have respect for all work to JRuby team and it's leader Charles. But I can't understand how he can tell about lies from other's Ruby's implementators while he lies too. He says that Rails is faster on JRuby than ruby1.8 but it doesn't. JRuby beats ruby1.8 in all microbenchmarks and also real applications. But it's not true for Rails applications. Google for benchmarks please (I've done some benchmarks too and it showed the same). I wish JRuby to run rails faster but for now ruby1.8 is still faster for rails apps.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charles Oliver Nutter</strong> &middot; <time datetime="2008-05-01T05:28:00+00:00">May 1, 2008 at 5:28 am</time></p>
      <p>Radarek: It's true that JRuby is faster for nontrivial apps I've seen benchmarked, but it takes some tweaking to get JRuby on Rails right, and it's only with recent releases of JRuby and AR-JDBC that it really shines. There's more to do, but we've heard from lots of folks putting apps into production that their systems run much better on JRuby.</p><p>There will always be exceptions, it's not as fast as we'd like, and it's not easy enough to make sure it's faster. But it it's there, and it will continue getting better.</p><p>And I told no lies about other implementations. If I offered opinions you disagree with, I respect that, but they are not lies. And if I made factual errors, I would like to receive corrections and I will update the original article. But there was no malicious intent, and I did not tell lies.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
