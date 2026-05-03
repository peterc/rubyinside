---
title: 'libxml-ruby 0.8.0 Released: Ruby Gets Fast, Reliable XML Processing At Last'
date: '2008-07-17'
author: Peter Cooper
author_slug: admin
post_id: 955
slug: ruby-xml-crisis-over-libxml-0-8-0-released-955
url: "/ruby-xml-crisis-over-libxml-0-8-0-released-955.html"
categories:
- cool
- miscellaneous
- news
- tools
- microsoft-windows
---

{{< rawhtml >}}
<p><img src="/assets/2008/07/picture-1.jpg" alt="Picture 1.png" width="264" height="236"></p>
<p>Ruby's is not known for its deftness with XML. On RubyFlow, I considered <a href="http://www.rubyflow.com/items/388">calling the community to arms over it</a>, and solicited twenty responses on what the problem is, and what we could do about it. Robert Fischer was <a href="http://enfranchisedmind.com/blog/2008/05/27/the-status-of-rubys-libxml/">lamenting on the state of Ruby's libxml library</a>, and <a href="http://enfranchisedmind.com/blog/2008/03/24/rexml-dynamic-typing-lose/">didn't seem to like REXML much</a> either. Tim Bray has also <a href="http://www.tbray.org/ongoing/When/200x/2008/06/10/RX-Work">had a few complaints</a> about REXML. It seemed there was a problem to be fixed; a gap in the market, as it were, for a decent XML parser for Ruby. <a href="http://code.whytheluckystiff.net/hpricot/">Hpricot</a>, despite really being an HTML parser, would have to get us by in the meantime.</p>
<p>Today, however, <a href="http://libxml.rubyforge.org/">libxml-ruby 0.8.0</a> has been released, and Charlie Savage explains <a href="http://cfis.savagexi.com/articles/2008/07/16/resurrecting-libxml-ruby">why this is such a big deal</a>. <em>libxml-ruby</em> now runs on Windows (thanks to Charlie), doesn't segfault all the time, and the bindings have all been fixed over the past year (thanks to Dan Janowski). You can get going with it right now with a simple <em>gem install libxml-ruby</em></p>
<blockquote>
<p>libxml-ruby is known for its performance, the latest release doesn't disappoint. For a range of simple tasks, libxml clocks in at ten times quicker than Hpricot like-for-like and between 30 and 60 times faster than REXML. Charles adds:</p>
<p>In addition to performance, the libxml-ruby bindings provide impressive coverage of libxml's functionality. Goodies include:</p>
<ul>
<li>SAX</li>
<li>DOM</li>
<li>XMLReader (streaming interface)</li>
<li>XPath</li>
<li>XPointer</li>
<li>XML Schema</li>
<li>DTDs</li>
<li>XSLT (split into the <a href="http://rubyforge.org/projects/libxsl/">libxslt-ruby</a> bindings)</li>
</ul>
</blockquote>
<p>Charles is planning to write a proper tutorial in the next week, covering some of the key features, but suggests referring to <a href="http://libxml.rubyforge.org/rdoc/">the API documentation</a> in the meantime. The test suite (located in the <em>test</em> directory that comes with libxml-ruby) also looks like a great resource for code examples; very clean and straightforward. If you have any libxml-ruby tutorials or resources of your own, please post them in the comments here.</p>
<p>Congratulations to all of those involved in libxml-ruby's long history and especially to Charlie Savage for giving it the finish push to this mature state. Ruby's XML woes are tempered, for now at least.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Don</strong> &middot; <time datetime="2008-07-17T00:51:00+00:00">July 17, 2008 at 12:51 am</time></p>
      <p>You might want to hold off on the upgrade if you use aws-s3 gem, they don't play nice together.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charlie</strong> &middot; <time datetime="2008-07-17T03:57:00+00:00">July 17, 2008 at 3:57 am</time></p>
      <p>Hi Don,</p><p>Hmm, thought we had got that fixed. If you get a chance can you post a bug on RubyForge (<a href="http://rubyforge.org/tracker/?atid=1971&amp;group_id=494&amp;func=browse" rel="nofollow">http://rubyforge.org/tracker/?atid=1971&amp;group_id=494&amp;func=browse</a>)?</p><p>I'll try and see what's up with aws-s3, but since we're not using it, not sure how easy it will be to test.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charlie</strong> &middot; <time datetime="2008-07-17T05:45:00+00:00">July 17, 2008 at 5:45 am</time></p>
      <p>I've verified the aws-s3 error and fixed the issue.  Kudos to the aws-s3 team for inluding a nice test suite complete with mock objects that made it easy to track down.</p><p>Fix is included in libxml 0.8.1 which was just pushed to RubyForge.</p><p>Thanks for the report Don.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dieter</strong> &middot; <time datetime="2008-07-17T06:47:00+00:00">July 17, 2008 at 6:47 am</time></p>
      <p>the API documentation link is broken</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Emm</strong> &middot; <time datetime="2008-07-17T07:33:00+00:00">July 17, 2008 at 7:33 am</time></p>
      <p>The link to the API website is broken (it says http://.). Otherwise, thanks for the posting, very interesting.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>subbu</strong> &middot; <time datetime="2008-07-17T10:05:00+00:00">July 17, 2008 at 10:05 am</time></p>
      <p>I am finding it difficult to install libxml on my Ubuntu. However I was able to install it on my CentOS. Is there a forum to ask this question further? I couldn't find one.</p><p>----------this is what my console says------------------<br>
sudo gem install libxml-ruby<br>
Building native extensions.  This could take a while...<br>
ERROR:  Error installing libxml-ruby:<br>
	ERROR: Failed to build gem native extension.</p><p>/usr/bin/ruby1.8 extconf.rb install libxml-ruby<br>
checking for socket() in -lsocket... no<br>
checking for gethostbyname() in -lnsl... yes<br>
checking for atan() in -lm... no<br>
checking for atan() in -lm... yes<br>
checking for inflate() in -lz... yes<br>
checking for iconv_open() in -liconv... no<br>
checking for libiconv_open() in -liconv... no<br>
checking for libiconv_open() in -llibiconv... no<br>
checking for iconv_open() in -llibiconv... no<br>
checking for iconv_open() in -lc... yes<br>
checking for xmlParseDoc() in -lxml2... no<br>
checking for xmlParseDoc() in -llibxml2... no<br>
checking for xmlParseDoc() in -lxml2... no<br>
*** extconf.rb failed ***<br>
Could not create Makefile due to some reason, probably lack of<br>
necessary libraries and/or headers.  Check the mkmf.log file for more<br>
details.  You may need configuration options.<br>
-<br>
-<br>
-----------------------</p>
    </li>
      <li>
      <p class="comment-meta"><strong>method</strong> &middot; <time datetime="2008-07-17T12:12:00+00:00">July 17, 2008 at 12:12 pm</time></p>
      <p>subbu, make sure you install the libxml headers. If you're on Debian, sudo apt-get install libxml-dev, or else compile and install libxml.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>janfri</strong> &middot; <time datetime="2008-07-17T13:59:00+00:00">July 17, 2008 at 1:59 pm</time></p>
      <p>@subbu: sudo apt-get install libxml2-dev</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Will Green</strong> &middot; <time datetime="2008-07-17T14:51:00+00:00">July 17, 2008 at 2:51 pm</time></p>
      <p>@subbu Like the error message says, you're probably missing some libraries. Looks like you're missing libxml2</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-07-17T15:19:00+00:00">July 17, 2008 at 3:19 pm</time></p>
      <p>Fixed the link. Thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>zerohalo</strong> &middot; <time datetime="2008-07-17T16:29:00+00:00">July 17, 2008 at 4:29 pm</time></p>
      <p>"ibxml-ruby now runs on Windows"</p><p>is that relevant anymore? ;-)</p><p>In all seriousness, this is good news. Thanks, Charlie.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-07-17T18:10:00+00:00">July 17, 2008 at 6:10 pm</time></p>
      <p>Would it be possible to write some bindings between the new libxml-ruby and REXML so old REXML-based code can use it?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charlie</strong> &middot; <time datetime="2008-07-18T02:11:00+00:00">July 18, 2008 at 2:11 am</time></p>
      <p>P</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charlie</strong> &middot; <time datetime="2008-07-18T02:13:00+00:00">July 18, 2008 at 2:13 am</time></p>
      <p>subbu - Report bugs at RubyForge:</p><p><a href="http://rubyforge.org/tracker/?atid=1971&amp;group_id=494&amp;func=browse" rel="nofollow">http://rubyforge.org/tracker/?atid=1971&amp;group_id=494&amp;func=browse</a></p><p>Peter - REXML bindings are definitely possible.   Anyone want to volunteer?  If they pass the REXML test suite (is there one?), then I'd be happy to include them in the distribution.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sebastian</strong> &middot; <time datetime="2008-07-18T06:11:00+00:00">July 18, 2008 at 6:11 am</time></p>
      <p>Just installed libxml-ruby to get a feel for it, and one thing immediately stands out: there's no README file included!</p><p>It may be nit-picky, but I've gotten so used to a friendly README file being included in a gem that I've kind of come to expect it. Libraries near and dear to my heart like Hpricot and Net::SSH both include these.</p><p>Or, in lieu of a readme, I usually expect to be able to generate an RDoc for a library and have some good info right there in index.html.</p><p>Just my 0.02c,<br>
S.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Fred</strong> &middot; <time datetime="2008-07-18T09:44:00+00:00">July 18, 2008 at 9:44 am</time></p>
      <p>That is really good news.</p><p>I have been working with libxml in the past with big xml files, 20mb to 100mb.<br>
To parse the 100mb xml file and save to database was taking like 30 minutes and huge amount of ram.</p><p>Let's see how faster it is now...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>rick</strong> &middot; <time datetime="2008-07-18T16:36:00+00:00">July 18, 2008 at 4:36 pm</time></p>
      <p>Fred: I hope you're using a streaming API for that...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charlie</strong> &middot; <time datetime="2008-07-18T19:03:00+00:00">July 18, 2008 at 7:03 pm</time></p>
      <p>Sebastian - How did you install.  The gem package most definitely includes a readme file and its the main page of the RDocs.</p><p>Fred - Try out the xmlReader class for  a streaming api.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sebastian</strong> &middot; <time datetime="2008-07-18T20:33:00+00:00">July 18, 2008 at 8:33 pm</time></p>
      <p>@Charlie : I just did a regular "gem install libxml-ruby" - maybe I should have specified the version?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charlie</strong> &middot; <time datetime="2008-07-19T19:00:00+00:00">July 19, 2008 at 7:00 pm</time></p>
      <p>Sebastian,</p><p>What you did looks fine.  What version got installed?  And see if the gem directory as README file and a doc directory with RDocs (both should exist). If not, could you submit a bug?   Thanks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sebastian</strong> &middot; <time datetime="2008-07-20T05:16:00+00:00">July 20, 2008 at 5:16 am</time></p>
      <p>@Charlie: hm...this is odd. It says version 0.8.1 was installed?</p><p>I think I found the issue, sorry to raise such a fuzz: I'm using the "gemdoc" shortcut that was posted on RubyInside a while back, and it looks like it's going into a different directory than where the "good" documentation lives. On my Mac, the correct directory that has the files you mentioned is in: </p><p>file:///Library/Ruby/Gems/1.8/gems/libxml-ruby-0.8.1/doc/rdoc/index.html</p><p>But "gemdoc" looks for rdocs in:</p><p>file://localhost/Library/Ruby/Gems/1.8/doc/libxml-ruby-0.8.1/rdoc/index.html</p><p>Sorry for not catching that the first time and raising such a stink!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sebastian</strong> &middot; <time datetime="2008-07-20T05:18:00+00:00">July 20, 2008 at 5:18 am</time></p>
      <p>s/on RubyInside/on RailsEnvy/</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charlie</strong> &middot; <time datetime="2008-07-21T18:21:00+00:00">July 21, 2008 at 6:21 pm</time></p>
      <p>Sebastian - Ah, didn't know about the gemdoc shortcut.  Will have to look into it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Fred</strong> &middot; <time datetime="2008-07-25T20:05:00+00:00">July 25, 2008 at 8:05 pm</time></p>
      <p>Rick: I did use streaming api. maybe not so optimized.</p><p>I just discovered that i was wrong, the memory footprint and the long time to do the job was only due to libxml, but loading the whole XML file and split the elements into arrays, then use libxml to parse each element at a time and save to database...</p><p>it is still a lot faster now even thou my algorithm is the slow culprit. shit...</p><p>hehe</p><p>Thanks for the tips!<br>
and this awesome work on libXML.<br>
it rocks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Fred</strong> &middot; <time datetime="2008-07-25T20:06:00+00:00">July 25, 2008 at 8:06 pm</time></p>
      <p>i mistyped previous post.<br>
replace "was only due to libxml"<br>
with "was not really due to libxml"</p><p>sorry</p>
    </li>
      <li>
      <p class="comment-meta"><strong>austin_web_developer</strong> &middot; <time datetime="2008-08-02T06:46:00+00:00">August 2, 2008 at 6:46 am</time></p>
      <p>Maybe this is just a windows issue, but I had to use<br>
require 'xml/libxml' to get it to work</p><p><a href="http://www.concept47.com/austin_web_developer_blog/ruby/fixing-the-libxml-ruby-gem-error-uninitialized-constant-xml-nameerror/" rel="nofollow">http://www.concept47.com/austin_web_developer_blog/ruby/fixing-the-libxml-ruby-gem-error-uninitialized-constant-xml-nameerror/</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
