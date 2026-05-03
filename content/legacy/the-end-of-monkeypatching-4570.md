---
title: The End of Monkeypatching
date: '2011-03-29'
author: Xavier Shay
author_slug: xavier
post_id: 4570
slug: the-end-of-monkeypatching-4570
url: "/the-end-of-monkeypatching-4570.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2011/03/not-a-monkey-but-whatever-150x150.png" alt="" title="not-a-monkey-but-whatever" width="120" height="120" class="alignnone size-thumbnail wp-image-4579" style="float: left; margin-right: 18px; border: 1px solid #333">
</p>
<p>Monkey-patching is so 2010. We're in the <em>future</em>, and with <a href="http://github.com">Github</a> and <a href="http://gembundler.com">Bundler</a> there is now rarely a need to monkey-patch Ruby code in your applications.</p>
<p>Monkey-patching is the dangerous-yet-frequently-useful technique of re-opening existing classes to change or add to their behavior. For example, if I have always felt that <code>Array</code> should implement the <code>sum</code> method, I can add it in my codebase:</p>
<pre>class Array
  def sum
    inject {|sum, x| sum + x }
  end
end</pre>
<p>That is a monkey-patch. Of course, when I require <code>activesupport</code> it also adds a <code>sum</code> method to <code>Array</code> though its version has an <a href="http://apidock.com/rails/Enumerable/sum">arity of one and takes a block</a>. This conflict can cause hard to track down errors and is why monkey-patching is to be used with caution.</p>
<p>Thankfully, the spread of this abuse is minimal and most developers understand the risks. More frequently, monkey-patching is used to quickly fix bugs in existing libraries by reopening a class and replacing an existing method with an implementation that works correctly. This is often a fragile solution, relying on on sometimes complex techniques to override exactly the right bit of code, and also on the underlying library not be refactored.</p>
<p>In the dark ages when it was troublesome to own or release your own versions of gems, this was the only cheap solution available. Nowadays though, a modern Ruby application has access to a far easier and more robust solution: fork the offending code, fix it at the source, and set up your application dependencies to use your new code directly. All without having to package a new gem!</p>
<p>The first few steps of this process are mostly self-explanatory, but I have documented them below anyway. If you are already old hat at this stuff, feel free to skip directly to step 4.</p>
<h3 id='\"step_1_fork_the_library\"'>Step 1: Fork the Library</h3>
<p>It is rare to find a Ruby gem or library that isn’t on Github these days. After locating the library, always check the network graph to try and find other popular forks. Often the problem you are trying to solve has already been fixed by another developer. In that case, you can skip straight to step 3. Otherwise, fork the code base to your own GitHub account.</p>
<p><a href="/assets/2011/03/fork.jpeg"><img src="/assets/2011/03/fork.jpeg" alt="" title="fork" width="640" height="178" class="alignnone size-full wp-image-4573"></a></p>
<h3 id='\"step_2_make_your_changes\"'>Step 2: Make Your Changes</h3>
<p>Clone your fork and make whatever changes you need. If you are feeling generous, add an appropriate test to the code base as well so it can be contributed back to the original fork, but as long as you have a test <em>somewhere</em> (such as in your main app) for the desired behavior you will be fine.</p>
<h3 id='\"step_3_change_your_gemfile\"'>Step 3: Change Your Gemfile</h3>
<p>Point your Gemfile at the new code:</p>
<pre># Gemfile
# From this
gem 'rails'

