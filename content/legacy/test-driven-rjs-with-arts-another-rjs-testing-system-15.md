---
title: 'Test Driven RJS with “ARTS: Another RJS Testing System”'
date: '2006-05-29'
author: Peter Cooper
author_slug: admin
post_id: 15
slug: test-driven-rjs-with-arts-another-rjs-testing-system-15
url: "/test-driven-rjs-with-arts-another-rjs-testing-system-15.html"
categories:
- cool
- ruby-on-rails
---

{{< rawhtml >}}
<p>Kevin Clark looked at his options for testing his RJS (Javascript templates for Rails) templates but wasn't happy with the limited options, so he <a href="http://glu.ttono.us/articles/2006/05/29/guide-test-driven-rjs-with-arts">rolled his own testing system</a> as a Rails plugin. It's called ARTS (Another RJS Testing System) and is available <a href="http://thar.be/svn/projects/plugins/arts/">here</a>. It's pretty neat, and if your app uses a lot of RJS templates, you're going to want it. Here's an example of a test using ARTS:</p>
<pre><span class="keyword">def </span><span class="method">test_create_rjs</span>
  <span class="ident">xhr</span> <span class="symbol">:post</span><span class="punct">,</span> <span class="symbol">:create</span><span class="punct">,</span> <span class="symbol">:post</span> <span class="punct">=&gt;</span> <span class="punct">{</span><span class="symbol">:title</span> <span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">Yet Another Post</span><span class="punct">",</span> <span class="symbol">:body</span> <span class="punct">=&gt;</span> <span class="punct">"</span><span class="string">This is yet another post</span><span class="punct">"}</span>
  <span class="ident">assert_rjs</span> <span class="symbol">:insert_html</span><span class="punct">,</span> <span class="symbol">:bottom</span><span class="punct">,</span> <span class="punct">'</span><span class="string">posts</span><span class="punct">'</span>
  <span class="ident">assert_rjs</span> <span class="symbol">:visual_effect</span><span class="punct">,</span> <span class="symbol">:highlight</span><span class="punct">,</span> <span class="punct">"</span><span class="string">post_</span><span class="expr">#{assigns(:post).id}</span><span class="punct">"</span>
<span class="keyword">end</span>
</pre>
<p>Here are some general examples of how powerful it is:</p>
<pre><span class="ident">assert_rjs</span> <span class="symbol">:alert</span><span class="punct">,</span> <span class="punct">'</span><span class="string">Hi!</span><span class="punct">'</span>
<span class="ident">assert_rjs</span> <span class="symbol">:assign</span><span class="punct">,</span> <span class="punct">'</span><span class="string">a</span><span class="punct">',</span> <span class="punct">'</span><span class="string">2</span><span class="punct">'</span>
<span class="ident">assert_rjs</span> <span class="symbol">:call</span><span class="punct">,</span> <span class="punct">'</span><span class="string">foo</span><span class="punct">',</span> <span class="punct">'</span><span class="string">bar</span><span class="punct">',</span> <span class="punct">'</span><span class="string">baz</span><span class="punct">'</span>
<span class="ident">assert_rjs</span> <span class="symbol">:draggable</span><span class="punct">,</span> <span class="punct">'</span><span class="string">draggable_item</span><span class="punct">'</span>
<span class="ident">assert_rjs</span> <span class="symbol">:drop_receiving</span><span class="punct">,</span> <span class="punct">'</span><span class="string">receiving_item</span><span class="punct">'</span>
<span class="ident">assert_rjs</span> <span class="symbol">:hide</span><span class="punct">,</span> <span class="punct">"</span><span class="string">post_1</span><span class="punct">",</span> <span class="punct">"</span><span class="string">post_2</span><span class="punct">",</span> <span class="punct">"</span><span class="string">post_3</span><span class="punct">"</span>
<span class="ident">assert_rjs</span> <span class="symbol">:insert_html</span><span class="punct">,</span> <span class="symbol">:bottom</span><span class="punct">,</span> <span class="punct">'</span><span class="string">posts</span><span class="punct">',</span> <span class="punct">"</span><span class="string">Here's text from insert_html</span><span class="punct">"</span>
<span class="ident">assert_rjs</span> <span class="symbol">:redirect_to</span><span class="punct">,</span> <span class="symbol">:action</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">list</span><span class="punct">'</span>
<span class="ident">assert_rjs</span> <span class="symbol">:remove</span><span class="punct">,</span> <span class="punct">"</span><span class="string">post_1</span><span class="punct">",</span> <span class="punct">"</span><span class="string">post_2</span><span class="punct">",</span> <span class="punct">"</span><span class="string">post_3</span><span class="punct">"</span>
<span class="ident">assert_rjs</span> <span class="symbol">:replace</span><span class="punct">,</span> <span class="symbol">:bottom</span><span class="punct">,</span> <span class="punct">'</span><span class="string">This is something to replace</span><span class="punct">'</span>
<span class="ident">assert_rjs</span> <span class="symbol">:replace_html</span><span class="punct">,</span> <span class="punct">"</span><span class="string">This is something for replace_html</span><span class="punct">"</span>
<span class="ident">assert_rjs</span> <span class="symbol">:show</span><span class="punct">,</span> <span class="punct">"</span><span class="string">post_1</span><span class="punct">",</span> <span class="punct">"</span><span class="string">post_2</span><span class="punct">",</span> <span class="punct">"</span><span class="string">post_3</span><span class="punct">"</span>
<span class="ident">assert_rjs</span> <span class="symbol">:sortable</span><span class="punct">,</span> <span class="punct">'</span><span class="string">sortable_item</span><span class="punct">'</span>
<span class="ident">assert_rjs</span> <span class="symbol">:toggle</span><span class="punct">,</span> <span class="punct">"</span><span class="string">post_1</span><span class="punct">",</span> <span class="punct">"</span><span class="string">post_2</span><span class="punct">",</span> <span class="punct">"</span><span class="string">post_3</span><span class="punct">"</span>
<span class="ident">assert_rjs</span> <span class="symbol">:visual_effect</span><span class="punct">,</span> <span class="symbol">:highlight</span><span class="punct">,</span> <span class="punct">"</span><span class="string">posts</span><span class="punct">",</span> <span class="symbol">:duration</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">1.0</span><span class="punct">'</span>
</pre>
<p><!-- technorati tags start -->
</p>
<p style="text-align:right;font-size:10px;">Technorati Tags: <a href="http://www.technorati.com/tag/rails" rel="tag">rails</a>, <a href="http://www.technorati.com/tag/rjs" rel="tag">rjs</a></p>
<p><!-- technorati tags end --></p>
{{< /rawhtml >}}
