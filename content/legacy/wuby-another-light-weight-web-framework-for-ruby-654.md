---
title: Wuby, another light-weight Web framework for Ruby
date: '2007-11-19'
author: Peter Cooper
author_slug: admin
post_id: 654
slug: wuby-another-light-weight-web-framework-for-ruby-654
url: "/wuby-another-light-weight-web-framework-for-ruby-654.html"
categories:
- cool
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2007/11/wuby.jpg" height="142" width="250" border="1" hspace="4" vspace="4" alt="Wuby"><br>
<a href="http://wuby.org/">Wuby</a>, developed by Chris Matthieu, is a new light-weight Ruby Web application framework, much in a similar vein to <a href="http://sinatra.rubyforge.org/">Sinatra</a> or <a href="http://camping.rubyforge.org/">Camping</a>.<br>
One of the differences of Wuby is that no third party applications or gems are required to run Wuby apps, and the Wuby library itself contains everything necessary to run an HTTP daemon and start serving requests. The <a href="http://wuby.org/">wuby.org</a> site itself is running on the Wuby system and certainly seems to serve up pages extremely quickly. No database connections are required (although MySQL and SQLite are easily usable), and data can be stored in a persistent hash for ultra simplicity. </p>
<p>I find the <a href="http://wuby.org/examples.rhtml">example code</a> on wuby.org a little arcane (I'd say it has a bit of a PHP feel about it), but there's some <a href="http://wuby.org/wubydocs.rhtml">documentation</a> and the framework is easy to download (just one file). Chris has also put together a great <a href="http://www.rubyology.com/podcasts/show/50">30 minute screencast</a> where he walks through how Wuby works and how to put together an application with it.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Moeseph</strong> &middot; <time datetime="2007-11-19T15:52:00+00:00">November 19, 2007 at 3:52 pm</time></p>
      <p>Be sure to click the delete post link on the Wuby homepage, aparently it blows up the site. At least, I think I blew it up. It looks blown up.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Garth</strong> &middot; <time datetime="2007-11-19T16:44:00+00:00">November 19, 2007 at 4:44 pm</time></p>
      <p>From the example code, I'd say it doesn't even look like Ruby.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Grant Hutchins</strong> &middot; <time datetime="2007-11-19T18:29:00+00:00">November 19, 2007 at 6:29 pm</time></p>
      <p>What's with the red squigglies on the logo up there?</p><p>Someone misspell something? ;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark Twain</strong> &middot; <time datetime="2007-11-19T19:16:00+00:00">November 19, 2007 at 7:16 pm</time></p>
      <p>Well, I guess that just like you can write Fortran in any language, you can do the same with PHP. Apparently.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2007-11-19T19:34:00+00:00">November 19, 2007 at 7:34 pm</time></p>
      <p>Hm, I wonder where he got the name "Wuby" from...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Joyce</strong> &middot; <time datetime="2007-11-20T00:06:00+00:00">November 20, 2007 at 12:06 am</time></p>
      <p>wuby's web site is pretty wrough awround the edges...<br>
it needs a wittle work...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Allen</strong> &middot; <time datetime="2007-11-20T01:29:00+00:00">November 20, 2007 at 1:29 am</time></p>
      <p>I am so loving all these little Ruby web frameworks :) Though in the case of Wuby, I don't know why you'd just use Rack and Mongrel... I see no benefit in having some 'really really really' standalone library when you can use Mongrel as a web server and Rack as a higher level API to build your even higher level API web framework on.</p><p>I did a presentation on <a href="http://yeahnah.org/files/rack-presentation-oct-07.pdf" rel="nofollow">rolling your own with Rack</a> if anyone is interested.</p><p>It's all about the API of ye'ole tiny framework, people!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris Matthieu</strong> &middot; <time datetime="2007-11-20T02:23:00+00:00">November 20, 2007 at 2:23 am</time></p>
      <p>Hello Everyone!  Thanks for your feedback.  I am an ex-microsoft developer that has been working in ruby exclusively for a little over a year now.  I have built several large rails applications.  On several occasions, I needed to deploy a very lightweight web application with little or no database interaction but wanted to use the ruby language.  Mongrel, Rack, and Camping required several installations and more memory overhead than was actually needed to accomplish my goal.  </p><p>Wuby is a wee-little web server written in ruby; hence the name.  There are no installations or setup required to begin serving pages.  Simply copy your rhtml files and images and wuby.rb to your directory and type "ruby wuby.rb -d -p xxxx" where xxxx is the port number and a daemon instance of your web server will launch and begin serving your index.rhtml file.</p><p>Directory browsing is also supported by adding a -b as a switch in the launch string.  This little web server is very fast and reliable and consumes under 3 MB of RAM to run and it can process 300 http transactions in under 6 seconds.  Not too bad...</p><p>Honestly, please continue to share your thoughts.  I believe that it meets a need and would like your input to make it better.</p><p>Thank You,<br>
