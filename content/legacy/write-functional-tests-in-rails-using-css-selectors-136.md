---
title: Write functional tests in Rails using CSS selectors
date: '2006-07-09'
author: Peter Cooper
author_slug: admin
post_id: 136
slug: write-functional-tests-in-rails-using-css-selectors-136
url: "/write-functional-tests-in-rails-using-css-selectors-136.html"
categories:
- cool
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2006/07/assert_select.jpg" height="85" width="303" border="1" hspace="4" vspace="4" alt="Assert Select"></p>
<p><a href="http://blog.labnotes.org/2006/07/03/assert_select-plugin-for-rails/">assert_select</a> is a plugin by Assaf Arkin that allows you to use CSS selectors in your functional tests to check that certain HTML elements match your assertions. On the surface, this isn't too far removed from using why's Hpricot to do assertions on HTML, but in reality having the full power of CSS selectors available changes everything <em>(Update! Hpricot </em><em><a href="http://code.whytheluckystiff.net/hpricot/wiki/AnHpricotShowcase">has XPath and CSS addressing</a></em><em> too!)</em>. Some examples:</p>
<pre><span class="comment"># Form includes four input fields</span>
<span class="ident">assert_select</span> <span class="punct">"</span><span class="string">form input</span><span class="punct">",</span> <span class="number">4</span>

<span class="comment"># Page does not have any forms in it.</span>
<span class="ident">assert_select</span> <span class="punct">"</span><span class="string">form</span><span class="punct">",</span> <span class="constant">false</span><span class="punct">,</span> <span class="punct">"</span><span class="string">Page must contain no forms</span><span class="punct">"</span>

<span class="keyword">def </span><span class="method">test_login_form_has_all_fields</span>
    <span class="ident">get</span> <span class="symbol">:login</span>
    <span class="ident">assert_select</span> <span class="punct">"</span><span class="string">form[action=http://myapp/login] input</span><span class="punct">"</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">inputs</span><span class="punct">|</span>
        <span class="ident">assert_equal</span> <span class="number">3</span><span class="punct">,</span> <span class="ident">inputs</span><span class="punct">.</span><span class="ident">size</span>
        <span class="ident">assert_select</span> <span class="ident">inputs</span><span class="punct">[</span><span class="number">0</span><span class="punct">],</span> <span class="punct">"</span><span class="string">input[type=name][name=username]</span><span class="punct">"</span>
        <span class="ident">assert_select</span> <span class="ident">inputs</span><span class="punct">[</span><span class="number">1</span><span class="punct">],</span> <span class="punct">"</span><span class="string">input[type=password][name=password]</span><span class="punct">"</span>
        <span class="ident">assert_select</span> <span class="ident">inputs</span><span class="punct">[</span><span class="number">2</span><span class="punct">],</span> <span class="punct">"</span><span class="string">input[type=submit][value=Login]</span><span class="punct">"</span>
    <span class="keyword">end</span>
<span class="keyword">end</span>
</pre>
<p><a href="http://blog.labnotes.org/2006/07/03/assert_select-plugin-for-rails/">More examples here.</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://infohatter.com/blog/assert_select-plugin-allows-you-to-run-funtional-tests-on-your-rhtml/" rel="external nofollow" class="url">InfoHatter Blog!</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
