---
title: Access Ruby Docs from the OS X Dictionary and Spotlight
date: '2009-02-08'
author: Peter Cooper
author_slug: admin
post_id: 1495
slug: access-ruby-19-docs-from-the-os-x-dictionary-and-spotlight-1495
url: "/access-ruby-19-docs-from-the-os-x-dictionary-and-spotlight-1495.html"
categories:
- os-x-specific
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2009/02/ruby-spotlight-docs.png" width="109" height="80" alt="ruby-spotlight-docs.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;">Priit Haamer is an Estonia-based Ruby developer who has put together a "<a href="http://www.priithaamer.com/blog/ruby-dictionary-for-mac-os-x">Ruby dictionary for Mac OS X.</a>" All you have to do is download the file he provides, unzip it into your <code>~/Library/Dictionaries</code> folder (or create that folder and unzip it in there) and you'll be able to use the built-in OS X "Dictionary" application to search for Ruby module names, classes, and methods.</p>
<p>It is also possible to have Spotlight bring up entries from this dictionary too by going in to Dictionary's preferences and dragging the new Ruby dictionary to the top of the priority list. If you have turned off the Dictionary option in Spotlight, you'd need to turn that back on too.</p>
<p><img src="/assets/2009/02/dictionary-mv.png" width="233" height="172" alt="dictionary-mv.png" style="float:right; margin-bottom:12px; margin-left:12px;">The documentation Priit has used appears to be 1.9.1's <em>(Update: Priit claims it's 1.8.6, but mine includes <code>String#each_char</code> which isn't in my 1.8.6..).</em> It has some flaws in that navigating from a method back up to a class is tricky, but it's a promising start, and Priit says he'll open source the code he used to produce the dictionaries in due course. He has also produced <a href="http://www.priithaamer.com/blog/ruby-on-rails-dictionary-for-macosx">a Rails dictionary</a> that works in the same way.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Trejkaz</strong> &middot; <time datetime="2009-02-09T11:21:00+00:00">February 9, 2009 at 11:21 am</time></p>
      <p>Now if it could just interact with gem server...</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
