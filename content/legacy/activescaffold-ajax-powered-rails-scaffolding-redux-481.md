---
title: 'ActiveScaffold: AJAX-powered Rails scaffolding redux'
date: '2007-05-05'
author: Peter Cooper
author_slug: admin
post_id: 481
slug: activescaffold-ajax-powered-rails-scaffolding-redux-481
url: "/activescaffold-ajax-powered-rails-scaffolding-redux-481.html"
categories:
- cool
- elsewhere
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2007/05/activescaffold-1.jpg" height="219" width="395" border="1" hspace="4" vspace="4" alt="Activescaffold-1"></p>
<p><a href="http://www.ajaxscaffold.com">AjaxScaffold</a> was an early attempt to implement Rails' scaffolding features in an AJAXy way, providing a single-page interface for showing, editing, deleting, and sorting items from your Rails models. <a href="http://www.activescaffold.com/">ActiveScaffold</a> is the newest implementation of the concept, making AjaxScaffold obsolete. It includes RESTful API support, sorting, search, pagination, automatic handling of ActiveRecord associations, along with the features you were used to from AjaxScaffold. It's also guaranteed to work on relatively new versions of Firefox, Internet Explorer, and Safari.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Dan</strong> &middot; <time datetime="2007-05-05T20:44:00+00:00">May 5, 2007 at 8:44 pm</time></p>
      <p>Its good to see the progress of AjaxScafford to ActiveScaffold, especially in how it supports the RESTful features now in Rails.</p><p>I think we're going to see a trend where the client-side AJAX code sits on top of a RESTful API, rather than a special purpose API just for XHR.  Client side code and remote apps should interact and consume the same data in the same way.  It doesn't make sense to have the division common in less recent apps; build your RESTful API and you get both for free.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rebort</strong> &middot; <time datetime="2007-05-06T01:14:00+00:00">May 6, 2007 at 1:14 am</time></p>
      <p>It's a small thing -- but a screenshot depicting plain text passwords in the model/db makes me cringe.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Cameron Singe</strong> &middot; <time datetime="2007-05-06T11:39:00+00:00">May 6, 2007 at 11:39 am</time></p>
      <p>Nice, i think if it does do all, it says, I think i would a real winner then, especially for prototyping and initial development.  Also the passwords in plain text i think is just more for the demo more so then a real life situations.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Richard White</strong> &middot; <time datetime="2007-05-06T22:27:00+00:00">May 6, 2007 at 10:27 pm</time></p>
      <p>@Dan: I agree with you sentiment but I think what's really required for that to take place is a client side framework that can do the things we currently do on the server side (like template generation). There are things like JST, but they aren't integrated into a nice stack that includes prototype+scritaculous</p><p>@Rebort: Good point, I should remove that column at least.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Richard White</strong> &middot; <time datetime="2007-05-10T20:44:00+00:00">May 10, 2007 at 8:44 pm</time></p>
      <p>We went 1.0 today Weee!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Miko</strong> &middot; <time datetime="2007-05-16T07:20:00+00:00">May 16, 2007 at 7:20 am</time></p>
      <p>Here is a new ajax powered free chat <a href="http://chantlive.com" rel="nofollow">http://chantlive.com</a>,<br>
that can be integrated to WordPress.<br>
I hope this help :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
