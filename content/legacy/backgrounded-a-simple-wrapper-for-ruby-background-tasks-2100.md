---
title: 'Backgrounded: A Simple Wrapper for Ruby Background Tasks'
date: '2009-07-23'
author: Ric Roberts
author_slug: ricroberts
post_id: 2100
slug: backgrounded-a-simple-wrapper-for-ruby-background-tasks-2100
url: "/backgrounded-a-simple-wrapper-for-ruby-background-tasks-2100.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2009/07/hardhats.jpg" style="float:left; margin-right:12px; margin-bottom:12px" alt="backgrounded">Like <a href="http://blog.codecrate.com/">Ryan Sonnek</a>, I've dabbled with a few different ways to run background processes in my Ruby apps, even resorting to knocking together <a href="http://www.ricroberts.com/articles/2009/05/17/taskit-a-rails-scheduler-plugin">my own</a> (far from perfect) solution.  As Ryan says <a href="http://blog.codecrate.com/2009/07/backgrounded-background-processing-done.html">on his blog</a>, many popular libraries have complicated interfaces and don't "feel right".  </p>
<p>I tend to disagree, however, with his statement that <em><strong>every</strong> ruby background job solution sucks</em>, and I'm sure he doesn't really mean it. Although his offering, <a href="http://github.com/wireframe/backgrounded">Backgrounded</a>, is refreshingly simple and concise, it's effectively just a wrapper for other solutions.</p>
<p>With Backgrounded, if you want a certain method to always  run in the background, you can specify it like this:</p>
<pre>
class User
  backgrounded :do_stuff

  def do_stuff
    # do all your work here
  end
end
</pre>
<p>...and then just call that method in the normal way.  The actual background work can be taken care of by a handler of your choice, but <a href="http://github.com/tobi/delayed_job/tree/master">delayed_job</a> comes bundled.</p>
<p>Ryan's meta-programming approach for declaring background tasks doubles-up as documentation, and puts the focus on the individual methods rather than requiring you to create separate classes for your jobs.</p>
<p>Get Backgrounded as a gem or download the source from <a href="http://github.com/wireframe/backgrounded">Github</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Julio Capote</strong> &middot; <time datetime="2009-07-23T21:30:00+00:00">July 23, 2009 at 9:30 pm</time></p>
      <p>Nice work; I like the automatic handling of methods to background tasks...</p><p>I used a similar interface when I made theman to drive scheduled background workers:<br>
<a href="http://github.com/jcapote/theman/tree/master" rel="nofollow">http://github.com/jcapote/theman/tree/master</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mislav</strong> &middot; <time datetime="2009-07-23T23:58:00+00:00">July 23, 2009 at 11:58 pm</time></p>
      <p>delayed_job has this exact functionality, although as a method in its own namespace. so what's the catch here?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Lou Zell</strong> &middot; <time datetime="2009-07-24T01:35:00+00:00">July 24, 2009 at 1:35 am</time></p>
      <p>"every ruby background job solution sucks"?</p><p>send_later(:do_stuff)<br>
vs<br>
do_stuff_backgrounded</p><p>Did we miss something?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Sonnek</strong> &middot; <time datetime="2009-07-24T05:30:00+00:00">July 24, 2009 at 5:30 am</time></p>
      <p>The blog post does a better job explaining this, but the reasons this library exists are because:<br>
* the API should be clean/concise. the alternative delayed_job API is okay, but not great.<br>
* testability. none of the libraries I've worked with have been particularly good about working in unit tests.<br>
* portability. It's simple to implement your own worker queue, and delayed_job is included by default just to help users get up and running. It would be trivial for me to extract that into a separate gem and leave the core as platform agnostic.</p><p>IMO the API is the absolute most critical piece to the puzzle.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ade</strong> &middot; <time datetime="2009-07-24T19:34:00+00:00">July 24, 2009 at 7:34 pm</time></p>
      <p>I've used all kinds of background process implementations too, including Backgroundrb and delayed_job.  I'm wondering: for tasks that can be run by a rake task, is there any reason NOT to run them using backticks and a forked process?  E.g.:</p><p>Kernel.fork { `rake export:begin` }</p><p>We're using this on a project and it seems to work fine, not to mention being very simple to deal with.  But if there is a compelling reason not to do this, I'm all ears.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Roman Le Négrate</strong> &middot; <time datetime="2009-07-25T22:02:00+00:00">July 25, 2009 at 10:02 pm</time></p>
      <p>The intention is good but the implementation is already flawed despite the limited amount of code:</p><p>- Why `foo_backgrounded' instead of the more natural `background(:foo)' (like `send_later')?</p><p>- When `Backgrounded::Model' is included, a bunch of unexpected `include's and `extend's happen at inclusion time and each time `backgrounded' is called... with empty modules! Waste of system memory. Looks like dirt from a code template.</p><p>- Calling `to_s' inside a string interpolation: time to read the Pickaxe.</p><p>- References an module from a shared namespace (`Handler') with the outter module name syntax (`B::Handler' though already inside `B'). </p><p>- `Handler' being module containing several handler types, it should be named with the plural form. And those types shouldn't be suffixed with "Handler" as they're already namespaced.</p><p>- Performs an include in `Object' (!).</p><p>- Still, the tests are kind of decent, for now.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
