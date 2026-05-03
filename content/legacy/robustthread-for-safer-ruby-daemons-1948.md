---
title: Build Safer Ruby Daemons with RobustThread
date: '2009-07-06'
author: Ric Roberts
author_slug: ricroberts
post_id: 1948
slug: robustthread-for-safer-ruby-daemons-1948
url: "/robustthread-for-safer-ruby-daemons-1948.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img style="float:left;margin-right:12px;margin-bottom:12px" src="/assets/2009/07/robustthread.jpg" alt="">When running a Ruby daemon which executes code in a loop, if the process is killed while something is happening then problems can occur if the code doesn't handle all the exceptions properly or if the loop isn't broken cleanly.  <a href="http://github.com/JaredKuolt/robustthread/tree/master">RobustThread</a> is a Ruby class by <a href="http://superjared.com/">Jared Kuolt</a> for the creation of threads, which helps to alleviate this problem.</p>
<p>RobustThread lets you set up loggers, exception handlers and callbacks for threads, exposing the actual thread via an attribute.  By default, it logs to the standard output, but this is configurable by using a Logger object.</p>
<p>You can apply labels to loops or threads, which can be useful for logging and debugging.  But perhaps more importantly, by using <code>RobustThread.loop</code>, you can change the way that looping works so that it cleanly exits the loop on the next sleep call before rejoining the thread.</p>
<pre>RobustThread.loop(:seconds =&gt; x) do
  do_something
end</pre>
<p>Install RobustThread with <code>gem install robustthread</code>, or get the source from <a href="http://github.com/JaredKuolt/robustthread/tree/master">Github</a>.  Jared provides some background and a few more examples on <a href="http://superjared.com/entry/ruby-daemons-using-robustthread/">his blog</a>.</p>
{{< /rawhtml >}}
