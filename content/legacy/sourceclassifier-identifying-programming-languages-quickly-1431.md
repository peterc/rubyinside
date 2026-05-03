---
title: 'SourceClassifier: Identifying Programming Languages Quickly'
date: '2009-01-05'
author: Peter Cooper
author_slug: admin
post_id: 1431
slug: sourceclassifier-identifying-programming-languages-quickly-1431
url: "/sourceclassifier-identifying-programming-languages-quickly-1431.html"
categories:
- tools
---

{{< rawhtml >}}
<p>If you're developing a <a href="http://snippets.dzone.com/">snippets</a> or <a href="http://pastie.org/">pastie</a>-type system or another form of CMS where source code might be stored, it'd be incredibly useful to automatically detect what language a provided source is in so that you can style it appropriately.</p>
<p>Chris Lowis' <a href="http://blog.chrislowis.co.uk/2009/01/04/identify-programming-languages-with-source-classifier.html">SourceClassifier</a> (or <a href="http://github.com/chrislo/sourceclassifier/tree/master">Github repo</a>) library does just that, using a Bayesian classifier trained on source code from the <a href="http://shootout.alioth.debian.org/">Alioth Shootouts</a>. Out of the box it has support for C, Java, JavaScript, Perl, Python and Ruby, but you can train it to recognize others (CSS and HTML seem like notable omissions to me).</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Ray</strong> &middot; <time datetime="2009-01-05T16:49:00+00:00">January 5, 2009 at 4:49 pm</time></p>
      <p>CSS and HTML are omitted because they aren't programming languages.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-01-05T16:50:00+00:00">January 5, 2009 at 4:50 pm</time></p>
      <p>Strictly true, but for many of the places you'd use something like SourceClassifier - like a pastie site - CSS and HTML are considered "languages" (or at least have their own formatting conventions) in a pragmatic sense.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2009-01-05T17:07:00+00:00">January 5, 2009 at 5:07 pm</time></p>
      <p>Thanks for the mention Peter! Good point about HTML and CSS, they certainly fit the use case for the gem - even if they're not, as pointed out, programming languages. </p><p>I think csszengarden is a good corpus for css files, and I'll try to find a suitable one for HTML, maybe I'll stick to semantically correct/valid XHTML for simplicity! Good suggestion, I'll add these to v0.3 of the gem.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>BJ</strong> &middot; <time datetime="2009-01-05T17:34:00+00:00">January 5, 2009 at 5:34 pm</time></p>
      <p>Seems odd that PHP isn't on the list since it is one of the most ubiquitous web languages out there. Great resource though, keep it up.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Apostlion</strong> &middot; <time datetime="2009-01-05T17:57:00+00:00">January 5, 2009 at 5:57 pm</time></p>
      <p>Bayesian classifier can be cool enough for languages that are more-or-less syntax identical (LISP varieties or, say, Python and Ruby), but is the real-world performance really trivial in this case?</p><p>I'm pretty sure a rule-based pre-filter would do a pretty good job to sort out main syntax families, to be then rammed with a Bayesian approach.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>railsjedi</strong> &middot; <time datetime="2009-01-06T00:33:00+00:00">January 6, 2009 at 12:33 am</time></p>
      <p>Needs to be added to gist.github.com stat! Looking forward to it</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2009-01-06T19:09:00+00:00">January 6, 2009 at 7:09 pm</time></p>
      <p>Thanks for all your comments. I've updated the gem to recognise PHP and CSS (trained on examples from csszengarden.com). I'm still looking for a suitable corpus of valid (X)HTML.</p><p>@railsjedi - that'd be great! </p><p>@Apostlion - do you mean training performance? Once trained the training file can be kept in memory. Perhaps it'd be useful to run some benchmarks on performance of recognition, I'll add it to the TODO list. Rules-based filters for this task do also exist, however the classifier approach uses a small amount of code and is trivial to extend to new languages. I think both approaches have their merits.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Apostlion</strong> &middot; <time datetime="2009-01-15T11:06:00+00:00">January 15, 2009 at 11:06 am</time></p>
      <p>@Chris -</p><p>I wasn't exactly referring to performance, more like training material bias. Say, (for a trivial example), that a Shootout Python scripts were mostly written by a structural programming fan, and Ruby scripts were mostly written by a functional programming fan.</p><p>Then, the Bayesian classifier may assume that, say, if...else construct is a Python give-away, while lambda is a Ruby construct — even though both obviously are present in both languages, and downplay the ‘real’ differences — such as ubiquitous end's in Ruby scripts.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
