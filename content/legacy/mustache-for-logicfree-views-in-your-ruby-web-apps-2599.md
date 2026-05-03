---
title: 'Mustache: Logic-Free Views For Your Ruby Web Apps'
date: '2009-10-07'
author: Ric Roberts
author_slug: ricroberts
post_id: 2599
slug: mustache-for-logicfree-views-in-your-ruby-web-apps-2599
url: "/mustache-for-logicfree-views-in-your-ruby-web-apps-2599.html"
categories:
- cool
- miscellaneous
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2009/10/burt.jpg" alt="mustache" style="float:left; margin-right:12px; margin-bottom:12px;"><strong><a href="http://github.com/defunkt/mustache">Mustache</a></strong> is a new templating library from Chris Wanstrath (a.k.a. <a href="http://defunkt.github.com/">defunkt</a> of GitHub fame) that provides a way to render views in your chosen Ruby web framework. Influenced by <a href="http://code.google.com/p/google-ctemplate/">ctemplate</a>, Mustache helps to keep your <a href="http://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller">MVC</a> layers separate <strong>by actively preventing the inclusion of application logic in your views.</strong></p>
<p>With Mustache, the typical view layer is split up into two sub-layers: a Ruby Class-based "view" and an HTML "template", so you can concentrate on crafting your HTML without polluting it with embedded Ruby logic.  This separation also makes it easier to test your view-code.</p>
<p>Amusingly, the name of the project comes from the way that you insert references to the view class into the template.  Tags are denoted by double curly braces, or "mustaches". e.g. <code>{{name}}</code>.</p>
<p>In their simplest form, tags are just calls to methods on your Ruby view class.  But they can also take more complex forms such as block definitions, calls to partials or helpers (from modules included into your view class).</p>
<p>There are <a href="http://github.com/defunkt/mustache/tree/master/examples/">more examples</a> and <a href="http://defunkt.github.com/mustache">documentation</a> in the GitHub project, but here's a canonical usage example from the <a href="http://github.com/defunkt/mustache/blob/master/README.md">README</a>:</p>
<h3>View Logic:</h3>
<pre>
class Simple &lt; Mustache
  def name
    "Chris"
  end

  def value
    10_000
  end

  def taxed_value
    value - (value * 0.4)
  end

  def in_ca
    true
  end
end
</pre>
<h3>Template:</h3>

