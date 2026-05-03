---
title: 'Interesting Ruby Tidbits That Don’t Need Separate Posts #10'
date: '2007-11-21'
author: Peter Cooper
author_slug: admin
post_id: 656
slug: interesting-ruby-tidbits-that-dont-need-separate-posts-10-656
url: "/interesting-ruby-tidbits-that-dont-need-separate-posts-10-656.html"
categories:
- compilations
- cool
- miscellaneous
- news
- ruby-on-rails
---

{{< rawhtml >}}
<p><strong>jRails - Seamlessly Redefines Rails Helpers to Use jQuery Instead of Prototype</strong></p>
<p><a href="http://ennerchi.com/projects/jrails">jRails</a> is an intriguing Rails plugin that makes it extremely easy to switch from using the <a href="http://www.prototypejs.org/">Prototype JavaScript library</a> that comes with Rails to the increasingly more popular <a href="http://jquery.com/">jQuery</a>. From most of the reports I've seen, jQuery is faster and I've seen several blog posts just in the last week that emphasize just how much easier and concise jQuery code is (it's <a href="http://www.google.com/search?q=jquery+better+prototype">not hard</a> to find these reports, if you're interested). The only downside to jQuery is that all of Rails' helpers are written to use Prototype.. but jRails solves that by redefining how they work so that they work with jQuery instead! Talk about rocking the boat!<strong><br></strong><strong><br>
RailsCamp 2.0 - A Totally Bonzer Weekend for Rails Coders</strong></p>
<p><a href="http://wiki.railscamp07.org/railscamp07/">RailsCamp</a> is an informal Rails camp (literally, you're in bunk style accommodation) in Australia for Rails coders. The next one is running from this Friday, November 23rd through to Monday, November 26th, so unless you're local to Melbourne, it might be too late to sign up. Organizer Pat Allan wants to build up more knowledge of the event, however, so check out <a href="http://wiki.railscamp07.org/railscamp07/">their site</a> and follow their progress if you want to attend a future event. Previous events look like they were fun, with much evidence of coding and goofing off.</p>
<p><strong>Using Ruby to Monitor Your Amazon EC2 Instances</strong></p>
<p>James Knowlton and PJ Cabrera have put together <a href="http://developer.amazonwebservices.com/connect/entry.jspa?externalID=1011">a great tutorial on how to use Ruby to monitor</a> and maintain <a href="http://aws.amazon.com/ec2">Amazon EC2</a> (Amazon Elastic Compute Cloud) instances.</p>
<p><strong>LiveConsole - Run IRB Sessions On Remote, Running Ruby Applications</strong></p>
<p>I'll let them do the talking.. "<a href="http://debu.gs/live-console">LiveConsole</a> is a library for providing IRB over a TCP connection. If you add it to your application, you can run arbitrary code against your application. For example, you can: Inspect the state of a running application, Change the state of the application, Patch code on the fly, without a restart [...]"</p>
<p><strong>Droid Sans Mono - A New Coding Font</strong></p>
<p><img src="/assets/2007/11/droidsansmono.jpg" height="88" width="246" border="1" hspace="4" vspace="4" alt="Droidsansmono"></p>
<p>Not directly Ruby related, but <a href="http://damieng.com/blog/2007/11/14/droid-sans-mono-great-coding-font">Droid Sans Mono</a> is a new coding font that seems to have gathered quite a few fans in the last few weeks. Might be worth a try in your editor of choice (if you want to recommend any other coding fonts, however, leave a comment here.. quite a few people read them!)</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2007-11-21T02:11:00+00:00">November 21, 2007 at 2:11 am</time></p>
      <p>An awesome font i've found is Inconsolata.<br>
<a href="http://www.levien.com/type/myfonts/inconsolata.html" rel="nofollow">http://www.levien.com/type/myfonts/inconsolata.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Fischer</strong> &middot; <time datetime="2007-11-21T04:23:00+00:00">November 21, 2007 at 4:23 am</time></p>
      <p>In regards to jRails, is it unobtrusive? That's the main reason why I even use jQuery.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Darcy Laycock</strong> &middot; <time datetime="2007-11-21T07:15:00+00:00">November 21, 2007 at 7:15 am</time></p>
      <p>I have to agree with Chris - Inconsolata is a wonderful font and it looks great when coding for hours on it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>florian</strong> &middot; <time datetime="2007-11-21T09:09:00+00:00">November 21, 2007 at 9:09 am</time></p>
      <p>for more about fonts check out <a href="http://duncandavidson.com/archives/654" rel="nofollow">http://duncandavidson.com/archives/654</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>s0lnic</strong> &middot; <time datetime="2007-11-21T20:53:00+00:00">November 21, 2007 at 8:53 pm</time></p>
      <p>@Daniel Fischer According to examples from their website, it has nothing to do with unobtrusive approach to JavaScript. It works exactly the same as Prototype helpers, but generates jQuery code.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Fischer</strong> &middot; <time datetime="2007-11-22T06:31:00+00:00">November 22, 2007 at 6:31 am</time></p>
      <p>@s0lnic</p><p>Lame, what's the point then? =[</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-11-22T19:34:00+00:00">November 22, 2007 at 7:34 pm</time></p>
      <p>I'm guessing mostly because jQuery's faster and some people might still want to mostly write jQuery code without worrying about Prototype hanging around.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Martijn</strong> &middot; <time datetime="2007-11-23T12:41:00+00:00">November 23, 2007 at 12:41 pm</time></p>
      <p>After I got bored with Monaco after using it for some years, I've discovered Bitstream Vera Sans Mono..</p><p><a href="http://ftp.gnome.org/pub/GNOME/sources/ttf-bitstream-vera/1.10/" rel="nofollow">http://ftp.gnome.org/pub/GNOME/sources/ttf-bitstream-vera/1.10/</a></p><p>Very nice font and looks great in Textmate with dark backgrounds :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>rue</strong> &middot; <time datetime="2007-11-24T00:32:00+00:00">November 24, 2007 at 12:32 am</time></p>
      <p>The lack of the diagonal in 0 is a dealbreaker for me. Currently I use and very much like the only good thing to come out of Redmond.. MS Consolas.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James Knowlton</strong> &middot; <time datetime="2007-11-30T22:16:00+00:00">November 30, 2007 at 10:16 pm</time></p>
      <p>Thanks for the love Peter!  Your book introduced me to Ruby (I still like Python too...I guess for me languages are like ice cream flavors, you can like more than one).  Love the blog, I read it often.</p><p>James Knowlton</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Justin</strong> &middot; <time datetime="2007-12-07T14:18:00+00:00">December 7, 2007 at 2:18 pm</time></p>
      <p>Just installed inconsolata and love it.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
