---
title: 'RubyMine 1.0 Beta Released: A Solid, IntelliJ Based Ruby and Rails IDE'
date: '2009-04-02'
author: Peter Cooper
author_slug: admin
post_id: 1675
slug: rubymine-1-beta-intellij-ruby-and-rails-ide-1675
url: "/rubymine-1-beta-intellij-ruby-and-rails-ide-1675.html"
categories:
- news
- ruby-on-rails
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2009/04/rubyminebeta.png" width="89" height="77" alt="rubyminebeta.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"><a href="rubymine-a-new-intelligent-ruby-ide-built-on-intellj-1302.html">Five months ago</a> JetBrains (the company behind Java IDE IntellJ IDEA) released a "public preview" of <a href="http://www.jetbrains.com/ruby/">RubyMine</a>, a new Ruby and Rails IDE. Now, they've released <a href="http://www.jetbrains.com/ruby/">the beta of version 1.0</a>, the precursor for a final 1.0 launch later this month. You can download it right away - it came in at about a 75MB download for OS X, but Windows and Linux versions are also available.</p>
<p>When I posted about the preview of RubyMine five months ago, several people <a href="rubymine-a-new-intelligent-ruby-ide-built-on-intellj-1302.html#comments">raved</a> about how great they thought JetBrains' IntellIJ IDEA IDE was (which RubyMine is built upon). I don't have any personal experience with IntellIJ so you'll need to make your own mind up, but in casual testing RubyMine worked well. There were a few rough edges (project file list didn't always update with new files quickly; some minor interface snafus; had to add db:migrate Rake task manually) and there's the downside that it takes several minutes to start your first project as it wants to scour through all of your Ruby libraries. On the plus side, it felt more intuitive to put together a basic Rails app than in the other IDEs I've tried so far.</p>
<p>Ruby Inside will feature a complete review once the final release drops.</p>
<h3>The Feature Set</h3>
<p><img src="/assets/2009/04/rubymineide.png" width="225" height="182" alt="rubymineide.png" style="float:right; margin-bottom:12px; margin-left:12px;">On the surface, RubyMine offers all of the features you'd expect from a high-end IDE:</p>
<ul>
<li>Code completion</li>
<li>Code snippet support</li>
<li>Refactoring tools</li>
<li>Project file management / navigation</li>
<li>HTML, CSS, and JavaScript editing (including Erb support)</li>
<li>
<strong>RSpec</strong> and Test::Unit support (with GUI-based test runner)</li>
<li>Built-in Rails console</li>
<li>Ruby debugger (with full support for Rails apps)</li>
</ul>
<p>JetBrains' <a href="http://blogs.jetbrains.com/ruby/">RubyMine blog</a> is a good source for info about these features as most of them have been added over time.</p>
<h3>It's Commercial - But Only $99 (or $49, if you want)</h3>
<p>RubyMine is available as a free, 90 day trial, but is ultimately a piece of commercial software that will retail for $99. JetBrains have a sign up form where you can get a 50% off coupon for the final version of RubyMine 1.0, however, so that should take the sting out of the tail and bring the price down to $49.</p>
<p>I was a bit worried when I first mentioned RubyMine that it was going to be a $200+ app that people would be reluctant to buy, but if you can get the coupon to get it down to $49, it's a great deal. Even at $99, it's not bad, although, naturally, there are plenty of open source options if it's not to your taste.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>John Wells</strong> &middot; <time datetime="2009-04-03T03:33:00+00:00">April 3, 2009 at 3:33 am</time></p>
      <p>After touring Netbeans, Aptana and RubyMine, I don't see anything in RM that would compel me to pay for it. It doesn't add anything Netbeans doesn't have, and lacks (or at least, lacked a few months ago) an integrated query tool like Netbeans has. Of the three, I think Netbeans offers the most bang for your buck (and I gave all three a valiant try...I even purchased Aptana before eventually slinking back to NB).</p><p>If I'm wrong, I'd love to hear why...especially with list of feature I'm missing.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aslak Hellesøy</strong> &middot; <time datetime="2009-04-03T06:22:00+00:00">April 3, 2009 at 6:22 am</time></p>
      <p>Although the TextMate plugin for Cucumber is already pretty good, it would be great with some competition: <a href="http://www.jetbrains.net/jira/browse/RUBY-2361" rel="nofollow">http://www.jetbrains.net/jira/browse/RUBY-2361</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Roman Chernyatchik</strong> &middot; <time datetime="2009-04-03T09:20:00+00:00">April 3, 2009 at 9:20 am</time></p>
      <p>Hi John,</p><p>&gt; It doesn't add anything Netbeans doesn't have</p><p>Сomparing to Netbeans RM has more intelligent code completion and type inference (I can provide examples if you wish). Also RM provides inspections and smart completion for values of different rails calls, e.g. url_for, render, redirect, has_one,  etc. More over RubyMine has out of the box Git support.  I like RubyMine's Rails View and Rails Models relation diagram.  And at last I personally don't like Netbeans UI.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Waseem</strong> &middot; <time datetime="2009-04-03T09:35:00+00:00">April 3, 2009 at 9:35 am</time></p>
      <p>Than God We have Vim. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sergei Yakovlev</strong> &middot; <time datetime="2009-04-03T14:11:00+00:00">April 3, 2009 at 2:11 pm</time></p>
      <p>Hi Roman, could you please provide the examples you're talking about? Thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nazar</strong> &middot; <time datetime="2009-04-03T16:34:00+00:00">April 3, 2009 at 4:34 pm</time></p>
      <p>I've been closely watching RM development over the last few months. I keep trying it for a few days then falling back to Netbeans as it works better (IMHO) This is mainly due to me being very familiar with all my NB keyboard shortcuts i.e. control + tab, control + A and so on... some of which I have struggled to find RM equivalents.</p><p>I do have two minor (but growing) annoyances with Netbeans:</p><p>1. Double click (or word select keypress) does not select complete variable if it is camel-cased. This has been fixed in .rb files yet remains broken in .erb/.rhtml files.<br>
