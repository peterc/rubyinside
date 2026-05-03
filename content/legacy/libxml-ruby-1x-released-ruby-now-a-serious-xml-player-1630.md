---
title: 'libxml-ruby 1.x Released: Ruby Now A Serious XML Player'
date: '2009-03-12'
author: Peter Cooper
author_slug: admin
post_id: 1630
slug: libxml-ruby-1x-released-ruby-now-a-serious-xml-player-1630
url: "/libxml-ruby-1x-released-ruby-now-a-serious-xml-player-1630.html"
categories:
- cool
- news
---

{{< rawhtml >}}
<p><img src="/assets/2009/03/xml.gif" width="137" height="42" alt="xml.gif" style="float:right; margin-bottom:12px; margin-left:12px;">Try this:</p>
<pre>
gem install libxml-ruby
</pre>
<p>And prepare to be shocked as you see libxml-ruby 1.1.1 installed (at the time of writing). Yes, <a href="http://cfis.savagexi.com/2009/03/10/libxml-ruby-reaches-1-0">libxml-ruby has, seven years on, made it to version 1</a>! It's a long history involving a lot of people, initially Sean Chittenden, then Trans Onoma, Ross Bamford, Dan Janowski, and now Charlie Savage who has pushed the library to its 1.1.1 state.</p>
<p><a href="http://libxml.rubyforge.org/rdoc/index.html">libxml-ruby</a> is, essentially, a set of bindings to <a href="http://www.xmlsoft.org/">libxml2</a>, a ridiculously fast and complete C-powered XML parser. It passes all 1800 OASIS XML Test Suite tests, it's <a href="http://cfis.savagexi.com/2008/07/16/resurrecting-libxml-ruby">fast</a> (depending on the C library as it does), and, finally, reliable. It's Ruby 1.9.1 compatible too, has <a href="http://libxml.rubyforge.org/rdoc/index.html">great documentation</a> (I love the theme they've used!), a clean API, and strong test coverage. Essentially, it can allow us to consign REXML to the trash can of Ruby history.</p>
<p>Now, if you're perfectly happy with abstractions like Hpricot or Nokogiri (which also uses libxml but handles its bindings separately), libxml-ruby might not be of much immediate use to you. If performance is key though, check it out. libxml-ruby gives you an incredibly powerful and fast "true" XML parsing library at your fingertips, with all of the pains and pleasures that entails.</p>
<p>Congratulations to everyone involved for this significant Ruby milestone. We're in the powerful XML club now.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Adam Meehan</strong> &middot; <time datetime="2009-03-12T01:41:00+00:00">March 12, 2009 at 1:41 am</time></p>
      <p>This is good news. Particularly because I think its the only Ruby XML library to implement bindings for the libxml validations.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Assaf</strong> &middot; <time datetime="2009-03-12T02:54:00+00:00">March 12, 2009 at 2:54 am</time></p>
      <p>The theme is Hanna, by Mislav Marohnić, and worthy of its own post: <a href="http://github.com/mislav/hanna/" rel="nofollow">http://github.com/mislav/hanna/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sean Bowman</strong> &middot; <time datetime="2009-03-12T03:21:00+00:00">March 12, 2009 at 3:21 am</time></p>
      <p>Been using this for a while now.  So much better than ReXML, and since it picked up again, rock solid and easy to use to boot.  Highly recommend taking a look if you haven't already.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2009-03-12T04:08:00+00:00">March 12, 2009 at 4:08 am</time></p>
      <p>Pity. I thought if all the XML libraries sucked that XML itself might die. No such luck apparently.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-03-12T04:14:00+00:00">March 12, 2009 at 4:14 am</time></p>
      <p>@Daniel: Ha ha! Yes, there's very much a "necessary evil" about it all, isn't there?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kevin Nuckolls</strong> &middot; <time datetime="2009-03-12T05:26:00+00:00">March 12, 2009 at 5:26 am</time></p>
      <p>I had a layout that parsed a huge xml file, with REXML it took over 9 seconds to get all the information I needed. Libxml (.8?) handled the job in less than half a second. I was amazed at how much faster it parsed the xpath queries. Finally going 1.x is a big deal IMO.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bart ten Brinke</strong> &middot; <time datetime="2009-03-12T15:06:00+00:00">March 12, 2009 at 3:06 pm</time></p>
      <p>Did you know Rails 2.3 RC2 will have LibXML support? Thanks to some cool guy who made rails bindings for it :)<br>
