---
title: 'SQLDSL: A Ruby way to build SQL queries'
date: '2007-03-13'
author: Peter Cooper
author_slug: admin
post_id: 421
slug: sqldsl-a-ruby-way-to-build-sql-queries-421
url: "/sqldsl-a-ruby-way-to-build-sql-queries-421.html"
categories:
- cool
- ruby-tricks
---

{{< rawhtml >}}
<p><a href="http://sqldsl.rubyforge.org/">SQLDSL</a>, by <a href="http://jayfields.blogspot.com/">Jay Fields</a>, is, simply, "a library for creating SQL statements using Ruby code." Jay posted separately about <a href="http://blog.jayfields.com/2007/03/ruby-why-sqldsl.html">the pros and cons of SQLDSL</a> on his weblog, although he might be accused of bias with only one con to six pros (compelling as they may be).</p>
<p>Despite being another DSL to learn, SQLDSL follows SQL pretty closely (in contrast to ORM frameworks like ActiveRecord, Sequel, or Og):</p>
<pre>Select[:column1].from[:table1].where do
  name = person_name
end
</pre>
<p>And it even affords some clever logical tricks:</p>
<pre>Select[:column1].from[:table1, :table2].where do
  table1.column1 = table2.table1_id
  table1.column2 &gt;= quantity if quantity &gt; 0
end
</pre>
<p>One major future benefit of SQLDSL is that it provides a programatic abstraction of SQL that's still pretty close to the database layer, and could allow for easy vendor-specific SQL manipulation in future. As Jay says:</p>
<blockquote><p>The point is, as long as your sql is nothing more than a string it is not able to be easily modified. However, an object representation of your sql could be evaluated in various contexts to produce different results."</p></blockquote>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Robert</strong> &middot; <time datetime="2007-03-13T14:11:00+00:00">March 13, 2007 at 2:11 pm</time></p>
      <p>That looks to be pretty cool.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>court3nay</strong> &middot; <time datetime="2007-03-13T15:42:00+00:00">March 13, 2007 at 3:42 pm</time></p>
      <p>This looks very similar to Ezra Zygmuntowicz's "Ez-Where". We've been using it for over a year :)</p><p><a href="http://opensvn.csie.org/ezra/rails/plugins/dev/ez_where/" rel="nofollow">http://opensvn.csie.org/ezra/rails/plugins/dev/ez_where/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Henrik N</strong> &middot; <time datetime="2007-03-13T17:41:00+00:00">March 13, 2007 at 5:41 pm</time></p>
      <p>Isn't that code missing a couple of <code>do</code>s?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2007-03-13T19:36:00+00:00">March 13, 2007 at 7:36 pm</time></p>
      <p>You're right. Fixed. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John O</strong> &middot; <time datetime="2007-03-15T08:10:00+00:00">March 15, 2007 at 8:10 am</time></p>
      <p>Looks cool but, but using SQL contradicts with Rails - ActiveRecord philosophy does it not?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sebastian</strong> &middot; <time datetime="2007-03-16T13:43:00+00:00">March 16, 2007 at 1:43 pm</time></p>
      <p>Sure, John. But not all database programming is Rails after all.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Derek</strong> &middot; <time datetime="2007-03-16T15:33:00+00:00">March 16, 2007 at 3:33 pm</time></p>
      <p>Not at all, John O.  No experienced Rails developer would tell you to avoid SQL at all costs.  Sometimes, you've just got to get your hands dirty.  A library like this could alleviate some of the pain involved.  This is rather cool stuff.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brendan Baldwin</strong> &middot; <time datetime="2007-03-16T19:08:00+00:00">March 16, 2007 at 7:08 pm</time></p>
      <p>You can't capture some kinds of things properly to generate the sql like ruby wont tell you the difference in method calls between a == b and a != b, since they both utilize ==</p><p>You eventually wind up with something more like this I think:</p><p>@user_list = select(:u =&gt; [:id, :name], :g =&gt; [:name_as_group_name]).<br>
from(:users =&gt; :u, :memberships =&gt; :m, :groups =&gt; :g).<br>
inner_join(:u, :m, :u =&gt; :id, :m =&gt; :member_id).<br>
inner_join(:g, :m, :g =&gt; :id, :m =&gt; :group_id).<br>
condition do |q|<br>
  q.u.status.not == 'inactive'<br>
  q.m.registration_date.less_than Date.yesterday<br>
end.<br>
order_by :group_name, :name</p>
    </li>
      <li>
      <p class="comment-meta"><strong>jc</strong> &middot; <time datetime="2007-03-16T22:57:00+00:00">March 16, 2007 at 10:57 pm</time></p>
      <p>Ick. I'm not sure writing a DSL ontop a DSL is always the best idea. But then again, whatever floats your boat.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
