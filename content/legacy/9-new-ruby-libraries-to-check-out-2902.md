---
title: 9 New Ruby Libraries To Check Out
date: '2009-12-10'
author: Peter Cooper
author_slug: admin
post_id: 2902
slug: 9-new-ruby-libraries-to-check-out-2902
url: "/9-new-ruby-libraries-to-check-out-2902.html"
categories:
- compilations
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2009/12/love-your-library.png" width="112" height="102" alt="love-your-library.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;">I love checking out new Ruby libraries, and recently many new ones have passed my eyes. The most prominent releases get their own post on Ruby Inside, but often there are less significant libraries that I'd struggle to write 100 words about yet still contribute to Ruby's lifeblood. This post aims to round up a selection of my recent discoveries.</p>
<h3>RConfig - Powerful Ruby configuration management</h3>
<p><a href="http://github.com/rahmal/rconfig">RConfig</a>, by Rahmal Conda, bills itself as a "complete solution for Ruby configuration management" and it certainly has a compelling feature-set. It supports YAML, XML, and properties files (a bit like INI files) and provides a short hand global access to application configurations in both enumeration-based and dot-notation/method forms. It also supports what it calls "overlays" where different configurations can be used within a single app (for different "environments", say). RConfig can be installed as a gem as it's <a href="http://gemcutter.org/gems/rconfig">hosted on Gemcutter</a>.</p>
<h3>Ruby-GMail - A Rubyesque interface to GMail</h3>
<p><a href="http://github.com/dcparker/ruby-gmail">Ruby-GMail</a> is an awesome new library by Daniel Parker that provides significant GMail-specific (Google Mail) functionality within your apps. You can read/retrieve e-mails via IMAP, fully handle attachments, deal with labels, mark items as spam/unread/read, and send e-mails (including MIME messages with images and attachments).</p>
<h3><b>Excelsior - Super fast CSV parsing</b></h3>
<p><a href="http://www.toastyapps.com/excelsior/">Excelsior</a> (<a href="http://github.com/toastyapps/excelsior">GitHub</a>) is a Ruby gem by Matthew Mongeau that binds to some C code that parses CSV (comma delimited) data <i>very</i> quickly. Matthew benchmarked Excelsior against the built in Ruby 1.9 'csv' parser (based on 1.8's FasterCSV) and a 1 million row CSV file was parsed in 4.44 seconds with Excelsior versus 54 seconds for the built-in library. As well as being a useful library, the <a href="http://github.com/toastyapps/excelsior">source</a> is useful to check out if writing a native extension of your own is of interest.</p>
<h3>Linkedin - Ruby Bindings for the LinkedIn API</h3>
<p>If you don't know about it, <a href="http://www.linkedin.com/">LinkedIn</a> is basically a Facebook for business contacts and relationships. You get profiles, can message other people, and build up "connections" with other people (as an aside, if you want to add me - Peter Cooper - on your LinkedIn, <a href="http://uk.linkedin.com/in/petercooper">my profile is here</a>). Wynn Netherland has put together <a href="http://wynnnetherland.com/2009/11/link-linkedin-into-your-next-ruby-application/">a tidy Ruby library to use LinkedIn's new API</a> features. His <a href="http://wynnnetherland.com/2009/11/link-linkedin-into-your-next-ruby-application/">blog post</a> highlights some uses for it.</p>
<h3><b>Ohm - Object-hash mapping library for Redis</b></h3>
<p><a href="http://code.google.com/p/redis/">Redis</a> is one of a growing number of persistent key-value database systems, and <a href="http://ohm.keyvalue.org/">Ohm</a> is a library for storing objects in a Redis database. It was built by Citrusbyte - the team behind the <a href="http://monkrb.com/">Monk</a> Ruby Web development framework. As an aside, <a href="http://ruby.jobamatic.com/a/jbb/job-details/151556">Citrusbyte are looking for a software engineer</a> to work with them in Los Angeles.</p>
<h3>Alchemist - Conversion between units</h3>
<p><a href="http://github.com/toastyapps/alchemist">Alchemist</a> is another library by Matthew Mongeau. It makes it easy to convert between different units - such as from miles to meters or celsius to kelvin with code like <code>8.meters.to.miles</code> or in operations like <code>10.kilometers + 1.mile</code>. It was mentioned in an <a href="ruby-tidbits-29-2780.html">earlier</a> Ruby Inside post but fits in well here too.</p>
<h3>Nanotest - Super lightweight testing</h3>
<p><a href="http://github.com/mynyml/nanotest">Nanotest</a> is, perhaps, the most lightweight testing library available for Rubyists today. Billing itself as "extremely minimal," it provides the bare minimum needed to test code in a constructive manner. When it was mentioned on RubyFlow recently, <a href="http://rubyflow.com/items/3132">Nanotest got quite a bit of flack</a>..</p>
<h3>Savon - "Heavy metal" SOAP client library</h3>
<p>Unlucky enough to need to use <a href="http://en.wikipedia.org/wiki/SOAP">SOAP</a> (Simple Object Access Protocol)? <a href="http://github.com/rubiii/savon">Savon</a> presents a new, intriguing alternative to <a href="http://dev.ctor.org/soap4r">Soap4R</a> (which few people seem to be particularly complimentary about). If your SOAP service is SOAP 1.1 compliant, has a WSDL file, and doesn't need WSSE authentication, you can be calling methods in just two lines of Ruby. You can do a lot more with further tweaks, however (including SOAP 1.2 and WSSE authentication).</p>
<h3>Versionomy - A "version number" library</h3>
<p><a href="http://github.com/dazuma/versionomy">Versionomy</a> by Daniel Azuma is a library that provides tools to represent, manipulate, parse, and compare version numbers in the wide variety of versioning schemes in use. In this sense, think of it as a <a href="chronic-natural-date-parsing-for-ruby-229.html">Chronic</a> for version numbers.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Aslak Hellesøy</strong> &middot; <time datetime="2009-12-10T15:58:00+00:00">December 10, 2009 at 3:58 pm</time></p>
      <p>I love how the CVS lexer is 100 LOC of Ragel. Ragel is so awesome. With a small dose of rake-compiler and MinGW it would be easy to build precompiled binaries for Windows too.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>raggi</strong> &middot; <time datetime="2009-12-10T16:55:00+00:00">December 10, 2009 at 4:55 pm</time></p>
      <p>Not a bad word against Excelsior, but I think slurping 55mb vs. slurping nothing isn't really a fair or honest representation of the relative speeds of the libraries...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>raggi</strong> &middot; <time datetime="2009-12-10T16:59:00+00:00">December 10, 2009 at 4:59 pm</time></p>
      <p>And yeah, ragel is *awesome* :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Richard Conroy</strong> &middot; <time datetime="2009-12-10T17:00:00+00:00">December 10, 2009 at 5:00 pm</time></p>
      <p>If its Ragel, then there are sweet options for getting JRuby support in too. A lot of the early JRuby gem successes (i.e. supporting non-pure ruby gems) came from using Ragel to spit out Java instead of C/C++.</p><p>The early ports of Mongrel &amp; Hpricot were done this way.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>rubiii</strong> &middot; <time datetime="2009-12-10T17:41:00+00:00">December 10, 2009 at 5:41 pm</time></p>
      <p>really nice to see savon linked up here! but i need to make some adjustments to the summary: savon should be soap 1.1 and 1.2 compatible. and it also includes support for wsse authentication. thanks :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rahmal Conda</strong> &middot; <time datetime="2009-12-10T19:16:00+00:00">December 10, 2009 at 7:16 pm</time></p>
      <p>Thanks for the shoutout Peter. I hope the RubyInside community find rconfig useful.  Just a couple things to note:</p><p>Rconfig also supports callbacks for loading configs.  It can be individual configs, or any config.</p><p>  class MyClass<br>
    @@my_config = {}<br>
    RConfig.on_load(:cache) do<br>
      @@my_config = {}<br>
    end<br>
    def my_config<br>
      @@my_config ||=<br>
        expensive_configured_proc(RConfig.cache.memory_limit)<br>
    end<br>
  end</p><p>RConfig Overlays are a way to have environment-specific configs override the default configuration unobtrusively.</p><p>  ...database_production.yml would override database.yml in production env...<br>
  ...database_.yml would override database.yml on ...</p><p>The code is on github at <a href="http://github.com/rahmal/rconfig" rel="nofollow">http://github.com/rahmal/rconfig</a><br>
You can log bugs on Rubyforge: <a href="http://rubyforge.org/projects/rconda-rconfig" rel="nofollow">http://rubyforge.org/projects/rconda-rconfig</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jerod Santo</strong> &middot; <time datetime="2009-12-10T20:19:00+00:00">December 10, 2009 at 8:19 pm</time></p>
      <p>Ruby-Gmail looks like it will fit nicely into my toolbox. Hiding nasty IMAP commands is always welcome.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jaime Iniesta</strong> &middot; <time datetime="2009-12-10T22:17:00+00:00">December 10, 2009 at 10:17 pm</time></p>
      <p>Hey, I was just looking for a LinkedIn gem, thank you!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ben</strong> &middot; <time datetime="2009-12-11T10:23:00+00:00">December 11, 2009 at 10:23 am</time></p>
      <p>Great selection !!!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James Edward Gray II</strong> &middot; <time datetime="2009-12-11T20:09:00+00:00">December 11, 2009 at 8:09 pm</time></p>
      <p>I think the built-in CSV library offers a few advantages Excelsior has yet to offer.  It is very fast though, for sure.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-12-12T08:34:00+00:00">December 12, 2009 at 8:34 am</time></p>
      <p>I agree - I had a dig into the code and it's just a straight parser. That said, it might be interesting if it monkey patched regular CSV to get the same speed increases (and/or ultimately made up some of the code in MRI).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stephen Stillwater</strong> &middot; <time datetime="2009-12-13T08:18:00+00:00">December 13, 2009 at 8:18 am</time></p>
      <p>Just be careful with Ragel - it tends to make people go crazy and write huge long rants or suddenly abandon Ruby forever.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Keith Hanson</strong> &middot; <time datetime="2009-12-14T18:39:00+00:00">December 14, 2009 at 6:39 pm</time></p>
      <p>Is... erm... Ohm new? I've been using it for months now? What *else* would you use for Redis that is as easy and nice to use as Ohm is? :P</p>
    </li>
      <li>
      <p class="comment-meta"><strong>mikhailov</strong> &middot; <time datetime="2009-12-22T19:00:00+00:00">December 22, 2009 at 7:00 pm</time></p>
      <p>Redis - great! that is github based on.<br>
Key-value database is a suitable approach to a new-wave web-applications.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
