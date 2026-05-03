---
title: 'RDropbox: A Ruby Client Library for Dropbox'
date: '2010-05-05'
author: Peter Cooper
author_slug: admin
post_id: 3241
slug: rdropbox-a-ruby-client-library-for-dropbox-3241
url: "/rdropbox-a-ruby-client-library-for-dropbox-3241.html"
categories:
- cool
---

{{< rawhtml >}}
<p><img src="/assets/2010/05/rdropbox.png" class="alignleft size-thumbnail notbordered"><a href="https://www.dropbox.com/">Dropbox</a> is a popular file hosting service (4m+ users) that provides synced backup and file hosting to OS X, Windows, and Linux users. You get up to 2GB of space for free. <a href="http://github.com/RISCfuture/dropbox">RDropbox</a> is a library by Tim Morgan (of <a href="autumn-ruby-irc-bot-framework-953.html">Autumn</a> fame) that takes advantage of the official Dropbox <span class="caps">API</span> from Ruby.</p>
<p>With RDropbox you can log into a Dropbox account using OAuth and then upload and download files. A requirement, however, is that you <a href="https://www.dropbox.com/developers/apply">apply for Dropbox <span class="caps">API</span> access</a> and are approved, as the <span class="caps">API</span> is not fully open to the public without going through the approval process (this appears to be in order to avoid overloading their service). The <span class="caps">API</span> was, notably, worked on by notable Ruby alumnus, *** ****.</p>
<p>Once you've made it into the Dropbox <span class="caps">API</span> program, RDropbox gives you the benefit of writing code as simple as:</p>
<pre><code># STEP 1: Authorize the user
session = Dropbox::Session.new('your_consumer_key', 'your_consumer_secret')
puts "Visit #{session.authorize_url} to log in to Dropbox. Hit enter when you have done this."
gets
session.authorize
session.sandbox = true

# STEP 2: Play!
session.upload('testfile.txt')
uploaded_file = session.file('testfile.txt')
puts uploaded_file.metadata.size

uploaded_file.move 'new_name.txt'
uploaded_file.delete</code></pre>
<h3>An alternative, unofficial route: tvongaza's DropBox</h3>
<p>If you want to be using Dropbox from Ruby <em>right now</em>, there's an alternative: <a href="http://github.com/tvongaza/DropBox">tvongaza/DropBox</a>. This alternative library predates the official Dropbox <span class="caps">API</span> and uses the same techniques as the official Dropbox clients instead. For this you'll need to use your Dropbox e-mail username and password to log in (this could be a problem if you want to use third party Dropbox accounts!) and you can then create, delete and rename folders and files, as well as check usage statistics.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Sohan</strong> &middot; <time datetime="2010-05-06T14:34:00+00:00">May 6, 2010 at 2:34 pm</time></p>
      <p>Your post has been linked at DrinkRails.com as one of the top ruby on rails blogs of the day.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pican</strong> &middot; <time datetime="2010-05-07T00:28:00+00:00">May 7, 2010 at 12:28 am</time></p>
      <p>I have used Dropbox for a while, it's so convenient:&gt;</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeff</strong> &middot; <time datetime="2010-05-07T03:06:00+00:00">May 7, 2010 at 3:06 am</time></p>
      <p>I am overly excited about this -- we'll see if my application to access the API had sufficient begging.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