# To this
gem 'rails', :git =&gt; 'git://github.com/xaviershay/rails', :branch =&gt; 'important-fix'</pre>
<p>And reinstall your gems by running <code>bundle</code>.</p>
<h3 id='\"step_4_document\"'>Step 4: Document</h3>
<p><strong>This step is important.</strong> There is no excuse for skipping it. You need documentation in three places:</p>
<ol>
<li>
<p>A note at the top of the README in your fork, documenting the changes. Any developer can stumble across a public fork, and there is nothing more frustrating than trying to figure out whether a fork already solves your problem. At the very least, a “here be dragons” note will be appreciated.</p>
</li>
<li>
<p>The place in your code base that depends on the fork. You can expect other developers to be familiar with rails and the standard gems. They won’t be familiar with the behavior of your changes.</p>
</li>
<li>
<p>The <code>Gemfile</code>. Make a note above your gem line as to why a fork is required. Provide enough information that a future developer will know when or if it would be appropriate to upgrade or switch back to the main gem. Here are some real examples from some of my projects:</p>
</li>
</ol>
<pre># An experimental fix for memory bloat issues in development, if it works
# I will be patching to core.
gem ...

# 1.1 requires rubygems &gt; 1.4, so won't install on heroku. This fork removes
# that dependency, since it is actually only required for the development
# dependencies.
gem ...

# Need e86f5f23f5ed15d2e9f2 in master and us to upgrade to dm-core 1.1
# before we switch back. Should be in 1.1.1 release.
gem ...</pre>
<h3 id='\"bonus_upgrading\"'>Bonus Step: Upgrading</h3>
<p>Six months down the track, how will you know whether your monkey-patched fixes have been solved elsewhere? Sure, your tests should cover it, but it is nice to have some more confidence. We can use some git tricks to get some intel. Add the master fork as a remote to your project, and you can get a log of the differences between then. Here is an example of a fork of <code>dm-rails</code> I have:</p>
<pre><code>$ git clone git://github.com/xaviershay/dm-rails
$ cd dm-rails
$ git remote add datamapper git://github.com/datamapper/dm-rails
$ git fetch datamapper
$ git log --format=oneline --graph v1.1.0..origin/dev-fix-3.0.x
* e9a2b623aea6c87675247230acce81b031163719 Need to .dup this array because otherwise deleting from it causes undefined iteration
* 0736617a1a97862ab249e6388a3c87df4d9d3231 Remove duplicate dependencies from gemspec now that Jeweler reads the Gemfile
* 0265016cdf4528a922e1db32ae922924465f095f Revert "Merge branch 'master' into mine"
* f054c803baf41fabe0ac443bc8d205f867100a9c Merge branch 'master' into mine
* a969fd1ac2066e4b4bc785a0e9a7d904309ca64f Regenerate gemspec
* 373073444acae97b2a9ad9e511e16f44a46a73ed Clear out descendants on preloadmodels to prevent memory bloat in development
</code></pre>
<p>Ignoring the merge and gemspec commits, you can see that my commits did not make it into the 1.1.0 release. This does not mean I should not upgrade - it is quite possible that my problem was solved in another way - but it lets me know what I am looking for.</p>
<h3 id='\"parting_words\"'>Parting Words</h3>
<p>For a project using Bundler, there is now rarely ever a need to monkey patch anything. Any bugs or enhancements can be fixed properly at the source, resulting in happier code and happier developers.</p>
<p class="s" style="padding: 8px; background-color: #ff9"><em>[yay]</em> Want to jump on the Rails 3 train? Michael Hartl's <a href="http://zfer.us/EKm97">Ruby on Rails 3 Tutorial series</a> is the way to go. There's a free, online book but if you want to go further, pick up the <a href="http://zfer.us/EKm97">15+ hours of screencasts</a> giving you an 'over the shoulder' view of a Rails professional building Rails 3 apps in real time.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Mark Wilden</strong> &middot; <time datetime="2011-03-29T02:57:00+00:00">March 29, 2011 at 2:57 am</time></p>
      <p>The latter part of the post, about fixing through forking, is very good. The first part, about adding Array#sum, however, doesn't make a good argument for its case: "can cause hard to track down errors." These errors would only be hard to track down if you didn't write tests. The fact that Rails itself monkeypatches in this method is indicative of its validity.</p><p>Adding methods to a class is one of the hallmarks of OOP. Monkeypatching simply makes it less cumbersome. And as with all tools, it is not appropriate for every use.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matthew Rudy Jacobs</strong> &middot; <time datetime="2011-03-29T03:42:00+00:00">March 29, 2011 at 3:42 am</time></p>
      <p>Generally I think this is a good post,<br>
