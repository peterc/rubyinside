---
title: 'Hammertime: Ruby Interactive Error Console'
date: '2010-01-20'
author: Peter Cooper
author_slug: admin
post_id: 2942
slug: hammertime-ruby-interactive-error-console-2942
url: "/hammertime-ruby-interactive-error-console-2942.html"
categories:
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2010/01/stophammertime.png" width="127" height="119" alt="stophammertime.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"> <a href="http://avdi.org/devblog/2010/01/18/hammertime/">Hammertime</a> (<a href="http://github.com/avdi/hammertime">GitHub repo</a>) is a new interactive error console for Ruby by Avdi Grimm, modelled after those found in the Squeak/Smalltalk and LISP environments. It fills some of the same roles as <a href="http://bashdb.sourceforge.net/ruby-debug.html">ruby-debug</a>, except in a less intrusive and more Ruby-esque fashion. Be warned though.. <b>currently it's for Ruby 1.8.x only.</b></p>
<p>Installation is via RubyGems (<code>gem install hammertime</code>) and the library is activated in your app with <code>require 'hammertime'</code>. That's it; you're good to go. Once activated, any exception raised in your app will result in a Hammertime prompt appearing where you can choose from a number of options, including:</p>
<ul>
<li>Continue (process the exception normally)</li>
<li>Ignore (proceed without raising an exception)</li>
<li>Permit by type (don't ask about future errors of this type)</li>
<li>Permit by line (don't ask about future errors raised from this point)</li>
<li>Backtrace (show the call stack leading up to the error)</li>
<li>Debug (start a debugger)</li>
<li>Console (start an IRB session)</li>
</ul>
<p>For more info, a walkthrough of a basic debugging process using Hammertime is <a href="http://avdi.org/devblog/2010/01/18/hammertime/">shown in Avdi's Hammertime blog post</a>. I get a feeling that if this is refined with the extra features Avdi's planning (such as making retries easier from the console and, perhaps, support for exceptions raised in native code) and Ruby 1.9 support is added, Hammertime could become a standard debugging tool in any good Rubyist's toolbox.</p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><em>[job]</em> <b>Snapizzi</b> is currently <a href="http://jobs.rubyinside.com/a/jbb/job-details/170683">looking for a Ruby and Rails developer</a> to join their team. Alternatively, check out one of the <a href="http://jobs.rubyinside.com/a/jbb/find-jobs">other 11 jobs on our Ruby jobs board!</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Avdi Grimm</strong> &middot; <time datetime="2010-01-20T21:32:00+00:00">January 20, 2010 at 9:32 pm</time></p>
      <p>Hey, thanks for the coverage!  I just want to say that as a side project I don't have a lot of time to work on Hammertime; but I will make an effort to roll in any improvements that people send me. So please, fork it, hack away on it, and send patches/pull requests!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rails Developer</strong> &middot; <time datetime="2010-02-04T09:45:00+00:00">February 4, 2010 at 9:45 am</time></p>
      <p>Thanks for the advise, I overcome this interactive error.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
