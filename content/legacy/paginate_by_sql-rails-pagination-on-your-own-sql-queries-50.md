---
title: 'paginate_by_sql: Rails pagination on your own SQL queries'
date: '2006-06-06'
author: Peter Cooper
author_slug: admin
post_id: 50
slug: paginate_by_sql-rails-pagination-on-your-own-sql-queries-50
url: "/paginate_by_sql-rails-pagination-on-your-own-sql-queries-50.html"
categories:
- elsewhere
- ruby-on-rails
---

{{< rawhtml >}}
<p>Pagination in Rails is good, but it can lack flexibility in many situations. At that point it's time to roll your own. However, Phil Bogle and Laurel Fan came up with a solution they call <a href="http://blog.gorgorg.org/articles/2006/06/06/paginate_by_sql">paginate_by_sql</a> that can solve some of the custom pagination problems. This needs to become a plugin.</p>
<p>I'm reposting their code here simply because I like to see syntax coloring :)</p>
<pre><span class="comment"># paginate by sql</span>
<span class="comment"># http://thebogles.com/blog/2006/06/paginate_by_sql-for-rails-a-more-general-approach/</span>
<span class="comment"># added support for sql with arguments</span>
<span class="comment"># added a :count option for passing in either a Integer count or count query.</span>
<span class="keyword">module </span><span class="module">ActiveRecord</span>
    <span class="keyword">class </span><span class="class">Base</span>
        <span class="keyword">def </span><span class="method">self.find_by_sql_with_limit</span><span class="punct">(</span><span class="ident">sql</span><span class="punct">,</span> <span class="ident">offset</span><span class="punct">,</span> <span class="ident">limit</span><span class="punct">)</span>
            <span class="ident">sql</span> <span class="punct">=</span> <span class="ident">sanitize_sql</span><span class="punct">(</span><span class="ident">sql</span><span class="punct">)</span>
            <span class="ident">add_limit!</span><span class="punct">(</span><span class="ident">sql</span><span class="punct">,</span> <span class="punct">{</span><span class="symbol">:limit</span> <span class="punct">=&gt;</span> <span class="ident">limit</span><span class="punct">,</span> <span class="symbol">:offset</span> <span class="punct">=&gt;</span> <span class="ident">offset</span><span class="punct">})</span>
            <span class="ident">find_by_sql</span><span class="punct">(</span><span class="ident">sql</span><span class="punct">)</span>
        <span class="keyword">end</span>

        <span class="keyword">def </span><span class="method">self.count_by_sql_wrapping_select_query</span><span class="punct">(</span><span class="ident">sql</span><span class="punct">)</span>
            <span class="ident">sql</span> <span class="punct">=</span> <span class="ident">sanitize_sql</span><span class="punct">(</span><span class="ident">sql</span><span class="punct">)</span>
            <span class="ident">count_by_sql</span><span class="punct">("</span><span class="string">select count(*) from (</span><span class="expr">#{sql}</span>)<span class="punct">")</span>
        <span class="keyword">end</span>
   <span class="keyword">end</span>
<span class="keyword">end</span>

