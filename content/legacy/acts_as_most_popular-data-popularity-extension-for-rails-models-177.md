---
title: 'acts_as_most_popular: Data popularity extension for Rails models'
date: '2006-08-08'
author: Peter Cooper
author_slug: admin
post_id: 177
slug: acts_as_most_popular-data-popularity-extension-for-rails-models-177
url: "/acts_as_most_popular-data-popularity-extension-for-rails-models-177.html"
categories:
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2006/08/aamp.png" height="60" width="312" border="1" hspace="4" vspace="4" alt="Aamp"><span style="font-size:12pt;"><br>
</span><br>
Shane Vitarana, creator of <a href="get-your-rails-application-shown-as-pretty-graphs-148.html">Rails Stats</a>, has released a new plugin, <a href="http://shanesbrain.net/articles/2006/08/04/acts-as-most-popular-rails-plugin">acts_as_most_popular</a>. <em>acts_as_most_popular</em> adds a method for each column in your model's table called <em>most_popular_* </em>that returns an array of the most popular entries within that column. For example, if you have 1000s of users in your user table, <em>User.most_popular_names</em> would return an array with the most popular names, as found in the <em>name</em> column.<br>
<a href="http://shanesbrain.net/articles/2006/08/04/acts-as-most-popular-rails-plugin">Learn more here</a>. This seems like the sort of thing that might eventually be useful as a <a href="http://api.rubyonrails.com/classes/ActiveRecord/Calculations/ClassMethods.html">Calculation</a> of some kind.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Shane Vitarana</strong> &middot; <time datetime="2006-08-08T17:54:00+00:00">August 8, 2006 at 5:54 pm</time></p>
      <p>Good point about this being possibly useful as a Calculation.  Popularity of a data set can also be seen as the mode of the data set in decreasing order.  Calculations already has average, maximum, and minimum, so mode really isn't too much of stretch.  The only hitch is that Calculations currently are only for numerical data.  Thats the reason I made it an Acts As plugin.  But it might be better suited as a Calcualtion.  I'll look into it.  Thanks for the tip!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>BillSaysThis</strong> &middot; <time datetime="2006-08-14T22:02:00+00:00">August 14, 2006 at 10:02 pm</time></p>
      <p>Shane's site seems offline, or at least I've been getting 404s since reading this about five hours ago...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Shane Vitarana</strong> &middot; <time datetime="2006-08-21T22:21:00+00:00">August 21, 2006 at 10:21 pm</time></p>
      <p>Sorry, my server was offline on the 14th due to issues with my ISP.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
