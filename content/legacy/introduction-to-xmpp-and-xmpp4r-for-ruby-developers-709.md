---
title: Introduction to XMPP and XMPP4R for Ruby Developers
date: '2008-02-03'
author: Peter Cooper
author_slug: admin
post_id: 709
slug: introduction-to-xmpp-and-xmpp4r-for-ruby-developers-709
url: "/introduction-to-xmpp-and-xmpp4r-for-ruby-developers-709.html"
categories:
- ruby-tricks
---

{{< rawhtml >}}
<p>As <a href="http://en.wikipedia.org/wiki/Extensible_Messaging_and_Presence_Protocol">Wikipedia says</a>, XMPP is "an open, XML-inspired protocol for near-real-time, extensible instant messaging and presence information." It's used by Jabber, the Gizmo Project, Google Talk, Pidgin, Kopete, and all sorts of open source instant messaging applications. It can also be used by any applications you want to develop yourself to pass messages back and forth, for example.</p>
<p>XMPP support in Ruby comes, primarily, from the <a href="http://home.gna.org/xmpp4r/">XMPP4R library</a> (Jabber4R and Net::XMPP are both semi-abandoned), and Frank Lamontagne (of <a href="http://www.rubyfleebie.com">Ruby Fleebie</a>) has written a two part tutorial / guide to using XMPP4R to integrate with Instant Messaging systems. The <a href="http://www.rubyfleebie.com/im-integration-with-xmpp4r">first part</a> is a basic overview, and the <a href="http://www.rubyfleebie.com/im-integration-with-xmpp4r-part-2/">second part</a> is a basic demo of creating an XMPP client. Frank expects to continue the series on <a href="http://www.rubyfleebie.com">his blog</a>.</p>
<p>You may also be interested in <a href="http://xmpp4r-simple.rubyforge.org/">Jabber::Simple</a>, a wrapper around XMPP4R by Blaine Cook that makes things even simpler. It hasn't been updated for a year, but reduces most operations, such as creating a client object, delivering a message, and receiving messages, to a single method call.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Brad Pauly</strong> &middot; <time datetime="2008-02-04T19:29:00+00:00">February 4, 2008 at 7:29 pm</time></p>
      <p>I wrote about sending  xmpp messages with Rails and xmpp4r a while back.</p><p><a href="http://railsforum.com/viewtopic.php?id=1033" rel="nofollow">http://railsforum.com/viewtopic.php?id=1033</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
