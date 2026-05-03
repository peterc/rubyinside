---
title: 'RSpec 2.8: The Popular Ruby BDD Tool Goes Supersonic'
date: '2012-01-07'
author: Peter Cooper
author_slug: admin
post_id: 5772
slug: rspec-2-8-released-5772
url: "/rspec-2-8-released-5772.html"
categories:
- news
---

{{< rawhtml >}}
<p><a href="http://blog.davidchelimsky.net/2012/01/04/rspec-28-is-released/">RSpec 2.8</a> has been released, along with <a href="http://blog.davidchelimsky.net/2012/01/05/rspec-rails-281-is-released/">rspec-rails 2.8.1</a> for the full Rails 3.x integration experience.</p>
<p>RSpec is a BDD-focused testing tool that's <em>particularly</em> popular in the Rails world where everyone <a href="dhh-offended-by-rspec-debate-4610.html">except DHH</a> is using it (if you believe the hoopla). RSpec has faced accusations of being less than speedy in the past, but it seems 2.8 has had a performance firework shoved up its tailpipe:</p>
<p><img src="/assets/2012/01/rspec28.gif" alt="" title="rspec28" width="502" height="411" style="border: 3px solid #ccc" class="alignnone size-full wp-image-5781"></p>
<p>David Chelimsky, the creator of RSpec, also <a href="http://blog.davidchelimsky.net/2012/01/04/rspec-28-is-released/">notes</a> that in RSpec 2.8:</p>
<ul>
<li>the documentation has been significantly improved</li>
<li>there's improved support for tags and filtering</li>
<li>random example running order support (with user definable seed)</li>
<li>
<code>rspec --init</code> will create a <code>spec</code> directory and some starter code on a blank project - ideal for Ruby library development!</li>
</ul>
<p>Overall, 2.8 seems like a good step forward, and if you've been feeling a little constipated in the spec running department lately, RSpec 2.8 might help you get things flowing again (though as with Ruby 1.9 vs 1.8, your mileage may vary depending on your usage.)</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jonathon</strong> &middot; <time datetime="2012-01-07T18:05:00+00:00">January 7, 2012 at 6:05 pm</time></p>
      <p>I've been using minitest/spec for a while without much problem. Is there a reason for rspec's popularity besides the fact it has automagical integration with rails?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2012-01-07T19:49:00+00:00">January 7, 2012 at 7:49 pm</time></p>
      <p>It's been around longer, includes a mature mocking and stubbing system (a common complaint I've seen from minitest/spec newbies), has a better reporting and output system, among other things.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>foomatic</strong> &middot; <time datetime="2012-01-07T19:59:00+00:00">January 7, 2012 at 7:59 pm</time></p>
      <p>Also there's a <a href="http://pragprog.com/book/achbd/the-rspec-book" rel="nofollow">book for RSpec</a> (which is actually quite good). In my experience (yours may differ) most Ruby developers use RSpec so it is quite easy to get help, exchange views etc. </p><p>It's a great project overall, well done for the 2.8 release.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John-Paul Bader</strong> &middot; <time datetime="2012-01-08T09:34:00+00:00">January 8, 2012 at 9:34 am</time></p>
      <p>Just for the record: I don't use rspec either, nor any other magic, fancy, bloated test framework suite. I'm with dhh here. test/unit or minitest do the job just fine.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>chrismealy</strong> &middot; <time datetime="2012-01-08T18:19:00+00:00">January 8, 2012 at 6:19 pm</time></p>
      <p>I get exactly the same speed at rspec 2.6.0.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Grimm</strong> &middot; <time datetime="2012-01-08T23:26:00+00:00">January 8, 2012 at 11:26 pm</time></p>
      <p>I don't use RSpec, pretty much for the reason janfri gave in the DHH post, but why has its performance improved? I assumed that load times are (or at least were until recently) the main bottleneck in any testing framework.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Cain</strong> &middot; <time datetime="2012-01-10T23:30:00+00:00">January 10, 2012 at 11:30 pm</time></p>
      <p>@Andrew Grimm, the RSpec team reimplemented all the DSL matchers to use classes. Check out the benchmark here to see the speed differences: <a href="https://github.com/rspec/rspec-expectations/blob/master/benchmarks/matcher_dsl_vs_classes.rb" rel="nofollow">https://github.com/rspec/rspec-expectations/blob/master/benchmarks/matcher_dsl_vs_classes.rb</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>patrick</strong> &middot; <time datetime="2012-01-13T16:10:00+00:00">January 13, 2012 at 4:10 pm</time></p>
      <p>agreeing with chrismealy, same results as 2.6.0. i never updated to 2.7.0 because it ran so slow (~60% increase)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Vito Botta</strong> &middot; <time datetime="2012-02-25T11:29:00+00:00">February 25, 2012 at 11:29 am</time></p>
      <p>When I read this I was jumping to upgrade hoping to speed up an app's test suite but.. ouch, I had already upgraded :(</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
