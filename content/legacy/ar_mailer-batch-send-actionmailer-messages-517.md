---
title: 'ar_mailer: Batch Send ActionMailer Messages'
date: '2007-06-09'
author: Hendy Irawan
author_slug: hendy-irawan
post_id: 517
slug: ar_mailer-batch-send-actionmailer-messages-517
url: "/ar_mailer-batch-send-actionmailer-messages-517.html"
categories:
- elsewhere
- news
- ruby-on-rails
---

{{< rawhtml >}}
<p><img border="1" alt="ar_mailer" src="/assets/2007/06/ar_mailer3.jpg"></p>
<p><a href="http://seattlerb.org/ar_mailer">ar_mailer</a> is a Ruby gem by <a href="http://blog.segment7.net/">Eric Hodel</a> (a <a href="zentest-360-turbocharge-your-tests-510.html">ZenTest</a> core developer) that works with Rails to store outgoing e-mail messages into the database for later delivery by a separate <tt>ar_sendmail</tt> process. This is handy because delivering e-mails can take a long time if performed before rendering pages, especially if you have hundreds of messages to send!</p>
<p><a href="http://blog.segment7.net/articles/2007/06/05/ar_mailer-version-1-2-0-has-been-released">Version 1.2.0</a> adds TLS (Transport Layer Security) support and numerous other bug fixes and updates. To install:</p>
<pre>gem install ar_mailer</pre>
<p><em>Note: If you still get the old 1.1.0 version even after doing a gem install, you can download the .gem file directly from <a href="http://rubyforge.org/projects/seattlerb">Seattlerb Rubyforge Project Page</a>.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Eric Hodel</strong> &middot; <time datetime="2007-06-09T18:13:00+00:00">June 9, 2007 at 6:13 pm</time></p>
      <p>I'm consolidating all my gems into the seattlerb project, so I had to get the RubyForge guys to fix up the authoritative project.  Should be good to go now.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>andy</strong> &middot; <time datetime="2007-06-09T20:27:00+00:00">June 9, 2007 at 8:27 pm</time></p>
      <p>Oracle does not like having a column named "from".</p>
    </li>
      <li>
      <p class="comment-meta"><strong>andy</strong> &middot; <time datetime="2007-06-09T20:32:00+00:00">June 9, 2007 at 8:32 pm</time></p>
      <p>Actually, it doesn't like the "to" column either.  I just tweaked the migration and gem code to have a "_address" suffix.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-06-10T02:13:00+00:00">June 10, 2007 at 2:13 am</time></p>
      <p>If you can, report your findings to the developer and/or submit a patch if possible. Thanks for posting a report here though, I'm sure it will help a few confused souls! :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dr Nic</strong> &middot; <time datetime="2007-06-10T07:56:00+00:00">June 10, 2007 at 7:56 am</time></p>
      <p>You can also use the Tracking system on the seattlerb project on rubyforge for bugs etc</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hendy Irawan</strong> &middot; <time datetime="2007-06-11T04:00:00+00:00">June 11, 2007 at 4:00 am</time></p>
      <p>Another very useful feature ar_mailer/ar_sendmail is its ability to queue/throttle outgoing emails in batches. Most shared hosting companies limit your capacity to send mails to prevent customers misusing them for spamming.</p><p><a href="http://www.hostingrails.com/" rel="nofollow">HostingRails</a>, the web hosting company that I am using (and they're a very good at it!), limits to around 200 messages per hour, which is reasonable. They actually recommend customers to use ar_mailer for mailing purposes.</p><p>ar_mailer makes sending e-mails not only much faster (from the perspective of the calling context) but also more reliable, as your apps won't just fail when something bad happens temporarily to the sendmail/SMTP server.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
