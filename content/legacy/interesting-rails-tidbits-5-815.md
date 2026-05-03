---
title: 'Interesting Rails Tidbits #5'
date: '2008-03-18'
author: Peter Cooper
author_slug: admin
post_id: 815
slug: interesting-rails-tidbits-5-815
url: "/interesting-rails-tidbits-5-815.html"
categories:
- compilations
- ruby-on-rails
---

{{< rawhtml >}}
<p><span style="font-size: 14px; font-weight: bold;">RailsCamp #3 - June 20-23 - Camp Kariong, Australia (near Sydney)</span></p>
<p><img src="/assets/2008/03/2079707435-59a26dbf76.jpg" width="344" height="229" alt="2079707435_59a26dbf76.jpg"></p>
<p><a href="http://wiki.railscamp08.org/railscamp/">RailsCamp</a> is an informal Rails camp (literally, you’re in bunk style accommodation) in Australia for Rails coders. The first two events have been popular and so a third has been announced, running between June 20th and June 23rd at Camp Kariong, about 1 hour north of Sydney, NSW. 38 people can be accommodated in bunks but there's plenty of room for people to camp outdoors with their own equipment or to sleep on the floor. Sounds like a lot of good, cheap fun. Trust those fun-loving Aussies to get it right!</p>
<p><big><strong>Lovd By Less - A Rails-Based Open Source Social Networking System</strong></big></p>
<p><img src="/assets/2008/03/lovdbyless.jpg" width="319" height="226" alt="lovdbyless.png"></p>
<p><a href="http://lovdbyless.com/">Lovd By Less</a> is an intriguing, and pretty good looking, new open source social networking system developed using Ruby on Rails. It supports most of the basic feature you'll already be used to on social networking sites, such as photo galleries, profiles, user following / friending, messaging, user blogs, and Flickr and YouTube integration. All of this checks in at an amazing 3,601 lines of code, including tests!</p>
<p><span style="font-size: 14px; font-weight: bold;">Rails Cells - Components Done Right</span></p>
<p><img src="/assets/2008/03/railscells.jpg" width="186" height="108" alt="railscells.png"></p>
<p><a href="http://cells.rubyforge.org/">Cells</a> is a new project that brings the benefits of "component-oriented development" to Ruby on Rails. On the surface, it offers the same benefits that the old "components" section of Rails did, but Cells supposedly doesn't suffer from the same performance problems. For those who missed out on components, they effectively let you develop sets of controllers and views that aren't directly coupled to a single application, meaning they can be shared.</p>
<p>Mike Pence has written an overview of Cells in <a href="http://mikepence.wordpress.com/2008/03/16/cells-bring-clean-re-use-to-your-rails-views/">this blog post</a>, where Alex Kane referred to them as "partials on steroids."</p>
<p><span style="font-size: 14px; font-weight: bold;">How to use Fliqz4R to get a white-label "YouTube" in your app</span></p>
<p><a href="http://www.fliqz.com/">Fliqz</a> is a provider of "plug and play video solutions." Effectively they provide the backend infrastructure for hosting and playing videos, a kind of white-label YouTube, if you will. Libin Pan has <a href="http://fliqz.learnhub.com/lesson/page/321_how_to_use_fliqz4_r">put together a tutorial that demonstrates how to use Fliqz</a> from Ruby / Rails using the <a href="http://www.railslodge.com/plugins/956-fliqz4r">Fliqz4R Rails plugin</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Ben Askins</strong> &middot; <time datetime="2008-03-18T18:44:00+00:00">March 18, 2008 at 6:44 pm</time></p>
      <p>Thanks for the Rails Camp mention Peter. The last two events have been a blast and we're really looking forward to doing it all over again.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>windexh8er</strong> &middot; <time datetime="2008-03-18T22:49:00+00:00">March 18, 2008 at 10:49 pm</time></p>
      <p>Interesting...  After looking through the code for a little bit a lot of it looks like it came out of the RailsSpace book.  Which is not bad, there's a lot of good code in there.  If you play with the 'demo' site you'll find yourself catching small errors here and there.  Like for instance if you request your password they fail to use a flash to inform the user of the status of the operation.  Also not exactly fully RESTful, but some good implementations.  Not bad!  One of the better prepackaged blog / social networking distributions out of the box.  I'm going to take a deeper look at it for sure...  See if there's any cool code buried elsewhere.  :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-03-18T22:57:00+00:00">March 18, 2008 at 10:57 pm</time></p>
      <p>One thing I noticed after looking through the code was how "light" it seems for such a large feature set. I kept thinking.. where's the code? Turns out some of the functionality, especially form building, has been pulled into separate libraries, but it's still rather light. Given the incredible amount of test code, however, I'm not particularly concerned.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ross Hill</strong> &middot; <time datetime="2008-03-19T00:18:00+00:00">March 19, 2008 at 12:18 am</time></p>
      <p>I'm pretty sure I won the game of pool seen in that photo..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dr Nic</strong> &middot; <time datetime="2008-03-21T08:59:00+00:00">March 21, 2008 at 8:59 am</time></p>
      <p>I'm probably just off the top-right of the photo being really crap at Guitar Hero.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dr Nic</strong> &middot; <time datetime="2008-03-21T09:00:00+00:00">March 21, 2008 at 9:00 am</time></p>
      <p>top-left</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Allen</strong> &middot; <time datetime="2008-03-24T23:20:00+00:00">March 24, 2008 at 11:20 pm</time></p>
      <p>That's me in the top left scratching my head, waiting for my turn on Wii Bowling :) RailsCamp is a blast, can't wait for this one!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
