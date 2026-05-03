---
title: 'css_dryer: DRY Up Your CSS'
date: '2006-12-17'
author: Peter Cooper
author_slug: admin
post_id: 334
slug: css_dryer-dry-up-your-css-334
url: "/css_dryer-dry-up-your-css-334.html"
categories:
- cool
- elsewhere
- ruby-on-rails
---

{{< rawhtml >}}
<p><a href="http://blog.airbladesoftware.com/2006/12/11/cssdryer-dry-up-your-css">css_dryer</a> is a Rails plugin by Andrew Stewart that makes putting together stylesheets for your Rails applications more efficient than ever before. It supports nesting and basic variable interpolation. For example, here's an example of nesting:</p>
<pre>div {
  /* comment for div */
  color: green;
  p {
    /* comment for div p */
    color: red;
    b { color: blue; }
  }
}
</pre>
<p>And using variables makes it easy to update constants in your stylesheet:</p>
<pre>&lt;% sleek_grey = '#fefefe' %&gt;
#sidebar { border: 1px solid  &lt;%= sleek_grey %&gt; }
#footer  { footer: 1px dashed &lt;%= sleek_grey %&gt; }
</pre>
<p>Andrew has put together <a href="http://blog.airbladesoftware.com/2006/12/11/cssdryer-dry-up-your-css">some great instructions on how to get it all going here</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Sandro</strong> &middot; <time datetime="2006-12-18T09:18:00+00:00">December 18, 2006 at 9:18 am</time></p>
      <p>Do you know if there is a caching mechanism inside this plugin ? Thank you.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Stewart</strong> &middot; <time datetime="2006-12-18T09:21:00+00:00">December 18, 2006 at 9:21 am</time></p>
      <p>Hi Sandro, there's no caching mechanism at the moment but it's high up on the to-do list.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Stewart</strong> &middot; <time datetime="2007-01-04T17:03:00+00:00">January 4, 2007 at 5:03 pm</time></p>
      <p>Sandro, I've just released an update to the plugin and it now caches stylesheets.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
