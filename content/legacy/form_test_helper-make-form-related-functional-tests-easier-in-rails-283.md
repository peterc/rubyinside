---
title: 'form_test_helper: Make form-related functional tests easier in Rails'
date: '2006-11-01'
author: Peter Cooper
author_slug: admin
post_id: 283
slug: form_test_helper-make-form-related-functional-tests-easier-in-rails-283
url: "/form_test_helper-make-form-related-functional-tests-easier-in-rails-283.html"
categories:
- ruby-on-rails
---

{{< rawhtml >}}
<p>Jason Garber has got in touch about his new Rails plugin, form_test_helper, that makes testing forms easier than before. As <a href="http://code.google.com/p/form-test-helper">the plugin's official home page</a> has less information than the mail he sent me, I'm reproducing his mail in full as it's the useful reference so far:</p>
<pre>With my form_test_helper Rails plugin, your functional and integration
tests can work more like the browser.  No longer do you need to feed
params to an action:

post :create, :name =&gt; 'Pickaxe', :category =&gt; 1, :<x></x>out_of_print =&gt; 0

...and then wait for it to break silently when you change your form but
forget to change the test.  With  form_test_helper, you just call up
the form, change the values you want, and let it submit to its action.

get :new
submit_form do |form|
form['name'] = 'Pickaxe'
form['category'] = "Programming"
form['out_of_print'].uncheck
end

...or simply:

submit_form :name =&gt; 'Pickaxe', :category =&gt; 'Programming',
:<x></x>out_of_print =&gt; false

This is advantageous because it uses the action  and method of the
form, verifies that the form and the fields you specify are present and
not misspelled, and it preserves any hidden or default values that may
be in the form, like in my form_spam_protection plugin.

Features:
* Can select_form / submit_form by dom_id or url--or call without
arguments if there's only one form on the page
* Specifying a field name that doesn't exist raises an exception
* Fields that are selects (dropdowns) or radio buttons won't let you select
a value that's not in its options
* Selects can set using the option label or the option value
* Enumerate the options for selects and radio buttons
* Works with RESTful links and forms - :method =&gt; :put, :delete...
* Checks for the presence of a submit button when you submit the form
* Works in functional and integration tests and the console
* Assert presence of and follow links
* See the README file and tests for more goodies!

Installing:
./script/plugin install -x http://form-test-helper.googlecode.com/svn/form_test_helper/
Requires EdgeRails or the assert_select plugin.

Bugs/Suggestions:
You can e-mail me with these or post them to

http://code.google.com/p/form-test-helper</pre>
<p>This is a nice win for test readability.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Dan Kubb</strong> &middot; <time datetime="2006-11-01T20:08:00+00:00">November 1, 2006 at 8:08 pm</time></p>
      <p>What about also supporting a syntax like:</p><p>submit_form do |form|<br>
  form.book.name = 'Pickaxe'<br>
  form.book.category = "Programming"<br>
  form.book.classic.check<br>
end</p><p>Which would map to the fields named book[name], book[category] and book[classic] within the form.</p><p>Or if I could mix and match your hash-style with the method style, and it would do the right thing:</p><p>submit_form do |form|<br>
  form.book['name'] = 'Pickaxe'<br>
  form.book['category'] = "Programming"<br>
  form.book['classic'].check<br>
end</p><p>These look more readable to me than referring to nested parameters as form['book[name]'], form['book[category]'] and form['book[classic]'].</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
