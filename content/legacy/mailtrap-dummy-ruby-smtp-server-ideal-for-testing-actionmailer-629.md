---
title: 'Mailtrap: Dummy Ruby SMTP server (ideal for testing ActionMailer)'
date: '2007-10-18'
author: Peter Cooper
author_slug: admin
post_id: 629
slug: mailtrap-dummy-ruby-smtp-server-ideal-for-testing-actionmailer-629
url: "/mailtrap-dummy-ruby-smtp-server-ideal-for-testing-actionmailer-629.html"
categories:
- miscellaneous
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2007/10/trap.jpg" height="196" width="246" border="1" hspace="4" vspace="4" alt="Trap"><span style="font-size:0pt;"><br>
</span><br>
<a href="http://rubymatt.rubyforge.org/mailtrap/">Mailtrap</a> is a "dummy" SMTP server developed in Ruby by Matt Mower. The main use for Mailtrap is to act as an SMTP server that runs locally and can be sent mail which can be inspected for debugging purposes. For example, your Rails application running locally might need to send mail using ActionMailer, and while you want it to go through all of the SMTP motions, you don't want the mail to <em>really</em> be sent.. enter Mailtrap! In <a href="http://matt.blogs.it/entries/00002655.html">this blog post</a>, Matt goes into more details about how Mailtrap works, why it's a good idea, and the motivation behind its development.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Matthijs Langenberg</strong> &middot; <time datetime="2007-10-18T08:45:00+00:00">October 18, 2007 at 8:45 am</time></p>
      <p>I love those KISS projects. Going to digg into the code if I've got some spare time today!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Corné - South Africa</strong> &middot; <time datetime="2007-10-19T08:35:00+00:00">October 19, 2007 at 8:35 am</time></p>
      <p>Why would you even distribute a picture like this? </p><p>Surely you can be more creative to represent the word `Trap`.</p><p>Animal cruelty is not something to condone!</p><p>Terrible, this alone will deter me from Mailtrap or even give a glance.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ben</strong> &middot; <time datetime="2007-10-21T16:09:00+00:00">October 21, 2007 at 4:09 pm</time></p>
      <p>It looks like hyper-sensitivity is not just an American thing.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark Wilden</strong> &middot; <time datetime="2007-10-21T16:28:00+00:00">October 21, 2007 at 4:28 pm</time></p>
      <p>Is this for testing ActionMailer or for testing apps that use ActionMailer? Because it certainly seems great for the former purpose. But I can't see a need if you're testing your app. Basically, you just need to test whether you're calling ActionMailer stuff correctly - you don't need to test ActionMailer itself (unless you're workiing on ActionMailer).</p><p>///ark</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matt Mower</strong> &middot; <time datetime="2007-10-22T07:55:00+00:00">October 22, 2007 at 7:55 am</time></p>
      <p>Mark Wilden: When I'm running in development mode on my laptop I don't want to have to bother configuring an actual SMTP server or bother about the emails and where they end up (e.g. coming in to my mailbox and having to delete them).</p><p>During testing I establish (with the :test mailer) that the emails are correctly generated. When I'm doing local development I just want ActionMailer to think they have been sent okay. That's what Mailtrap is for.</p><p>Mailtrap allows me to use the SMTP configuration for ActionMailer that I am already familiar with from production. I just configure it for localhost port 2525 and start Mailtrap.</p><p>Now I can run in development mode and mails will be sent out as normal and will just collect in a log file.</p><p>If you've already got a local SMTP server (e.g. postfix) configured and are happy filtering or manually deleting the emails then more power to you.</p><p>For someone too lazy to do that (i.e. Me)... there's Mailtrap.</p><p>Regards,</p><p>Matt</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark Wilden</strong> &middot; <time datetime="2007-10-22T16:18:00+00:00">October 22, 2007 at 4:18 pm</time></p>
      <p>Thanks for the explanation, Matt. From AWDw/R (p. 567), I thought people could use :test in development, too. But when you're developing with :smtp, then I can see that Mailtrap would be very useful, indeed.</p><p>///ark</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alan Brown</strong> &middot; <time datetime="2007-10-31T08:10:00+00:00">October 31, 2007 at 8:10 am</time></p>
      <p>this is cool.  been using action_mailer_tls and sending everything thru gmail but this'll work</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
