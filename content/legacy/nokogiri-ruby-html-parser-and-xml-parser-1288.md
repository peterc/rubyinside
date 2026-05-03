---
title: 'Nokogiri: A Faster, Better HTML and XML Parser for Ruby (than Hpricot)'
date: '2008-10-31'
author: Peter Cooper
author_slug: admin
post_id: 1288
slug: nokogiri-ruby-html-parser-and-xml-parser-1288
url: "/nokogiri-ruby-html-parser-and-xml-parser-1288.html"
categories:
- cool
- ruby-tricks
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2008/10/html-xml.png" width="109" height="138" alt="html-xml.png" style="float:left; margin-right:12px; margin-bottom:12px;">Yesterday, Aaron Patterson (<a href="http://twitter.com/tenderlove">@tenderlove</a>) and Mike Dalessio released <a href="http://tenderlovemaking.com/2008/10/30/nokogiri-is-released/">Nokogiri</a> (<a href="http://github.com/tenderlove/nokogiri/tree/master">Github repository</a>), a new HTML and XML parser for Ruby. It "parses and searches XML/HTML faster than Hpricot" (<a href="http://code.whytheluckystiff.net/hpricot/">Hpricot</a> being the current de facto Ruby HTML parser) and boasts XPath support, <a href="http://www.w3.org/TR/css3-selectors/">CSS3 selector</a> support (a big deal, because CSS3 selectors are mega powerful) and the ability to be used as a "drop in" replacement for Hpricot.</p>
<p>On an <a href="http://gist.github.com/18533">Hpricot vs Nokogiri benchmark</a>, Nokogiri clocked in at 7 times faster at initially loading an XML document, 5 times faster at searching for content based on an XPath, and 1.62 times faster at searching for content via a CSS-based search. These are impressive results, since Hpricot was previously considered to be quite speedy itself. <strong>(Update - November 3, 2008: <a href="http://hackety.org/2008/11/03/hpricotStrikesBack.html"><em>WHY FIGHTS BACK! HPRICOT IN PERFORMANCE BUSTING SHOCKER!!</em></a>)</strong></p>
<p>The code examples provided on the introduction post give you the basic idea, and the library can be installed using <code>gem install nokogiri</code> (though this didn't work for me on OS X - further instructions below).</p>
<p><span style="font-size: 14px; font-weight: bold;">Installing on OS X</span></p>
<p style="background-color: #ffc; padding: 8px"><em>Note!</em> Developer Aaron Patterson responded to the issues below in an update to the library. Now doing a regular gem install of Nokogiri <strong>should work fine.</strong> The information below is remaining in place solely for historical / reference purposes.</p>
<p>Upon trying <code>sudo gem install nokogiri</code>, I encountered multiple problems on OS X. Perhaps it'll work first time for you, but if not, here are some pointers. (Bear in mind, I run the default Ruby that comes with OS X - no special configurations. If you're running Ruby from DarwinPorts, etc, the following might not work at all.)</p>
<p>Trying to install the gem failed after "checking for racc... no". I assumed it was trying to download and install racc by the following line, but it's not. You need to download and install racc yourself. The latest tarball for that is at <a href="http://i.loveruby.net/archive/racc/racc-1.4.5-all.tar.gz">http://i.loveruby.net/archive/racc/racc-1.4.5-all.tar.gz</a> - download this, and open a Terminal. Continue along these lines:</p>
<pre>
tar xzvf racc-1.4.5-all.tar.gz
cd racc-1.4.5-all
sudo ruby setup.rb config
sudo ruby setup.rb setup
sudo ruby setup.rb install
</pre>
<p>Trying to install the gem at this point still won't work, as for some reason the racc executable has ended up in <code>/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/bin</code> rather than <code>/usr/bin</code> proper. My solution to that was to add that directory to my path in <code>~/.bash_profile</code> - but you might prefer to symbolically link it. Your choice. If you have no <code>~/.bash_profile</code> and you're following these instructions blindly, just put this in <code>~/.bash_profile</code>:</p>
<pre>
PATH=$PATH:/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/bin
export PATH
</pre>
<p>Next, something called "frex" is also missing. This is more easily installed with gem:</p>
<pre>
sudo gem install aaronp-frex -s http://gems.github.com
</pre>
<p>Once this is done, then nokogiri should finally install with gem:</p>
<pre>
sudo gem install nokogiri
</pre>
<p>Run up <code>irb</code> and give <code>require 'nokogiri'</code> a try to make sure.</p>
<p>Please leave any corrections, suggestions, or cries for help in the comments. Thanks!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Caius Durling</strong> &middot; <time datetime="2008-10-31T18:07:00+00:00">October 31, 2008 at 6:07 pm</time></p>
      <p>Indeed it won't install racc for you, the error message (rather cryptically) is telling you to install it manually.</p><p><code>checking for racc... no<br>
