---
title: 11 New Ruby Delights (For If/When You’re Tired of Rails 3.0)
date: '2010-02-11'
author: Peter Cooper
author_slug: admin
post_id: 2992
slug: 11-new-ruby-delights-2992
url: "/11-new-ruby-delights-2992.html"
categories:
- compilations
- elsewhere
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2010/02/no-rails-allowed.gif" width="130" height="130" alt="no-rails-allowed.gif" style="float:left; margin-right:12px; margin-bottom:12px;">Sick of Rails 3.0 yet or still enjoying your <a href="sinatra-29-links-and-resources-for-a-quicker-easier-way-to-build-webapps-1371.html">Sinatra</a>, <a href="rango-ruby-web-app-framework-2858.html">Rango</a>, <a href="ramaze-another-light-ruby-web-framework-but-with-mvc-658.html">Ramaze</a>, <a href="cramp-asychronous-event-driven-ruby-web-app-framework-2928.html">Cramp</a>, or totally non-Web-based development? OK - I've sniffed out 12 new, interesting Ruby related libraries or blog posts just for you! with no Rails whatsoever!</p>
<h3><b>Buzzr: Google Buzz Library For Ruby</b></h3>
<p>A few days ago, Google unveiled <a href="http://www.google.com/buzz">Buzz</a> - its latest attempt to compete with Twitter and Facebook. <a href="http://github.com/conorh/buzzr">Buzzr</a> is a Ruby library by Conor Hunt that helps you interact with the Atom feeds that Buzz puts out.</p>
<h3><b>VirtualBox Gem</b></h3>
<p><a href="http://www.virtualbox.org/">VirtualBox</a> is a popular, free and open source virtualization system that allows you to run multiple operating systems under your existing one (think VMware Workstation) and VirtualBox (same name) is <a href="http://github.com/mitchellh/virtualbox">also a Ruby library</a> that you can use to control the eponymous program. From Ruby you can launch instances, query them, and deal with hard drive images.</p>
<h3><b>JRuby-Complete</b></h3>
<p><a href="http://spin.atomicobject.com/2010/02/01/the-case-for-embedding-jruby-complete-into-your-application">JRuby Complete</a> takes the "vendor everything" idea to extremes by providing an entire Ruby implementation in a Java-land JAR archive that you can use even in Java environments where a Ruby isn't already installed. This could be handy for those of you trying to sneak Ruby into the enterprise!</p>
<h3><b>37 Reasons To Love Ruby</b></h3>
<p>Hal Fulton, of The Ruby Way fame, has written <a href="http://rubyhacker.com/ruby37.html">a list of 37 reasons he loves Ruby</a>. It did pretty well on the social bookmarking sites last week and.. it's a good list. Mostly obvious stuff if you're a Rubyist, but it could be useful if you want to swing some opinions somewhere. Related to this is <a href="http://www.adaruby.com/2010/02/03/be-grateful-coding-ruby-on-rails/">Why You Should Be Grateful For Coding in Ruby</a> by Ruby Inside alumnus Hendy Irawan.</p>
<h3><b>Defining Methods, JavaScript-Style</b></h3>
<p>Sasa Brankovic has come up with a clever little hack to <a href="http://blog.hakeraj.com/method-definitions-javascript-style">allow you to define methods "JavaScript style"</a> in Ruby. Essentially, you can define a method with a line like <code>obj.method = proc { puts "hello" }</code> and call it with just <code>obj.method</code>. I can't see this catching on, but it's a nice idea.</p>
<h3><b>SafariRSS - A Safari RSS Handler for OS X</b></h3>
<p>Isaac Kearse has twisted some <a href="macruby-0-5-released-2951.html">MacRuby</a> and HotCocoa into <a href="http://isaac.kearse.co.nz/2010/02/07/safarirss/">SafariRSS</a>, a handler for RSS feeds that Safari will recognize (meaning that when you click the "RSS" button in Safari, it'll launch your app and do whatever you like with them).</p>
<h3>D'Note - Developer Notes from Ruby Code</h3>
<p><a href="http://proutils.github.com/dnote/">D'Note</a> is a tool that scans your source code for specially made "notes" and turns them into a document in either plain text, RDoc, Markdown, SOAP, XOXO, XML, HTML, YAML, or JSON format (or you can even specify a custom ERB template). This could be handy for keeping track of your TODOs, FIXMEs, and similar.</p>
<h3><b>Gem In A Box - Simple Internal Gem Hosting</b></h3>
<p>Seemingly taking a little influence from Gemcutter, <a href="http://github.com/cwninja/geminabox/">Gem In A Box</a> is a new tool for hosting your own RubyGems internally/in-house. It's easy to install and the presentation is nice.</p>
<h3><b>Shoulda Textmate Bundle</b></h3>
<p>If you're using the OS X editor TextMate <i>and</i> the <a href="shoulda-roundup-elegant-maintainable-ruby-testing-1723.html">Shoulda</a> Ruby testing library, Shalva Usubov has put together <a href="http://github.com/shaliko/shoulda-tmbundle">a handy Shoulda TextMate bundle</a> to make your life a bit easier.</p>
<h3><b>Net::DAV - WebDAV a la Net::HTTP</b></h3>
<p><a href="http://wiki.github.com/devrandom/net_dav/">Net::DAV</a> describes itself as "a <a href="http://en.wikipedia.org/wiki/WebDAV">WebDAV</a> client library in the style of Net::HTTP." If you're a WebDAV user, you'll know how useful that could be. Essentially, WebDAV is a set of extensions to regular HTTP that allow you to remotely lock and edit files on HTTP servers (among other things). Net::DAV is a few months old, but is being updated regularly.</p>
<h3><b>Using Gemcutter's API from the Command Line</b></h3>
<p>Gabriel Horner gives us <a href="http://tagaholic.me/2010/02/03/using-gemcutters-api-from-the-commandline.html">a walkthrough of using GemCutter's API from the command line</a>, specifically relying upon his <a href="boson-a-next-generation-task-framework-for-ruby-2657.html">Boson</a> command/task framework.</p>
<h3>Want More Ruby Stuff?</h3>
<p>Don't forget to check out our community-driven sister site, <a href="http://www.rubyflow.com/">RubyFlow</a>. There are lots of cool new Ruby projects and links posted every day!</p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><em>[job]</em> <b>Snapizzi</b> is currently <a href="http://jobs.rubyinside.com/a/jbb/job-details/170683">looking for a Ruby and Rails developer</a> to join their team in Santa Barbara, CA. Alternatively, check out one of the <a href="http://jobs.rubyinside.com/a/jbb/find-jobs">other 11 jobs on our Ruby jobs board!</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Hendy Irawan (AdaRuby)</strong> &middot; <time datetime="2010-02-11T23:01:00+00:00">February 11, 2010 at 11:01 pm</time></p>
      <p>Thanks Peter for the mention :-) Excellent list of posts :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>your_mom</strong> &middot; <time datetime="2010-02-12T15:00:00+00:00">February 12, 2010 at 3:00 pm</time></p>
      <p>I just started using virtualbox gem this week and really like it.  If you did through the source, there are also methods for starting, stopping, saving, pausing, and resuming virtual machines.  Probably a lot more, but this is all I've looked at so far as I'm putting together a simple little menu driven program to control my virtual machines from the command line.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>anonymous</strong> &middot; <time datetime="2010-02-14T13:09:00+00:00">February 14, 2010 at 1:09 pm</time></p>
      <p>on the 37 reasons article, i don't understand number 26: It has a flexible syntax. Parentheses in method calls can usually be omitted, as can commas between parameters.</p><p>what would be an example of this commaless parameters?</p><p>Neither defining it<br>
 def test foo bar<br>
nor calling it<br>
 test foo bar<br>
that way works afaics.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