but on one point I can't decide on;</p><p>- "A note at the top of the README in your fork"</p><p>This would be fine, except;</p><p>1. it means you have to make changes to MASTER<br>
2. it makes it a bit more annoying to be pulled upstream</p><p>I'm into the idea of just changing the github description.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dominik Honnef</strong> &middot; <time datetime="2011-03-29T03:59:00+00:00">March 29, 2011 at 3:59 am</time></p>
      <p>When I read the title of this article, I thought "well, another article about refinements, that's not too bad". But instead I was presented with an article that propagates forking a project for every minor problem, and even worse, using your forks in production, leaving system administrators with maybe 10 slightly different versions of library X, all maintained and updated in a unique, usually unsatisfactory fashion. And the real fun begins when dependency A and B need each their own, patched library C, with possibly conflicting changes...</p><p>Now that could still be excused, but the worst part about this article is that pull requests are not mentioned a single time. If you fork project X to fix a bug you should *actively* try to get that patch integrated in the main project. Expecting a project maintainer to check the fork queue and filtering through hundreds of usually meaningless forks is not the way contributing to open source works. Instead, you add a fifth step, which actually is the important one here, that says: "Get in contact with the project maintainers".</p><p>All in all this article describes something most people already know, and those who didn't, get misled.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tim Linquist</strong> &middot; <time datetime="2011-03-29T06:06:00+00:00">March 29, 2011 at 6:06 am</time></p>
      <p>I like what @Dominik had to say.  I would change one thing though. Make his 5th step Step #1.  You should always get in touch with the maintainer(s) first to see where the bug/enhancement falls in line with their current plans.  A solution may already be in the works before you fork the repo.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hartog de Mik</strong> &middot; <time datetime="2011-03-29T07:30:00+00:00">March 29, 2011 at 7:30 am</time></p>
      <p>+1 for Dominik Honnef</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris Eppstein</strong> &middot; <time datetime="2011-03-29T08:20:00+00:00">March 29, 2011 at 8:20 am</time></p>
      <p>You've omitted one of the best parts of using git to manage private forks: Rebasing. When you need to get the latest code from the original developer you just rebase against their branch, resolve conflicts, and make sure tests are still green. You're changes always sit on top, ready to be pulled into the main line at a moments notice. It also makes it easier for others to see what's been changed from the main line.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jean</strong> &middot; <time datetime="2011-03-29T08:22:00+00:00">March 29, 2011 at 8:22 am</time></p>
      <p>I completely agree with Dominik Honnef. Monkey patching is fragile at best but depending on forked libraries on github is not a valid solution.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Klaus Gundermann</strong> &middot; <time datetime="2011-03-29T08:35:00+00:00">March 29, 2011 at 8:35 am</time></p>
      <p>"add a fifth step, ... that says: "Get in contact with the project maintainers"<br>
No, that should be definitely the First step.<br>
The second step should be: Create a test and a patch for the original gem and send it to the maintainer<br>
Meanwhile you may use a monkey patch until your patch gets integrated in the main tree.<br>
Only as last resort create a new fork.</p><p>The problem with offensive forking is: a new user will find a dozens fork of the same gem which are only slightly diffent, so with which one should he start with?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike</strong> &middot; <time datetime="2011-03-29T10:58:00+00:00">March 29, 2011 at 10:58 am</time></p>
      <p>I agree with the comments of Wilden and Honnef above, but would go further to say that this article appears to be a perfect example of the torture of the English language in an attempt to justify the use of an inflammatory title in order to get more hits.</p><p>Extending the Ruby language to fit your needs, which is what some call monkey patching, and what David Heinemeier Hansson only half-jokingly suggests we call freedom patching, is not abuse. Like any coding technique, even commenting, it can be abused, but it is such an extremely powerful technique that it is used extensively not only in Ruby, and available in Smalltalk, JavaScript, Objective-C, Perl, Python, and Groovy.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>damon</strong> &middot; <time datetime="2011-03-29T12:28:00+00:00">March 29, 2011 at 12:28 pm</time></p>
      <p>Solving a non-problem with a royal pain, congrats.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Vito Botta</strong> &middot; <time datetime="2011-03-29T12:33:00+00:00">March 29, 2011 at 12:33 pm</time></p>
      <p>I liked the post, but I also tend to agree with Dominik. Is it really a good idea to depend on a forked copy of a dependency for every small change?</p><p>An example that comes to mind. I had a problem with Liquid and unicode characters, once I found the problem all I had to do to fix it quickly so I could move on was this:</p><p><code><br>
