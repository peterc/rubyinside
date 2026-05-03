---
title: 'Boson: A Next Generation Task Framework for Ruby'
date: '2009-10-22'
author: Peter Cooper
author_slug: admin
post_id: 2657
slug: boson-a-next-generation-task-framework-for-ruby-2657
url: "/boson-a-next-generation-task-framework-for-ruby-2657.html"
categories:
- cool
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2009/10/boson.png" width="103" height="104" alt="boson.png" style="float:left; margin-right:12px; margin-bottom:12px;"><a href="http://tagaholic.me/2009/10/14/boson-command-your-ruby-universe.html">Boson</a> is a new command/task framework for Ruby by Gabriel Horner (of <a href="hirb-an-easy-to-use-view-framework-for-irb-1853.html">Hirb</a> fame). Gabriel seems to be trying to supersede <a href="http://rake.rubyforge.org/">Rake</a>, the Ruby "make" equivalent, and from first glance Boson seems to provide many benefits from the "reinvent the wheel" philosophy.</p>
<p>Anyone who's built a Rakefile knows it's not the most straightforward syntax, so Boson's approach of using regular Ruby code in the shape of methods added to a module is refreshing. Tasks are methods, methods are tasks - simple. Within these methods, you can use the <code>options</code> helper method and passed arguments to access command line options and other data. Another feature is that while, like with Rake (or Thor), Boson can execute commands from the command line, you can <i>also</i> do so from IRB (the Ruby "console").</p>
<p>It's always a bit of a crapshoot when new tools come out in the Ruby world. Some catch on, some don't. Gabriel has clearly put a lot of thought into Boson, though, so if enough people are fed up with using Rake for command launching, I think it could catch on. <a href="http://tagaholic.me/2009/10/14/boson-command-your-ruby-universe.html">Gabriel's blog post</a> outlines what Boson does perfectly. For those ready to shoot down Rake, though, don't forget to read <a href="http://www.jbarnette.com/2009/08/27/on-rake.html">John Barnette's awesome, recent <i>On Rake</i> post.</a> Rake's not just about launching tasks - it's a killer dependency resolution engine at heart, and that can result in less code if you approach your problems the right way.</p>
<p><em>(Aside: Sorry for the slow week at Ruby Inside. Six days ago my wife gave birth to our daughter and since she had a C-section, I'm playing housewife. I have quickly discovered if you're a housewife - or husband! - you have about zero hours left at the end of the day to do any other work.. I shall try my best!)</em></p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><a href="http://mobileorchard.com/training?inside" rel="nofollow"><img src="/assets/2009/06/rupho.png" width="74" height="40" alt="rupho.png" style="float:left; margin-right:12px;"></a><em>[ad]</em> <strong>Mobile Orchard's <a href="http://mobileorchard.com/training?inside">from Rubyist to iPhone programmer in 2 days class</a></strong> is coming to Portland/OR Nov 12-13 and Los Angeles/CA Nov 19-20. <del>$1200</del> $799 with early reg and "inside" discount code. <em>Note that the early registration price ends tomorrow - 10/23!</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Stephen Stillwater</strong> &middot; <time datetime="2009-10-22T21:13:00+00:00">October 22, 2009 at 9:13 pm</time></p>
      <p>Thanks for the post, Peter. Best to you and your wife!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>cldwalker</strong> &middot; <time datetime="2009-10-22T22:05:00+00:00">October 22, 2009 at 10:05 pm</time></p>
      <p>Peter, thanks for the post. I'm not trying to supersede Rake which I think is awesome for rule and dependency based tasks. Boson is more geared towards creating tasks that behave like shell commands i.e. ones that handle options and have integrated help. More Boson posts for those who are interested: <a href="http://tagaholic.me/2009/10/19/how-boson-enhances-your-irb-experience.html" rel="nofollow">http://tagaholic.me/2009/10/19/how-boson-enhances-your-irb-experience.html</a> and <a href="http://tagaholic.me/2009/10/15/boson-and-hirb-interactions.html" rel="nofollow">http://tagaholic.me/2009/10/15/boson-and-hirb-interactions.html</a></p><p>Congrats on the daughter!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rob C</strong> &middot; <time datetime="2009-10-22T22:35:00+00:00">October 22, 2009 at 10:35 pm</time></p>
      <p>Congratulations on the baby, I am the father of 3 c-sections... my thoughts go out to you and yours.  I'll be hoping for a speedy recovery, and thanks for all of the excellent content.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>type</strong> &middot; <time datetime="2009-10-23T04:30:00+00:00">October 23, 2009 at 4:30 am</time></p>
      <p>it is interesting.<br>
and,Can it a "bosonlib" like "rakelib",not just in  ~/.bason?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Woodhouse</strong> &middot; <time datetime="2009-10-23T09:53:00+00:00">October 23, 2009 at 9:53 am</time></p>
      <p>After a week it's time to wean them off the morphine and get them back to work. That old "I had major abdominal surgery" excuse wears thin after a while. (Don't tell my wife I said that).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Guoliang Cao</strong> &middot; <time datetime="2009-10-23T13:55:00+00:00">October 23, 2009 at 1:55 pm</time></p>
      <p>Peter, congratulations!</p><p>I have Gabriel's post opened since yesterday. Now you gave me another reason to finish reading it ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2009-10-23T17:04:00+00:00">October 23, 2009 at 5:04 pm</time></p>
      <p><i>"Anyone who's built a Rakefile knows it's not the most straightforward syntax"</i></p><p>I don't know what you're talking about. When I first saw Rake I noticed that it's exactly like make, except I can execute arbitrary Ruby instead of shell commands. The concept and syntax was as straightforward as I think it can possibly be.</p><p>And congratulations by the way! But I suppose you've already seen our card. ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tj</strong> &middot; <time datetime="2009-10-24T21:42:00+00:00">October 24, 2009 at 9:42 pm</time></p>
      <p>Thor sucks, we dont need more stuff like that</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Danko</strong> &middot; <time datetime="2009-10-25T02:03:00+00:00">October 25, 2009 at 2:03 am</time></p>
      <p>And what do you do besides be the housemaid and smile while completely sleep deprived with grumpiness prevailing? Smile and enjoy it all of course. I'm about to be the housemaid again in December myself, and I feel for ya, but enjoy it while you can before toddlerhood.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>cldwalker</strong> &middot; <time datetime="2009-10-28T16:28:00+00:00">October 28, 2009 at 4:28 pm</time></p>
      <p>@type: A future release could have better support for local libraries. Feel free to drop it as an issue at <a href="http://github.com/cldwalker/boson/issues" rel="nofollow">http://github.com/cldwalker/boson/issues</a></p><p>@Hongli Lai: Agreed. Here's Boson's motivation/philosophy: <a href="http://tagaholic.me/2009/10/19/how-boson-enhances-your-irb-experience.html#organization_and_philosophy" rel="nofollow">http://tagaholic.me/2009/10/19/how-boson-enhances-your-irb-experience.html#organization_and_philosophy</a></p><p>@Tj: Although somewhat inspired by Thor, Boson is quite a different beast.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
