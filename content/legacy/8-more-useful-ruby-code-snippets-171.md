---
title: 8 More Useful Ruby Code Snippets
date: '2006-08-04'
author: Peter Cooper
author_slug: admin
post_id: 171
slug: 8-more-useful-ruby-code-snippets-171
url: "/8-more-useful-ruby-code-snippets-171.html"
categories:
- elsewhere
- miscellaneous
---

{{< rawhtml >}}
<p><a href="http://www.bigbold.com/snippets/posts/show/2362">Simple "Send Email from Ruby" method</a> - Using Net::SMTP to talk to the local SMTP daemon directly to send mail. Not elegant, but a useful quick hack.</p>
<p><a href="http://bigbold.com/snippets/posts/show/2348">Helper to Display Rails Flashes</a> - A helper method that formalizes and simplifies the displaying of certain flash variables in Rails views.</p>
<p><a href="http://bigbold.com/snippets/posts/show/2338">Rails and Vim</a> - A script to open an entire Rails project in Vim (searches through for models, controllers, etc).</p>
<p><a href="http://bigbold.com/snippets/posts/show/2329">Using Ruby hashes as keyword arguments, with easy defaults</a> - Make your life (and methods!) simpler by merging in a set of default options with the supplied ones.</p>
<p><a href="http://bigbold.com/snippets/posts/show/2265">Ruby daemon library</a> - A useful Daemon module to simplify the creation of daemons in Ruby (the daemons gem may be better for this in the long run though).</p>
<p><a href="http://www.bigbold.com/snippets/posts/show/2234">Wrap Text with a Regular Expression</a> - Wraps text to a specified column width using a single gsub.</p>
<p><a href="http://www.programmingishard.com/posts/show/328">Test Driven LDAP with Ruby</a> - Testing the LDAP client library for Ruby (and your LDAP server!)</p>
<p><a href="http://www.bigbold.com/snippets/posts/show/2368">Ordinals for all Numeric Types</a> - Extending Ruby's numeric types to suffix "st", "rd", "th", etc.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Luke Redpath</strong> &middot; <time datetime="2006-08-04T22:49:00+00:00">August 4, 2006 at 10:49 pm</time></p>
      <p>I'm the author of the 4th snippet (ruby hashes as keyword arguments) - it turns out that Rails has this functionality built in in the form of the reverse_merge function, making my snippet pretty redundant if you are using Rails (though I do prefer the name with_defaults.</p><p>More discussion on this and alternatives can be found on my blog:<br>
<a href="http://www.lukeredpath.co.uk/index.php/2006/07/27/using-ruby-hashes-as-keyword-arguments-with-easy-defaults/" rel="nofollow">http://www.lukeredpath.co.uk/index.php/2006/07/27/using-ruby-hashes-as-keyword-arguments-with-easy-defaults/</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
