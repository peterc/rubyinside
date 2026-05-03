---
title: Flickr library for Ruby
date: '2006-07-03'
author: Peter Cooper
author_slug: admin
post_id: 123
slug: flickr-library-for-ruby-123
url: "/flickr-library-for-ruby-123.html"
categories:
- cool
- elsewhere
- ruby-tricks
---

{{< rawhtml >}}
<p><a href="http://redgreenblu.com/flickr/">Flickr.rb</a> is an 'insanely easy' Ruby library to interface with the world's most popular photo-sharing service, Flickr.</p>
<p>Here's some example code:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">flickr</span><span class="punct">'</span>

<span class="comment"># basics</span>
<span class="ident">flickr</span> <span class="punct">=</span> <span class="constant">Flickr</span><span class="punct">.</span><span class="ident">new</span>                           <span class="comment"># create a flickr client</span>
<span class="ident">flickr</span><span class="punct">.</span><span class="ident">login</span><span class="punct">(</span><span class="ident">email</span><span class="punct">,</span> <span class="ident">password</span><span class="punct">)</span>                 <span class="comment"># log in for actions that require it</span>
<span class="ident">flickr</span><span class="punct">.</span><span class="ident">users</span>                                  <span class="comment"># get all users currently online</span>
<span class="ident">flickr</span><span class="punct">.</span><span class="ident">photos</span>                                 <span class="comment"># get the 100 most recent public photos</span>
<span class="ident">flickr</span><span class="punct">.</span><span class="ident">tag</span><span class="punct">('</span><span class="string">red</span><span class="punct">')</span>                             <span class="comment"># search for photos tagged with 'red'</span>
<span class="ident">flickr</span><span class="punct">.</span><span class="ident">groups</span>                                 <span class="comment"># get all active public groups</span>

<span class="comment"># working with users</span>
<span class="ident">user</span> <span class="punct">=</span> <span class="ident">flickr</span><span class="punct">.</span><span class="ident">users</span><span class="punct">('</span><span class="string">sco</span><span class="punct">')</span>                    <span class="comment"># lookup a user by username</span>
<span class="ident">user</span> <span class="punct">=</span> <span class="ident">flickr</span><span class="punct">.</span><span class="ident">users</span><span class="punct">('</span><span class="string">sco@<!--*-->scottraymond.net</span><span class="punct">')</span>   <span class="comment"># or email</span>
<span class="ident">user</span><span class="punct">.</span><span class="ident">name</span>                                     <span class="comment"># get the user's real name</span>
<span class="ident">user</span><span class="punct">.</span><span class="ident">location</span>                                 <span class="comment"># and location</span>
<span class="ident">user</span><span class="punct">.</span><span class="ident">photos</span>                                   <span class="comment"># grab their collection of Photo objects...</span>
<span class="ident">user</span><span class="punct">.</span><span class="ident">tag</span><span class="punct">('</span><span class="string">red</span><span class="punct">')</span>                               <span class="comment"># search their photos for the tag 'red'</span>
<span class="ident">user</span><span class="punct">.</span><span class="ident">groups</span>                                   <span class="comment"># ...the groups they're in...</span>
<span class="ident">user</span><span class="punct">.</span><span class="ident">contacts</span>                                 <span class="comment"># ...their contacts...</span>
<span class="ident">user</span><span class="punct">.</span><span class="ident">favorites</span>                                <span class="comment"># ...favorite photos...</span>
<span class="ident">user</span><span class="punct">.</span><span class="ident">photosets</span>                                <span class="comment"># ...their photo sets...</span>
<span class="ident">user</span><span class="punct">.</span><span class="ident">tags</span>                                     <span class="comment"># ...and their tags</span>
</pre>
<p>It gets way better than that though. If you're into photos or just cool APIs, <a href="http://redgreenblu.com/flickr/">check it out.</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Kevin Marsh</strong> &middot; <time datetime="2006-07-04T01:12:00+00:00">July 4, 2006 at 1:12 am</time></p>
      <p>Any idea why it's so slooooow? or have tips to speed it up?</p><p>Searching for the latest 24 images for a tag takes about 5 minutes...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>TAD</strong> &middot; <time datetime="2006-07-05T21:13:00+00:00">July 5, 2006 at 9:13 pm</time></p>
      <p>I was going to say the exact same thing Kevin!  Actually, I've noticed that if you pull back images and don't request the information needed to point back to the Flickr page for the picture it works faster (though still pretty slow).</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
