---
title: A Closer Look at ZiYa – The Flash Chart Plugin For Rails
date: '2007-01-17'
author: Peter Cooper
author_slug: admin
post_id: 359
slug: a-closer-look-at-ziya-the-flash-chart-plugin-for-rails-359
url: "/a-closer-look-at-ziya-the-flash-chart-plugin-for-rails-359.html"
categories:
- cool
- elsewhere
- ruby-on-rails
- tools
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2007/01/ziya-1.jpg" height="234" width="343" border="1" hspace="4" vspace="4" alt="Ziya-1"></p>
<p>Just a few weeks ago, a new Rails chart system called <a href="http://ziya.liquidrail.com/">ZiYa</a> was <a href="ziya-easy-flash-based-charts-for-rails-apps-344.html">briefly mentioned</a> on Ruby Inside. ZiYa is unique in that it can render graphically complex charts from data in your Rails application with a bare minimum of code. The layout and style of the charts is defined via special YAML stylesheets, sprinkled with a bare minimum of Ruby code.</p>
<p>Since ZiYa was first mentioned here, a lot has happened with it. <a href="http://ziya.liquidrail.com/">ZiYa's official site</a> is now full of comprehensive samples and documentation, and even <a href="http://www.youtube.com/watch?v=axIMmMHdXzo">a screencast is available demonstrating how to get a ZiYa chart working</a> in just several minutes. Given all of these developments, I thought I'd ask lead developer Fernand Galiana a few questions about ZiYa.</p>
<p><strong><em>Ruby Inside:</em></strong><strong> What was the motivation behind developing ZiYa?</strong></p>
<blockquote>
<p><strong><em>Fernand Galiana:</em></strong> I work for a company that deals with financial data where charts are worth a thousand words. We always get requests for various charts, and in the past we've used Gruff to produce them. Gruff is a great library and the results look good too! However, recently we've have more demanding requirements to provide more dynamic behavior on the charts. Users wanted to be able to interact with the charts in various ways and drill down to gather more information.</p>
<p>We looked at alternatives to Gruff, and decided to go with <a href="http://www.maani.us/xml_charts/index.php">XML/SWF charts</a>. This framework uses Flash rendering for charts and has great features, 24hr turnaround support and it's inexpensive. The other advantage is that we no longer had to deal with figuring out the various incantations to install RMagick on various servers. Moreover, we were able to delegate the actual chart rendering over to the client, which with dynamic graphs is key. All we had to do now on the server side is generate XML. This is what triggered the initial thoughts of leveraging Ruby to generate this XML.</p>
<p>The other motivation occurred when we wrote an internal reporting app that give us up to date information on what's going on in our database. My boss bought a nice 32" TFT flat panel. All day we cycle through various graphs representing critical data from our database. If something goes off in our internal processing, we all see it right there on the big screen! This is where the YAML style sheet idea came about as we wanted to create a special look and feel and since creating and customizing many different charts was a necessary feature, using style sheets makes it easy.</p>
</blockquote>
<p><strong>Where do you see ZiYa going in future?</strong></p>
<blockquote><p>We have a few clean-up and housekeeping items on the list. I was also thinking about adding more out of the box helpers for the YAML stylesheets. And, naturally, more docs and tutorials are always good.</p></blockquote>
<p><strong>Are there are any interesting uses of ZiYa you've seen elsewhere so far?</strong></p>
<blockquote><p>A couple. One was an internal app that had several graphs that were all kept in sync, that is the user clicks on something on one graph and changes update on all of the other automatically using AJAX. Very cool. The other was using a tiny column chart for both status information <em>and</em> navigation. I did not think it was a ZiYa chart to start with, but some JavaScript widget!</p></blockquote>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Peter McMaster</strong> &middot; <time datetime="2007-01-17T19:02:00+00:00">January 17, 2007 at 7:02 pm</time></p>
      <p>"...just several minutes..." I like it.</p><p>"How many robbers were there ma'am?"<br>
