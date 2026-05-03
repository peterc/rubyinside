---
title: Turbocharge Your Ruby Testing with Parallel Specs
date: '2009-07-28'
author: Peter Cooper
author_slug: admin
post_id: 2121
slug: turbocharge-your-ruby-testing-with-parallel-specs-2121
url: "/turbocharge-your-ruby-testing-with-parallel-specs-2121.html"
categories:
- cool
- ruby-tricks
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2009/07/bearonshark.png" width="84" height="88" alt="bearonshark.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;">In <a href="http://giantrobots.thoughtbot.com/2009/7/24/make-your-test-suite-uncomfortably-fast">Make Your Test Suite UNCOMFORTABLY FAST!</a> (called <i>"the best blog post ever written"</i> by one commenter) Jason Morrison of Thoughtbot demonstrates how to use Michael Grosser's <a href="http://github.com/jasonm/parallel_specs/tree/master">Parallel Specs</a> project to speed up your Ruby tests.</p>
<p>Parallel Specs provides a set of Rake tasks to run specs and tests in <i>parallel</i>, therefore using multiple CPUs (or cores) to multiply your testing power. It does not yet work with Cucumber features but Jason recommends <a href="http://github.com/brynary/testjour/">testjour</a> for that purpose - which is designed to work across multiple machines so isn't quite the same thing.</p>
<p>Thoughtbot has found Parallel Specs typically provides a 30-40% speedup for their projects out of the box, so if you're doing a lot of testing (and the best developers seem to say you <i>should be</i>) check it out for some instant satisfaction.</p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><a href="http://devver.net/"><img src="/assets/2009/07/devver-icon.gif" width="156" height="40" alt="devver-icon.gif" style="float:right; margin-bottom:8px; margin-left:12px;"></a><em>Also..</em> Got a slow Test::Unit or RSpec suite? <b>Run them up to three times faster on</b> <a href="http://devver.net/"><b>Devver's cloud!</b></a> Setup is simple and requires no code changes. <a href="http://devver.net/">Request a beta invite today!</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Hampton Catlin</strong> &middot; <time datetime="2009-07-29T06:41:00+00:00">July 29, 2009 at 6:41 am</time></p>
      <p>Bulllllllllllllllshit.</p><p>The best developers don't need to test.</p><p>You test when you hire B level drone-workers under you.</p><p>KNOW THE SOFTWARE. KNOW WHAT YOU ARE DOING!</p><p>Testing is not an excuse for under-paid, under-trained workers.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dan Manges</strong> &middot; <time datetime="2009-07-29T07:32:00+00:00">July 29, 2009 at 7:32 am</time></p>
      <p>There's also DeepTest: <a href="http://github.com/qxjit/deep-test/tree/master" rel="nofollow">http://github.com/qxjit/deep-test/tree/master</a></p><p>It works with test/unit and RSpec. In addition to running tests in parallel to take advantage of multiple cores, it can run tests distributed to multiple computers.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>peter</strong> &middot; <time datetime="2009-07-29T09:55:00+00:00">July 29, 2009 at 9:55 am</time></p>
      <p>@Hampton Catlin: Never heard something of TDD and BDD ?! Thats the hot shit now..<br>
no but really,my opinion is that testing should to help developing,cucumber for instance is great to integrate the user while development..but I also don't overestimate it and don't see it as the holy grail of all</p>
    </li>
      <li>
      <p class="comment-meta"><strong>seydar</strong> &middot; <time datetime="2009-07-29T12:22:00+00:00">July 29, 2009 at 12:22 pm</time></p>
      <p>It looks like it's only good (out-of-the-box, at least) for Rails projects. Am I wrong?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>yannski</strong> &middot; <time datetime="2009-07-29T12:31:00+00:00">July 29, 2009 at 12:31 pm</time></p>
      <p>@Hampton : you're right, good developpers don't ever use eXtreme Programming. They use Bugless Programming. Why add bugs in your software when it will cost so much time afterwards ?!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>alp</strong> &middot; <time datetime="2009-07-29T18:26:00+00:00">July 29, 2009 at 6:26 pm</time></p>
      <p>@Hampton:You are bullshit.</p><p>Do you ever work for a customer? I doubt that.<br>
Can you imagine that requesites change while development? If that happens you can not simply change or add a feature without automated tests..sure if you're doing simple apps for you family and friends to show how smart you are then you don't need any technics to avoid mistakes.</p><p>But if you have a business then it's interesting how you can handle systems with uncountable LOC without changing behaviour at the other end.<br>
But forgive me _I_ forgot that you know your software..right. You are the only one who will ever read your code..sure.<br>
It's written in stone,that have to be the ultimate truth and will never ever change..sure,sure. </p><p>You are that one who's putting the shit together and I'am that guy who have to fix it because it never runs like it should.<br>
You use global flags and call it a switch-framework. You are the one who I have to convience to use classes,use attributes and not create temporary variables,or to use inheritance to avoid unnecassary control structures.</p><p>Sit down and study your odds instead of generalizing everything what you don't understand, kido !</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Trans</strong> &middot; <time datetime="2009-08-09T22:44:00+00:00">August 9, 2009 at 10:44 pm</time></p>
      <p>I'm I right in thinking this is heart of the parallel processing?</p><p>  def execute_command(cmd)<br>
    f = open("|#{cmd}")<br>
    all = ''<br>
    while out = f.gets(".")#split by '.' because every test is a '.'<br>
      all+=out<br>
      print out<br>
      STDOUT.flush<br>
    end<br>
    all<br>
  end</p><p>I'd love for someone to explain how this works.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Trans</strong> &middot; <time datetime="2009-08-09T22:58:00+00:00">August 9, 2009 at 10:58 pm</time></p>
      <p>Ah, I see. The heart of the code is actually this:</p><p>    pids = []<br>
    read, write = IO.pipe<br>
    groups.each_with_index do |files, process_number|<br>
      pids &lt;&lt; Process.fork do<br>
        write.puts ParallelTests.run_tests(files, process_number)<br>
      end<br>
    end</p><p>Hmm... will that work for Windows?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2009-08-14T14:38:00+00:00">August 14, 2009 at 2:38 pm</time></p>
      <p>also check out spork for lightning fast spec_server<br>
<a href="http://www.google.com/search?rlz=1C1GGLS_enUS316US316&amp;sourceid=chrome&amp;ie=UTF-8&amp;q=ruby+spork" rel="nofollow">http://www.google.com/search?rlz=1C1GGLS_enUS316US316&amp;sourceid=chrome&amp;ie=UTF-8&amp;q=ruby+spork</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