2. Git integration is available via nbgit (many thanks to authors) although it does not work on Netbeans &gt; 6.5.... yet.</p><p>I must admit that every time I have tried RM I've had less reason to leave it for Netbeans.</p><p>Will definitely take advantage of the 50% off coupon and thanks for the heads up on that Peter!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Roman Chernyatchik</strong> &middot; <time datetime="2009-04-04T12:17:00+00:00">April 4, 2009 at 12:17 pm</time></p>
      <p>Hi Sergei,</p><p>&gt;Hi Roman, could you please provide the examples you're talking about? Thanks!<br>
Yes, sure!</p><p>Let's compare code completion of RubyMine 1.0 beta(www.jetbrains.com/ruby) and Netbeans 6.5.1 (the latest release from official site), ruby 1.8.6, rails 2.2.2</p><p>1. Create new ruby script<br>
#######################<br>
p^<br>
#######################<br>
Let's compare completion list from NB and RM.<br>
You can easily check that all methods suggested by RM methods defined in this scope, and NB contains a lot of false positives(pretty_print_inspect, public_class_method, etc.)</p><p>2. Create script<br>
#######################<br>
class Foo<br>
end<br>
Foo.^<br>
#######################<br>
Comparing to RM Netbeans suggest method "yaml_as" but in fact it is undefined in context</p><p>3. Create script<br>
#######################<br>
class Foo &lt; ^<br>
end<br>
#######################<br>
Compare autocompletion for super class names. RM suggest lots of classes, NB - suggests keywords</p><p>4. Create script<br>
#######################<br>
class Foo<br>
end<br>
a = Foo.new<br>
def a.boo<br>
end<br>
b = Foo.new</p><p>puts defined? a.^<br>
puts defined? b.^<br>
#######################<br>
RM suggests "boo" method only for 'a' instance, and NetBeans suggests "boo" also for b, which obviously doesn't have such method.</p><p>P.S: RM by default doesn't highlight method call as error if method with the same names exists somewhere in current context although type inference may not understand it. So if you enable more accurate check:  RM | Settings | Inspections | Ruby | Unresolved ruby references | Warn about implicit text matched resolve results. RM will warn about missing method "boo" in "b.boo".</p><p>5. Create new Rails application and generate Person model with name:string, age:integer, adress:text  using scaffold. Let's open PeopleController, index action.<br>
Type ruby code:<br>
#######################<br>
Person.find(:all).each do |p|<br>
      p.a^<br>
end<br>
#######################<br>
Netbeans doesn't suggest "age" and "adress" db fields. RubyMine suggest this fields and more over it understands that p.age is Fixnum and p.adress is String!</p><p>6. Also RM provides autocompletion of files in require calls:<br>
#######################<br>
 require "^"<br>
