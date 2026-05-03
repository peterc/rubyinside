---
title: KRJS – Extending Rails views with automatic element AJAX events
date: '2006-06-14'
author: Peter Cooper
author_slug: admin
post_id: 87
slug: krjs-extending-rails-views-with-automatic-element-ajax-events-87
url: "/krjs-extending-rails-views-with-automatic-element-ajax-events-87.html"
categories:
- cool
- ruby-on-rails
---

{{< rawhtml >}}
<p><a href="http://blog.yanime.org/articles/2006/06/12/krjs-rjs-without-messing-the-views">KRJS</a> is an extension to Rails views by <a href="http://blog.yanime.org/">Chew Choon Keat</a> that helps provide a radically different mechanism for handling AJAX and RJS. He calls it "RJS without messing the views."</p>
<p>Rather than use <em>remote_form_for</em> and <em>link_to_remote</em>, for example, you can create specifically named actions on your controller that use RJS to perform the relevant actions upon regular code, rather than clog your views up with JavaScript and AJAX snippets. For example:</p>
<pre><span class="punct">&lt;%=</span><span class="string"> form_tag({:action </span><span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">submit</span><span class="punct">'},</span> <span class="punct">{</span><span class="symbol">:id</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">form</span><span class="punct">'})</span> <span class="punct">%&gt;</span><span class="string">
  &lt;%= text_field 'account', 'login', :id =</span><span class="punct">&gt;</span> <span class="punct">'</span><span class="string">account-new-login</span><span class="punct">'</span> <span class="punct">%&gt;</span><span class="string">
  &lt;%= submit_tag 'Login' %</span><span class="punct">&gt;</span>
<span class="punct">&lt;%=</span><span class="string"> end_form_tag %&gt;
</span><span class="normal">
</span></pre>
<p>This code looks like a normal form, but with KRJS, when the form is submitted the <em>on_form_submit</em> action is called on the controller via AJAX. When the account_login text field is blurred, <em>on_account_login_blur</em> on the controller is called via AJAX.</p>
<p>It's a bit heavy to fully explain here (there's a <a href="http://blog.yanime.org/articles/2006/06/12/krjs-rjs-without-messing-the-views">great tutorial</a> already), but it's an interesting development and could eventually become a crucial part of AJAX development with Rails. The paradigm is powerful <small><em>(Did I just say that?)</em></small>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Danger</strong> &middot; <time datetime="2006-06-15T16:31:00+00:00">June 15, 2006 at 4:31 pm</time></p>
      <p>If this is what I think it is, this could definitely become the new standard.  I'll have to check out that tutorial.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
