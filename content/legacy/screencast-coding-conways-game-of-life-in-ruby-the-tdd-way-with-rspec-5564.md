---
title: 'Screencast: Coding Conway’s Game of Life in Ruby the TDD Way with RSpec'
date: '2011-11-02'
author: Peter Cooper
author_slug: admin
post_id: 5564
slug: screencast-coding-conways-game-of-life-in-ruby-the-tdd-way-with-rspec-5564
url: "/screencast-coding-conways-game-of-life-in-ruby-the-tdd-way-with-rspec-5564.html"
categories:
- miscellaneous
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2011/11/Gospers_glider_gun.gif" style="float: right; margin-left: 18px; margin-bottom: 18px">Recently, there have been many screencasts of people coding things in real time. Yesterday, <strong><a href="http://www.ryanbigg.com/">Ryan Bigg</a></strong> released a video of him implementing <a href="http://en.wikipedia.org/wiki/Conway's_Game_of_Life">Conway's Game of Life</a> from scratch by reading through the 'rules' and then using RSpec to take a test driven approach to fleshing out the functionality.</p>
<p>Ryan is a <a href="http://rubyheroes.com/">Ruby Hero</a> and technical writer best known for being co-author of the recently released <strong><a href="http://manning.com/katz/">Rails 3 in Action</a></strong> (along with Yehuda Katz) which I'll be reviewing soon for Ruby Inside. But Ryan's also been getting into doing a little screencasting:</p>
<p><iframe src="http://player.vimeo.com/video/31403388?title=0&amp;byline=0&amp;portrait=0" width="640" height="480" frameborder="0" webkitallowfullscreen allowfullscreen></iframe></p>
<p><em>If you can't see the video above, <a href="http://vimeo.com/31403388">view it directly on Vimeo here.</a></em></p>
<p>Ryan's technique is just one of many legitimate approaches but many of you will find something to pick up from this, especially if you're not familiar with test driven development or, perhaps, RSpec. If you're already working on koans non-stop and consider yourself well versed in the ways of TDD, you might want to skip it.</p>
<p>The only downside is that Ryan focuses entirely on the logic without doing a live render of the game board to see his work in action, though this was the right rational choice given the time limit. That would make a good separate project to follow on with, though, if you fancy a little challenge, but be careful to not couple the game logic tightly to any interface you choose to try.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Adam Leonard</strong> &middot; <time datetime="2011-11-02T17:54:00+00:00">November 2, 2011 at 5:54 pm</time></p>
      <p>Awesome screencast ! It will be very beneficial for those wanting to better understand TDD, as you can have someone explain it to you a million times, but you learn so much more by watching them do it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Justin Forder</strong> &middot; <time datetime="2011-11-04T01:54:00+00:00">November 4, 2011 at 1:54 am</time></p>
      <p>"If you're already working on koans non-stop..." had me thinking for a while (as koans do). Perhaps you meant "katas" :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Will</strong> &middot; <time datetime="2011-11-10T07:59:00+00:00">November 10, 2011 at 7:59 am</time></p>
      <p>"The challenge was to implement Conway's Game of Life in under 45 minutes -- that's actually impossible to do."</p><p>Impossible, eh?</p><p><a href="http://pastie.org/2840511" rel="nofollow">http://pastie.org/2840511</a></p><p>Took 30 minutes, and I wasn't even trying to be fast.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gimi</strong> &middot; <time datetime="2011-11-16T09:40:00+00:00">November 16, 2011 at 9:40 am</time></p>
      <p>@Will I think 45 minutes mean in a TDD way, include 100% test.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Justin Forder</strong> &middot; <time datetime="2011-11-20T15:32:00+00:00">November 20, 2011 at 3:32 pm</time></p>
      <p>Ignore my comment about koans - I didn't know about</p><p><a href="https://github.com/edgecase/ruby_koans" rel="nofollow">https://github.com/edgecase/ruby_koans</a></p><p>I found out about that when reading a sample of the forthcoming book "Build Awesome Command-Line Applications in Ruby", which is available as a beta book and now has all the chapters (but not the appendices).</p><p><a href="http://pragprog.com/book/dccar/build-awesome-command-line-applications-in-ruby" rel="nofollow">http://pragprog.com/book/dccar/build-awesome-command-line-applications-in-ruby</a></p><p>I bought a copy, and at first sight it looks great - very thorough but still pretty readable.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Petr</strong> &middot; <time datetime="2011-11-28T09:11:00+00:00">November 28, 2011 at 9:11 am</time></p>
      <p>This is wrong. How can you immediately modify the world (cell.die! for example)? It could interact with other cells that are next in the each loop. There should be current_world and next_world and you should copy them on world.tick!</p><p>Is it TDD fail? Or there will be some test later which shows this problem and we will have to fix it. Is thinking about this problem some type of "premature optimization" banned in TDD method?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://blog.tolleiv.de/2011/12/further-reading-2011/" rel="external nofollow" class="url">Further reading 2011 | the fancy part of the web - tolleiv.de</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