<a href="http://rails.lighthouseapp.com/projects/8994/tickets/2084-alternative-xml-parsers-support-in-activesupport-for-activeresource" rel="nofollow">http://rails.lighthouseapp.com/projects/8994/tickets/2084-alternative-xml-parsers-support-in-activesupport-for-activeresource</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Phil</strong> &middot; <time datetime="2009-03-12T16:47:00+00:00">March 12, 2009 at 4:47 pm</time></p>
      <p>Are you sure it's actually faster than Nokogiri? I haven't seen any data to suggest this.</p><p>Hopefully in the future they'll be able to restrain themselves from including breaking changes in point-releases; that has blown away my trust in this gem.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charlie</strong> &middot; <time datetime="2009-03-12T16:56:00+00:00">March 12, 2009 at 4:56 pm</time></p>
      <p>@Assaf - Yes, Hanna is great little theme.</p><p>@Bart - Nice, thanks for the heads up.</p><p>@Phil - The breakage was unavoidable to get libxml-ruby into decent shape.  We put in a lot of effort to maintain backwards compatibility (see all the deprecation warnings), but there are a couple of places it wasn't possible (for example, encodings).  Anyway, now that the API has been revamped, it will be stable.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-03-12T17:08:00+00:00">March 12, 2009 at 5:08 pm</time></p>
      <p>I didn't actually say libxml-ruby was faster than Nokogiri, just that Nokogiri provides more of an abstraction. The following sentence about performance is really stressing that libxml-ruby is "at the metal" XML type parsing, not that Nokogiri is monumentally slower. I believe libxml-ruby should be faster than Nokogiri on the tasks that libxml-ruby is well suited for, since Nokogiri provides many abstractions.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Patrick</strong> &middot; <time datetime="2009-03-12T21:45:00+00:00">March 12, 2009 at 9:45 pm</time></p>
      <p>The first time this dropped on my machine, it dropped a broken ruby interpreter in the bin directory of the gem.  Not sure why that happened, but it did, and it broke everything.  Luckily I was able to figure out what happened, but damn that was wild.</p><p>Nokogiri and hpricot appear to be a bit faster in my informal tests.  All in all, I'd say a nice upgrade.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-03-12T23:13:00+00:00">March 12, 2009 at 11:13 pm</time></p>
      <p>Anyone want to put together a reasonable set of benchmarks for all of these libraries? It'd be very interesting. I'd do it, but my history with statistics is very, very bad. I get shouted at for being inaccurate :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charlie</strong> &middot; <time datetime="2009-03-13T01:51:00+00:00">March 13, 2009 at 1:51 am</time></p>
      <p>Since libxml-ruby and Nokogiri both wrap libxml2, their performance should be equivalent.  libxml-ruby might be faster on searching since it uses straight XPath, while Nokogiri uses CSS selectors which it translates to XPath via Ruby code.  But I'd imagine that overhead is negligible.</p><p>The libraries are more similar than different, but from my view:</p><p>* libxml-ruby exposes a greater breadth and depth of libxml2's functionality (encodings, much better error support, validations, parser contexts, etc).</p><p>* Nokogiri offers CSS selectors and follows Hpricot's api so it can be a drop-in replacement.  It also wraps different types of DOM objects as different types of Ruby objects (Element, Comment, CData, etc).</p><p>And Aaron can jump in on the Nokogiri side if I've missed something.</p><p>* libxml-ruby</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aaron Patterson</strong> &middot; <time datetime="2009-03-13T02:53:00+00:00">March 13, 2009 at 2:53 am</time></p>
      <p>CSS to XPath conversions are cached.  The conversion is very fast, but you only pay the conversion price once.  Also, don't forget nokogiri does XPath queries too.</p><p>I'm curious about the encoding and error support.  I don't believe your statement to be true.  Which parser contexts are you talking about?  I don't expose a DOM context because I don't believe that to be necessary.  I do expose Reader, PushParser, and SAX parsing contexts.  You're right about DTD validations at this point though.</p><p>I believe libxml-ruby does not expose a Push Parser, does it?</p><p>Someone should make a checklist, or something.  There are a billion features in libxml2.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aaron Patterson</strong> &middot; <time datetime="2009-03-13T02:58:00+00:00">March 13, 2009 at 2:58 am</time></p>
      <p>@peter, @phil</p><p><a href="http://rubyforge.org/pipermail/libxml-devel/2008-November/001239.html" rel="nofollow">http://rubyforge.org/pipermail/libxml-devel/2008-November/001239.html</a></p><p>Granted, we need a more comprehensive set.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charlie</strong> &middot; <time datetime="2009-03-13T03:56:00+00:00">March 13, 2009 at 3:56 am</time></p>
      <p>Hey Aaron,</p><p>The parser contexts are xmlParserCtxtPtr and htmlParserCtxtPtr, which give low-level access to each parse run (most of the time they are overkill, but ever so often very helpful).  They do provide a nice unified internal api though.  </p><p>Validation - DTD, RelaxNG, XML Schema</p><p>Full namespace support</p><p>Encodings - I went back and aligned the bindings to use libxml2's encoding constants consitently across all apis (libxml2 is a bit inconsistent, I assume based on age of the api).</p><p>Errors - I was looking at ruby_xml_error.c.  Looks like you've gone down a similar path in xml_syntax_error.c (just checked the nokogiri code again)</p><p>And for push parsing, didn't know it existed, so libxml-ruby doesn't expose that.  Have you run into a good use case for that?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aaron Patterson</strong> &middot; <time datetime="2009-03-13T04:10:00+00:00">March 13, 2009 at 4:10 am</time></p>
      <p>@Charlie</p><p>Can you be more specific about namespace support?  Nokogiri handles namespaces as well.</p><p>Ya, the encoding api is definitely not consistent in libxml, it shows with some of the nokogiri bindings.  But we do support it.</p><p>Yes, push parsing is crucial for dealing with never ending documents like XMPP.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
