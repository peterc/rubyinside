---
title: 'Rails 3.0′s ActiveModel: How To Give Ruby Classes Some ActiveRecord Magic'
date: '2010-01-13'
author: Peter Cooper
author_slug: admin
post_id: 2937
slug: rails-3-0s-activemodel-how-to-give-ruby-classes-some-activerecord-magic-2937
url: "/rails-3-0s-activemodel-how-to-give-ruby-classes-some-activerecord-magic-2937.html"
categories:
- cool
- ruby-on-rails
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2010/01/activemodel.gif" width="120" height="124" alt="activemodel.gif" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;"> One of the biggest benefits of bringing Merb developer Yehuda Katz on board to work on Rails 3.0 has been his relentless pursuit of extracting out all of Rails' magical abilities from their monolithic encasings and into separate, manageable chunks. A case in point is <a href="http://yehudakatz.com/2010/01/10/activemodel-make-any-ruby-object-feel-like-activerecord/">ActiveModel</a>, a new library that provides the model related parts of ActiveRecord but without the database requirements.</p>
<h3>Get Rails-like Model Behavior on Any Ruby Class</h3>
<p>In extracting the model-building parts of ActiveRecord, ActiveModel makes it possible to add model-like behavior to any Ruby class, with no Rails or databases required. In his latest blog post, <a href="http://yehudakatz.com/2010/01/10/activemodel-make-any-ruby-object-feel-like-activerecord/">ActiveModel: Make Any Ruby Object Feel Like ActiveRecord</a>, Yehuda shows off how to get Rails-style models with validations, serialization, callbacks, dirty tracking, internationalization, attributes, observers and all the other Rails goodness.</p>
<h3>Example Code</h3>
<p>I've taken Yehuda's main example of using ActiveModel on a non Rails class and extended it with some code that actually uses the model:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">active_model</span><span class="punct">'</span>

<span class="keyword">class </span><span class="class">Person</span>
  <span class="ident">include</span> <span class="constant">ActiveModel</span><span class="punct">::</span><span class="constant">Validations</span>

  <span class="ident">validates_presence_of</span> <span class="symbol">:first_name</span><span class="punct">,</span> <span class="symbol">:last_name</span>

  <span class="ident">attr_accessor</span> <span class="symbol">:first_name</span><span class="punct">,</span> <span class="symbol">:last_name</span>
  <span class="keyword">def </span><span class="method">initialize</span><span class="punct">(</span><span class="ident">first_name</span><span class="punct">,</span> <span class="ident">last_name</span><span class="punct">)</span>
    <span class="attribute">@first_name</span><span class="punct">,</span> <span class="attribute">@last_name</span> <span class="punct">=</span> <span class="ident">first_name</span><span class="punct">,</span> <span class="ident">last_name</span>
  <span class="keyword">end</span>
<span class="keyword">end</span>