<span class="keyword">class </span><span class="class">ApplicationController</span> <span class="punct">&lt;</span> <span class="constant">ActionController</span><span class="punct">::</span><span class="constant">Base</span>
    <span class="keyword">def </span><span class="method">paginate_by_sql</span><span class="punct">(</span><span class="ident">model</span><span class="punct">,</span> <span class="ident">sql</span><span class="punct">,</span> <span class="ident">per_page</span><span class="punct">,</span> <span class="ident">options</span><span class="punct">={})</span>
       <span class="keyword">if</span> <span class="ident">options</span><span class="punct">[</span><span class="symbol">:count</span><span class="punct">]</span>
           <span class="keyword">if</span> <span class="ident">options</span><span class="punct">[</span><span class="symbol">:count</span><span class="punct">].</span><span class="ident">is_a?</span> <span class="constant">Integer</span>
               <span class="ident">total</span> <span class="punct">=</span> <span class="ident">options</span><span class="punct">[</span><span class="symbol">:count</span><span class="punct">]</span>
           <span class="keyword">else</span>
               <span class="ident">total</span> <span class="punct">=</span> <span class="ident">model</span><span class="punct">.</span><span class="ident">count_by_sql</span><span class="punct">(</span><span class="ident">options</span><span class="punct">[</span><span class="symbol">:count</span><span class="punct">])</span>
           <span class="keyword">end</span>
       <span class="keyword">else</span>
           <span class="ident">total</span> <span class="punct">=</span> <span class="ident">model</span><span class="punct">.</span><span class="ident">count_by_sql_wrapping_select_query</span><span class="punct">(</span><span class="ident">sql</span><span class="punct">)</span>
       <span class="keyword">end</span>

       <span class="ident">object_pages</span> <span class="punct">=</span> <span class="constant">Paginator</span><span class="punct">.</span><span class="ident">new</span> <span class="constant">self</span><span class="punct">,</span> <span class="ident">total</span><span class="punct">,</span> <span class="ident">per_page</span><span class="punct">,</span> <span class="attribute">@params</span><span class="punct">['</span><span class="string">page</span><span class="punct">']</span>
       <span class="ident">objects</span> <span class="punct">=</span> <span class="ident">model</span><span class="punct">.</span><span class="ident">find_by_sql_with_limit</span><span class="punct">(</span><span class="ident">sql</span><span class="punct">,</span>
                                              <span class="ident">object_pages</span><span class="punct">.</span><span class="ident">current</span><span class="punct">.</span><span class="ident">to_sql</span><span class="punct">[</span><span class="number">1</span><span class="punct">],</span> <span class="ident">per_page</span><span class="punct">)</span>
       <span class="keyword">return</span> <span class="punct">[</span><span class="ident">object_pages</span><span class="punct">,</span> <span class="ident">objects</span><span class="punct">]</span>
   <span class="keyword">end</span>
<span class="keyword">end</span>
</pre>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Hugo Villero</strong> &middot; <time datetime="2006-07-10T18:57:00+00:00">July 10, 2006 at 6:57 pm</time></p>
      <p>Hi There, that yellow part in the code about:</p><p> "count_by_sql("select count(*) from (#{sql})")"</p><p>doesn't work for me I'm using Microsoft SQL Server but any wasy I got  this error :</p><p>DBI::DatabaseError: Execute<br>
    OLE error code:80040E14 in Microsoft OLE DB Provider for SQL Server<br>
      Line 1: Incorrect syntax near ')'.<br>
    HRESULT error code:0x80020009<br>
      Exception occurred.: select count(*) from (select g.systemid,g.groupname from groups g where groupname = 'AD')</p><p>Could ypu please help me with some view code running on sql server?</p><p>Thanks so much</p><p>hugo villero</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paul Battley</strong> &middot; <time datetime="2006-07-12T07:56:00+00:00">July 12, 2006 at 7:56 am</time></p>
      <p>I had to change one line slightly to work on MySQL (and, although I didn't test it, I think the same is true for PostgreSQL):</p><p>count_by_sql("select count(*) from (#{sql}) as subquery_for_count")</p>
    </li>
      <li>
      <p class="comment-meta"><strong>engel</strong> &middot; <time datetime="2006-07-19T09:25:00+00:00">July 19, 2006 at 9:25 am</time></p>
      <p>Good Day!</p><p>Can anyone help me, I'm working with SQL Server as database and it seems tha t pagination doeasn't work, although the links are displayed and the url changes after click (something like page=x) the page itself doesn't change and (i.e. the record display stay as it is.</p><p>Can anyone help me. Thank You!<br>
Engel</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Binsu</strong> &middot; <time datetime="2006-08-11T16:20:00+00:00">August 11, 2006 at 4:20 pm</time></p>
      <p>Where should the above code go? or in which file should this be added, directly in the ActiveRecord or in Application.rb?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-08-11T23:56:00+00:00">August 11, 2006 at 11:56 pm</time></p>
      <p>The latter, or it could be in a file in /lib that's then required in from environment.rb.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Binsu</strong> &middot; <time datetime="2006-08-12T08:20:00+00:00">August 12, 2006 at 8:20 am</time></p>
      <p>Adding the ActiveRecord injection in Application.rb gives an error.<br>
----<br>
module ActiveRecord<br>
    class Base<br>
    ....<br>
end<br>
----<br>
Will update after trying in a lib directory.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>engel</strong> &middot; <time datetime="2006-08-20T11:09:00+00:00">August 20, 2006 at 11:09 am</time></p>
      <p>Well, I already found a solution, I just added :order =&gt; 'id ASC', and it works now</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
