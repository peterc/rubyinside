---
title: 'sexy_scopes: Syntactic sugar for ActiveRecord 3.0 and Arel'
date: '2010-06-20'
author: Peter Cooper
author_slug: admin
post_id: 3445
slug: sexy_scopes-syntactic-sugar-for-activerecord-3-0-and-arel-3445
url: "/sexy_scopes-syntactic-sugar-for-activerecord-3-0-and-arel-3445.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<blockquote class="stylized"><p><a href="http://github.com/samleb/sexy_scopes">sexy_scope</a> is a small wrapper around Arel::Attribute that adds a little syntactic sugar when creating scopes in ActiveRecord. It adds an attribute class method which takes an attribute name and returns an Arel::Attribute wrapper, which responds to common operators to return predicates objects that can be used as arguments to ActiveRecord::Base.where.</p></blockquote>
<p><cite>Samuel Lebeau</cite></p>
<p>Some sample code will clear up any confusion:</p>
<pre><code>class Product &lt; ActiveRecord::Base
  scope :untitled, where(attribute(:name) == nil)

  def self.cheaper_than(price)
    where attribute(:price) &lt; price
  end

  def self.search(term)
    where attribute(:name) =~ "%#{term}%"
  end
end</code></pre>
<p>sexy_scope reimplements <a href="http://github.com/rails/arel">Arel</a> attribute methods like <code>lt</code>, <code>in</code>, <code>matches</code> and <code>not</code> using regular Ruby operators.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jon Leighton</strong> &middot; <time datetime="2010-06-20T19:53:00+00:00">June 20, 2010 at 7:53 pm</time></p>
      <p>Cool. I gotta say I'm glad he hasn't chosen to add methods to Symbol, which is the approach taken by Mongoid, MongoMapper and DataMapper. Yeah, it's slightly less verbose, but it's so _wrong_!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ernie Miller</strong> &middot; <time datetime="2010-06-22T12:35:00+00:00">June 22, 2010 at 12:35 pm</time></p>
      <p>Yeah, I seem to remember him saying he tossed it together because he didn't like that MetaWhere adds methods to symbol. I disagree that it's always evil to do so, particularly when there's little chance of namespace collision and the problem domain being addressed by the gem is well-defined... There's a fine line between best practices and dogma. ;)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
