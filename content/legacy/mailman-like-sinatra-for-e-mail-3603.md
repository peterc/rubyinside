---
title: Mailman – Like Sinatra for E-mail
date: '2010-07-28'
author: Peter Cooper
author_slug: admin
post_id: 3603
slug: mailman-like-sinatra-for-e-mail-3603
url: "/mailman-like-sinatra-for-e-mail-3603.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<blockquote class="stylized">
<p>Mailman is an incoming email processing microframework. You point it at a source of email, such as a POP3 account or a Maildir, and it will execute routes based on the messages that come in.</p>
<p>For instance if you had a ticketing system, and wanted to add replies via email to the database, this application would be a good start:</p>
<pre><code>require 'mailman'

Mailman.config.maildir = '~/Maildir'

Mailman::Application.new do
  to 'ticket-%id%@<!--*-->vipsupport.com' do 
    Ticket.find(params[:id]).add_reply(message)
  end
end</code></pre>
</blockquote>
<p><cite>Jonathan Rudenberg</cite></p>
<p>This is very nice. I love these microframeworks. The Sinatra style is always good to ape.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Michael Kohl</strong> &middot; <time datetime="2010-07-28T13:37:00+00:00">July 28, 2010 at 1:37 pm</time></p>
      <p>This looks like a great project, but it's also an absolute naming fail.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