Liquid.instance_eval do<br>
  remove_const :VariableSegment<br>
  remove_const :VariableParser</code></p><p>  VariableSegment = /[\w\-]/u<br>
  VariableParser  = /\[[^\]]+\]|#{VariableSegment}+\??/u<br>
end<br>
</p><p>Then I added <a href="https://github.com/tobi/liquid/issuesearch?state=open&amp;q=unicode#issue/31" rel="nofollow">a comment</a> to let them know about the issue - although I think it hasn't been fixed yet.</p><p>So I only had to change those regular expressions. I agree with you that perhaps it feels cleaner somehow to avoid monkey patching, but I don't think I would prefer forking Liquid just for this minor change. Dominik makes also a very good point on contributing and pull requests.</p><p>Nice post though, thanks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sam</strong> &middot; <time datetime="2011-03-29T12:38:00+00:00">March 29, 2011 at 12:38 pm</time></p>
      <p>This was a great article, I'm still a newbie, but certainly getting more comfortable with git/rails ninjarie.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Wyatt Carss</strong> &middot; <time datetime="2011-03-29T13:08:00+00:00">March 29, 2011 at 1:08 pm</time></p>
      <p>I haven't worked with a large enough ruby codebase yet to need to manage odd gem issues and decide what course to take, but I probably will someday. I was aware of monkeypatching as a way to work through those sorts of issues, and while I was also aware that most gems are visible on github, I had *not* thought about using the open source model as a path around the monkeypatch.</p><p>Good food for thought - it's another useful tool in the belt. Thanks, Xavier, and thanks to the commenters as well - you've provided pretty much the perfect grain of salt :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Anonym</strong> &middot; <time datetime="2011-03-29T13:12:00+00:00">March 29, 2011 at 1:12 pm</time></p>
      <p>I read your entire post, went back on top, saw the monkey patch, and exclaimed "cool, this solves it faster!". I'm gonna be burnt in the fire of a thousand suns!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>hakunin</strong> &middot; <time datetime="2011-03-29T14:36:00+00:00">March 29, 2011 at 2:36 pm</time></p>
      <p>The article has a point. Look at it the other way around.</p><p>1) You have a problem with a gem.<br>
2) You searched/asked around — it's a bug.<br>
3) You figured out how to monkeypatch it.<br>
4) Oh cool, I can make this 5 minutes of my time useful to others! Fork, commit, pull request. Now what?<br>
5) Hmm, since I need to do something before it's pulled, and now that I have a fork already in place, adding :git =&gt; my_fork to Gemfile with a #TODO comment linking to pull request is just as easy as adding a monkeypatch to initializers with the same #TODO comment. Still, nobody forces me to link Gemfile to my fork, I may stick with monkeypatch...</p><p>The point is that monkeypatching is one step away from contrib in most cases, so why not take the extra step.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kyle Drake</strong> &middot; <time datetime="2011-03-29T14:58:00+00:00">March 29, 2011 at 2:58 pm</time></p>
      <p>I noticed this amazing functionality and tried to use it at work, but then learned it was worthless for us, because bundler has no support for vendoring git-sourced gems yet. In other words bundle package won't work! I'm not comfortable deploying a lot of apps without bundled dependencies, and Heroku doesn't want to pull from our private gem repository. I'm sure there's a method to add a key for it, but again, a little risky for my standards.</p><p>I have started on a patch that may or may not fix this (I'm not a git expert and may be lacking knowledge of something important needed). Take a look:<br>
