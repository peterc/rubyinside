---
title: 'Sprockets: A Ruby-powered JavaScript dependency library from 37signals'
date: '2009-02-20'
author: Matthew Lang
author_slug: mlang
post_id: 1520
slug: sprockets-a-ruby-powered-javascript-dependency-library-from-37signals-1520
url: "/sprockets-a-ruby-powered-javascript-dependency-library-from-37signals-1520.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><span><a href="http://getsprockets.org"><img style="float: left; margin: 0px 12px 12px 0px;" src="/assets/2009/02/244-sprockets.png" alt="" width="127" height="101"></a>Managing and organizing multiple JavaScript files in your Rails applications can be a real pain, especially when it comes to deploying your application and you need to minimize those JavaScript files down for better application performance.</span></p>
<p><span>Enter <a href="http://getsprockets.org">Sprockets</a>, the new dependency management and concatenation library from <a href="http://37signals.com">37signals</a> (or, more specifically, Sam Stephenson).  Once installed, Sprockets allows you to organize your application’s JavaScript files into smaller more manageable chunks that can be distributed over a number of directories and files.</span></p>
<p><span>Using directives at the start of each JavaScript file, Sprockets can determines which files your current JavaScript file depends on.  When it comes to deploying your application, Sprockets then uses these directives to turn your multiple JavaScript files into a single file for better performance.</span></p>
<p><span>Sprockets also allows you bundle assets with your JavaScript, as well as allowing you to insert string constants in your JavaScript files, using a YAML file.</span></p>
<p><span>Sprockets is available as a Ruby gem or as a Rails plugin.  The Sprockets source code is also available on <a href="http://github.com/sstephenson/sprockets/tree/master">GitHub</a>.</span></p>
<p><em>Post by <a href="http://matthewlang.co.uk">Matthew Lang</a> - Matthew Lang is an ERP developer with a keen interest in Ruby and Rails programming.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Paul</strong> &middot; <time datetime="2009-02-20T01:45:00+00:00">February 20, 2009 at 1:45 am</time></p>
      <p>It would have been useful some insight about the experience of using the library instead of rewriting the 37s blog entry</p>
    </li>
      <li>
      <p class="comment-meta"><strong>justin</strong> &middot; <time datetime="2009-02-20T05:17:00+00:00">February 20, 2009 at 5:17 am</time></p>
      <p>this is super great, way to go sam yet again</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Henry Krinkle</strong> &middot; <time datetime="2009-02-20T21:33:00+00:00">February 20, 2009 at 9:33 pm</time></p>
      <p>@Paul: Sprockets just came out. How much experience do you expect the Matthew Lang to have acquired at this stage?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>lian</strong> &middot; <time datetime="2009-02-25T00:16:00+00:00">February 25, 2009 at 12:16 am</time></p>
      <p>sprockets looks interesting, sounds alot like a project started last year, execpt the rails part but ruby love aswell: github.com/lian/javascript-bundle ..allways liked the idea of a bundle with most common javascript libraries keept updated and documented. only needs some contributers! ;)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