need racc, get the tarball from <a href="http://i.loveruby.net/archive/racc/racc-1.4.5-all.tar.gz" rel="nofollow">http://i.loveruby.net/archive/racc/racc-1.4.5-all.tar.gz</a></code></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-10-31T18:24:00+00:00">October 31, 2008 at 6:24 pm</time></p>
      <p>Yeah, I saw that. I was assuming the following compilation error was it trying to install Racc. Usually if a gem has dependencies that fail, that's the end of it.. but in this case it carries on and tries to compile itself without all the dependencies being satisified - which is rather odd.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Yehuda Katz</strong> &middot; <time datetime="2008-10-31T18:24:00+00:00">October 31, 2008 at 6:24 pm</time></p>
      <p>Kudos to AP and Mike for finally releasing this. Merb is going to be making use of it for speedier test helpers and more compliant CSS3.</p><p>Between nokogiri and webrat, Merb tests in 1.0 are going to be a world better.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Martijn</strong> &middot; <time datetime="2008-10-31T19:39:00+00:00">October 31, 2008 at 7:39 pm</time></p>
      <p>Looks goot, but Hpricot runs on JRuby!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aaron Patterson</strong> &middot; <time datetime="2008-10-31T19:42:00+00:00">October 31, 2008 at 7:42 pm</time></p>
      <p>If the gem doesn't install with a vanilla OS X, please let me know.  It is a bug, and I will fix it.</p><p>I'm not down with making the installation so complex.  Not to mention, I consider the code on github to be unstable.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-10-31T19:46:00+00:00">October 31, 2008 at 7:46 pm</time></p>
      <p>It installs, once the dependencies are resolved.</p><p>I believe my OS X and Ruby install to be reasonably vanilla. I do have a stackload of gems installed, but I'm running the regular OS X supplied Ruby and RubyGems otherwise. I'll give it a whirl on my newish MacBook Pro that I don't really use for Ruby dev..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-10-31T19:51:00+00:00">October 31, 2008 at 7:51 pm</time></p>
      <p>On the MBP now - getting a different error on here.</p><p>..</p><p>Building native extensions.  This could take a while...<br>
ERROR:  Error installing nokogiri:<br>
        ERROR: Failed to build gem native extension.</p><p>rake RUBYARCHDIR=/Library/Ruby/Gems/1.8/gems/nokogiri-1.0.1/lib RUBYLIBDIR=/Library/Ruby/Gems/1.8/gems/nokogiri-1.0.1/lib<br>