<a href="https://github.com/benhamill/bundler/pull/1" rel="nofollow">https://github.com/benhamill/bundler/pull/1</a><br>
<a href="https://github.com/kyledrake/bundler/commit/c02b43b5495daf93f36337fef24344bdafee4c81" rel="nofollow">https://github.com/kyledrake/bundler/commit/c02b43b5495daf93f36337fef24344bdafee4c81</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joel Parker Henderson</strong> &middot; <time datetime="2011-03-29T16:34:00+00:00">March 29, 2011 at 4:34 pm</time></p>
      <p>Monkeypatches are able to test for the existence of a method *before* the patch applies, thus alerting you to the error immediately.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dominik Honnef</strong> &middot; <time datetime="2011-03-29T20:23:00+00:00">March 29, 2011 at 8:23 pm</time></p>
      <p>I agree with Tim Linquist here, my 5th step should have been the first one. Looks like I was trying too hard to fix the author's "workflow" by extending it, instead of fixing the flawed basis.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Grimm</strong> &middot; <time datetime="2011-03-29T23:00:00+00:00">March 29, 2011 at 11:00 pm</time></p>
      <p>@Dominik: I think you're making a straw man with "And the real fun begins when dependency A and B need each their own, patched library C, with possibly conflicting changes..." - there's a difference between a private rails project having a non-standard dependency and a public gem having a non-standard dependency.</p><p>One issue I came across recently was that a gem was published, but the source code repository wasn't updated. <a href="http://rubygems.org/gems/win32-process" rel="nofollow">http://rubygems.org/gems/win32-process</a> version 0.6.5 was published in December, but the author ( <a href="https://github.com/djberg96" rel="nofollow">https://github.com/djberg96</a> ) only pushed the changes when I told him they hadn't been pushed (a few days ago).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Xavier Shay</strong> &middot; <time datetime="2011-03-30T09:14:00+00:00">March 30, 2011 at 9:14 am</time></p>
      <p>There is a big difference between a quick hack and a well tested patch worthy of a pull request. In a perfect world everyone would have the time and knowledge to contribute back every change they need, but I accept that this is not often the case. This technique deliberately has a low barrier to entry - almost as low as monkey patching - to encourage a better way of patching code, changing it at the source rather than overriding it, that naturally leads into proper patches and contributions. It is the "bare minimum", if you like.</p><p>Also note that step #4 applies to monkey patching to ... documentation is important.</p><blockquote><p>using your forks in production, leaving system administrators with maybe 10 slightly different versions of library X, all maintained and updated in a unique, usually unsatisfactory fashion. And the real fun begins when dependency A and B need each their own, patched library C, with possibly conflicting changes...</p></blockquote><p>The whole point of bundler is that it does all the dependency resolution for you and isolates the versions that you use from anything else on the system. The issue you describe simply does not exist in this scenario - it is essentially invisible to system administrators.</p><p><em>Even if</em> there were problems with conflicting code, this is also an issue with monkey patching. With forking though, you are been explicit about where and which code has changed, and provide *more* tools (such as git log) for upgrading or resolving conflicts.</p><blockquote><p>The first part, about adding Array#sum, however, doesn't make a good argument for its case</p></blockquote><p>Apologies this was rather thin, I was in a rush to get on with the main thrust of the article :) The problems with monkey patching have been extensively documented elsewhere.</p><blockquote><p>The problem with offensive forking is: a new user will find a dozens fork of the same gem which are only slightly diffent, so with which one should he start with?</p></blockquote><p>Non-issue. Use the main one, unless a significant fork is documented or obvious from the network tree. Rails has ~1,400 forks and no one has any problem knowing which one to use.</p><blockquote><p>I'm into the idea of just changing the github description.</p></blockquote><p>This is good too but it doesn't matter too much. Any doc changes should be in separate commits. As a maintainer of many projects, I don't find these particularly troublesome.</p><blockquote><p>You've omitted one of the best parts of using git to manage private forks: Rebasing. </p></blockquote><p>Yes this is awesome, I could have been more explicit in the upgrading section.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matthew Schinckel</strong> &middot; <time datetime="2011-03-30T09:20:00+00:00">March 30, 2011 at 9:20 am</time></p>
      <p>You are missing one key aspect of MonkeyPatching (or DuckPunching, as I prefer to call it). When you are patching a standard library, that contains a bug or missing feature. I'm mainly a python programmer, and it pains me that timedelta is unable to be divided by another timedelta, which is a perfectly reasonable operation. Because python builtin classes are unable to be duck-punched, I have to have a function that does this operation, instead of being able to have it just happen.</p><p>Thus:</p><p>    <code>percent = dt_1 / dt_2</code></p><p>Becomes:</p><p>    <code>percent = timedelta_divide(dt_1, dt_2)</code></p><p>I know which one is easier to read.</p><p>Responsible duck-punching (testing the existence of a method, overriding so that current behaviour outside of the desired change is unaffected) can be a clean way to write easier to read code.</p><p>Granted, there is danger whenever doing this, but we are responsible adults.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matthew Schinckel</strong> &middot; <time datetime="2011-03-30T09:21:00+00:00">March 30, 2011 at 9:21 am</time></p>
      <p>Oh, and don't even get me started on trying to reconcile the various forks of a package/gem. The official one isn't getting any love? There are 60 forks, each of which has some of the same changes implemented in different ways?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>max</strong> &middot; <time datetime="2011-03-30T10:26:00+00:00">March 30, 2011 at 10:26 am</time></p>
      <p>well monkey patching is just how the whole rails thing works.. your title is misleading</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Bethany</strong> &middot; <time datetime="2011-04-04T21:26:00+00:00">April 4, 2011 at 9:26 pm</time></p>
      <p>I've monkey patched just as a protest against a poorly done Ruby library. For instance I wrote this because FileUtils' directory copy is very, very dumb.</p><p>    require 'fileutils'</p><p>    module FileUtils<br>
      # Monkeypatch FileUtils really annoying lack of proper directory copying<br>
      def copy_dir(source, dest)<br>
        files = Dir.glob("#{source}/**")<br>
        mkdir_p dest<br>
        cp_r files, dest<br>
      end<br>
      module_function :copy_dir<br>
    end</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John</strong> &middot; <time datetime="2011-04-06T19:48:00+00:00">April 6, 2011 at 7:48 pm</time></p>
      <p>bundler is awesome and solves a lot of problems.  Unfortunately, it does not handle optional dependencies and using different gems to fulfill a requirement.  Until that is fixed (whether upstream in rubygems or in bundler) I avoid it in most of my projects.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ibrahim Abdullah</strong> &middot; <time datetime="2011-04-07T10:52:00+00:00">April 7, 2011 at 10:52 am</time></p>
      <p>As for your monkeypatch to Array class, Ruby has a nice shortcut for inject. You can pass in a symbol that corresponds to a method:</p><p>class Array</p><p>    def sum<br>
        inject(:+)<br>
    end<br>
end</p><p>Or if you are a ruby sugar freak like myself, just use it on the array itself. No need for monkeypatching stuff:</p><p>[1, 2, 3, 4].inject(:+)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://blog.mrwebmaster.it/2011/04/14/monkey-patching-in-ruby.html" rel="external nofollow" class="url">Monkey Patching in Ruby | Mr.Webmaster Blog</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>jim</strong> &middot; <time datetime="2011-05-12T17:56:00+00:00">May 12, 2011 at 5:56 pm</time></p>
      <p>I just precede monkeypatched methods with "my_", e.g. "my_sum", "my_multiply", so it's obvious when I come back to the code a year later they are monkeypatched and will probably not conflict with anyone else's monkeypatched code.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