Chris Matthieu<br>
<a href="http://rubyology.com" rel="nofollow">http://rubyology.com</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>James</strong> &middot; <time datetime="2007-11-20T02:35:00+00:00">November 20, 2007 at 2:35 am</time></p>
      <p>"I see no benefit in having some 'really really really' standalone library when you can use Mongrel as a web server and Rack as a higher level API to build your even higher level API web framework on."</p><p>Ruby has given us  the age of DSA's and DSF's: domain-specific apps and domain-specific frameworks.  It's easy enough to roll your own specialized app or framework, something that fits your head better than current off-the-shelf offerings, much as people have being doing with domain-specific languages and domain-specific dialects.  Clearly these won't all be to everyone's taste, but that's true of DSLs as well.  </p><p>The interesting thing here is not so much that we have Yet Another Web Framework (though I really like Wuby), but that people are increasingly inclined to make them.  </p><p>You don't have to like or use Wuby; the key is knowing that you don't have to really like or use *any* Web framework, because crafting your own is very often a real option.</p><p>Rather than harp on this or that flaw one may  find in Wuby, people should look at all such  apps and tools as conceptual petri dishes full of ideas to steal for their own DSF.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Allen</strong> &middot; <time datetime="2007-11-20T02:55:00+00:00">November 20, 2007 at 2:55 am</time></p>
      <p>James I agree with you completely! And the leverage you can get from Rack and Mongrel is huge - you can construct your best fit with very minimal infrastructure work having being done for you.</p><p>Yet Wuby implements all it's own infrastructure using base Ruby libraries... quite a lot of work from scratch. Using a combination of Rack and Mongrel you can focus on your API knowing that all the nitty gritty is handled and solid.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Murch</strong> &middot; <time datetime="2007-11-20T04:52:00+00:00">November 20, 2007 at 4:52 am</time></p>
      <p>Wuby is great for smaller ruby projects that do not NEED a lot of overhead. Camping is still a bit too much for some projects, but going back and forth between php and ruby drives me nuts. </p><p>As James says, "it doesn't matter if you use or don't use wuby...key is knowing that you don't have to really like or use *any* Web framework". Creating your own frame work for a large project is easy to do with ruby. </p><p>Wuby just is a extremely bare bones framework that is great for smaller projects that need to serve pages up .. fast!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris Matthieu</strong> &middot; <time datetime="2007-11-21T04:01:00+00:00">November 21, 2007 at 4:01 am</time></p>
      <p>It seems like many people were confused by the demo blog application residing at <a href="http://www.wuby.org" rel="nofollow">http://www.wuby.org</a> thinking that the demo was Wuby.  In reality, the demo is running on the Wuby web server and built-in Ruby framework.  </p><p>The Wuby.org site now has an introduction to explain the Wuby offering along with a link to the blog demo application.  The fantastic results from RubyInside's post is that wuby has received a great deal of traffic without failure or degradation in response time!  </p><p>Thanks everyone!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris Matthieu</strong> &middot; <time datetime="2007-11-22T15:33:00+00:00">November 22, 2007 at 3:33 pm</time></p>
      <p>Remember the days of IIS and ASP code where you could mix HTML and ASP scripts inside of  symbols? Wuby allows you to accomplish the same task but using the Ruby language instead of ASP!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
