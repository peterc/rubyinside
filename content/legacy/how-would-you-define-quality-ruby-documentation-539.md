---
title: How would you define “quality” Ruby documentation?
date: '2007-06-24'
author: Peter Cooper
author_slug: admin
post_id: 539
slug: how-would-you-define-quality-ruby-documentation-539
url: "/how-would-you-define-quality-ruby-documentation-539.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p>This is a call for help and opinions! One of our finest needs your input..</p>
<p>Jeremy McAnally (a.k.a. Mr. Neighborly), author of the fine <a href="http://www.infoq.com/minibooks/ruby/">Mr. Neighborly's Humble Little Ruby Book</a>, is busy working on his Google Summer Of Code project, <a href="http://dcov.rubyforge.org/">dcov</a>, a Ruby documentation analyzer. Some aspects of developing <em>dcov</em> are easy (such as reporting or basic coverage analysis), but Jeremy's having problems when trying to work out how to analyze the <em>quality</em> of documentation.. so <a href="http://blog.mrneighborly.com/2007/06/thoughts-on-documentation-quality.html">he's looking for input</a>:</p>
<blockquote>
<p>The first part of the analysis is quantity: is something documented? Right now, this works famously: it can give you a precise precentage of your functional unit documentation coverage. This is easy, of course, because all it has to do is check for the presence of a comment. The second part is quality, and that's where the analysis gets a little hairy.</p>
<p>There are no documentation standards for Ruby/Rails really (I'm working on an entry on this...so bear with me), and so I'm sort of left to my own devices when analyzing quality. The plan is to allow users to write their own analyzers and thus let them create their own quality standards, but it would be nice to include a "default" quality analyzer. The problem though is not what it should do, but how?</p>
</blockquote>
<p>Head over to <a href="http://blog.mrneighborly.com/2007/06/thoughts-on-documentation-quality.html">his plea for help</a> for more info, or leave comments here at Ruby Inside.. he'll be reading. If Jeremy finishes <em>dcov</em>, it could become an essential tool for analyzing and improving documentation standards in the Ruby community (something I have seen complaints about from Ruby newcomers), and it might be your ideas that help it happen.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>matt</strong> &middot; <time datetime="2007-06-25T21:15:00+00:00">June 25, 2007 at 9:15 pm</time></p>
      <p>Great project and article!</p><p>I think the biggest area for improvement in Ruby documentation is the ability for users to discuss and add additional examples.  Normally I don't have anything too nice to say about PHP, but the php.net docs with user comments can be really helpful... some of the stuff users submit is aweful, but often the comments address holes in the docs.  </p><p>From time to time as new PHP versions are released, the official docs are updated to make the user comments obsolete.  And over time there has been tremendous steady improvement to the docs.  </p><p>It would be great to have this kind of thing built right into rdoc, where user comments get posted to pastie or to a wiki somewhere so that they can be viewed inline with the rdoc and also coalesced into future documentation.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
