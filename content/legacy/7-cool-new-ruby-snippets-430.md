---
title: 7 Cool New Ruby Snippets
date: '2007-03-23'
author: Peter Cooper
author_slug: admin
post_id: 430
slug: 7-cool-new-ruby-snippets-430
url: "/7-cool-new-ruby-snippets-430.html"
categories:
- cool
- elsewhere
- ruby-tricks
---

{{< rawhtml >}}
<p>I've stumbled across several great snippets of Ruby code on the Web in the past few weeks, and rather than bore you with a post on each one, here's a whole collection at once:</p>
<p>1. <strong><a href="http://snippets.dzone.com/posts/show/3714">RSS Twitter Bot</a></strong> - A short Ruby script that will read an RSS feed and republish it to your <a href="http://www.twitter.com/">Twitter</a> account. This could be useful for livestreaming or getting some sort of commercial presence on there.</p>
<p>2. <strong><a href="http://snippets.dzone.com/posts/show/3691">Check if a number is prime in ONE line of Ruby</a></strong> - A rather mind-boggling technique to detect primes using a regular expression (!)</p>
<p>3. <strong><a href="http://blog.zenspider.com/archives/2007/03/that_stupid_thing_i_wrote_the_other_day_part_2.html">iTunes Database Parser</a></strong> - A short script that reads through your iTunes database and tells you what you like to listen to based on your listening habits.</p>
<p>4. <strong><a href="http://snippets.dzone.com/posts/show/3701">CSV to XML Converter</a></strong> - Short and sweet.</p>
<p>5. <strong><a href="http://snippets.dzone.com/posts/show/3647">Send and receive SMS text messages with Ruby and a GSM modem</a></strong> - I'll admit.. I wrote this one, but it works. You may need to hack the SerialPort library to support your GSM modem, especially if it's not on a usual port. I had to hack the C a little for OS X using /dev/something-weird-here, etc. Hopefully this will get you going though.</p>
<p>6. <strong><a href="http://snippets.dzone.com/posts/show/3636">to_fraction method for Float</a></strong></p>
<p>7. <strong><a href="http://snippets.dzone.com/posts/show/3621">Create Web site thumbnails quickly with Ruby</a></strong> - Another one of my mine I'm afraid, but again, it works well (so far)!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Tyler Roberts</strong> &middot; <time datetime="2007-03-23T04:55:00+00:00">March 23, 2007 at 4:55 am</time></p>
      <p>Hey, I can use the SMS script to vote for Sanjaya in American Idol. Go Sanjaya!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Satish Talim</strong> &middot; <time datetime="2007-03-23T07:27:00+00:00">March 23, 2007 at 7:27 am</time></p>
      <p>My vote goes to Melinda Doolittle !</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jesse Newland</strong> &middot; <time datetime="2007-03-23T11:58:00+00:00">March 23, 2007 at 11:58 am</time></p>
      <blockquote><p>This could be useful for livestreaming or getting some sort of commercial presence on there.</p></blockquote><p>That's exactly where this script came from - this was the source to the <a href="http://twitter.com/woot" rel="nofollow">Woot Twitter-bot</a> when I ran it unofficially. I've  since <a href="http://soylentfoo.jnewland.com/articles/2007/03/22/woot-twitter-bot-now-official" rel="nofollow">handed it over to Woot</a> - I'm not sure if they're using the same method to run to it or not.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jon Fullerton</strong> &middot; <time datetime="2007-03-23T13:02:00+00:00">March 23, 2007 at 1:02 pm</time></p>
      <p>Want to run an XMLRPC Server in Ruby on top of Mongrel? See here:</p><p><a href="http://ttt.ggnore.net/2006/11/15/xmlrpc-with-mongrel-and-ruby-off-rails/" rel="nofollow">http://ttt.ggnore.net/2006/11/15/xmlrpc-with-mongrel-and-ruby-off-rails/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Garth</strong> &middot; <time datetime="2007-03-23T15:03:00+00:00">March 23, 2007 at 3:03 pm</time></p>
      <p>Website thumbnails look good.  I wrote a ruby script that utilized Ruby and gtk on Linux.  <a href="http://www.remoteisland.co.uk/2007/02/19/taking-a-screenshot-of-a-webpage-using-ruby-and-gtk/" rel="nofollow">http://www.remoteisland.co.uk/2007/02/19/taking-a-screenshot-of-a-webpage-using-ruby-and-gtk/</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
