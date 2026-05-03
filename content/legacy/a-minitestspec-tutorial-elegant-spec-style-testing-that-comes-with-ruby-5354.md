---
title: 'A MiniTest::Spec Tutorial: Elegant Spec-Style Testing That Comes With Ruby'
date: '2011-09-02'
author: Peter Cooper
author_slug: admin
post_id: 5354
slug: a-minitestspec-tutorial-elegant-spec-style-testing-that-comes-with-ruby-5354
url: "/a-minitestspec-tutorial-elegant-spec-style-testing-that-comes-with-ruby-5354.html"
categories:
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2011/09/specs.png" alt="" title="specs" width="120" class="alignnone size-full wp-image-5355" style="float: left; margin-right: 18px; border: 1px solid #666">Despite <a href="http://rspec.info/">RSpec</a>'s awesomeness, Test::Unit remains the most popular Ruby testing tool out there outside of Rails apps. I've recently been code walking through a lot of Ruby libraries for my <a href="http://rubyreloaded.com/">Ruby Reloaded course</a> and the typical arrangement is Test::Unit, sometimes coupled with <a href="https://github.com/thoughtbot/shoulda">Shoulda</a> or <a href="https://github.com/citrusbyte/contest">Contest</a> for some extra syntactic sweetness.</p>
<p>Part of the reason for Test::Unit's enduring popularity is its presence in the Ruby standard library but, also, its general 'lightness' and speed. When you're writing a large app, using a powerful full-featured system like RSpec has significant benefits (particularly stakeholder involvement in writing the specs). But when you're working on a library that might spread far and wide and is aimed solely at developers, the pros of Test::Unit shine through.</p>
<h3>Enter MiniTest</h3>
<p>With Ruby 1.9, however, <a href="https://github.com/seattlerb/minitest">MiniTest</a> entered the standard library. <code>require 'test/unit'</code> still works in Ruby 1.9 but it's provided through a compatibility layer on top of MiniTest, so if you're using <code>require 'test/unit'</code> in Ruby 1.9, you're really using MiniTest under the hood. It's possible to switch to using <code>MiniTest::Unit</code> directly without much effort (a few changed assertions and minor additions) but more exciting is the inclusion of <code>MiniTest::Spec</code>, a contextual RSpec-esque syntax, ready to run out of the box with Ruby 1.9.</p>
<p>Note: Ruby 1.8 users can run <code>gem install minitest</code> to get MiniTest too but it's not part of the standard library there.</p>
<h3>What Does MiniTest::Spec Look Like?</h3>
<p>Let's start with a ridiculously simplistic Test::Unit style test:</p>
<pre>require 'test/unit'

class TestArray &lt; Test::Unit::TestCase
  def test_array_can_be_created_with_no_arguments
    assert_instance_of Array, Array.new
  end

  def test_array_of_specific_length_can_be_created
    assert_equal 10, Array.new(10).size
  end
end</pre>
<p>Nothing too unusual there, I hope. Let's convert it to MiniTest::Spec:</p>
<pre>require 'minitest/spec'
require 'minitest/autorun'

describe Array do
  it "can be created with no arguments" do
    Array.new.must_be_instance_of Array
  end

  it "can be created with a specific size" do
    Array.new(10).size.must_equal 10
  end
