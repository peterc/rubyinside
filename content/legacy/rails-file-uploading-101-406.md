---
title: Rails File Uploading 101
date: '2007-03-02'
author: Peter Cooper
author_slug: admin
post_id: 406
slug: rails-file-uploading-101-406
url: "/rails-file-uploading-101-406.html"
categories:
- cool
- elsewhere
- ruby-on-rails
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2007/03/murderers.jpg" height="172" width="221" border="1" hspace="4" vspace="4" alt="Murderers"><br>
<a href="http://clarkware.com/">Mike Clark</a> has put together a stunningly simple tutorial covering <a href="http://clarkware.com/cgi/blosxom/2007/02/24#FileUploadFu">how to create a complete file uploading and image resizing system</a> in mere minutes using <a href="http://techno-weenie.net/">Rick Olson</a>'s <em>attachment_fu</em> plugin. What impresses me the most is that he shows how attachment_fu can automatically store uploaded files on Amazon's S3 service with only a few tweaks. This is a <strong>must read</strong> for Rails developers who haven't brushed up on their file upload techniques lately.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Isaac</strong> &middot; <time datetime="2007-03-02T03:40:00+00:00">March 2, 2007 at 3:40 am</time></p>
      <p>I posted a quick response to Mike's tutorial here:</p><p><a href="http://isaac.org.nz/2007/2/25/image-processing-with-attachment_fu" rel="nofollow">http://isaac.org.nz/2007/2/25/image-processing-with-attachment_fu</a></p><p>It outlines why I ended up going with mini_magick as an image processor.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeff Coleman</strong> &middot; <time datetime="2007-03-02T04:46:00+00:00">March 2, 2007 at 4:46 am</time></p>
      <p>One thing Mike didn't mention is that there seem to be issues using attachment_fu with Windows:<br>
<a href="http://railsweenie.com/forums/3/topics/1257" rel="nofollow">http://railsweenie.com/forums/3/topics/1257</a></p><p>It seems to have trouble saving the correct size of the files.  Acts_as_attachment seems to work correctly, but something's up in attachment_fu.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Wes Ratcliff</strong> &middot; <time datetime="2007-03-02T12:53:00+00:00">March 2, 2007 at 12:53 pm</time></p>
      <p>I'll second the problem on Windows... haven't found a fix yet.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jon Maddox</strong> &middot; <time datetime="2007-03-02T14:49:00+00:00">March 2, 2007 at 2:49 pm</time></p>
      <p>Ahh, this is very nice indeed. Little has been documented about this plugin. Rick hadn't even written much in the README yet. </p><p>This rocks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeff de Vries</strong> &middot; <time datetime="2007-03-02T23:17:00+00:00">March 2, 2007 at 11:17 pm</time></p>
      <p>Neat!  I added photo upload to our site using these instructions (modified for our models) in under an hour, and it worked the first time!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Don</strong> &middot; <time datetime="2007-03-06T13:28:00+00:00">March 6, 2007 at 1:28 pm</time></p>
      <p>All of the file upload examples that I've found seem to be geared toward image uploads.  How well does something like attachment_fu work for non-image uploads?  Is there something better for handling arbitrary file types?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-03-06T14:45:00+00:00">March 6, 2007 at 2:45 pm</time></p>
      <p>Should be fine, Don. Most upload plugins are for arbitrary files, it's just that because image uploads are so popular.. they provide short cuts and useful methods for that.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Don</strong> &middot; <time datetime="2007-03-06T21:44:00+00:00">March 6, 2007 at 9:44 pm</time></p>
      <p>If I set attachment_fu to store uploaded files in the file system, it puts them in the 'public' directory of the Rails app.  I can specify a path for uploads, but it's relative to 'public'.  My app is going to be deployed on a multi-user system, so I need to store files in a path relative to  ~username.  Is there a plug-in that allows that?</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
