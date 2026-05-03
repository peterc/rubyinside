---
title: Ruby 1.8′s Dismal Net/HTTP Performance
date: '2008-10-05'
author: Peter Cooper
author_slug: admin
post_id: 1226
slug: ruby-18s-dismal-nethttp-performance-1226
url: "/ruby-18s-dismal-nethttp-performance-1226.html"
categories:
- controversy
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2008/10/htperfruby18.png" width="110" height="108" alt="htperfruby18.png" style="float:left; margin-right:12px; margin-bottom:12px;">A week ago, Adam Nelson (a Virginia-based Ruby developer) <a href="http://apocryph.org/absolutely_bullshit_ruby_http_client_situation">complained about Ruby's "absolutely bullshit Ruby HTTP client situation."</a> He was running into a nasty situation where Ruby's standard HTTP client library (<a href="http://www.ruby-doc.org/stdlib/libdoc/net/http/rdoc/index.html">net/http</a>) was sending data in 1 kilobyte chunks, causing his CPU to redline. Due to <em>net/http</em>'s popularity (particularly with other libraries), Adam saw this as a big issue.</p>
<p>Today, Adam returns with <a href="http://apocryph.org/analysis_ruby_18x_http_client_performance">a more scientific analysis of Ruby 1.8.x's HTTP client performance</a>. He discovers that while Ruby 1.8.6 and below have a hard-coded 1KB buffer size for HTTP reads, Ruby 1.8.7 extends the buffer to 16KB.</p>
<p>The results are very interesting and worth checking out, and while Adam's his ultimate conclusion is that "Ruby's Net::HTTP implementation blows," he's looking to work on the necessary changes to bring <em>net/http</em> up to speed. If you want to help out or give advice, leave comments on <a href="http://apocryph.org/analysis_ruby_18x_http_client_performance">Adam's post</a>.</p>
<p class="s"><cite>Post supported by RichAppsConsulting:</cite> Are you looking for an Agile web 2.0 company to develop your company's website quickly and professionally? At <a href="http://www.richappsconsulting.com">RAC</a>, we have a highly trained staff of developers who are experts in Rails, Flex and PHP development. We can develop solutions for your company with your budget and timeline in mind. We pride ourselves on having superior Rails programming skills the and striving for continuous improvement. For more information, call our office at 202.470.6683 or email us at <a href="mailto:contact@richappsconsulting.com">contact@<!--*-->richappsconsulting.com</a>. Please visit our website at <a href="http://www.richappsconsulting.com">http://www.richappsconsulting.com</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jackson</strong> &middot; <time datetime="2008-10-05T16:55:00+00:00">October 5, 2008 at 4:55 pm</time></p>
      <p><img src="images/troll.gif" alt="troll">Great, more internet attitude. Yes, Adam, you're so transgressive; we get it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tom</strong> &middot; <time datetime="2008-10-05T17:43:00+00:00">October 5, 2008 at 5:43 pm</time></p>
      <p><img src="images/troll.gif" alt="troll">You know, the sheer quantity of advertising on this site makes me fucking miserable.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ben Johnson</strong> &middot; <time datetime="2008-10-05T17:59:00+00:00">October 5, 2008 at 5:59 pm</time></p>
      <p>Awesome! The Net::HTTP library for ruby does blow, which is why I always resort to using cURL. I know it's not the most elegant solution, but cURL is extremely fast and well tested. It has all of the options anyone would need. With the benchmarking I did using cURL in my ruby app was MUCH faster than Net::HTTP or any alternative ruby library.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-10-05T18:42:00+00:00">October 5, 2008 at 6:42 pm</time></p>
      <p>Tom: Gotta eat.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>PJ Davi</strong> &middot; <time datetime="2008-10-06T02:44:00+00:00">October 6, 2008 at 2:44 am</time></p>
      <p>Do you know if this is also a problem with Ruby Enterprise Edition (by Phusion, the Passenger guys)? I would have asked Adam Nelson himself, but I didn't see anywhere to comment on his blog.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-10-06T02:54:00+00:00">October 6, 2008 at 2:54 am</time></p>
      <p>I might be wrong, but REE doesn't have a modified standard library, does it? If not, then it'd still be a problem.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2008-10-06T09:55:00+00:00">October 6, 2008 at 9:55 am</time></p>
      <p>PJ Davi, Peter Cooper: yeah the problem applies to REE as well.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dudeman</strong> &middot; <time datetime="2008-10-07T01:36:00+00:00">October 7, 2008 at 1:36 am</time></p>
      <p>This guy is hilarious.  This blog has to be a joke.  Seriously, look around.  So funny.  Cat pictures, talk about how he carries a gun in his car, and hate for everything.  Lol.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
