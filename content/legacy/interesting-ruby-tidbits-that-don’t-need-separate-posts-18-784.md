---
title: 'Interesting Ruby Tidbits That Don’t Need Separate Posts #18'
date: '2008-03-01'
author: Peter Cooper
author_slug: admin
post_id: 784
slug: interesting-ruby-tidbits-that-don’t-need-separate-posts-18-784
url: "/interesting-ruby-tidbits-that-don’t-need-separate-posts-18-784.html"
categories:
- compilations
- miscellaneous
- ruby-tricks
- tools
---

{{< rawhtml >}}
<p><big><strong>MacRuby: Ruby Running On Top of Objective-C</strong></big></p>
<p>Most Mac-based Ruby developers are already familiar with <a href="http://rubycocoa.sourceforge.net/">RubyCocoa</a>, a bridge that enables regular Ruby apps to talk to OS X's various frameworks. <a href="http://trac.macosforge.org/projects/ruby/wiki/MacRuby">MacRuby</a>, however, takes a rather different approach and is a port of Ruby 1.9 that runs directly on the Objective-C runtime and garbage collector. It's still in its early stages, but for anyone interested in Ruby implementations, this is worth a look.</p>
<p><big><strong>Try: Stop Using "@person ? @person.name : nil" And Start Using "@person.try(:name)"</strong></big></p>
<p><a href="http://ozmm.org/posts/try.html">try()</a> is a ridiculously simple, but incredibly useful, bit of sugar Chris Wanstrath has come up with for making it easy to "try" and call methods on objects, but without Ruby getting upset if that method doesn't exist.</p>
<p><big><strong>ProcessorPool: Easily Farm Work to Amazon EC2 Instances</strong></big></p>
<p>And the Rubyist infatuation with Amazon's EC2 service continues! Ari Lerner and Ron Evans have developed <a href="http://rubyforge.org/projects/processorpool/">ProcessorPool</a>, a new Ruby library that provides a simple load-balancing solution for Amazon's EC2 and S3 backend. It allows you to "effortlessly farm work to an EC2 instance." The best source of information is <a href="http://blog.citrusbyte.com/2008/2/20/effortlessly-farm-work-to-an-ec2-instance-without-batting-an-eye">Ari's own blog post</a> where some demonstration code is shown.</p>
<p><big><strong>Heroku Gits an API</strong></big></p>
<p><a href="http://heroku.com/">Heroku</a>, the much heralded Ruby on Rails online development and deployment platform, has <a href="http://heroku.com/docs/api/">launched an API</a> along with external Git access. The combination of these new features mean that you can work on your Rails applications on your local machine and deploy them on Heroku with just a few simple steps. All you need to do is install the Heroku gem, then use the "heroku" command line app to create an application before finally pushing it back to the Heroku servers with git. Miraculously, pushing your code back to Heroku automatically runs the migrations and restarts the processors on the server. One step deployment!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Fred</strong> &middot; <time datetime="2008-03-01T09:50:00+00:00">March 1, 2008 at 9:50 am</time></p>
      <p>Wow, Heroku really rocks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>dubek</strong> &middot; <time datetime="2008-03-01T11:43:00+00:00">March 1, 2008 at 11:43 am</time></p>
      <p>Regarding Chris Wanstrath's try(), I'd at least allow it to accept methods that need arguments, so:</p><p>  class Object<br>
    def try(method, *args)<br>
      send(method, *args) if respond_to? method<br>
    end<br>
  end</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ic9</strong> &middot; <time datetime="2008-03-01T12:09:00+00:00">March 1, 2008 at 12:09 pm</time></p>
      <p>Instead of the try(:name),<br>
<a href="http://blog.rubyenrails.nl/articles/2008/02/29/our-daily-method-18-nilclass-method_missing" rel="nofollow">http://blog.rubyenrails.nl/articles/2008/02/29/our-daily-method-18-nilclass-method_missing</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Trans</strong> &middot; <time datetime="2008-03-03T16:29:00+00:00">March 3, 2008 at 4:29 pm</time></p>
      <p>I would suggest:</p><p>  ##<br>
  #   @person ? @person.name : nil<br>
  # vs<br>
  #   @person.try(:name)<br>
  def try(method, default=nil)<br>
    respond_to? method ? send method : default<br>
  end</p><p>T.</p><p>T.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