(in /Library/Ruby/Gems/1.8/gems/nokogiri-1.0.1)<br>
rake aborted!<br>
undefined method `add_development_dependency' for #<gem ::specification:0x145e628><br>
/Library/Ruby/Gems/1.8/gems/nokogiri-1.0.1/rakefile:19:in `new'</gem></p><p>..</p><p>I think this error is probably because the default version of RubyGems on OS X is still 1.0.1, whereas on my other machine I'm running 1.2.0.</p><p>I've just run the update for RubyGems, and it's now at 1.3.1. gem install nokogiri now gives me the same error as it did on the other machine:</p><p>..</p><p>checking for racc... no<br>
need racc, get the tarball from <a href="http://i.loveruby.net/archive/racc/racc-1.4.5-all.tar.gz" rel="nofollow">http://i.loveruby.net/archive/racc/racc-1.4.5-all.tar.gz</a><br>
*** extconf.rb failed ***</p><p>..</p><p>So - yeah - it's just depedencies. Once Racc and Frex are installed, it should be fine.</p><p>The only way it could be more seamless is if Racc was gemified and included as a gem dependency.. and if Frex was also a gem dependency, so that gem would install them both automatically.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aaron Patterson</strong> &middot; <time datetime="2008-10-31T19:55:00+00:00">October 31, 2008 at 7:55 pm</time></p>
      <p>Thanks Peter.  Actually, neither of those should be dependencies.  They are build time dependencies and not runtime dependencies.  I've found the problem and <a href="http://twitter.com/jbarnette" rel="nofollow">@jbarnette</a> is fixing it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aaron Patterson</strong> &middot; <time datetime="2008-10-31T20:02:00+00:00">October 31, 2008 at 8:02 pm</time></p>
      <p>Okay.  A new gem is pushed.  Once the gem index refreshes, you should be able to install version 1.0.2 without any dependencies.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael Risser</strong> &middot; <time datetime="2008-10-31T20:27:00+00:00">October 31, 2008 at 8:27 pm</time></p>
      <p>An additional error happened when installing the gem with MacPorts Ruby 1.8.6:</p><p>Building native extensions.  This could take a while...<br>
ERROR:  Error installing nokogiri:<br>
        ERROR: Failed to build gem native extension.</p><p>rake RUBYARCHDIR=/opt/local/lib/ruby/gems/1.8/gems/nokogiri-1.0.1/lib RUBYLIBDIR=/opt/local/lib/ruby/gems/1.8/gems/nokogiri-1.0.1/lib<br>
rake aborted!<br>
no such file to load -- hoe<br>
/opt/local/lib/ruby/gems/1.8/gems/nokogiri-1.0.1/rakefile:4<br>
(See full trace by running task with --trace)<br>
(in /opt/local/lib/ruby/gems/1.8/gems/nokogiri-1.0.1)</p><p>This was easily fixed by doing:<br>
sudo gem install hoe</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael Risser</strong> &middot; <time datetime="2008-10-31T20:30:00+00:00">October 31, 2008 at 8:30 pm</time></p>
      <p>Also for the Newbies (like me) out there, when you run up irb to test the install, before requiring nokogiri do 'require "rubygems"'. This one ALWAYS trips me up :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kevin Marsh</strong> &middot; <time datetime="2008-10-31T20:52:00+00:00">October 31, 2008 at 8:52 pm</time></p>
      <p>FYI: Tried a simple gem install nokogiri at 4:50 EDT on All Hallows Eve, installed and runs flawlessly on my Mac Book Pro running stock Ruby 1.8.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-10-31T20:55:00+00:00">October 31, 2008 at 8:55 pm</time></p>
      <p>Awesome, Kevin. I've added a note to the post to indicate that my instructions are now obsolete.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pistos</strong> &middot; <time datetime="2008-11-01T12:40:00+00:00">November 1, 2008 at 12:40 pm</time></p>
      <p>I should point out that I had to upgrade hoe to version 1.8.2 before the nokogiri gem installation proceeded.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dong Zhang</strong> &middot; <time datetime="2008-11-02T01:52:00+00:00">November 2, 2008 at 1:52 am</time></p>
      <p>I am on windows xp, got this error</p><p>D:\Documents and Settings\dzhang2&gt;gem install nokogiri<br>
