---
title: 'Interesting Ruby Tidbits That Don’t Need Separate Posts #30'
date: '2010-04-19'
author: Peter Cooper
author_slug: admin
post_id: 3215
slug: interesting-ruby-tidbits-that-don-t-need-separate-posts-30-3215
url: "/interesting-ruby-tidbits-that-don-t-need-separate-posts-30-3215.html"
categories:
- compilations
- elsewhere
---

{{< rawhtml >}}
<p><img src="/assets/2010/04/rubies2.png" class="alignleft size-thumbnail bordered">The latest installment of our series of roundup posts, covering some of our latest findings in the world of all things Ruby. These items wouldn't make it in as separate posts, but they should be of enough interest to Rubyists generally to make it a worthwhile browse for most readers.</p>
<h3>Camping 2.0 Released</h3>
<p>Back "in the day", a gentleman and scholar called <a href="http://en.wikipedia.org/wiki/Why_the_lucky_stiff">Why The Lucky Stiff</a> built a teeny, tiny webapp framework called <a href="http://camping.rubyforge.org/book.html">Camping</a>. It was like an extremely light mix of Rails and Sinatra, except that Sinatra didn't even exist at the time. In late 2009, <a href="why-the-lucky-stiff-is-missing-2278.html">Why went missing</a> and still hasn't reappeared, but Magnus Holm picked up the torch and has <a href="http://rubyforge.org/pipermail/camping-list/2010-April/001181.html">released Camping 2.0</a>. It retains Camping's original flavor and hardcore spirit (it's only 3072 bytes in size!) but adds Rack support and simpler routes, amongst other things.</p>
<h3>JRuby 1.5.0 RC1 Released</h3>
<p>The JRuby team has <a href="http://www.jruby.org/2010/04/15/jruby-1-5-0-RC1">announced the release of JRuby 1.5.0 release candidate 1</a>. It comes 5 months after JRuby 1.4.0's release and features the most fixes of any of JRuby's development cycles. There are also a handful of new features and improvements, including better Windows and <span class="caps">UNIX</span>-specific support, standard library and RubyGems updates, Rails 3 focused fixes, performance improvements for Ruby-to-Java calls, and <span class="caps">JIT</span> compilation caching.</p>
<h3>Ruby There: Ruby Events Listings</h3>
<p><a href="http://www.rubythere.com/">Ruby There</a> is a new Ruby and Rails events listing site from Scottish Rubyist, Keavy McMinn. You can already submit events of your own or just check out what's coming up. We'll do a full post about it soon once Ruby There's listings have been integrated with Ruby Inside, as we plan to show Ruby event listings on all our pages. As an aside, Keavy is a great Rails developer and is <a href="http://www.minimetre.com/">currently taking on new work.</a></p>
<h3>Isy: Yet Another Ruby Webapp Framework</h3>
<p>Whenever I post about a new Ruby webapp framework on Ruby Inside, I typically get a response or two along the lines of: "Who cares? Yet another Ruby webapp framework? What's wrong with Sinatra and Rails?" Well, if that <em>isn't</em> you, you might be interested in <a href="http://isyruby.wordpress.com/2010/04/11/isy-what-is-it-about/">Isy</a>, a new webapp framework that's component-based and stateful.</p>
<h3>Psych: Event-Based <span class="caps">JSON</span> and <span class="caps">YAML</span> Parsing</h3>
<p>Aaron Patterson (a.k.a. <em>tenderlove</em>) of Nokogiri fame has written a <a href="http://tenderlovemaking.com/2010/04/17/event-based-json-and-yaml-parsing/">blog post about building an event-bsased Twitter stream parser</a> with Ruby 1.9.2 and <a href="http://github.com/tenderlove/psych">Psych</a>. Typically in Ruby, <span class="caps">JSON</span> and <span class="caps">YAML</span> parsing are done in an "immediate" fashion where you pass in the data and you get a Ruby representation back out. Event-based parsing instead uses <em>callbacks</em> to process <span class="caps">JSON</span> and <span class="caps">YAML</span> asynchronously.</p>
<h3>
<span class="caps">PDF</span>::Writer Deprecated - Prawn 1.0 Under Development</h3>
<p><a href="http://wiki.github.com/sandal/prawn/">Prawn</a> is a pure Ruby <span class="caps">PDF</span> generation library that abstracts away a lot of the <span class="caps">PDF</span>-specific nonsense into a form that makes it easy to produce PDFs from Ruby code. Its creator, Gregory Brown, has <a href="http://ruby-pdf.rubyforge.org/pdf-writer/">retired the older <span class="caps">PDF</span>::Writer library</a> in order to focus on the <a href="http://groups.google.com/group/prawn-ruby/browse_thread/thread/676ee6da768786c1">development of Prawn 1.0</a>. Gregory is keen to lay down a spec for Prawn 1.0's <span class="caps">API</span> and he's put a draft spec out there for everyone to comment on. If generating PDFs from Ruby is important to you or your app, you might want to get involved in this effort, as Prawn is sure to remain the #1 <span class="caps">PDF</span> generation library available to us for some time.</p>
<h3>For Sale: RubyPlus.org</h3>
<p>Bala Paranj is selling his much-celebrated <a href="http://rubyplus.org/">rubyplus.org</a> Ruby screencasting site. He claims it has 12,000 members and he's selling the site to fund the growth of his Zepho Inc company (which is focusing on a British accent training iPad app). Questions and offers can be directed to Bala at <code>bala.paranj</code> <em>at</em> <code>zepho.com</code>.</p>
<p>While we're in a mercantile mood, perhaps I should also mention I own <code>rubyonrailswebhosting.com</code>, <code>railswebhosting.com</code>, <code>rorhosting.com</code>, <code>railstraining.co.uk</code>, <code>rails-training.co.uk</code>, and <code>ruby-training.co.uk</code>.. and if anyone has any serious or semi-serious offer for any of them (I'm more than happy to sit on them, so it'd have to be worth it), <a href="contact/index.html">contact me</a> (see the <em>Anything else</em> section for my e-mail address).</p>
{{< /rawhtml >}}
