---
title: What’s Hot on Github – October 2008
date: '2008-10-30'
author: Zach Inglis
author_slug: zach
post_id: 1246
slug: whats-hot-on-github-october-2008-1246
url: "/whats-hot-on-github-october-2008-1246.html"
categories:
- compilations
- cool
- elsewhere
---

{{< rawhtml >}}
<p><img style="12px" src="/assets/2008/08/github.png" alt="GitHub Logo" width="172" height="76"><em><strong>What's Hot on <a href="http://www.github.com">Github</a></strong></em> is a monthly post highlighting interesting projects that are new or updated this month, within the Ruby community that are hosted on Github. Github has become an extremely popular place for Ruby and Rails developers to congregate lately, so I wanted to list some of the new projects, and some of the updated ones, that I have found interesting and that are too small for their own blog post.</p>
<h3>This month's picks:</h3>
<ul>
<li>
<a href="http://github.com/entp/seinfeld"><strong>seinfield</strong></a> - Track your open-source contributions with Github.</li>
<li>
<a href="http://github.com/listrophy/suprails"><strong>suprails</strong></a> - A funky new substitute for the "rails" command.</li>
<li>
<a href="http://github.com/tenderlove/nokogiri"><strong>nokogiri</strong></a> - A hpricot alternative that boasts better speed.</li>
<li>
<a href="http://github.com/entp/astrotrain"><strong>astrotrain</strong></a> - "Scans incoming emails for mapped recipients and sends an HTTP POST somewhere."</li>
<li>
<a href="http://github.com/tkadom/friendly_id/"><strong>friendly_id</strong></a> - "monkey patched friendly_id that allows for a larger number of duplicate slugs". Includes remembering past slugs.</li>
<li>
<a href="http://github.com/gisikw/acts_as_sayable/"><strong>acts_as_sayable</strong></a> - "Rails plugin to provide text2speech functionality over models."</li>
<li>
<a href="http://github.com/planetargon/flash-message-conductor/"><strong>flash-message-conductor</strong></a> - A simple pattern for managing flash messages in your Ruby on Rails application.</li>
<li>
<a href="http://github.com/justinfrench/formtastic/"><strong>formtastic</strong></a> - A Rails Form Builder with semantically rich and accessible markup.</li>
</ul>
<p>A special thanks this month goes to the <a href="http://www.railsrumble.com">Rails Rumble</a> team as they made some great suggestions based on what people had used for their applications.</p>
<p>Have any projects to add or want to recommend a project for next month's post? Please leave a comment.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Bradley Grzesiak</strong> &middot; <time datetime="2008-10-30T15:21:00+00:00">October 30, 2008 at 3:21 pm</time></p>
      <p>Hey Zach... thanks for the props to suprails. I'll be trying to rectify Github and RubyForge repositories so that installation is as simple as 'gem install suprails', yet development remains on github.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ben Johnson</strong> &middot; <time datetime="2008-10-30T15:30:00+00:00">October 30, 2008 at 3:30 pm</time></p>
      <p>Great post. I recently released a couple of libraries myself, maybe they are worthy of making this list.</p><p><a href="http://github.com/binarylogic/authgasm" rel="nofollow">http://github.com/binarylogic/authgasm</a></p><p><a href="http://github.com/binarylogic/searchgasm/tree/master" rel="nofollow">http://github.com/binarylogic/searchgasm/tree/master</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeremy</strong> &middot; <time datetime="2008-10-30T15:33:00+00:00">October 30, 2008 at 3:33 pm</time></p>
      <p>I found nokogiri just yesterday.  Totally going to replace a good number of libs I'm using for stuff right now.  I'm also looking at formtastic to replace our current ghetto form maker, but I'm not sure.  We may just steal some ideas! :P</p><p>Sorry to continue the self-promotion train here, but it seems like the suprails guy and I scratched the same itch at the same time, eh? :)  I personally prefer my approach a little better (multiple templates, more powerful syntax, etc.), but they're both worth tools!</p><p><a href="http://www.github.com/jeremymcanally/rg" rel="nofollow">http://www.github.com/jeremymcanally/rg</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Robby Russell</strong> &middot; <time datetime="2008-10-30T15:58:00+00:00">October 30, 2008 at 3:58 pm</time></p>
      <p>Thanks for mentioning our little plugin, Flash Message Conductor. We've been this pattern for quite some time and eventually decided to put it into a plugin. We're aiming to release more patterns like this that can be crafted into plugins.</p><p>Here is the introduction blog post for it.</p><p>* <a href="http://www.robbyonrails.com/articles/2008/08/29/flash-message-conductor" rel="nofollow">http://www.robbyonrails.com/articles/2008/08/29/flash-message-conductor</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Phil</strong> &middot; <time datetime="2008-10-30T16:13:00+00:00">October 30, 2008 at 4:13 pm</time></p>
      <p>FYI, Nokogiri ends in an I, not an L. It's named after a Japanese hand saw. It's actually also a libxml-ruby replacement as it binds directly to the C libxml library.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>_rs</strong> &middot; <time datetime="2008-10-30T19:13:00+00:00">October 30, 2008 at 7:13 pm</time></p>
      <p>Nice work Brad, looking forward to suprails. Great idea by the way.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Justin French</strong> &middot; <time datetime="2008-10-30T23:58:00+00:00">October 30, 2008 at 11:58 pm</time></p>
      <p>Thanks for the Formtastic mention, even if the link was to a fork instead of the real deal!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Zach Inglis</strong> &middot; <time datetime="2008-10-31T10:37:00+00:00">October 31, 2008 at 10:37 am</time></p>
      <p>@Phil: Thank you. I updated it to the correct spelling.<br>
@Justin: That was not intentional. I have updated it to use your repo.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Cristi Balan</strong> &middot; <time datetime="2008-10-31T14:41:00+00:00">October 31, 2008 at 2:41 pm</time></p>
      <p>Ha!</p><p>So that was the reason I got all those watchers out of the blue on my unknown fork. I was starting to assume there's a bug in github.</p><p>Sorry for stealing them Justin :/</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Norman Clarke</strong> &middot; <time datetime="2008-10-31T19:55:00+00:00">October 31, 2008 at 7:55 pm</time></p>
      <p>Thanks a lot for the mention! I've just updated the main friendly_id repo to include the functionality from the fork you linked to. The main repo also has several other updates that haven't been applied to that fork, so depending on your needs you may want to check out the original at:</p><p><a href="http://github.com/norman/friendly_id/tree/master" rel="nofollow">http://github.com/norman/friendly_id/tree/master</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
