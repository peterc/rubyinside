---
title: 'Classifier Gem: Bayesian and LSI Classification for Ruby'
date: '2007-05-24'
author: Hendy Irawan
author_slug: hendy-irawan
post_id: 507
slug: classifier-gem-bayesian-and-lsi-classification-for-ruby-507
url: "/classifier-gem-bayesian-and-lsi-classification-for-ruby-507.html"
categories:
- cool
- elsewhere
- miscellaneous
- nonsense
- tutorials
---

{{< rawhtml >}}
<p><a href="http://classifier.rubyforge.org/">Classifier</a> is a Ruby gem developed by <a href="http://rufy.com/">Lucas Carlson</a> and David Fayram II to allow <a href="http://en.wikipedia.org/wiki/Naive_Bayes_classifier">Bayesian</a> and other types of classifications, including <a href="http://www.c2.com/cgi/wiki?LatentSemanticIndexing">Latent Semantic Indexing</a>.</p>
<p>Bayes classifier is a probabilistic algorithm which apply <a title="Bayesian refers to methods in probability and statistics named after the Reverend Thomas Bayes (ca. 1702–1761)" href="http://en.wikipedia.org/wiki/Bayes%27_theorem">Bayes’ theorem</a> in order to learn the underlying probability distribution of the data. One popular use for this is implemented in most <a href="http://en.wikipedia.org/wiki/Bayesian_spam_filtering">spam filtering</a> packages.</p>
<p>It can also be applied to many other cases of machine learning to make your Ruby application more intelligent (the <a title="Latent semantic analysis (LSA) is a technique in natural language processing, in particular in vectorial semantics, of analyzing relationships between a set of documents and the terms they contain by producing a set of concepts related to the documents and terms." href="http://en.wikipedia.org/wiki/Latent_semantic_analysis">complicated implementation</a> is transparently handled for you, thankfully!) <a title="Igvita" href="http://www.igvita.com/">Ilya Grigorik</a> recently <a title="Bayes Classification in Ruby" href="http://www.igvita.com/blog/2007/05/23/bayes-classification-in-ruby/">posted an interesting tutorial on Bayes classification</a>, with an easy-to-follow demonstration on how to use it for distinguishing between funny vs. not funny quotes:</p>
<pre>require 'rubygems'
require 'stemmer'
require 'classifier'

# Load previous classifications
funny     = YAML::load_file('funny.yml')
not_funny = YAML::load_file('not_funny.yml')

# Create our Bayes / LSI classifier
classifier = Classifier::Bayes.new('Funny', 'Not Funny')

# Train the classifier
not_funny.each { |boo| classifier.train_not_funny boo }
funny.each { |good_one| classifier.train_funny good_one }

# Let's classify some new quotes
puts classifier.classify "Peter: A boat's a boat but a box could be anything! It could even be a boat!"
puts classifier.classify "Stewie: Damn you ice cream, come to my mouth! How dare you disobey me!"
puts classifier.classify "Brian: I could take my sweater off too, but I think it's attached to my skin. "
puts classifier.classify "Peter: Hey, anybody got a quarter? Bill Gates: What's a quarter? "
puts classifier.classify "Peter: I had such a crush on her. Until I met you Lois. You're my silver medal. "
puts classifier.classify "Meg: Excuse me, Mayor West? Adam West: How do you know my language? "
puts classifier.classify "Meg: You could kill all the girls who are prettier than me. Death: Well, that would just leave England. "</pre>
<p><em>Alternatives and other useful resources:</em> <a title="Bayesian Networks for Ruby" href="http://bn4r.rubyforge.org/">bn4r</a> (<a title="Bayesian Networks for Ruby release 0.9" href="http://spejman-on-rails.blogspot.com/2007/01/bayesian-networks-for-ruby-release-09.html">article</a>), <a title="Bayesian classifier library for the Ruby programming language" href="http://bishop.rubyforge.org/">Bishop</a>, <a href="http://research.microsoft.com/dtas/msbn/default.htm">Microsoft Belief Network</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Helder</strong> &middot; <time datetime="2007-05-24T17:12:00+00:00">May 24, 2007 at 5:12 pm</time></p>
      <p>bn4r (Bayesian Networks for Ruby) recently joined forces with sbn (Simple Bayesian Networks), as they are very similar projects. The result will be hosted at <a href="http://rubyforge.org/projects/sbn4r/" rel="nofollow">http://rubyforge.org/projects/sbn4r/</a> .</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hendy Irawan</strong> &middot; <time datetime="2007-05-25T14:09:00+00:00">May 25, 2007 at 2:09 pm</time></p>
      <p>Dear Helder Ribeiro,</p><p>Thank you so much for your update.</p><p>And good luck for your Firewatir-Gen Google Summer of Code challenge! :-) Keep rocking!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Surendra Singhi</strong> &middot; <time datetime="2007-05-28T10:00:00+00:00">May 28, 2007 at 10:00 am</time></p>
      <p>There is also this clusterer gem <a href="http://rubyforge.org/projects/clusterer/" rel="nofollow">http://rubyforge.org/projects/clusterer/</a>, which has various types of Bayesian Classifier + clustering algorithms + LSI + many different stemming alternatives, though I admit its currently not very well documented. <a href="http://cuttingtheredtape.blogspot.com/2007/03/clusterer-other-plugins.html" rel="nofollow">http://cuttingtheredtape.blogspot.com/2007/03/clusterer-other-plugins.html</a>.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hendy Irawan</strong> &middot; <time datetime="2007-05-29T02:56:00+00:00">May 29, 2007 at 2:56 am</time></p>
      <p>Dear Surendra Singhi,</p><p>Thank you for your information. It surely is very useful!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