end</pre>
<p>It's a matter of style and opinion, of course, but I prefer the latter version. MiniTest::Spec brings RSpec-esque matchers and contexts right into the Ruby 1.9 standard library and I hope it will start to make significant inroads into the library and developer tool test suites, replacing raw Test::Unit.</p>
<p>(For the purists out there, minitest/spec is implemented in a single ~300 line Ruby file. It's not a framework and it's easy to walk through the code in 10 minutes. Minimal magic!)<span></span></p>
<h3>MiniTest::Spec's Matchers / Expectations</h3>
<p>Previously we just did a check for equality and an object's class, but you're going to want to go a bit further. Here are MiniTest::Spec's key expectations:</p>
<ul>
<li>
<code>obj.must_be(operator, expected)</code> - for example, <code>10.must_be :&lt; , 11</code>
</li>
<li>
<code>obj.must_be_close_to</code> - the equivalent of <code>assert_in_delta</code>
</li>
<li>
<code>obj.must_be_empty</code> - Fails unless obj.empty?</li>
<li>
<code>obj.must_be_instance_of(klass)</code> - Fails unless <code>obj.class == klass</code>
</li>
<li>
<code>obj.must_be_kind_of(klass)</code> - Fails unless obj is of class klass <em>or</em> klass is one of its superclasses.</li>
<li><code>obj.must_be_nil</code></li>
<li>
<code>obj.must_be_same_as</code> - tests for true object equality</li>
<li><code>lambda {}.must_be_silent</code></li>
<li><code>obj.must_be_within_delta</code></li>
<li><code>obj.must_be_within_epsilon</code></li>
<li>
<code>obj.must_equal(other)</code> - Does a ==/eql? comparison between two objects.</li>
<li><code>obj.must_include(other)</code></li>
<li>
<code>obj.must_match(regex)</code> - A regular expression match, e.g. <code>"hello".must_match /w+/</code>
</li>
<li>
<code>lambda {}.must_output(stdout, [stderr..])</code> - The block should have certain output on stdout or stderr. Set stdout to nil just to check stderr.</li>
<li><code>lambda {}.must_raise(exception)</code></li>
<li><code>obj.must_respond_to(message)</code></li>
<li><code>obj.must_throw(sym)</code></li>
</ul>
<p>The above are all <em>positive</em> expectations but the opposite ones are easy to build as in most cases you can switch <code>must</code> with <code>wont</code>. For example:</p>
<ul>
<li><code>wont_be</code></li>
<li><code>wont_be_empty</code></li>
<li><code>wont_be_instance_of</code></li>
<li><code>wont_be_kind_of</code></li>
<li><code>wont_be_nil</code></li>
<li><code>wont_be_same_as</code></li>
<li><code>wont_equal</code></li>
<li><code>wont_include</code></li>
<li><code>wont_match</code></li>
<li><code>wont_respond_to</code></li>
</ul>
<p>Note: If you look at the <a href="https://github.com/seattlerb/minitest/blob/master/lib/minitest/spec.rb">source for minitest/spec.rb</a> you'll see that the expectations map directly to MiniTest::Unit assertions.</p>
<h3>Running MiniTest::Spec Specs In Your Ruby Project / Library</h3>
<p>Generally, running MiniTest::Spec tests can use the same mechanisms as you would for Test::Unit tests, so there's not much to do if you're already up to speed with T::U.</p>
<p>To get things going with <code>rake</code> just bring <code>rake/testtask</code> into your project's <code>Rakefile</code>, if it's not already there, and make some tweaks:</p>
<pre>require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs.push "lib"
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end</pre>
<p>You'll want to tweak the glob in <span><code>FileList</code> when you follow a different convention for filenames (e.g. <code>test/test_*.rb</code> or <code>specs/*_spec.rb</code>). It's easily updated and gives you <code>rake test</code> for the running.</span></p>
<h3>Give It A Try</h3>
<p>So next time you're starting on a new library and you're focusing on Ruby 1.9 (it's about time :-)), give MiniTest::Spec a try. You get a neat testing syntax and it's all part of the standard library. (If Ruby 1.8 compatibility is still important, of course, you could even just add 'minitest' to your Gemfile.)</p>
<p><strong>If Ruby 1.9 interests you specifically, check out <a href="http://rubyinside.com/19walkthrough/">The Ruby 1.9 Walkthrough</a>, a mega screencast aimed at Ruby 1.8.7 developers who want to learn all about what's new, what's gone, and what's different in Ruby 1.9.2 and 1.9.3.</strong></p>
<h3>Further Reading</h3>
<ul>
<li><a href="http://metaskills.net/2011/03/26/using-minitest-spec-with-rails/">Using MiniTest::Spec with Rails</a></li>
<li><a href="http://metaskills.net/2011/01/25/from-test-unit-shoulda-to-minitest-spec-minishoulda/">From Test::Unit &amp; Shoulda To MiniTest::Spec &amp; MiniShoulda</a></li>
<li><a href="http://www.bootspring.com/2010/09/22/minitest-rubys-test-framework/">MiniTest: Ruby 1.9's Test Framework</a></li>
<li>
<a href="http://bfts.rubyforge.org/minitest/MiniTest/Mock.html">MiniTest::Mock</a> - the simple mocking system included in MiniTest.</li>
</ul>
<p></p>
<p style="background-color: #ffc; padding: 8px">Peter here! :-) I've been running an online course called <a href="http://rubyreloaded.com/">Ruby Reloaded</a> over the past couple of months for intermediate Ruby developers who want to revise the basics and pick up some new tricks. The next run will probably be in October or November so if you want to be on the waiting list or just learn more about the course, <a href="http://rubyreloaded.com/">click here.</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Oriol Gual</strong> &middot; <time datetime="2011-09-03T16:46:00+00:00">September 3, 2011 at 4:46 pm</time></p>
      <p>Instead of:</p><p>  t.test_files = FileList['specs/*_spec.rb']</p><p>I'd rather go with:</p><p>  t.pattern = 'specs/**/*_spec.rb'</p><p>This way one could have subfolders to organize the specs. Also, remember to add the spec/test folder to lib in order to load a test/spec_helper:</p><p>  t.libs.push 'specs'</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Martijn</strong> &middot; <time datetime="2011-09-05T06:14:00+00:00">September 5, 2011 at 6:14 am</time></p>
      <p>Cool, I'm going to convert the specs for my new gem to MiniTest :) I like how it supports both TU and spec style.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrés Botero</strong> &middot; <time datetime="2011-09-05T20:48:00+00:00">September 5, 2011 at 8:48 pm</time></p>
      <p>I think you can leave the minitest/spec require out if you include minitest/autorun.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-09-05T21:11:00+00:00">September 5, 2011 at 9:11 pm</time></p>
      <p>Yeah, I think you can too, as the other demos of it I've seen do that. For some reason I like being explicit in my choice but totally! :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-09-05T21:12:00+00:00">September 5, 2011 at 9:12 pm</time></p>
      <p>Oriol: I prefer your approach, I'll update the article soon.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Neeraj Singh</strong> &middot; <time datetime="2011-09-08T13:38:00+00:00">September 8, 2011 at 1:38 pm</time></p>
      <p>This video by Ryan Davis has a good overview of MiniTest.</p><p><a href="http://confreaks.net/videos/618-cascadiaruby2011-size-doesn-t-matter" rel="nofollow">http://confreaks.net/videos/618-cascadiaruby2011-size-doesn-t-matter</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Marc</strong> &middot; <time datetime="2011-09-08T14:37:00+00:00">September 8, 2011 at 2:37 pm</time></p>
      <p>The only downside is, that there currently doesn't seem to be a way to generate junit xml output using minitest. The ci_reporter gem doesn't support it and there doesn't seem to be the concept of formaters for minitest :(</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sam Livingston-Gray</strong> &middot; <time datetime="2011-09-08T16:36:00+00:00">September 8, 2011 at 4:36 pm</time></p>
      <p>I'm a huge fan of nested context blocks for testing, but I've never gotten over my dislike of RSpec's .should matchers.</p><p>So I feel obligated to point out that you don't have to use the .must_* and .wont_* method assertions -- MiniTest is perfectly happy to execute assert_* and refute_* methods inside test blocks.  If I remember correctly, MiniTest::Spec is basically just a thin wrapper that generates plain-vanilla MiniTest::Unit classes and calls for you.</p><p>For the curious, I recommend watching Ryan Davis' recent talk about MiniTest; a 33-minute video is available at:  <a href="http://confreaks.net/videos/618-cascadiaruby2011-size-doesn-t-matter" rel="nofollow">http://confreaks.net/videos/618-cascadiaruby2011-size-doesn-t-matter</a></p><p>(Also, I continue to be disproportionately amused and grateful that Ryan came up with two sets of words that have the same number of letters (assert/refute and must/wont); I've used assert/deny in the past and am always mildly annoyed that mixing the two when doing several related assertions in a row throws off the vertical alignment of my code.)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Francesc Esplugas</strong> &middot; <time datetime="2011-09-08T18:14:00+00:00">September 8, 2011 at 6:14 pm</time></p>
      <p>Peter, Oriol: A few days ago, while testing a Gem with Ruby 1.9.3-preview1 tests were not detected when using `t.pattern` so I changed it to FileList:</p><p>    t.test_files = FileList['specs/**/*_spec.rb']</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Johnathon</strong> &middot; <time datetime="2011-09-20T17:28:00+00:00">September 20, 2011 at 5:28 pm</time></p>
      <p>I like the simplicity of MiniTest, but even though it's default with Ruby 1.9, I find the lack of Rails support odd. Of course, there are things like minitest-rails , but even then, it's missing simple integration/acceptance test support. Capybara itself even seems to be biased toward Rspec.</p><p>So I think MiniTest really needs better support and documentation (this is the main case since it's really hard to find anyone using it over Rspec) to use with projects (esp. Rails) before it'd be an contender to overthrowing Rspec.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Richard</strong> &middot; <time datetime="2011-09-29T19:12:00+00:00">September 29, 2011 at 7:12 pm</time></p>
      <p>Just putting it through its paces now. It reminds me a lot of an old gem called <b>dust</b> which added some basic pretty syntax on top of Test::Unit</p><p>I like it when your tests are just method calls rather than method definitions. It makes it easy to build up tests from array data and still keep things nice and literal. An old example I wrote of <a href="http://richardconroy.blogspot.com/2008/11/testing-java-code-with-ruby-and-jtestr.html" rel="nofollow">making lots of tests out of array data or fixtures</a> its for reference, but sometimes tests like that are very handy to do in certain circumstances.</p><p>Now to just go through the Mocking toolkit. I am liking the idea of a test framework that has everything in it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Aronoff</strong> &middot; <time datetime="2011-11-07T17:40:00+00:00">November 7, 2011 at 5:40 pm</time></p>
      <p>@Marc For reporters under minitest, see <a href="https://github.com/CapnKernul/minitest-reporters" rel="nofollow">minitest-reporters</a>.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
