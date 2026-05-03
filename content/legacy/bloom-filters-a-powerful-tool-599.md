---
title: 'Bloom Filters: A Powerful Tool'
date: '2007-09-11'
author: Peter Cooper
author_slug: admin
post_id: 599
slug: bloom-filters-a-powerful-tool-599
url: "/bloom-filters-a-powerful-tool-599.html"
categories:
- cool
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2007/09/gbf.jpg" height="181" width="272" border="1" hspace="4" vspace="4" alt="Gbf"><br>
<em>(credit: </em><em><a href="http://www.cs.ucla.edu/~rlaufer/gbf/">image source</a></em><em>)</em></p>
<p><a href="http://blog.rapleaf.com/dev/?p=6">BloomFilter</a> is a new Ruby library (available as a gem - <em>gem install bloomfilter</em>) by Bryan Duxbury that provides operations to create and query "<a href="http://en.wikipedia.org/wiki/Bloom_filter">bloom filters</a>", an extremely space-efficient "probablistic data structure" that makes it quick and easy to test set membership. This all sounds incredibly geeky and uninteresting until you discover how bloom filters can be used to make things like ultra-fast, low-overhead spell checkers, <a href="http://thespamdiaries.blogspot.com/2006/01/spam-filtering-via-modified-bloom.html">spam filters</a>, stop word removers, and other tools that require checking two sets of data against each other. Bryan's use for bloom filters (and BloomFilter) was to search a big list of 500 million hashes against a set of 40 million hashes. Given the size of each hash, coupled with the large quantity, a major, memory hungry task was looming. Bloom filters enabled the task to reduce from a 20 day running time to just 8 hours.</p>
<p>BloomFilter is partially influenced and based on a library I wrote a couple of months ago called <a href="http://snippets.dzone.com/posts/show/4235">BloominSimple</a> (not available as a gem, but the code is simple). In my case I wrote BloominSimple to perform super-fast stop word removal (removing short, meaningless words from content). Using a "traditional" array based technique proved too slow on large collections of text, but with a bloom filter solution the time was reduced by an order of magnitude. Another library called <a href="http://vald.x0.com/sb/">sBloomFilter</a> that uses C is also available, although I'm unfamiliar with its feature set.</p>
<p>Bloom filters are useful to have in your programming arsenal, so if you're not already familiar with them, there might be a way to significantly improve performance on some of your heavier comparison routines.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Johan Tam</strong> &middot; <time datetime="2007-09-13T00:32:00+00:00">September 13, 2007 at 12:32 am</time></p>
      <p>It sounds awesome. Maybe I will try when time's right.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sarge</strong> &middot; <time datetime="2007-09-24T11:42:00+00:00">September 24, 2007 at 11:42 am</time></p>
      <p>It is a very simple algorithm. In the image, s is the string, g's are some hashing functions whose output is a bit position in the array.</p><p>insertion -<br>
s is passed to all the g's and their output is marked as 1 in the array</p><p>searching<br>
s is passed to all the g's and their output position is queried. If all the positions have 1, then the string was inserted once, and is a positive.</p><p>Disadvantage is false positives, if many strings are inserted, some of combined the 1's may represent a string not yet inserted.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
