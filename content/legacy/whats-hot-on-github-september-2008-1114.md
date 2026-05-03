---
title: What’s Hot on Github – September 2008
date: '2008-09-10'
author: Zach Inglis
author_slug: zach
post_id: 1114
slug: whats-hot-on-github-september-2008-1114
url: "/whats-hot-on-github-september-2008-1114.html"
categories:
- compilations
- cool
- miscellaneous
- tutorials
---

{{< rawhtml >}}
<p><img style="margin: 0px 12px 12px 0px; float: left" src="/assets/2008/08/github.png" alt="GitHub Logo" width="172" height="76"><em><strong>What's Hot on <a href="http://www.github.com">Github</a></strong></em> is a monthly post highlighting new and/or interesting projects within the Ruby community that are hosted on Github. Github has become an extremely popular place for Ruby and Rails developers to congregate lately, so I wanted to list some of the new projects, and some of the updated ones, that I have found interesting and that are too small for their own blog post.</p>
<h4>This month's picks:</h4>
<ul>
<li>
<a href="http://github.com/kevinclark/dust/"><strong>Dust</strong></a> - Tool for finding unused or useless code</li>
<li>
<a href="http://github.com/technoweenie/can_search/"><strong>can_search</strong></a> - Chain named scopes in a search query</li>
<li>
<a href="http://github.com/ymendel/one_inch_punch/"><strong>One inch punch</strong></a> - Time tracking with bash</li>
<li>
<a href="http://github.com/siuying/cardjour/"><strong>Cardjour</strong></a> - Share your vCard over bonjour</li>
<li>
<a href="http://github.com/hashrocket/view_specify/"><strong>view_specify</strong></a> - Auto-generate RSpec view specs by interrogating your existing views</li>
<li>
<a href="http://github.com/schof/spree/"><strong>Spree</strong></a> - An open-source e-commerce application</li>
<li>
<a href="http://github.com/benburkert/randexp/"><strong>randexp</strong></a> - Generate random data from a Regular Expression</li>
<li>
<a href="http://github.com/Shopify/active_shipping/"><strong>active_shipping</strong></a> - Shipping extensions for active_merchant</li>
<li>
<a href="http://github.com/TwP/webby/"><strong>Webby</strong></a> - A lightweight and flexible website management system</li>
<li>
<a href="http://github.com/georgi/shinmun/"><strong>Shinmun</strong></a> - A small and beautiful blogging engine</li>
</ul>
<p><em>Full disclosure: I (Zach) work with the guys who wrote view_specify and we've worked with the people responsible for active_shipping and one_inch_punch.</em></p>
<p>Have any projects to add or want to recommend a project for next month's post? Please leave a comment.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Yossef</strong> &middot; <time datetime="2008-09-10T15:29:00+00:00">September 10, 2008 at 3:29 pm</time></p>
      <p>Full disclosure: I (the author of one_inch_punch) was (probably) told in advance that it would appear on this list, but then I forgot.</p><p>This was a nice surprise.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Zack Murphy</strong> &middot; <time datetime="2008-09-10T17:32:00+00:00">September 10, 2008 at 5:32 pm</time></p>
      <p>Thanks for this, a lot of these look really interesting.</p><p>I recently found can_search myself and it didn't seem that useful. It just introduced what ActiveRecord already has, but in a different way. ActiveRecord lets you search with ranges by default, that functionality is already built in:</p><p>User.find(:all, :conditions =&gt; {:id =&gt; (1..10)})</p><p>You can do that with dates or any range. And chaining scopes is the whole purpose of scopes. If I'm going to write:</p><p>can_search do<br>
scoped_by :forums<br>
end</p><p>Why not just write this myself?</p><p>named_scope :forums, lambda { |f| {:conditions =&gt; {:forum_id =&gt; f}} }</p><p>Just seems kind of pointless. It doesn't seem like it helps me do anything. Maybe I am missing something?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>srb</strong> &middot; <time datetime="2008-09-10T19:14:00+00:00">September 10, 2008 at 7:14 pm</time></p>
      <p>Great column idea.  Any chance you could give this a category of its own so I can easily see all the what's hot on githubs at once?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>José Valim</strong> &middot; <time datetime="2008-09-10T20:59:00+00:00">September 10, 2008 at 8:59 pm</time></p>
      <p>view_specify is really handy!</p><p>And two suggestions for the next post:</p><p><a href="http://github.com/drnic/rails-footnotes/" rel="nofollow">http://github.com/drnic/rails-footnotes/</a><br>
<a href="http://github.com/josevalim/localized_templates/" rel="nofollow">http://github.com/josevalim/localized_templates/</a></p><p>=)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>rick</strong> &middot; <time datetime="2008-09-12T00:06:00+00:00">September 12, 2008 at 12:06 am</time></p>
      <p>Zack: If you look at the actual scopes, they're actually a bit more complex, accepting single models, arrays of models (or ids), or nil objects.</p><p>Still, it's not the most useful plugin.  I mainly like it for the cool date ranges.  There's another similar approach called scope_builder that you might like.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