#######################<br>
In Netbeans this doesn't work.</p><p>7. And more and more =)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Roman Chernyatchik</strong> &middot; <time datetime="2009-04-04T14:15:00+00:00">April 4, 2009 at 2:15 pm</time></p>
      <p>It seems tag which described caret position was automatically removed from post text. In examples 1..6 caret should be instead of "[CARET]"<br>
1.p[CARET]<br>
2.Foo.[CARET]<br>
3.class Foo &lt; [CARET]<br>
4.<br>
puts defined? a.[CARET]<br>
puts defined? b.[CARET]<br>
5.p.a[CARET]<br>
6.require "[CARET]"</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brandon</strong> &middot; <time datetime="2009-04-04T18:50:00+00:00">April 4, 2009 at 6:50 pm</time></p>
      <p>I've personally never found a compelling reason to switch from Textmate, but that might be because I've given up too quickly when trying Netbeans, Aptana, and RubyMine.   The obstacles they've posed might have prevented me from discovering their benefits.</p><p>Brian Leonard of Sun gave a demo of NB at acts_as_conference a year ago, and it looked pretty compelling, but I just can't get past the ugly pseudo-Cocoa interface.  (If you can't make Java look like Cocoa, then make it look like something else, not a really super bad imitation of Cocoa!)   Using a powerful app with a lousy UI is like watching a Shakespearean play with bad actors--it's hard to get past the awful delivery to appreciate the underlying substance.    </p><p>I seem to remember older RubyMine betas suffering from this same problem, but I'm not sure. I'll definitely give it a try, and hopefully will discover the power that IntelliJ is known for.</p><p>Another problem with NB was the key bindings.  I seem to remember a very important one that conflicted with QuickSilver.  Hello!?  They are clearly not clued into the Ruby/Rails culture.  No one wants to change their keyboard habits to try a new piece of software.  Sun (etc.) need to realize that Mac is the dominant Ruby platform, and Textmate the dominant editor, and Quicksilver (or Butler, etc.) is used ubiquitously, and then DESIGN accordingly.  The more barriers to adoption they create, the less adoption.</p><p>Many people will find price to be a major barrier to entry.  That's unfortunate.  For anyone who makes their living programming, $99 is an absolutely trivial expense.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bharat</strong> &middot; <time datetime="2009-04-05T15:59:00+00:00">April 5, 2009 at 3:59 pm</time></p>
      <p>Rubymine needs to move beyond the easy stuff and focus on providing real value to the developers.  Something that would prompt me to consider working with it instead of NetBeans would be interactive debug support.  Set a breakpoint and be able to do ad-hoc evaluation, variable setting etc.  Also, the Rails console needs to be far more interactive and powerful than it is currently.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>João Batista</strong> &middot; <time datetime="2009-04-06T05:07:00+00:00">April 6, 2009 at 5:07 am</time></p>
      <p>I like Textmate is very fast, but we know that it is not a true IDE.<br>
With Aptana and Netbeans I like somethings on both, but the Eclipse<br>
look and feel of Aptana and the JavaFace of NetBeans is not my loved<br>
enviorments :)</p><p>And when someone say: I love it because bla, bla.. Read the source..</p><p>Seems to be a kind of religion boy, not a real developer man!</p><p>So my friends open your minds, try it, learn it, so after feel days<br>
you can say one or two goods or bads words about it.</p><p>Until now my experiences with it was very productive.</p><p>And $99,00 is acceptable, or all software must be free?<br>
We make software and, almost all of us, got money from it. </p><p>Thanks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Roman Chernyatchik</strong> &middot; <time datetime="2009-04-06T10:02:00+00:00">April 6, 2009 at 10:02 am</time></p>
      <p>Hi Bharat,</p><p>&gt;Set a breakpoint and be able to do ad-hoc evaluation, variable setting etc.<br>
