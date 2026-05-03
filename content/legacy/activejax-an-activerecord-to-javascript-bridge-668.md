---
title: 'ActiveJax: An ActiveRecord to JavaScript Bridge'
date: '2007-12-07'
author: Peter Cooper
author_slug: admin
post_id: 668
slug: activejax-an-activerecord-to-javascript-bridge-668
url: "/activejax-an-activerecord-to-javascript-bridge-668.html"
categories:
- miscellaneous
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2007/12/ActiveJaxLogo.jpg" width="189" height="80"></p>
<p><a href="http://rails.simpltry.com/active_jax.html">ActiveJax</a> is a Rails plugin developed by Nicholas Schlueter that acts as a bridge between ActiveRecord and <a href="http://www.prototypejs.org/">Prototype</a>-backed JavaScript. This means you can call ActiveRecord model methods from JavaScript using AJAX. Example:</p>
<pre>
ActiveJax.Author.find_by_name("Nicholas Schlueter").each(function(author) {alert(author.name);});
</pre>
<p>I asked Nicholas how this differs from the existing <a href="http://giantrobots.thoughtbot.com/2007/4/2/jester-javascriptian-rest">Jester</a> library developed by Thoughtbot. One significant difference is the syntax. ActiveJax's mechanisms are all embedded underneath the ActiveJax object, whereas Jester offers up the "models" more directly within JavaScript. ActiveJax also doesn't depend on the application providing RESTful services, it's possible to call any method on the models. All this said, the motivations for using Jester versus ActiveJax cross significantly, so it's worth checking out both libraries if this is an area that interests you.<br>
More info is available in <a href="http://www.simpltry.com/2007/11/23/ann-active-jax/">this blog post</a> by Nicholas, including a link to a sample application.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Eric Anderson</strong> &middot; <time datetime="2007-12-07T14:27:00+00:00">December 7, 2007 at 2:27 pm</time></p>
      <p>Is it me or does this seem slightly dangerous. Hope nobody opens up the console and does:</p><p>User.destroy_all</p><p>I'm sure there is some security built in but seems like you would have to be very careful to lock down your object.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nicholas Schlueter</strong> &middot; <time datetime="2007-12-07T14:57:00+00:00">December 7, 2007 at 2:57 pm</time></p>
      <p>Hey, you are right, this is dangerous.  By default it only exposes methods that start with "find".  If you have destructive finders you could still be in trouble though.  As always, use caution and you will be fine.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Steven Soroka</strong> &middot; <time datetime="2007-12-08T21:16:00+00:00">December 8, 2007 at 9:16 pm</time></p>
      <p>and what about attributes?  There could be private data in there.</p><p>can't I just write a query to give me user.password and user.salt (if it's hashed) ?</p><p>it also says it's possible to call any method on the models.  What about destroy? authorize! name=(new_name), password=(new_password).... </p><p>This scares me.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paul M. Watson</strong> &middot; <time datetime="2007-12-10T21:47:00+00:00">December 10, 2007 at 9:47 pm</time></p>
      <p>If a client-side library can expose security problems in your server-side interface then you have other problems.</p><p>With proper server-side scoping this is a useful library.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brandon Z</strong> &middot; <time datetime="2007-12-12T02:59:00+00:00">December 12, 2007 at 2:59 am</time></p>
      <p>@Paul:<br>
but your client-side library can't do *anything* unless the server-side interface allows it.   (And, if I understand correctly, ActiveJax provides both.)  So I'm not sure if I follow what your point is.  It sounds as if you're trying to dismiss the security concerns raised here.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nicholas Schlueter</strong> &middot; <time datetime="2007-12-17T21:38:00+00:00">December 17, 2007 at 9:38 pm</time></p>
      <p>Just for posterity, active_jax by default exposes all finders and all attributes on the models.  Associations are opt-in, and you can exclude any column, server-side, you need to exclude.  active_jax will never expose any instance methods off your models, I hope this clears things up.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