<span class="ident">a</span> <span class="punct">=</span> <span class="constant">Person</span><span class="punct">.</span><span class="ident">new</span><span class="punct">("</span><span class="string">Fred</span><span class="punct">",</span> <span class="constant">nil</span><span class="punct">)</span>
<span class="ident">a</span><span class="punct">.</span><span class="ident">valid?</span> <span class="comment"># =&gt; false</span>
<span class="ident">a</span><span class="punct">.</span><span class="ident">last_name</span> <span class="punct">=</span> <span class="punct">"</span><span class="string">Flintstone</span><span class="punct">"</span>
<span class="ident">a</span><span class="punct">.</span><span class="ident">valid?</span> <span class="comment"># =&gt; true</span>
</pre>
<p><span style="font-size: 14px; font-weight: bold;">Installing ActiveModel</span></p>
<p>If you're interested in ActiveModel and not so much in Rails 3.0, installing it is reasonably easy (though not as easy as only installing a gem just as yet):</p>
<ol>
<li>Go to or make a temporary directory</li>
<li><code>git clone git://github.com/rails/rails.git</code></li>
<li><code>cd rails</code></li>
<li><code>rake gem</code></li>
<li><code>gem install activesupport/pkg/activesupport-3.0.pre.gem</code></li>
<li><code>gem install activemodel/pkg/activemodel-3.0.pre.gem</code></li>
</ol>
<p>Once this is all done, the code example above will work.</p>
<p>As an aside, if you fancy having a go with the full pre-release (a.k.a. "pre") version of Rails 3.0, check out <a href="http://drnicwilliams.com/2009/11/03/first-look-at-rails-3-0-pre/">Dr Nic's slightly out of date but otherwise useful guide</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>SoftMind</strong> &middot; <time datetime="2010-01-13T16:56:00+00:00">January 13, 2010 at 4:56 pm</time></p>
      <p>Hi,</p><p>Looking forward to read such more articles of Rails 3. Your special ability as an author of Ruby book adds lots of charm in reading your blogs.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-01-13T17:24:00+00:00">January 13, 2010 at 5:24 pm</time></p>
      <p>Thanks!</p><p>Just as an added note.. be careful if you install these gems. I don't /think/ the ActiveSupport gem should clash with older versions but.. depending on how you're using it, it might. If other things fry, just remove the 3.0-pre version and you're back to where you were.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jamie Macey</strong> &middot; <time datetime="2010-01-13T19:11:00+00:00">January 13, 2010 at 7:11 pm</time></p>
      <p>Yehuda put out significantly more recent (and easier) instructions for Rails 3.0.pre 2 weeks ago: <a href="http://yehudakatz.com/2009/12/31/spinning-up-a-new-rails-app/" rel="nofollow">http://yehudakatz.com/2009/12/31/spinning-up-a-new-rails-app/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stephen Celis</strong> &middot; <time datetime="2010-01-13T19:40:00+00:00">January 13, 2010 at 7:40 pm</time></p>
      <p>Yehuda Katz recently posted about spinning up a new Rails 3.0 app here:</p><p><a href="http://yehudakatz.com/2009/12/31/spinning-up-a-new-rails-app" rel="nofollow">http://yehudakatz.com/2009/12/31/spinning-up-a-new-rails-app</a></p><p>It should provide more up-to-date instructions than Dr. Nic's.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2010-01-13T21:08:00+00:00">January 13, 2010 at 9:08 pm</time></p>
      <p>@Peter, isn't vendoring in Rails itself within Rails apps now standard practice?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Konstantin Haase</strong> &middot; <time datetime="2010-01-13T21:33:00+00:00">January 13, 2010 at 9:33 pm</time></p>
      <p>Also, you can use a separate gemset with rvm, to avoid messing with your dev env.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Grimm</strong> &middot; <time datetime="2010-01-13T22:37:00+00:00">January 13, 2010 at 10:37 pm</time></p>
      <p>OT: Where do you get the pictures you use for blog posts, and is the woman in this photo ok? (It looks like the weights are about to go behind her)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rahmal Conda</strong> &middot; <time datetime="2010-01-13T22:59:00+00:00">January 13, 2010 at 10:59 pm</time></p>
      <p>I've been brainstorming about how to include ActiveRecord-like validations and more recent active_support logic into a library I need to be compatible with earlier versions of rails.  This may be the answer I was looking for.  Thanks Peter!  This is why I come to this RubyInside first!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-01-13T23:05:00+00:00">January 13, 2010 at 11:05 pm</time></p>
      <p>@Andrew: Usually I make them myself or use legally sourced photos (iStockPhoto, Flickr Creative Commons, logos, etc). Sometimes, though, I just Photoshop images I don't really have any rights to, such as this one, and pray. Don't worry - she's fine, I'm sure. You can blame Photoshop's "content aware resizing" for the seemingly forthcoming disaster in the shot ;-)</p><p>This wasn't one of my best choices, to be fair. Since ActiveModel has no logo I wanted to go with something mildly amusing on the topic of a "model" doing something "active." First I had a busty chick on a Harley but thought that might attract some whining. So then I went for muscle chicks - same deal. This was a kinda last ditch "let's get it out there" image..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-01-13T23:06:00+00:00">January 13, 2010 at 11:06 pm</time></p>
      <p>@Daniel: Common practice, but not the standard practice, I believe.</p><p>@Stephen &amp; @Konstantin: Awesome suggestions.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jim</strong> &middot; <time datetime="2010-01-14T00:01:00+00:00">January 14, 2010 at 12:01 am</time></p>
      <p>Just a minor note...Ezra was the creator of Merb, not Yehuda.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-01-14T00:15:00+00:00">January 14, 2010 at 12:15 am</time></p>
      <p>@Jim: I'd say that's quite a key point actually.. thanks for the correction!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Pratik</strong> &middot; <time datetime="2010-01-14T08:20:00+00:00">January 14, 2010 at 8:20 am</time></p>
      <p>To give credits where it's due, most of the ActiveModel work was done by Josh Peek and some by me and Rick Olson, and had been in making long before the merge :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jay Godse</strong> &middot; <time datetime="2010-01-14T14:41:00+00:00">January 14, 2010 at 2:41 pm</time></p>
      <p>Rails validations are a great way to codify some of the intentions of the designer of the domain model. That leads to better code overall. </p><p>Kudos to Yehuda for making them available to all Ruby objects.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nick Treadway</strong> &middot; <time datetime="2010-01-14T20:36:00+00:00">January 14, 2010 at 8:36 pm</time></p>
      <p>I was just thinking wouldn't it be nice to use ActiveModel in a StaticMatic like project. Very nice.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
