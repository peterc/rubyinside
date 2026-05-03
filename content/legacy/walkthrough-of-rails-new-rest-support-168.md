---
title: Walkthrough of Rails’ new REST support
date: '2006-08-01'
author: Peter Cooper
author_slug: admin
post_id: 168
slug: walkthrough-of-rails-new-rest-support-168
url: "/walkthrough-of-rails-new-rest-support-168.html"
categories:
- elsewhere
- reference
- ruby-on-rails
---

{{< rawhtml >}}
<pre>HTTP Request =&gt; Rails 'params'

GET: /users =&gt; [:action =&gt; 'index']
GET: /users.xml =&gt; [:action =&gt; 'index', :format =&gt; 'xml']
GET: /users/1 =&gt; [:action =&gt; 'show', :id =&gt; 1]
GET: /users/1;edit =&gt; [:action =&gt; 'edit', :id =&gt; 1]
GET: /users/1.xml =&gt; [:action =&gt; 'show', :id =&gt; 1, :format =&gt; 'xml']
POST: /users =&gt; [:action =&gt; 'create']
PUT: /users/1 =&gt; [:action =&gt; 'update', :id =&gt; 1]
DELETE: /users/1 =&gt; [:action =&gt; 'destroy', :id =&gt; 1]</pre>
<p>Prolific 'Edge Rails' blogger <a href="http://www.ryandaigle.com/">Ryan Daigle</a> has written "<a href="http://www.ryandaigle.com/articles/2006/08/01/whats-new-in-edge-rails-simply-restful-support-and-how-to-use-it">Simply RESTful Support - And How to Use It</a>", a great walkthrough of the features offered by the <em><a href="http://dev.rubyonrails.org/browser/plugins/simply_restful">simply_restful</a></em><a href="http://dev.rubyonrails.org/browser/plugins/simply_restful"> plugin</a> that's now a core part of Edge Rails and which will provide a lot of the new functionality to be seen in Rails 1.2.</p>
{{< /rawhtml >}}
