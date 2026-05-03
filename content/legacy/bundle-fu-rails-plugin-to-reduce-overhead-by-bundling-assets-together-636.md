---
title: 'Bundle-Fu: Rails plugin to reduce overhead by bundling assets together'
date: '2007-10-29'
author: Peter Cooper
author_slug: admin
post_id: 636
slug: bundle-fu-rails-plugin-to-reduce-overhead-by-bundling-assets-together-636
url: "/bundle-fu-rails-plugin-to-reduce-overhead-by-bundling-assets-together-636.html"
categories:
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2007/10/bundle-fu.jpg" height="174" width="335" border="1" hspace="4" vspace="4" alt="Bundle-Fu"><br>
<a href="http://code.google.com/p/bundle-fu/">Bundle-Fu</a> is a new plugin by Tim Harper that can bundle CSS and JavaScript content from separate files into one file each automatically to reduce the amount of &lt;scrip&gt; and &lt;link&gt; includes required on the pages within your Rails applications.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Christian Hellsten</strong> &middot; <time datetime="2007-10-29T07:36:00+00:00">October 29, 2007 at 7:36 am</time></p>
      <p>A similar feature was added to Rails 8 months ago: <a href="http://dev.rubyonrails.org/changeset/6164" rel="nofollow">http://dev.rubyonrails.org/changeset/6164</a> </p><p>javascript_include_tag :all, :cache =&gt; true<br>
stylesheet_link_tag :all, :cache =&gt; true</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Saxon</strong> &middot; <time datetime="2007-10-29T14:17:00+00:00">October 29, 2007 at 2:17 pm</time></p>
      <p>Good, I was worried about the amount of  links in my code. :)</p><p>On a more relevant note, didn't I hear DHH say something like this was going to be included in Rails 2.0 at Railsconf?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Saxon</strong> &middot; <time datetime="2007-10-29T14:18:00+00:00">October 29, 2007 at 2:18 pm</time></p>
      <p>That should read "amount of \ links".</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Saxon</strong> &middot; <time datetime="2007-10-29T14:20:00+00:00">October 29, 2007 at 2:20 pm</time></p>
      <p>Oh bloody hell. One more try then I'll stop embarrassing myself: &gt;scrip&lt;</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
