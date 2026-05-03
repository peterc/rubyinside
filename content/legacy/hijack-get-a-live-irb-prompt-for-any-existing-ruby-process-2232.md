---
title: 'Hijack: Get A Live IRB Prompt For Any Existing Ruby Process'
date: '2009-08-21'
author: Ari Brown
author_slug: aribrown
post_id: 2232
slug: hijack-get-a-live-irb-prompt-for-any-existing-ruby-process-2232
url: "/hijack-get-a-live-irb-prompt-for-any-existing-ruby-process-2232.html"
categories:
- cool
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2009/08/jack-150x150.jpg" alt="jack" title="jack" width="80" height="80" style="float: left; margin-right: 12px; margin-bottom: 12px">Sometimes taking an app down for debugging purposes is just not an option. Luckily a new tool called <a title="hijack" href="http://github.com/ileitch/hijack/tree/master">Hijack</a> can provide a live IRB prompt for an existing Ruby process in the same way that Erlang provides <a title="hot swapping" href="http://en.wikipedia.org/wiki/Hot_swapping">hot swapping</a> of code (changing the definition of a system while the system is still up and running).</p>
<p><a title="hijack" href="http://github.com/ileitch/hijack/tree/master">Hijack</a> <em>(it's still in a beta state, so be careful and don't use it in production yet!)</em> lets you to pry your way into a running Ruby process, where it drops you into a live IRB session running over DRB. Gone are the days of stopping live applications just to make a minor update!</p>
<p>Using the GDB (<strong>G</strong>NU <strong>D</strong>e<strong>B</strong>ugger), Hijack connects to the running Ruby process, injecting a small payload to start a DRB session which provides an IRB session:</p>
<pre>$ ruby hijack 16451
        =&gt; Hijacking...
        =&gt; Mirroring: 100%
        =&gt; Hijacked 16451 (my_script.rb) (ruby 1.8.7 [i686-darwin9])
        &gt;&gt;</pre>
<p>You may already be familiar with <a href="http://debu.gs/live-console">live-console</a> which provides a similar functionality. The key difference, however, is that Hijack can "inject" itself into an existing Ruby process without needing the code to have included it explicitly. Developer Ian Leitch explains:</p>
<blockquote><p>I've just changed Hijack so that you can hijack any Ruby process - no need for your target process to require any code before it can be hijacked. It does this by first injecting a payload using gdb, then it signals the process to start up a DRb server which the hijack client then connects to.</p></blockquote>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><img src="/assets/2009/07/jslab.png" width="32" height="35" alt="jslab.png" style="float:right; margin-left:12px; border:1px #000000 solid;"><a href="http://jumpstartlab.com" rel="nofollow">Jumpstart Lab</a> is running a <a href="http://jumpstartlab.com/courses/javascript/" rel="nofollow"><strong>JavaScript Master Class</strong></a> for Javascript &amp; UI programmers with <a href="http://mir.aculo.us/">Thomas Fuchs</a> (Scriptaculous, Prototype Core) and <a href="http://slash7.com/">Amy Hoy</a> (UI Expert) on 9/12 in Washington, DC. Save 10% with code "rubyinside"!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2009-08-21T20:31:00+00:00">August 21, 2009 at 8:31 pm</time></p>
      <p>I don't understand the Erlang analogy, but there's a similar thing available for Cocoa by way of NuAnywhere: <a href="http://programming.nu/nuanywhere" rel="nofollow">http://programming.nu/nuanywhere</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bradly Feeley</strong> &middot; <time datetime="2009-08-22T00:38:00+00:00">August 22, 2009 at 12:38 am</time></p>
      <p>this is some slick willy!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sho</strong> &middot; <time datetime="2009-08-22T01:45:00+00:00">August 22, 2009 at 1:45 am</time></p>
      <p>Looks cool, but might help if the lib directory was included in the gem .. ; )</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ian Leitch</strong> &middot; <time datetime="2009-08-22T02:09:00+00:00">August 22, 2009 at 2:09 am</time></p>
      <p>Sorry about that, gem should be fixed now :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Senthil</strong> &middot; <time datetime="2009-08-22T07:30:00+00:00">August 22, 2009 at 7:30 am</time></p>
      <p>That would be real cool, will check it out.</p><p>can somebody post some tricks which they have tried with it</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Guoliang Cao</strong> &middot; <time datetime="2009-08-24T21:26:00+00:00">August 24, 2009 at 9:26 pm</time></p>
      <p>I was trying to hijack our rails process and it got stuck after 'Hijacking...'</p><p>Any idea?</p><p>OSX 10.5.7<br>
ruby 1.8.7 (2009-06-12 patchlevel 174) [i686-darwin9]<br>
Rails 2.3.2</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ian Leitch</strong> &middot; <time datetime="2009-08-25T15:19:00+00:00">August 25, 2009 at 3:19 pm</time></p>
      <p>Was the process started with 'script/server'? If so it's a known bug. Use mongrel_rails start or thin start instead.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>awwaiid</strong> &middot; <time datetime="2009-08-26T03:09:00+00:00">August 26, 2009 at 3:09 am</time></p>
      <p>Fancy! We got that in perl doing similar things, <a href="http://search.cpan.org/~whitepage/Enbugger-2.009/lib/Enbugger.pod" rel="nofollow">http://search.cpan.org/~whitepage/Enbugger-2.009/lib/Enbugger.pod</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Josh Jore</strong> &middot; <time datetime="2009-08-27T18:28:00+00:00">August 27, 2009 at 6:28 pm</time></p>
      <p>I wrote a similar thing for Perl awhile ago (and recently blogged <a href="http://use.perl.org/~jjore/journal/39325" rel="nofollow">http://use.perl.org/~jjore/journal/39325</a>). The thing I never finished off was dealing with the fact the gdb has attached at an arbitrary instruction and not at a safe time. I spent a short bit of time trying to inform perl that a "signal" had arrived and to wait for the sighandler to run and use that as a break point. That'd get me back to safe signal handling and therefore a perfectly safe time to go launch the debugger.</p><p>I'd set the global PL_sig_pending to true, then break on Perl_despatch_signals and try to convince Perl it was ok that there was no actual signal to handle. Didn't quite work.</p><p>I suspect you've got the same problem here in Ruby. You should probably "set variable rb_trap_pending = 1" and break on rb_trap_exec or something like that.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Guoliang Cao</strong> &middot; <time datetime="2009-08-28T20:55:00+00:00">August 28, 2009 at 8:55 pm</time></p>
      <p>Thanks for looking. </p><p>Yes, it was started with script/server.</p><p>Now I can get it hijacked after running as 'mongrel_rails start'</p>
    </li>
      <li>
      <p class="comment-meta"><strong>j_king</strong> &middot; <time datetime="2009-09-03T13:38:00+00:00">September 3, 2009 at 1:38 pm</time></p>
      <p>Yet another Lisp feature re-implemented in a young programming language.</p><p>They grow up so fast! ;)</p><p>Really cool stuff though. The next step is to provide a SWANK-like server for running processes. Then you can connect irb to remote processes! Yet another thing Lisp already has.</p><p>Great work though. Really pushing the boundaries.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