If I understand you right - this is "Evaluate Expression" feature which works in RubyMine</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brian</strong> &middot; <time datetime="2009-04-06T16:56:00+00:00">April 6, 2009 at 4:56 pm</time></p>
      <p>I tried it out, but only for a bit.  It wasn't finding my gems and I couldn't specify the gem path...  It also wasn't obvious how to do a lot of the things I find absolutely necessary, such as quickly jumping from a model to its spec or migration, from a controller action to its associated view, or from a view to a partial. I'm sure the feature exists, but it wasn't intuitive in my estimation.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark Goodman</strong> &middot; <time datetime="2009-04-07T05:03:00+00:00">April 7, 2009 at 5:03 am</time></p>
      <p>I've been using Intellij IDEA for a couple of years (I am Java dev at my full-time job and Ruby dev in couple of opensource projects) and I 100% sure that it is the best IDE for Java. Neither NB nor Eclipse even comparable to it.</p><p>If JetBrains would make RM even 1/5 as good as IDEA I am sure that it would be also the best Ruby IDE for Ruby.</p><p>Keep a good work JetBrains!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Roman Chernyatchik</strong> &middot; <time datetime="2009-04-07T12:14:00+00:00">April 7, 2009 at 12:14 pm</time></p>
      <p>Hi Brian,</p><p>1.<br>
&gt;  jumping from a model to its spec<br>
&gt; from a controller action to its associated view</p><p>Just open "Go to" section in main menu. Also it is available in "Rails" project view. For me it seems quite intuitive.</p><p>2. For Navigating from view to partial you can just resolve partial name reference (ctrl+b/ctrl+mouse clikck) in call like "render :partial =&gt; 'problem_report'". May be it is good idea to provide special action to show list of used partials in current view. Thanks for the feature!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Markus Arike</strong> &middot; <time datetime="2009-04-07T17:22:00+00:00">April 7, 2009 at 5:22 pm</time></p>
      <p>I'm taking RubyMine for a spin, although it is doubtful anything will move me away from TextMate.<br>
Question:  Does anyone know why my RUN button  (F8) is grey-ed  out?  Is it not possible to run a Ruby script from within RedMine? </p><p>Thanks Peter and keep up the good work with RubyInside.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brian</strong> &middot; <time datetime="2009-04-08T15:40:00+00:00">April 8, 2009 at 3:40 pm</time></p>
      <p>Thanks for the response, Roman. I do see now what you're talking about. I guess I'm not used to having to dig through menus to find stuff, considering my background :) What about an option to specify gem path? That really seems like a big bug. Rubymine seems to think that my gems are in ~/.gems, but they're in /usr/local/lib/ruby/gems/1.8/, which is reflected in my $GEM_PATH.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael Deering</strong> &middot; <time datetime="2009-04-08T17:32:00+00:00">April 8, 2009 at 5:32 pm</time></p>
      <p>Got excited there for a minute... I thought I read Redmine <a href="http://www.redmine.org" rel="nofollow">http://www.redmine.org</a> :(</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Roman Chernyatchik</strong> &middot; <time datetime="2009-04-10T09:17:00+00:00">April 10, 2009 at 9:17 am</time></p>
      <p>Hi Brian,<br>
&gt;an option to specify gem path<br>
I suppose such option isn't necessary. RubyMine takes GEM pathes from output of "require 'rubygems'; puts Gem.path" command during creating Ruby SDK. Also what it your OS? By default MacOS applications(except Terminal.app) don't use env variables specified in .profile.</p><p>&gt;gems are in ~/.gems<br>
When you install gems without root access privileges gem package manager automatically installs them only for current user in ~/.gems.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Roman Chernyatchik</strong> &middot; <time datetime="2009-04-10T09:26:00+00:00">April 10, 2009 at 9:26 am</time></p>
      <p>Hi Markus,</p><p>&gt; Does anyone know why my RUN button (F8) is grey-ed out? Is it not possible to run a Ruby </p><p>Just chose "run" option from context menu. </p><p>In this case RubyMine will create quick run configuration for current ruby script. If you want you can also specify ENV variables for you script etc. Also you can save several run configurations for your scripts and the use this quick list for executing your scripts, test or rake tasks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Markus Arike</strong> &middot; <time datetime="2009-04-12T13:35:00+00:00">April 12, 2009 at 1:35 pm</time></p>
      <p>Thank you Roman, that did the trick.  I guess I was having flashbacks from Eclipse where certain commands are only available in various contexts.  </p><p>Thanks for the help.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>JT</strong> &middot; <time datetime="2009-04-15T10:33:00+00:00">April 15, 2009 at 10:33 am</time></p>
      <p>One thing to mention is the outstanding support you get from JetBrains.  I've used IntelliJ for about a year and a half now.  I've contacted their support team about a half dozen times, and always got an immediate response.  Several times response was in under two minutes.  Which is just amazing!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
