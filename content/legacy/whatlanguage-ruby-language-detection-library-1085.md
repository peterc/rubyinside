---
title: 'WhatLanguage: Ruby Library To Detect The Language Of A Text'
date: '2008-08-22'
author: Peter Cooper
author_slug: admin
post_id: 1085
slug: whatlanguage-ruby-language-detection-library-1085
url: "/whatlanguage-ruby-language-detection-library-1085.html"
categories:
- ruby-tricks
---

{{< rawhtml >}}
<p><img style="float:left; margin-right:12px; margin-bottom:12px;" src="/assets/2008/08/difflanguages.jpg" alt="difflanguages.png" width="137" height="118"></p>
<p><a href="http://github.com/peterc/whatlanguage/tree/master">WhatLanguage</a> is a library by Peter Cooper <em>(disclaimer: yes, that's</em> me<em>)</em> that makes it quick and easy to determine what language a supplied text is written in. It's pretty accurate on anything from a short sentence up to several paragraphs in all of the languages supplied with the library (Dutch, English, Farsi, Russian, French, German, Portuguese, Spanish, Pinyin) and adding languages of your own choosing isn't difficult.</p>
<p>The library works by checking for the presence of words with <a href="http://en.wikipedia.org/wiki/Bloom_filter">bloom filters</a> built from dictionaries based upon each source language. We've <a href="bloom-filters-a-powerful-tool-599.html">covered bloom filters on Ruby Inside before</a>, but essentially they're probabilistic data structures based upon hashing a large set of content. They're ideal in situations where you want to check set memberships but the threat of false positives is acceptable in return for significant memory savings (and a 250KB bloom filter is a lot nicer to deal with than a 14MB+ dictionary).</p>
<p>WhatLanguage is <a href="http://github.com/peterc/whatlanguage/tree/master">available from GitHub</a> (and can be installed as a gem from there with <code>gem install peterc-whatlanguage</code>) or from RubyForge with a simpler <code>gem install whatlanguage</code>. Once installed, usage is simple:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">whatlanguage</span><span class="punct">'</span>

<span class="punct">"</span><span class="string">Je suis un homme</span><span class="punct">".</span><span class="ident">language</span>      <span class="comment"># =&gt; :french</span>

<span class="comment"># OR...</span>

<span class="ident">wl</span> <span class="punct">=</span> <span class="constant">WhatLanguage</span><span class="punct">.</span><span class="ident">new</span><span class="punct">(</span><span class="symbol">:all</span><span class="punct">)</span>
<span class="ident">wl</span><span class="punct">.</span><span class="ident">language</span><span class="punct">("</span><span class="string">Je suis un homme</span><span class="punct">")</span>  <span class="comment"># =&gt; :french</span>
<span class="ident">wl</span><span class="punct">.</span><span class="ident">process_text</span><span class="punct">("</span><span class="string">this is a test of whatlanguage's great language detection features</span><span class="punct">")</span>
<span class="comment"># =&gt; {:german=&gt;1, :dutch=&gt;3, :portuguese=&gt;3, :english=&gt;7, :russian=&gt;1, :farsi=&gt;1, :spanish=&gt;3, :french=&gt;2}</span></pre>
<p>I wrote the library initially a year ago but have only just made it available for public use, so if there are unforeseen bugs to fix or things that really need to be added, fork it on GitHub and get playing.</p>
<p class="s"><cite>This post is sponsored by AlphaSights Ltd -</cite> <a href="http://www.alphasights.com/visitors/index.php?page=ruby-on-rails-software-developer">AlphaSights are recruiting.</a> If you're looking for a Ruby on Rails opportunity, can work in <strong>Cambridge, UK</strong> and enjoy the buzz of a brand new well-funded startup then look no further. AlphaSights are recruiting from entry level to senior positions and offer very competitive salaries and a great working environment.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Julien</strong> &middot; <time datetime="2008-08-22T18:51:00+00:00">August 22, 2008 at 6:51 pm</time></p>
      <p>Wonderful tool! I am definetely going to implement this very soon!<br>
Who makes a little Ajax script that, based on an observer loads tha right dictionnary for check spelling?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alex</strong> &middot; <time datetime="2008-08-22T20:09:00+00:00">August 22, 2008 at 8:09 pm</time></p>
      <p>I've installed the gem through github and tries it in irb but I'm getting nil instead of language name!<br>
could you guess where might be the problem?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Bates</strong> &middot; <time datetime="2008-08-22T22:21:00+00:00">August 22, 2008 at 10:21 pm</time></p>
      <p>Very cool.</p><p>Do you know if there's something similar for detecting programming languages? That would be useful for choosing syntax highlighting for example.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris Wanstrath</strong> &middot; <time datetime="2008-08-22T23:43:00+00:00">August 22, 2008 at 11:43 pm</time></p>
      <p>@Ryan We plan on opening the sourcing the one we use on GitHub soon.  It's based on file extension and shebang, along with some custom mappings - pretty simple, but works rather well.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jesse Farmer</strong> &middot; <time datetime="2008-08-23T00:57:00+00:00">August 23, 2008 at 12:57 am</time></p>
      <p>Detecting whole words is inefficient.  You can use n-grams with maybe a few hundred KB of training text (uncompressed).</p><p>You should be able to detect a language using only the first dozen or so letters if you do it right.</p><p>I found this paper online: <a href="http://www.sfs.uni-tuebingen.de/iscl/Theses/kranig.pdf" rel="nofollow">http://www.sfs.uni-tuebingen.de/iscl/Theses/kranig.pdf</a></p><p>Otherwise I recommend reading Manning and Schütze.</p><p>Cheers,<br>
Jesse</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-08-23T08:28:00+00:00">August 23, 2008 at 8:28 am</time></p>
      <p>Detecting whole words isn't inefficient in a general sense when using a bloom filter (of only 250KB size). It might be less efficient than a particularly clever solution - of which there are many - but it's nowhere near the inefficiency of direct dictionary comparison.</p><p>This library also does not compare the whole text if deemed unnecessary. If a particular language has been determined by a wide margin within a certain number of words, processing stops.</p><p>I would encourage anyone who has ideas on making a more efficient version to give it a go though. These are, fortunately, reasonably simple libraries to develop and share due to the lack of API complexity required.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-08-23T12:12:00+00:00">August 23, 2008 at 12:12 pm</time></p>
      <p>More info about that N-gram technique:</p><p><a href="http://tnlessone.wordpress.com/2007/05/13/how-to-detect-which-language-a-text-is-written-in-or-when-science-meets-human/" rel="nofollow">http://tnlessone.wordpress.com/2007/05/13/how-to-detect-which-language-a-text-is-written-in-or-when-science-meets-human/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jesse Farmer</strong> &middot; <time datetime="2008-08-23T15:58:00+00:00">August 23, 2008 at 3:58 pm</time></p>
      <p>Peter,</p><p>Sorry, my inner coder/pedant came out.</p><p>What I'm trying to say is that using whole words isn't really optimal.  Why?  You suffer from a sparsity problem.  </p><p>The probability of seeing even a common word is very small.  This means that you need more training data to get equal coverage.</p><p>Actually, it's worse than that.  If you take the top 100 3-grams in each language you will almost certainly see them all in even a moderately short text.  What's more, the probability that some of those 3-grams appear even at the word level are very good.</p><p>Here's a question to ask: how many 3-grams do you need to see before you're, say, 98% certain of the language?</p><p>Conversely, the probability that a given common word will appear in a text is much smaller and you're much more likely to run into a word you've never seen before.  That unknown word, however, will probably contain an n-gram you've seen before.</p><p>You also run into morphological artifacts.  For example, can WhatLanguage handle pluralization?  Handling that using only full words for identification either requires you have a combinatorially-sized dictionary or you somehow encode the rules of morphology in the program.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-08-23T18:33:00+00:00">August 23, 2008 at 6:33 pm</time></p>
      <p>I see - you mean more an ineffectiveness than an inefficiency.</p><p>I don't disagree with your line of thought - but am surprised that there doesn't appear to be a popular library for this (perhaps there is one, just poorly named or referenced) if it could be that simple.</p><p>I will attempt a few experiments in this area. I am very keen for something like WhatLanguage to be "trainable" from a corpus rather than based on calculated but opaque rulesets. Hopefully it is possible to do this and still get a good set of n-grams. If I can rig up a set of tests, I can then run WhatLanguage against this other technique and see what the difference in accuracy and speed is.</p><p>Now that some people appear to be using WhatLanguage, it would be an interesting (but major) change to its underbelly, but the API could remain intact.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jesse Farmer</strong> &middot; <time datetime="2008-08-23T18:50:00+00:00">August 23, 2008 at 6:50 pm</time></p>
      <p>Peter,</p><p>n-gram based classifiers are trainable.  You build a n-gram profile for each language using something like Good-Turing.  You can limit it to the Top X n-grams for each language (where X = 50, 100, whatever).</p><p>Then, given a piece of text, T, you can calculate P(Languate(T) = English | T) by comparing n-gram distributions.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>grosser</strong> &middot; <time datetime="2008-08-24T18:15:00+00:00">August 24, 2008 at 6:15 pm</time></p>
      <p>Seems good enough to me, will be used to hide Chinese comments from German users and vice versa ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-08-24T21:41:00+00:00">August 24, 2008 at 9:41 pm</time></p>
      <p>A Windows user has reported significant issues with WhatLanguage. Please post if you are a Windows user with issues or if it's working 100% for you.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-08-24T21:42:00+00:00">August 24, 2008 at 9:42 pm</time></p>
      <p>Alex: What were you trying? If it cannot work out the language clearly, you will get nil. This is most common on very short pieces.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Glenn</strong> &middot; <time datetime="2008-08-26T08:27:00+00:00">August 26, 2008 at 8:27 am</time></p>
      <p>Once again, your timing couldn't be better. It'll be going into an app of mine this week :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Automat</strong> &middot; <time datetime="2008-09-02T08:44:00+00:00">September 2, 2008 at 8:44 am</time></p>
      <p>You might want to have a look at: <a href="http://odur.let.rug.nl/~vannoord/TextCat/Demo/textcat.html" rel="nofollow">http://odur.let.rug.nl/~vannoord/TextCat/Demo/textcat.html</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
