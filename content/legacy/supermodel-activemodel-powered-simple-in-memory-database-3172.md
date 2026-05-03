---
title: 'Supermodel: Simple ActiveModel-Powered In-Memory Models'
date: '2010-03-26'
author: Peter Cooper
author_slug: admin
post_id: 3172
slug: supermodel-activemodel-powered-simple-in-memory-database-3172
url: "/supermodel-activemodel-powered-simple-in-memory-database-3172.html"
categories:
- cool
---

{{< rawhtml >}}
<p><img src="/assets/2010/03/supermodel.png" class="alignleft size-thumbnail bordered"><a href="http://github.com/maccman/supermodel">Supermodel</a> is a new library by Alex Maccaw that uses the Rails 3.0 <a href="rails-3-0s-activemodel-how-to-give-ruby-classes-some-activerecord-magic-2937.html">ActiveModel</a> library to provide ActiveRecord-esque in-memory "database" storage in Ruby.</p>
<p>Supermodel is best demonstrated with a basic example:</p>
<pre><code>require 'supermodel'

class Person &lt; SuperModel::Base; end

a = Person.new( :name =&gt; "Jim" )
a.save

Person.find_by_name('Jim') # =&gt; #&lt;Person&gt;
Person.all # =&gt; [#&lt;Person&gt;]</code></pre>
<p>This is just the start! Out of the box, Supermodel supports validations, callbacks, observers, dirty change tracking, and serialization. It also allows you, with only a little magic, to go beyond ephemeral memory-only structures and marshall your SuperModel-based objects to disk or even to a <a href="http://code.google.com/p/redis/">Redis</a> store.</p>
<p>A more complex example that includes randomly generated IDs and validations:</p>
<pre><code>require 'supermodel'

class Person &lt; SuperModel::Base
  include SuperModel::RandomID
  attributes :name
  validates_presence_of :name
end

a = Person.new
a.valid? # =&gt; false
a.name = "Jim"
a.valid? # =&gt; true
a.save
a.id # =&gt; "6481a4fcd834e567836587c6da"</code></pre>
<p>It's early days for Supermodel, but I can see it becoming a big deal for Rubyists away from the Rails stack. The gemified version doesn't have support for relationships yet, but the edge version on GitHub has early support for <code>belongs_to</code> and <code>has_many</code> included.Alex has written the code in a well structured way and creating modules or subclasses to add support for interacting with other backends (such as, say, Tokyo Cabinet) doesn't look like it'd be too hard.</p>
<p>Supermodel shows a lot of promise and is what I was originally hoping <code>ActiveModel</code> was going to be. It provides just the right level of abstraction and separation from the database, but without losing the goodness we came to enjoy from ActiveRecord over the past few years.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jared Fine</strong> &middot; <time datetime="2010-03-26T19:17:00+00:00">March 26, 2010 at 7:17 pm</time></p>
      <p>Very cool stuff.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alex MacCaw</strong> &middot; <time datetime="2010-03-26T21:29:00+00:00">March 26, 2010 at 9:29 pm</time></p>
      <p>Thanks Peter,</p><p>I've also re-written it in JavaScript for those people doing web applications:<br>
<a href="http://github.com/maccman/supermodel-js" rel="nofollow">http://github.com/maccman/supermodel-js</a></p><p>It speeds up development considerably - check out the source of <a href="http://github.com/maccman/ymockup" rel="nofollow">http://github.com/maccman/ymockup</a> for a good example.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tim</strong> &middot; <time datetime="2010-03-27T08:44:00+00:00">March 27, 2010 at 8:44 am</time></p>
      <p>if you are specifically looking for an object-redis-mapper, you might also want to check out ohm, or my freshly released</p><p><a href="http://github.com/tlossen/remodel" rel="nofollow">http://github.com/tlossen/remodel</a></p><p>"a minimal ORM in less than 300 lines of ruby" -- including full association support.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
