---
title: 'The Methodphitamine: A Better Symbol#to_proc?'
date: '2007-08-11'
author: Peter Cooper
author_slug: admin
post_id: 578
slug: the-methodphitamine-a-better-symbolto_proc-578
url: "/the-methodphitamine-a-better-symbolto_proc-578.html"
categories:
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2007/08/bountyshirt.jpg" height="251" width="208" border="1" hspace="4" vspace="4" alt="Bountyshirt"><span style="font-size:0pt;"><br>
</span><em>(from one of </em><em><a href="http://www.bountyhunterinc.com/">Bounty Hunter Inc's</a></em><em> great t-shirts - yes, you can buy this!)</em></p>
<p>Jay Philips has stumbled across an interesting technique that like Symbol#to_proc, allows you to define block actions more succinctly for methods like map and sort_by. It goes one step beyond Symbol#to_proc's goodness, however, and makes things even tighter. He calls it the <a href="http://jicksta.com/articles/2007/08/04/the-methodphitamine">Methodphitamine</a>. Consider this typical Ruby on Rails example to fetch a list of capitalized last names for all users in a database:</p>
<blockquote><p>User.find(:all).map{|x| x.contacts.map{|y| y.last_name.capitalize }}</p></blockquote>
<p>Using Symbol#to_proc, you end up with something like:</p>
<blockquote><p>User.find(:all).map{|x|x.contacts.map(&amp;:last_name).map(&amp;:capitalize)}</p></blockquote>
<p>But with the "Methodphitamine", we get:</p>
<blockquote><p>User.find(:all).map &amp;its.contacts.map(&amp;its.last_name.capitalize)</p></blockquote>
<p>Learn more about it in <a href="http://jicksta.com/articles/2007/08/04/the-methodphitamine">Jay's blog post</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Ramon Leon</strong> &middot; <time datetime="2007-08-11T23:53:00+00:00">August 11, 2007 at 11:53 pm</time></p>
      <p>This is an old well known Smalltalk hack.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Johan Tam</strong> &middot; <time datetime="2007-08-12T02:15:00+00:00">August 12, 2007 at 2:15 am</time></p>
      <p>It's tighter, but hard to understand, not as straightforward as the previous one.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Shadowfiend</strong> &middot; <time datetime="2007-08-12T02:20:00+00:00">August 12, 2007 at 2:20 am</time></p>
      <p>Out of curiosity, what does it look like in Smalltalk?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paul Ireland</strong> &middot; <time datetime="2007-08-12T14:13:00+00:00">August 12, 2007 at 2:13 pm</time></p>
      <p>I honestly could care less what other languages have used this.  The fact that it is here and that I can use it... well all I have to say is: WooHoo!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sam Aaron</strong> &middot; <time datetime="2007-08-13T09:26:00+00:00">August 13, 2007 at 9:26 am</time></p>
      <p>I'm not a big fan of the to_proc hack in the first place. To my eyes, it's ugly, and Methodphitamine is even more ugly. I believe that there's a balance to be struck between readability and succinctness. I think that the Ruby philosophy (or way) leans more towards the readability side of the spectrum. Check out Matz's essay in the new O'Reilly book 'Beautiful Code' where he likens code to an essay. i.e. essays generally have messages, but the message is mostly meaningless unless it can be read and understood by other people. It's a good read.</p><p>Anyway, I would much rather break the line up into a couple of lines - even using a do end block. Also, I'd use more appropriate variables than x and y (I'd probably also use a comment too...):</p><p>    User.find(:all).map do |user|<br>
      user.contacts.map{|contact| contact.last_name.capitalize}<br>
    end</p><p>I'm happy to sacrifice a little succinctness for readability any day (although not to the extent of COBOL or Applescript ;-) )</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sam Aaron</strong> &middot; <time datetime="2007-08-13T09:44:00+00:00">August 13, 2007 at 9:44 am</time></p>
      <p>With a little sobering time, and perspective, I think that the Methodphitamine option is actually not at all uglier than the to_proc hack. </p><p>However, one important issue is - to what extent should we use hacks and tricks like this on code that other people are likely to be reading and maintaining. Especially in cases where these people haven't met said trick or hack.</p><p>Maybe I'm just being a boring old spoilsport. Truth is, when read aloud, the Methodphitamine hack sounds more like English. Yet the standard Ruby way is  more readable to me (and probably the average Ruby hacker) simply because it's a pattern I'm used to reading.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Adam Sanderson</strong> &middot; <time datetime="2007-08-13T23:06:00+00:00">August 13, 2007 at 11:06 pm</time></p>
      <p>I actually think that the first form is just fine.  There is less magic, which makes it easier for everyone, and at the same time is still about as short as the other options.  It's great to know when you can do some of these tricks, but use the uglier ones sparingly.  All the same, pretty damn ingenious ;)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
