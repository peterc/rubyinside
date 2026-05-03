---
title: How to use GMail’s SMTP Server with Rails
date: '2007-02-22'
author: Peter Cooper
author_slug: admin
post_id: 394
slug: how-to-use-gmails-smtp-server-with-rails-394
url: "/how-to-use-gmails-smtp-server-with-rails-394.html"
categories:
- ruby-on-rails
---

{{< rawhtml >}}
<p>Rails' ActionMailer library can send e-mail for you, and while it can be set up to use almost any SMTP server, special requirements by Google's GMail SMTP server have presented Rails users from taking advantage of it. Ages ago I mentioned <a href="http://typo.onxen.info/articles/2006/06/27/activemailer-sending-via-gmail">a solution to the problem</a>, but it involved downloading a separate application called 'msmtp' and performing an ugly system call from your application.</p>
<p>There's a far cleaner solution, and it's escaped my attention for almost five months now. Anatol Pomozov has <a href="http://blog.pomozov.info/posts/how-to-send-actionmailer-mails-to-gmailcom.html">written a small library using net/smtp and OpenSSL</a> that changes some of net/smtp's methods to allow it to directly talk to secure SMTP servers such as GMail's. He also <a href="http://blog.pomozov.info/posts/how-to-send-actionmailer-mails-to-gmailcom.html">presents an example of what to do in your Rails application</a>  that looks like this:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">smtp_tls</span><span class="punct">'</span>

<span class="constant">ActionMailer</span><span class="punct">::</span><span class="constant">Base</span><span class="punct">.</span><span class="ident">server_settings</span> <span class="punct">=</span> <span class="punct">{</span>
  <span class="symbol">:address</span> <span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">smtp.gmail.com</span><span class="punct">",</span>
  <span class="symbol">:port</span> <span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">587</span><span class="punct">",</span>
  <span class="symbol">:domain</span> <span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">localhost.localdomain</span><span class="punct">",</span>
  <span class="symbol">:authentication</span> <span class="punct">=&gt;</span> <span class="symbol">:plain</span><span class="punct">,</span>
  <span class="symbol">:user_name</span> <span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">someusername</span><span class="punct">",</span>
  <span class="symbol">:password</span> <span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">somepassword</span><span class="punct">"</span>
<span class="punct">}</span></pre>
<p>Enjoy! Thanks to <a href="http://www.prestonlee.com/archives/63">Preston Lee</a> for pointing this out. And, of course, Anatol's <em>smtp_tls</em> library can also be used directly from any other Ruby application if you like!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Preston Lee</strong> &middot; <time datetime="2007-02-23T08:21:00+00:00">February 23, 2007 at 8:21 am</time></p>
      <p>No problem :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Anatol Pomozov</strong> &middot; <time datetime="2007-02-23T22:56:00+00:00">February 23, 2007 at 10:56 pm</time></p>
      <p>Enjoy it ;)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
