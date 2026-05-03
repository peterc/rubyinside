---
title: 'NeverBlock: Fast, Non-Blocking IO In Ruby Without Changing Program Flow'
date: '2008-08-25'
author: Peter Cooper
author_slug: admin
post_id: 1083
slug: neverblock-easy-non-blocking-io-in-ruby-1083
url: "/neverblock-easy-non-blocking-io-in-ruby-1083.html"
categories:
- miscellaneous
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2008/08/neverblock.jpg" width="218" height="67" alt="neverblock.png" style="float:left; margin-right:12px; margin-bottom:12px;"><a href="http://www.espace.com.eg/neverblock/">NeverBlock</a> is a Ruby (1.9) library developed by eSpace - an Egyptian Web 2.0 development team - that could make your life a whole lot easier if you have to deal with blocking IO operations that hold up all your Ruby threads.</p>
<p>NeverBlock makes it easy to get the benefits of non-blocking IO (IO operations that aren't held up by mutexes) in your Ruby apps without having to take the usual route of redesigning your app to be event-based. You get all the benefits of event-based code (lower CPU overhead, lower memory use, less hangups) but with the benefit of a normal program flow model.</p>
<p>The catch? It's Ruby 1.9 only - relying heavily on fibers - and the documentation isn't particularly strong yet so it'll take a bit of work to figure out. It could be worth it, though, as in <a href="http://www.espace.com.eg/neverblock/benchmarks">benchmarks on the NeverBlock-based Postgres library</a>, throughput is shown as significantly increased where a percentage of queries are complex and slow (and would usually block up the client).</p>
<p>If you're still interested, NeverBlock is <a href="http://github.com/espace/neverblock">available on Github</a> - there's also <a href="http://www.espace.com.eg/neverblock/">an official home page</a> and <a href="http://www.espace.com.eg/docs/neverblock/">documentation</a> available.</p>
<p class="s"><cite>This post is sponsored by AlphaSights Ltd -</cite> <a href="http://www.alphasights.com/visitors/index.php?page=ruby-on-rails-software-developer">AlphaSights are recruiting.</a> If you're looking for a Ruby on Rails opportunity, can work in <strong>Cambridge, UK</strong> and enjoy the buzz of a brand new well-funded startup then look no further. AlphaSights are recruiting from entry level to senior positions and offer very competitive salaries and a great working environment.</p>
{{< /rawhtml >}}
