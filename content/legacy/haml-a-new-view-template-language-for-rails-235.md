---
title: 'HAML: A new view template language for Rails'
date: '2006-09-14'
author: Peter Cooper
author_slug: admin
post_id: 235
slug: haml-a-new-view-template-language-for-rails-235
url: "/haml-a-new-view-template-language-for-rails-235.html"
categories:
- cool
- ruby-on-rails
---

{{< rawhtml >}}
<p><a href="http://unspace.ca/discover/haml/">HAML</a> is a new template language for Ruby on Rails developed by Hampton Catlin, a Canadian Rails developer. It's a high-level, heavily semantic language that breaks the mold of RHTML and makes it very hard to make markup errors. In a way similar to Python, HAML relies on indentation, which it uses to enforce DOM hierarchy.</p>
<p>Here's an example of some HAML code in action:</p>
<pre>!!!
%html
  %head
    %title Client Admin Site
    %meta{"http-equiv"=&gt;"Content-Type",
       :content=&gt;"text/html; charset=utf-8"}/
    = stylesheet_link_tag 'tabbed'
    = javascript_include_tag 'tabbed'
  %body
    #application
      #header
        .container
          .statusbar
            .logo
              %strong Admin Interface
            .menu= link_to 'logout',
               :controller =&gt; 'account', :action =&gt; 'logout'
          %br{:style=&gt;"clear:both;"}/
          .tabs
            %ul.navigation
              %li= link_to 'Member Approval', member_admin_url
              %li= link_to 'User Management', user_admin_url,
                 :class =&gt; 'selected'
              %li= link_to 'Pages', page_admin_url
              %li= link_to 'Reports', reports_url
              %li= link_to 'Help', '/'
      #page
        #content
          //These will only render if there is
             a non-false value returned from the helper
          #errors= print_flash(:error)
          #notice= print_flash(:notice)
          = @content_for_layout
        #sidebar= @content_for_sidebar || false
        %hr/
      #footer
        %p= "Copyright Hampton Catlin 2006"</pre>
<p>Learn more in <a href="http://unspace.ca/discover/haml/">this article</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>ncalpunker</strong> &middot; <time datetime="2006-09-14T00:25:00+00:00">September 14, 2006 at 12:25 am</time></p>
      <p>Yuk! Yet another templating engine...when will people learn, lol.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chadwick</strong> &middot; <time datetime="2006-09-14T01:08:00+00:00">September 14, 2006 at 1:08 am</time></p>
      <p>This hurts my head.  I have a hard time seeing what advantages this has of any other template engine.</p><p>I'm still waiting for someone (myself?) to implement a TAL (<a href="http://www.zope.org/Wikis/DevSite/Projects/ZPT/TAL%20Specification%201.4" rel="nofollow">http://www.zope.org/Wikis/DevSite/Projects/ZPT/TAL%20Specification%201.4</a>) engine.  If you're going to use a template engine, it might as well be nice valid XML.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ezra</strong> &middot; <time datetime="2006-09-14T01:39:00+00:00">September 14, 2006 at 1:39 am</time></p>
      <p>Actually, I think nice in its own way. The only real showstopper is that it does not handle multi line ruby statements. So you can't write the normal @foo.each multi line iteration. Not sure why they decided to do that but its fairly limiting unless I am missing something here.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jason</strong> &middot; <time datetime="2006-09-14T01:55:00+00:00">September 14, 2006 at 1:55 am</time></p>
      <p>I quite like this from the standpoint that I hate HTML and XHTML, but I think this will be hard for people to adopt only because it is yet another thing for someone to learn and there will be fewer examples. I'm not saying this is good, just the way it probably will be.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aaron Blohowiak</strong> &middot; <time datetime="2006-09-14T03:38:00+00:00">September 14, 2006 at 3:38 am</time></p>
      <p>I don't like this. </p><p>Markaby <a href="http://markaby.rubyforge.org/" rel="nofollow">http://markaby.rubyforge.org/</a> does this better, if you must.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>rubylicio.us</strong> &middot; <time datetime="2006-09-14T07:44:00+00:00">September 14, 2006 at 7:44 am</time></p>
      <p>Quite nice actually, I like how he got it simular to actuall CSS with "#" for uniqe ids, "." for classes and well, I guess % is ok for normal tags :). As ezra is pointing out it wouldn't be bad still having the  possibilities.. or maybe it's there, I see some link_to's in there after ='s..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rimantas</strong> &middot; <time datetime="2006-09-14T08:45:00+00:00">September 14, 2006 at 8:45 am</time></p>
      <p>Oh, no... Looks like HARM to me...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeroen</strong> &middot; <time datetime="2006-09-14T09:05:00+00:00">September 14, 2006 at 9:05 am</time></p>
      <p>I wonder how this performs! I can't imagine that it's quicker than the current template engine. Does anybody know this?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>evan</strong> &middot; <time datetime="2006-09-14T09:32:00+00:00">September 14, 2006 at 9:32 am</time></p>
      <p>I don't see much benefit to this over Markaby. With Markaby, your markup must validate as valid Ruby code, blocks and all, because it is real Ruby code. This means anything in Ruby is supported, you can't misnest anything, errors are caught early, and you don't have to learn any new syntax (ok, 30 seconds of new syntax: [ tag.idname!.classname ] == [ tag :id =&gt; 'idname', :class =&gt; 'classname' ]== [  ] ).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>evan</strong> &middot; <time datetime="2006-09-14T09:33:00+00:00">September 14, 2006 at 9:33 am</time></p>
      <p>WordPress swallowed my html tag example; sigh...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-09-14T10:31:00+00:00">September 14, 2006 at 10:31 am</time></p>
      <p>One thing I do like about it (whether for good or bad reasons) is the way you don't need to remember to close off a block.. but then I hit into one reason why I hate Python.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sarah</strong> &middot; <time datetime="2006-09-14T12:39:00+00:00">September 14, 2006 at 12:39 pm</time></p>
      <p>Ugh, why try to turn any aspect of Ruby into Python?  Awful, disgusting whitespace requirements...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>David Marko</strong> &middot; <time datetime="2006-09-14T14:14:00+00:00">September 14, 2006 at 2:14 pm</time></p>
      <p>Would be great if someone could implement PageTemplates that Python has. Its great way how to embed code into tags and let designer goes his way.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ncalpunker</strong> &middot; <time datetime="2006-09-14T16:14:00+00:00">September 14, 2006 at 4:14 pm</time></p>
      <p>I agree with Chadwick about TAL.  It has its good and bad, but if you are working with a designer and want to do round-trip design with something like dreamweaver, it is the best solution I have seen to date.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Philip Green</strong> &middot; <time datetime="2006-09-14T16:54:00+00:00">September 14, 2006 at 4:54 pm</time></p>
      <p>More discussion can be found on the RoR-talk list: <a href="http://groups.google.com/group/rubyonrails-talk/browse_frm/thread/52a625a3f379f73a/e61fa29c4a48ef67?" rel="nofollow">http://groups.google.com/group/rubyonrails-talk/browse_frm/thread/52a625a3f379f73a/e61fa29c4a48ef67?</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