Bulk updating Gem source index for: <a href="http://gems.rubyforge.org/" rel="nofollow">http://gems.rubyforge.org/</a><br>
Building native extensions.  This could take a while...<br>
ERROR:  Error installing nokogiri:<br>
        ERROR: Failed to build gem native extension.</p><p>rake RUBYARCHDIR=c:/ruby/lib/ruby/gems/1.8/gems/nokogiri-1.0.2/lib RUBYLIBDIR=c:<br>
/ruby/lib/ruby/gems/1.8/gems/nokogiri-1.0.2/lib<br>
(in c:/ruby/lib/ruby/gems/1.8/gems/nokogiri-1.0.2)<br>
rake aborted!<br>
couldn't find HOME environment -- expanding `~/.hoerc'<br>
c:/ruby/lib/ruby/gems/1.8/gems/nokogiri-1.0.2/rakefile:20:in `new'<br>
(See full trace by running task with --trace)</p><p>Gem files will remain installed in c:/ruby/lib/ruby/gems/1.8/gems/nokogiri-1.0.2<br>
 for inspection.<br>
Results logged to c:/ruby/lib/ruby/gems/1.8/gems/nokogiri-1.0.2/gem_make.out</p><p>*********************************************</p><p>anybody got it installed on windows?</p><p>thanks</p>
    </li>
      <li>
      <p class="comment-meta"><strong>aphe</strong> &middot; <time datetime="2008-11-03T11:14:00+00:00">November 3, 2008 at 11:14 am</time></p>
      <p>what the right way to use Nokogiri::XML with<br>
namespaces?</p><p>is necessary to register namespaces as libxml-rb does?<br>
<a href="http://libxml.rubyforge.org/rdoc/classes/LibXML/XML/XPath.html" rel="nofollow">http://libxml.rubyforge.org/rdoc/classes/LibXML/XML/XPath.html</a></p><p>bye</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Dalessio</strong> &middot; <time datetime="2008-11-03T17:14:00+00:00">November 3, 2008 at 5:14 pm</time></p>
      <p>Hi Aphe,</p><p>For handling XML namespaces, Aaron and I tried to make it a little simpler than the libxml-style namespace registration.</p><p>You should be able to make a query like:</p><p>  xml = Nokogiri::XML.parse(...)<br>
  tires = xml.xpath('//bike:tire', {'bike' =&gt; '<a href="http://schwinn.com/'" rel="nofollow">http://schwinn.com/'</a>})</p><p>more generally, the xpath() method takes an optional second argument which is a hash of namespace-alias =&gt; URL.</p><p>You can take a look at some of the test cases for more details. We're working on more complete documentation!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Dalessio</strong> &middot; <time datetime="2008-11-03T17:21:00+00:00">November 3, 2008 at 5:21 pm</time></p>
      <p>@Dong,</p><p>You should be able to avoid that (common) hoe error message by setting a phone HOME environment variable.</p><p>Try running:</p><p>set HOME=foo</p><p>before installing!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dong Zhang</strong> &middot; <time datetime="2008-11-04T02:15:00+00:00">November 4, 2008 at 2:15 am</time></p>
      <p>Mike</p><p>thanks for the tip. now, I am getting a different error</p><p>D:\Documents and Settings\dzhang2&gt;gem install nokogiri<br>
Bulk updating Gem source index for: <a href="http://gems.rubyforge.org/" rel="nofollow">http://gems.rubyforge.org/</a><br>
Building native extensions.  This could take a while...<br>
ERROR:  Error installing nokogiri:<br>
        ERROR: Failed to build gem native extension.</p><p>rake RUBYARCHDIR=c:/ruby/lib/ruby/gems/1.8/gems/nokogiri-1.0.2/lib RUBYLIBDIR=c:<br>
/ruby/lib/ruby/gems/1.8/gems/nokogiri-1.0.2/lib<br>
(in c:/ruby/lib/ruby/gems/1.8/gems/nokogiri-1.0.2)<br>
rake aborted!<br>
undefined method `add_development_dependency' for #<br>
c:/ruby/lib/ruby/gems/1.8/gems/nokogiri-1.0.2/rakefile:20:in `new'<br>
(See full trace by running task with --trace)</p><p>Gem files will remain installed in c:/ruby/lib/ruby/gems/1.8/gems/nokogiri-1.0.2<br>
 for inspection.<br>
Results logged to c:/ruby/lib/ruby/gems/1.8/gems/nokogiri-1.0.2/gem_make.out</p><p>thanks<br>
Dong</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jamie McLaughlin</strong> &middot; <time datetime="2008-11-04T21:20:00+00:00">November 4, 2008 at 9:20 pm</time></p>
      <p>Dong:</p><p>It looks like your rubygems is not up to date.  I had the same problem, so I downloaded the latest version of rubygems from rubyforge and installed it.</p><p>You can try: </p><p>gem upgrade --system</p><p>I have Ubuntu, so that doesn't work for me.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>SeanJA</strong> &middot; <time datetime="2008-11-05T18:01:00+00:00">November 5, 2008 at 6:01 pm</time></p>
      <p>Oh dear, your info is out of date already... hpricot is now faster...</p><p><a href="http://hackety.org/2008/11/03/hpricotStrikesBack.html" rel="nofollow">http://hackety.org/2008/11/03/hpricotStrikesBack.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dong Zhang</strong> &middot; <time datetime="2008-11-05T18:16:00+00:00">November 5, 2008 at 6:16 pm</time></p>
      <p>Mike</p><p>that is it! after update my rubygems, the install went through.</p><p>thanks<br>
Dong</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dong Zhang</strong> &middot; <time datetime="2008-11-05T18:21:00+00:00">November 5, 2008 at 6:21 pm</time></p>
      <p>sorry, previous message should be to Jamie.</p><p>Jamie, appreciate your help.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Lawrence</strong> &middot; <time datetime="2008-11-09T01:39:00+00:00">November 9, 2008 at 1:39 am</time></p>
      <p>Nokogiri certainly is not better at "it just installs!". On a clean ubuntu 8.10 install hpricot installs just fine, while nokogiri installs with loads of issues, see above, and mine is different:</p><p>$ sudo gem install nokogiri<br>
Building native extensions.  This could take a while...<br>
ERROR:  Error installing nokogiri:<br>
        ERROR: Failed to build gem native extension.</p><p>rake RUBYARCHDIR=/usr/lib/ruby/gems/1.8/gems/nokogiri-1.0.3/lib RUBYLIBDIR=/usr/lib/ruby/gems/1.8/gems/nokogiri-1.0.3/lib<br>
(in /usr/lib/ruby/gems/1.8/gems/nokogiri-1.0.3)<br>
/usr/lib/ruby/gems/1.8/gems/rake-0.8.3/lib/rake/gempackagetask.rb:13:Warning: Gem::manage_gems is deprecated and will be removed on or after March 2009.<br>
checking for xmlParseDoc() in -lxml2... no<br>
checking for xsltParseStylesheetDoc() in -lxslt... no<br>
checking for libxml/xmlversion.h in /usr/include/libxml2,/usr/include/libxml2... no<br>
need libxml<br>
*** extconf.rb failed ***<br>
Could not create Makefile due to some reason, probably lack of<br>
necessary libraries and/or headers.</p><p>Installed libxml and libxml2, still getting same error.</p><p>Nokogiri: big fail !</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Si</strong> &middot; <time datetime="2008-11-09T16:02:00+00:00">November 9, 2008 at 4:02 pm</time></p>
      <p>Plans for JRuby support? Looks like this will cause problems for Webrat, who just switched to Nokogiri.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jamie McLaughlin</strong> &middot; <time datetime="2008-11-14T18:30:00+00:00">November 14, 2008 at 6:30 pm</time></p>
      <p>Lawrence - Try to install the libxml-dev and libxml2-dev packages.  That way the header files are available.</p><p>checking for libxml/xmlversion.h in /usr/include/libxml2,/usr/include/libxml2... no</p><p>Seems to point to a missing header.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
