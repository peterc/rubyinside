---
title: 'awesome_print: A New Pretty Printer for your Ruby Objects'
date: '2010-04-07'
author: Peter Cooper
author_slug: admin
post_id: 3208
slug: awesome_print-a-new-pretty-printer-for-your-ruby-objects-3208
url: "/awesome_print-a-new-pretty-printer-for-your-ruby-objects-3208.html"
categories:
- cool
---

{{< rawhtml >}}
<p><img src="/assets/2010/04/crazyprinter.png" class="alignleft size-thumbnail bordered"><a href="http://github.com/michaeldv/awesome_print">awesome_print</a> is a Ruby tool that provides "pretty printing" support for your objects. It's a bit like <code>p</code>, <code>pp</code> or, if you prefer, <code>puts obj.inspect</code>, but with significantly improved, contextual, colored output. Its creator and maintainer is Michael Dvorkin of <a href="http://www.fatfreecrm.com/">Fat Free <span class="caps">CRM</span></a> fame.</p>
<p>Being able to see "inside" Ruby objects on the fly can prove useful whether you're debugging some code your tests did not dare reach or you're just playing around in <code>irb</code>. The most common way to examine objects is with <code>p</code> or the <code>inspect</code> method, but these don't format their output in a particularly easy-to-read way. <a href="http://ruby-doc.org/stdlib/libdoc/pp/rdoc/index.html"><code>pp</code></a> - part of the standard library - is a <strong>pretty printer</strong> that improves matters but it still leaves a lot to be desired. <strong>awesome_print</strong> takes it all to the next level.</p>
<p>A visual comparison between <code>pp</code> and <strong>awesome_print</strong> proves compelling:</p>
<p><img src="/assets/2010/04/apdemo.png" alt=""></p>
<p><em>awesome_print</em>'s most compelling features are showing you the index of array elements within its output, inheritance for the classes of embedded objects, and color coding. Further, it's highly customizable, with the ability to set indent levels as well as the colors for each type of data shown.</p>
<p>To get up and running, <code>gem install awesome_print</code> and then <code>require 'ap'</code> and use <code>ap</code> in place on anywhere you'd usually use <code>p</code>. Yep, that's it.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Trevor Menagh</strong> &middot; <time datetime="2010-04-07T12:36:00+00:00">April 7, 2010 at 12:36 pm</time></p>
      <p>What a great tool! Thanks for showcasing it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>kenny</strong> &middot; <time datetime="2010-04-07T14:00:00+00:00">April 7, 2010 at 2:00 pm</time></p>
      <p>This is awesome.  </p><p>It would be nice to have a version paired down with sensible defaults put into a single include file, so we could just put it in our source tree.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Justin @ PickFu</strong> &middot; <time datetime="2010-04-07T16:45:00+00:00">April 7, 2010 at 4:45 pm</time></p>
      <p>Very nice.  Definitely makes it easier to read objects with lots of attributes.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jim</strong> &middot; <time datetime="2010-04-08T04:31:00+00:00">April 8, 2010 at 4:31 am</time></p>
      <p>Thanks for this :D</p><p>I forked the plugin and added an OPTIONS constant so configuring the plugin will be easy.</p><p>Just include the following lines in your .irbrc</p><p>require 'ap'</p><p>AwesomePrint::OPTIONS.merge!(<br>
  :multiline =&gt; true,<br>
  :indent    =&gt; 2<br>
)</p><p>for automatic loading of your configuration.</p><p>fork at <a href="http://bit.ly/a2LfqA" rel="nofollow">http://bit.ly/a2LfqA</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael Dvorkin</strong> &middot; <time datetime="2010-04-08T04:41:00+00:00">April 8, 2010 at 4:41 am</time></p>
      <p>I've added support for storing custom defaults in ~/.aprc file. Check out awesome_print 0.1.3 <a href="http://github.com/michaeldv/awesome_print" rel="nofollow">http://github.com/michaeldv/awesome_print</a></p><p>Enjoy! :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>hooopo</strong> &middot; <time datetime="2010-04-08T05:50:00+00:00">April 8, 2010 at 5:50 am</time></p>
      <p>awesome!! thanks a lot!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Olivier BONNAURE</strong> &middot; <time datetime="2010-04-08T08:58:00+00:00">April 8, 2010 at 8:58 am</time></p>
      <p>Nice tool, but it require 'active_record' to works properly !</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Sandridge</strong> &middot; <time datetime="2010-04-09T15:51:00+00:00">April 9, 2010 at 3:51 pm</time></p>
      <p>Just add this to your .irbrc if you want all return values to print via awesome_print:</p><p>require 'ap'<br>
module IRB<br>
  class Irb<br>
    def output_value<br>
      ap @context.last_value<br>
    end<br>
  end<br>
end</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Trans</strong> &middot; <time datetime="2010-04-09T22:34:00+00:00">April 9, 2010 at 10:34 pm</time></p>
      <p>Well, the color's nice. But I always just used #y when I needed nicer output.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>manveru</strong> &middot; <time datetime="2010-04-10T04:08:00+00:00">April 10, 2010 at 4:08 am</time></p>
      <p>A quick comparision of y and ap:</p><p>ap "オリジナル" # =&gt; "オリジナル"<br>
y "オリジナル" # =&gt; --- "\xE3\x82\xAA\xE3\x83\xAA\xE3\x82\xB8\xE3\x83\x8A\xE3\x83\xAB"</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Suraj N. Kurapati</strong> &middot; <time datetime="2010-04-18T19:44:00+00:00">April 18, 2010 at 7:44 pm</time></p>
      <p>@Trans, @manveru What's this mysterious #y method?  It's hard to google it... could you please provide a link?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Evgeniy Dolzhenko</strong> &middot; <time datetime="2010-04-26T13:05:00+00:00">April 26, 2010 at 1:05 pm</time></p>
      <p>@Suraj <a href="http://github.com/shyouhei/ruby/blob/trunk/ext/syck/lib/syck.rb#L436" rel="nofollow">http://github.com/shyouhei/ruby/blob/trunk/ext/syck/lib/syck.rb#L436</a></p><p>In other words `y` is the same as `puts(arg.to_yaml)`</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael Dvorkin</strong> &middot; <time datetime="2010-05-06T05:36:00+00:00">May 6, 2010 at 5:36 am</time></p>
      <p>awesome_print 0.2.0 is now available: <a href="http://www.rubyflow.com/items/3857" rel="nofollow">http://www.rubyflow.com/items/3857</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