<pre>
Hello {{name}}
You have just won ${{value}}!
{{#in_ca}}
Well, ${{taxed_value}}, after taxes.
{{/in_ca}}
</pre>
<p>At the moment, only Sinatra support is provided "out of the box", but it should be fairly easy to integrate with other Ruby frameworks.</p>
<h3>Installation</h3>
<p>Mustache is available from <a href="gemcutter-a-fast-and-easy-approach-to-ruby-gem-hosting-2281.html">Gemcutter</a> or <a href="rip-ruby-packaging-system-1837.html">Rip.</a> Install in one of two ways:</p>
<pre>
$ gem install mustache
$ rip install git://github.com/defunkt/mustache.git
</pre>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><a href="http://www.codebasehq.com/?utm_source=rubyinside&amp;utm_medium=footer&amp;utm_campaign=sep09" rel="nofollow"><img src="/assets/2009/09/CodebaseLogo-RI.png" width="118" height="37" style="float: right; margin-left: 12px; margin-bottom: 12px" alt="CodebaseLogo-RI.png"></a><em>[ad]</em> <a href="http://www.codebasehq.com/?utm_source=rubyinside&amp;utm_medium=footer&amp;utm_campaign=sep09" rel="nofollow"><b>Codebase</b></a> is a fast &amp; reliable <b>git, mercurial &amp; subversion hosting</b> service with complete project management built-in - ticketing, milestones, wikis &amp; time tracking - all under one roof. <a href="http://www.codebasehq.com/?utm_source=rubyinside&amp;utm_medium=footer&amp;utm_campaign=sep09" rel="nofollow">Click here to try it - free.</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jerod Santo</strong> &middot; <time datetime="2009-10-07T16:59:00+00:00">October 7, 2009 at 4:59 pm</time></p>
      <p>How easy is it to swap out ERB and use Mustache in Rails?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>eugegim</strong> &middot; <time datetime="2009-10-07T17:03:00+00:00">October 7, 2009 at 5:03 pm</time></p>
      <p>Very cool! I like keeping as much logic out of the views as possible</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2009-10-07T17:09:00+00:00">October 7, 2009 at 5:09 pm</time></p>
      <p>@Jerod It's not there yet, but we're making progress. Here's a comparison of the two though: <a href="http://gist.github.com/204222" rel="nofollow">http://gist.github.com/204222</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jerod Santo</strong> &middot; <time datetime="2009-10-07T17:50:00+00:00">October 7, 2009 at 5:50 pm</time></p>
      <p>@Chris: cool, thanks for the comparison. I like Mustache's simplicity, but at this point ERB is so engrained in my brain that I can still grok it faster. That would change with time, of course.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Vojto</strong> &middot; <time datetime="2009-10-07T18:13:00+00:00">October 7, 2009 at 6:13 pm</time></p>
      <p>Won't beat HAML. HAML is the best ERB replacement.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>cies</strong> &middot; <time datetime="2009-10-07T18:41:00+00:00">October 7, 2009 at 6:41 pm</time></p>
      <p>@vojto: true, haml rules. but it allowes you to use ugly^H^H^H dirty^H^H^H dangerous ruby inside your views...</p><p>too bad i like ruby, and i like to be allowed to put a little logic in the views -- otherwise i might have liked mustache.</p><p>:-{D</p>
    </li>
      <li>
      <p class="comment-meta"><strong>grimen</strong> &middot; <time datetime="2009-10-07T18:49:00+00:00">October 7, 2009 at 6:49 pm</time></p>
      <p>Did I miss something, or is this not very compatible with I18n out-of-box (all translations in one place)? Hmm.... any ideas?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>andhapp</strong> &middot; <time datetime="2009-10-07T18:50:00+00:00">October 7, 2009 at 6:50 pm</time></p>
      <p>Are we going back to Classic ASP with a code behind page(doing most of the processing) and the asp page displaying it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>grimen</strong> &middot; <time datetime="2009-10-07T18:51:00+00:00">October 7, 2009 at 6:51 pm</time></p>
      <p>Hmm...maybe my conclusion was drawn a bi fast. After peepin the gist above maybe it's quite easy to tweak and still keep the views not to messy. Need to sandbox around a bit...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-10-07T18:56:00+00:00">October 7, 2009 at 6:56 pm</time></p>
      <p>andhapp: What's old is new again? :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2009-10-07T19:48:00+00:00">October 7, 2009 at 7:48 pm</time></p>
      <p>This is an old idea in many languages - Perl, Java, ASP, etc.</p><p>@grimen I'd love to see the results of your experimentation. Reach me on GitHub or Twitter as @defunkt. Thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>peterlih</strong> &middot; <time datetime="2009-10-07T21:51:00+00:00">October 7, 2009 at 9:51 pm</time></p>
      <p>@andhapp Code-Behind in asp.net was my first association as well. But I think it is a pretty useful concept ... Cool thing. I got to try it out ...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael</strong> &middot; <time datetime="2009-10-08T05:24:00+00:00">October 8, 2009 at 5:24 am</time></p>
      <p>Yep this is JSP custom tags for ruby. I've been sort of doing this with helpers along the way but of course using standard ERB syntax (I've not seen the light of HAML and don't see the win over not being able to have designers work on my pages), to have it output snippets generated by my helpers. After mentioning this to one of my buddies he mentioned that django's templating was the best because you can extend templates and replace content blocks. Is there a ruby/rails equivalent of that yet?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nick Quaranto</strong> &middot; <time datetime="2009-10-08T06:01:00+00:00">October 8, 2009 at 6:01 am</time></p>
      <p>I really don't see this as ASP.net code-behind at all. That model, especially how it treated HTTP (PostBack? Really?) is fundamentally broken. </p><p>I think Mustache could be a great way to really enforce testing for views and make sure they look as neat as possible. Don't get me wrong, I can deal with HAML, and ERB is my wingman, but soon I'll be riding off into the sunset with Mustache.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Guoliang Cao</strong> &middot; <time datetime="2009-10-08T13:54:00+00:00">October 8, 2009 at 1:54 pm</time></p>
      <p>I like the idea. I think it is pretty neat. One of my colleague comes up the idea of using a plain hash for all our web services views, and it worked pretty well.</p><p>However, using # and / to open and close tag does not sound great to me. Maybe using  instead.</p><p>{{in_ca}}</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Guoliang Cao</strong> &middot; <time datetime="2009-10-08T13:56:00+00:00">October 8, 2009 at 1:56 pm</time></p>
      <p>My code sample using &lt; and &gt;</p><p>{{&lt;in_ca}}<br>
Well, ${{taxed_value}}, after taxes.<br>
&#123;&#123;%gt;in_ca}}</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Guoliang Cao</strong> &middot; <time datetime="2009-10-08T13:56:00+00:00">October 8, 2009 at 1:56 pm</time></p>
      <p>Sorry, messed up again<br>
===============================<br>
My code sample using &lt; and &gt;</p><p>{{&lt;in_ca}}<br>
Well, ${{taxed_value}}, after taxes.<br>
{{&gt;in_ca}}</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris</strong> &middot; <time datetime="2009-10-08T20:18:00+00:00">October 8, 2009 at 8:18 pm</time></p>
      <p>@Guoliang We plan to make all the syntax customizable in the future.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Juvenn Woo</strong> &middot; <time datetime="2009-10-11T17:40:00+00:00">October 11, 2009 at 5:40 pm</time></p>
      <p>I tried `rip install haml`, but rip complains with an error `undefined method "strip" for nil.NilClass`.<br>
Then I googled `rip install haml`, surprisingly there's a beautiful mustache ... I'm love'in it!<br>
Thanks @defunkt.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dylan</strong> &middot; <time datetime="2009-10-13T23:09:00+00:00">October 13, 2009 at 11:09 pm</time></p>
      <p>@Chris:  Slick!  Do you have any idea how it performs, in comparison with ERB, HAML, Erubis, Pre-Compiled Erubis?  If not, let me know and I'd be happy to bench.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
