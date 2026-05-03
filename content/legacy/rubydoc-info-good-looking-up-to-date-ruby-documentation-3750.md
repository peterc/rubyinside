---
title: 'RubyDoc.info: Good Looking, Up-To-Date Ruby Documentation'
date: '2010-08-30'
author: Peter Cooper
author_slug: admin
post_id: 3750
slug: rubydoc-info-good-looking-up-to-date-ruby-documentation-3750
url: "/rubydoc-info-good-looking-up-to-date-ruby-documentation-3750.html"
categories:
- news
- reference
---

{{< rawhtml >}}
<p><a href="http://rubydoc.info/"><img src="/assets/2010/08/00012.png" alt="" title="0001" width="460" height="347" class="alignnone size-full wp-image-3751"></a></p>
<p><a href="http://rubydoc.info/">RubyDoc.info</a> is a new, automatically updated Ruby documentation site by Loren Segal and Nick Plante that builds upon their earlier success with <em>rdoc.info</em> (which <a href="publish-your-ruby-documentation-on-github-with-rdocinfo-1844.html">we posted about in 2009</a>). It's powered by <a href="http://github.com/lsegal/yard">YARD</a>, a tool that puts out great looking Ruby documentation (there'll be more about YARD in a post later this week).</p>
<p>RubyDoc.info automatically generates documentation for all gems on <a href="http://rubygems.org/">rubygems.org</a> (it updates its index once per day) but it does GitHub-hosted projects too. For RubyDoc.info to automatically update with documentation for your Ruby-related GitHub project, use the "Add Project" link on RubyDoc.info and then add <code>http://rubydoc.info/checkout</code> as one of your post-commit hook URLs in your repository's settings - on each future commit, your latest documentation will be built on RubyDoc.info.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jonathan Rochkind</strong> &middot; <time datetime="2010-08-31T02:17:00+00:00">August 31, 2010 at 2:17 am</time></p>
      <p>How is this different/better than rdoc.info? Is it the new rdoc.info? Is there any reason to use rdoc.info anymore?  Curious why this wasn't just a new version of rdoc.info.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-08-31T02:46:00+00:00">August 31, 2010 at 2:46 am</time></p>
      <p>It's basically rdoc.info. I'm not sure why they haven't 301 redirected it but it's the same stuff. rubydoc.info is the new name, though. This might be to get away from the RDoc association a little.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>pete</strong> &middot; <time datetime="2010-08-31T19:04:00+00:00">August 31, 2010 at 7:04 pm</time></p>
      <p>@Jonathan Rochkind, Peter Cooper:</p><p>AFAIK, rdoc.info didn't support gems (only github projects), and had a much different look than the new rubydoc.info. I'd check out rdoc.info to make sure, but both look like they're down right now.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>robgleeson</strong> &middot; <time datetime="2010-08-31T19:58:00+00:00">August 31, 2010 at 7:58 pm</time></p>
      <p>Let the YARD revolution begin!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tom Myer</strong> &middot; <time datetime="2010-09-01T10:03:00+00:00">September 1, 2010 at 10:03 am</time></p>
      <p>wow - basically I think it´s much easier to navigate and better structured!! looks great, 1000 x thanks for it!!!!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Grimm</strong> &middot; <time datetime="2010-09-05T22:59:00+00:00">September 5, 2010 at 10:59 pm</time></p>
      <p>Is it just me, or has Peter slashdotted the web site?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeem</strong> &middot; <time datetime="2010-09-16T07:25:00+00:00">September 16, 2010 at 7:25 am</time></p>
      <p>I know the source for methods is available but it'd be nice if source for the entire .rb file was able from within rDoc.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
