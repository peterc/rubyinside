---
title: 'MeantimeFilter: Wrap your Rails controller actions with scopes'
date: '2006-07-06'
author: Peter Cooper
author_slug: admin
post_id: 127
slug: meantimefilter-wrap-your-rails-controller-actions-with-scopes-127
url: "/meantimefilter-wrap-your-rails-controller-actions-with-scopes-127.html"
categories:
- cool
- elsewhere
- ruby-on-rails
---

{{< rawhtml >}}
<p><a href="http://roman2k.free.fr/rails/meantime_filter/0.1.0/rdoc/">MeantimeFilter</a> is an interesting new plugin for Rails by Roman Le Negrate. It's a little like <em>around_filter</em>, but rather than using a class with 'before' and 'after' methods, it uses a single method (like the other types of filter) and passes in the method to wrap 'around' as a code block. You can then <em>yield</em> to this or pass it into anything you like. An example:</p>
<pre><span class="keyword">class </span><span class="class">PostsController</span> <span class="punct">&lt;</span> <span class="constant">ApplicationController</span>
  <span class="ident">before_filter</span> <span class="symbol">:authenticate</span>
  <span class="ident">meantime_filter</span> <span class="symbol">:scope_posts_to_user</span>

  <span class="comment"># Displays the posts of the logged in user.</span>
  <span class="keyword">def </span><span class="method">show</span>
    <span class="attribute">@posts</span> <span class="punct">=</span> <span class="constant">Post</span><span class="punct">.</span><span class="ident">find</span><span class="punct">(</span><span class="symbol">:all</span><span class="punct">)</span>
  <span class="keyword">end</span>

  <span class="keyword">def </span><span class="method">create</span>
    <span class="comment"># ...</span>
    <span class="attribute">@post</span> <span class="punct">=</span> <span class="constant">Post</span><span class="punct">.</span><span class="ident">create</span><span class="punct">(</span><span class="ident">params</span><span class="punct">[</span><span class="symbol">:post</span><span class="punct">])</span> <span class="comment"># Automatically associated to @user</span>
    <span class="comment"># ...</span>
  <span class="keyword">end</span>

  <span class="ident">private</span>

  <span class="comment"># Sets @user to the logged in user or redirects to :index.</span>
  <span class="keyword">def </span><span class="method">authenticate</span>
    <span class="comment"># ...</span>
  <span class="keyword">end</span>

  <span class="keyword">def </span><span class="method">scope_posts_to_user</span><span class="punct">(&amp;</span><span class="ident">block</span><span class="punct">)</span>
    <span class="constant">Post</span><span class="punct">.</span><span class="ident">with_scope</span><span class="punct">({</span>
      <span class="symbol">:find</span> <span class="punct">=&gt;</span> <span class="punct">{</span> <span class="symbol">:conditions</span> <span class="punct">=&gt;</span> <span class="punct">[</span> <span class="punct">'</span><span class="string">user_id = ?</span><span class="punct">',</span> <span class="attribute">@user</span><span class="punct">.</span><span class="ident">id</span> <span class="punct">]},</span>
      <span class="symbol">:create</span> <span class="punct">=&gt;</span> <span class="punct">{</span> <span class="symbol">:user</span> <span class="punct">=&gt;</span> <span class="attribute">@user</span> <span class="punct">}</span>
    <span class="punct">},</span> <span class="punct">&amp;</span><span class="ident">block</span><span class="punct">)</span>
  <span class="keyword">end</span>

  <span class="comment"># Or:</span>
  <span class="keyword">def </span><span class="method">scope_posts_to_user</span>
    <span class="constant">Post</span><span class="punct">.</span><span class="ident">with_scope</span><span class="punct">({</span>
      <span class="symbol">:find</span> <span class="punct">=&gt;</span> <span class="punct">{</span> <span class="symbol">:conditions</span> <span class="punct">=&gt;</span> <span class="punct">[</span> <span class="punct">'</span><span class="string">user_id = ?</span><span class="punct">',</span> <span class="attribute">@user</span><span class="punct">.</span><span class="ident">id</span> <span class="punct">]},</span>
      <span class="symbol">:create</span> <span class="punct">=&gt;</span> <span class="punct">{</span> <span class="symbol">:user</span> <span class="punct">=&gt;</span> <span class="attribute">@user</span> <span class="punct">}</span>
    <span class="punct">})</span> <span class="punct">{</span> <span class="keyword">yield</span> <span class="punct">}</span>
  <span class="keyword">end</span>
<span class="keyword">end</span>
</pre>
<p>Hot! This could make your code a lot cleaner by allowing you to wrap any methods you want in a scope automatically.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Josh</strong> &middot; <time datetime="2006-07-06T12:57:00+00:00">July 6, 2006 at 12:57 pm</time></p>
      <p>I'm confused. Why is this cleaner than @user.posts.create(params[:post])? I like yielding as much as the next guy, but I dungettit</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-07-06T13:22:00+00:00">July 6, 2006 at 1:22 pm</time></p>
      <p>It can get a lot more complex than that. Consider when you nest scopes. His demonstration is a little simplistic, of course :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tony</strong> &middot; <time datetime="2006-07-07T18:21:00+00:00">July 7, 2006 at 6:21 pm</time></p>
      <p>This looks really usefull, but I'm having trouble wrapping my head around how to use this for setting the same scope for a number of models?  Short of doing this:</p><p>meantime_filter :scope_x_to_foo, :scope_y_to_foo, :scope_z_to_foo...</p><p>def scope_x_to_foo<br>
  x.with_scope({...})<br>
end</p><p>def scope_y_to_foo<br>
  y.with_scope({...})<br>
end</p><p>...</p><p>I guess I'm not grokking the way yield works... is there a more DRY way?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tony</strong> &middot; <time datetime="2006-07-07T21:26:00+00:00">July 7, 2006 at 9:26 pm</time></p>
      <p>In case anyone is curious I figured out how to do it pretty cleanly by passing a class instance.  Basically I did this:</p><p>  # Intranet.current_intranet is set by a before_filter...</p><p>  class IntranetScopeFilter<br>
    def initialize(model_name)<br>
      @model_name = model_name<br>
      @model = Object.const_get(model_name)<br>
    end<br>
    def filter(controller)<br>
      if Intranet.current_intranet.nil?<br>
        yield<br>
      else<br>
        @model.with_scope({<br>
          :find =&gt; {:conditions =&gt; ["#{@model_name.downcase.pluralize}.intranet_id = ?",Intranet.current_intranet.id]},<br>
          :create =&gt; {:intranet_id =&gt; Intranet.current_intranet.id}<br>
        }) { yield }<br>
      end<br>
    end<br>
  end</p><p>  meantime_filter IntranetScopeFilter.new("User")<br>
  meantime_filter IntranetScopeFilter.new("Contact")<br>
  meantime_filter IntranetScopeFilter.new("Matter")<br>
  ...etc</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
