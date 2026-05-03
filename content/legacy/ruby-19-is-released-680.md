---
title: Ruby 1.9 Is Released!
date: '2007-12-28'
author: Peter Cooper
author_slug: admin
post_id: 680
slug: ruby-19-is-released-680
url: "/ruby-19-is-released-680.html"
categories:
- cool
- news
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2007/12/ruby-logo.jpg" width="154" height="162"></p>
<p>Yukihiro Matsumoto (a.k.a. Matz) has <a href="http://groups.google.com/group/ruby-talk-google/browse_thread/thread/bc6ed379e4dab2a4">announced the release</a> of <a href="http://www.ruby-lang.org/en/">Ruby</a> 1.9.0. Ruby 1.9 is a <span style="font-style: italic;">development</span> release of Ruby, so don't expect to switch all of your production applications over to it. Indeed, Ruby 1.8 is officially still the stable choice (pending further news), so tread with caution and don't expect miracles. For the impatient, the main download is available straight away from <a href="ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.0-0.tar.gz">ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.0-0.tar.gz</a></p>
<p>Following tradition, the new version of Ruby was released over the public holiday period (Ruby 1.8.4 was released on December 24, 2005, for example), and one of the biggest changes has been the move to a new virtual machine (YARV) that yields significant performance improvements over the 1.8.x versions. As always, the best resource for learning about the new features of Ruby 1.9 is the superb <a href="http://eigenclass.org/hiki/Changes+in+Ruby+1.9"><span style="font-style: italic;">Changes in Ruby 1.9</span></a> by Mauricio Fernandez.</p>
<p>Even though the announcement was just in the last couple of days, some quick shooters have already posted about Ruby 1.9. Here's some bedtime reading for all you eager readers:</p>
<p><a href="http://pragdave.blogs.pragprog.com/pragdave/2007/12/ruby-19right-fo.html">Ruby 1.9 - Right for You?</a> (A good look at whether Ruby 1.9 is going to suit you or not, by Dave Thomas)</p>
<p><a href="http://blog.zenspider.com/archives/2007/12/testing_for_ruby_18_and_19_using_multiruby.html">Testing both Ruby 1.8 and 1.9 using MultiRuby</a></p>
<p><a href="http://www.akitaonrails.com/2007/12/25/xmas-gift-ruby-1-9-coverage">Xmas Gift: Ruby 1.9 Coverage!</a></p>
<p><a href="http://www.atmarkit.co.jp/news/200712/25/ruby.html">Some sort of Japanese interview with Matz</a> about Ruby 1.9 (posted primarily for the great pictures of Matz)</p>
<p>It will be interesting to see all of the various library compatibility issues come out in the wash over the next few weeks, and I'd expect new versions of most of your favorite libraries to be coming out too.. so expect interesting times in Ruby land over the next couple of months! Lastly, congratulations to Matz and the rest of the <a title="Ruby core team" href="http://www.ruby-lang.org/en/community/ruby-core/">Ruby core team</a>, but particularly Koichi Sasada for all of his work on the YARV virtual machine that has revolutionized Ruby's performance.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Sean O'Neil</strong> &middot; <time datetime="2007-12-28T05:29:00+00:00">December 28, 2007 at 5:29 am</time></p>
      <p>Wow. It's pretty broken on Windows. Am I just about the only Windows programmer who uses Ruby? ;-)</p><p>Seriously, mkmf.rb is broken (I tried to fix the various pathing issues, but eventually gave up), so I can't get any C/C++ extensions to build at all. When I try to embed ruby in a C/C++ program, it crashes when I try to call rb_eval().</p><p>The core Ruby language is great, but as I write and test my own Ruby extensions, I sort of need to be able to compile them to really give 1.9 a try.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Luis Lavena</strong> &middot; <time datetime="2007-12-28T14:29:00+00:00">December 28, 2007 at 2:29 pm</time></p>
      <p>@Sean: no, you aren't the only one.</p><p>But let me guess, you're compiling extensions with VC8, and using the pre-built VC6 version of 1.9.0?</p><p>Nice mix (ala: don't do that, for your mental health) ;-)</p><p>I build 1.9.0 with VC6/VC8 and even MinGW without the issues you describe. (This also is true for 1.8).</p><p>I'll love see some true "bug report" of this to ruby-core, and we can see how to fix it (if it's broken, of course).</p><p>Regarding embedded ruby, you should take care of few things regarding rb_eval() being used from another thread that's not the one who created the interpreter...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>FrankLamontagne</strong> &middot; <time datetime="2007-12-28T16:23:00+00:00">December 28, 2007 at 4:23 pm</time></p>
      <p>That's great news! At first glance I was wondering if the fact that : </p><p>"hello".asdfsd rescue 1 </p><p>will not go in the rescue clause anymore would create some confusion. But now I'm pretty confident that it was a very smart move. It makes perfect sense when you think about it. We don't want the interpreter to catch exceptions that are located on the levels "above" of what we're trying to rescue.</p><p>I think I like the new hash notation ala javascript :</p><p>{a: "foo"}		# =&gt; {:a=&gt;"foo"}</p><p>but I'm still unsure if I'm going to use it... the traditional form makes it crystal clear that the first element is a symbol, that the second one is a string and that together they represent a key/value pair in a hash. But still I admit it's a nice shortcut.</p><p>Congrats to Matz and  his team as well as Koichi Sasada for this great piece of work. Can't wait for the first stable version!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sean O'Neil</strong> &middot; <time datetime="2007-12-29T05:08:00+00:00">December 29, 2007 at 5:08 am</time></p>
      <p>@Luis:</p><p>1) I'm compiling everything from scratch using VS 2005. First I build Ruby 1.9, which works ok as long as I have zlib in my path (for rubygems, which is no longer an extension). Then I try to build any number of extensions using the same compiler, and I get errors from mkmf.rb about finding ruby.h. I fixed that error, ran into others, and gave up on it for now.</p><p>2) I posted a bug report on the rb_eval() call on Windows in 1.9, and it's been assigned to Matz. You can find the details here:<br>
<a href="http://rubyforge.org/tracker/?func=detail&amp;atid=1698&amp;aid=14028&amp;group_id=426" rel="nofollow">http://rubyforge.org/tracker/?func=detail&amp;atid=1698&amp;aid=14028&amp;group_id=426</a></p><p>3) Not only do I know about the threading issue, but I partially fixed it in my own personal build of Ruby so I can initialize Ruby, use it, and blow it away from multiple threads in the same process.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sean O'Neil</strong> &middot; <time datetime="2007-12-29T05:13:00+00:00">December 29, 2007 at 5:13 am</time></p>
      <p>@Luis: Woops, forgot to add that I haven't tested the rb_eval() call since the date I posted it (so it might work in the latest build), but I figured they would've closed the issue if they had fixed it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dag Fjeld Edvardsen</strong> &middot; <time datetime="2007-12-30T01:03:00+00:00">December 30, 2007 at 1:03 am</time></p>
      <p>A google translation of the Matz interview:<br>
<a href="http://translate.google.com/translate?u=http%3A%2F%2Fwww.atmarkit.co.jp%2Fnews%2F200712%2F25%2Fruby.html&amp;langpair=ja%7Cen&amp;hl=en&amp;ie=UTF8" rel="nofollow">http://translate.google.com/translate?u=http%3A%2F%2Fwww.atmarkit.co.jp%2Fnews%2F200712%2F25%2Fruby.html&amp;langpair=ja%7Cen&amp;hl=en&amp;ie=UTF8</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