"Just several."</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-01-17T19:25:00+00:00">January 17, 2007 at 7:25 pm</time></p>
      <p>Would you prefer it in exact number of seconds? :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tony Buser</strong> &middot; <time datetime="2007-01-17T20:25:00+00:00">January 17, 2007 at 8:25 pm</time></p>
      <p>This is really slick.  I recently did a project involving a lot of graphs in reports and would have loved to use this, unfortunately one of the requirements was that the graphs be printable.  Unfortunately, you can't print flash.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Fernand</strong> &middot; <time datetime="2007-01-18T01:09:00+00:00">January 18, 2007 at 1:09 am</time></p>
      <p>Hi Tom,</p><p>   Thanks actually you could print the chart but not directly...<br>
   Checkout this thread:</p><p><a href="http://groups.google.com/group/ziya-plugin/browse_frm/thread/a2bd9961096de490" rel="nofollow">http://groups.google.com/group/ziya-plugin/browse_frm/thread/a2bd9961096de490</a></p><p>-Fernand</p>
    </li>
      <li>
      <p class="comment-meta"><strong>MJ</strong> &middot; <time datetime="2007-01-18T04:17:00+00:00">January 18, 2007 at 4:17 am</time></p>
      <p>Wow a plugin!</p><p>I was already using XML/SWF charts to graph lock type vs num bike stolen in Portland.</p><p>And now there is a plugin to make it even easier!</p><p><a href="http://finetoothcog.com/site/graph_lock_type_portland" rel="nofollow">http://finetoothcog.com/site/graph_lock_type_portland</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sandro</strong> &middot; <time datetime="2007-01-18T09:20:00+00:00">January 18, 2007 at 9:20 am</time></p>
      <p>This is the kind of chart application I'm looking for !</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Henrik N</strong> &middot; <time datetime="2007-01-18T11:29:00+00:00">January 18, 2007 at 11:29 am</time></p>
      <p>There is a literal \n in the screenshot. ;) "Shipping date\n..."</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sean Cribbs</strong> &middot; <time datetime="2007-01-18T15:07:00+00:00">January 18, 2007 at 3:07 pm</time></p>
      <p>Looks really nice, but why bother with YAML?  There's enough emit () tags in the source that I personally think one could more clearly just write something like</p><p>chart :bar do<br>
  component :chart_value do<br>
    position :right<br>
  end<br>
  ...<br>
end</p><p>rather than using ERb.  Might be faster than ERb too!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John</strong> &middot; <time datetime="2007-01-18T20:38:00+00:00">January 18, 2007 at 8:38 pm</time></p>
      <p>Ziya was a great gateway drug that lead me to the XML/SWF Charts that underlies it:<br>
<a href="http://www.maani.us/xml_charts/" rel="nofollow">http://www.maani.us/xml_charts/</a></p><p>Emitting the XML myself has been fairly easy, and I find the documentation on the XML/SWF Charts site to be helpful.</p><p>Additionally:<br>
+ I found the abstractions that Ziya implements, while concise to be confusing and poorly documented.<br>
+ The themes that Ziya applies by default made some of my charts look worse than the plain XML/SWF charts.</p><p>Maybe my needs  aren't advanced enough to fully utilize the power and simplicity of Ziya.</p><p>Quick Disclosure:  I haven't tried to style my XML/SWF charts manually.  Ziya's themes seems to be designed to alleviate that stress, but as I haven't explored deeply enough, my opinion isn't educated on the matter.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Fernand</strong> &middot; <time datetime="2007-01-19T06:36:00+00:00">January 19, 2007 at 6:36 am</time></p>
      <p>Hi John,</p><p>   Thanks for voicing your feedback. Could you help us improve the documentation by<br>
   begin more specific on where we could improve the docs.<br>
   We gave it our best shot but our users input would help us improve..<br>
   Could you post on our google page so we can track it<br>
   <a href="http://groups.google.com/group/ziya-plugin/topics" rel="nofollow">http://groups.google.com/group/ziya-plugin/topics</a></p><p>   Also you don't have to use the themes at all if you like the swf default look and feel.<br>
   Currently you would have to del all the .yml in the default theme dir. We will make<br>
   a note of that and provide the swf lnf by default.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Fernand</strong> &middot; <time datetime="2007-01-19T06:40:00+00:00">January 19, 2007 at 6:40 am</time></p>
      <p>Sean,</p><p>    Thanks for your comment. </p><p>    The issue we were trying to avoid by adding yml is to have view specific information in the controller. By leveraging YAML and ERB we can keep a clean separation between the controller<br>
concerns and the view.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
