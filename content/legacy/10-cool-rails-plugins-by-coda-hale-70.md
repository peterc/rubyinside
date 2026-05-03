---
title: 10 cool Rails plugins by Coda Hale
date: '2006-06-12'
author: Peter Cooper
author_slug: admin
post_id: 70
slug: 10-cool-rails-plugins-by-coda-hale-70
url: "/10-cool-rails-plugins-by-coda-hale-70.html"
categories:
- ruby-on-rails
---

{{< rawhtml >}}
<p><a href="http://blog.codahale.com/">Coda Hale</a> is a Rails developer from Berkeley, CA, who's developed a <a href="http://blog.codahale.com/rails-plugins/">ton of useful plugins.</a> I'll leave the descriptions to Coda:</p>
<blockquote>
<p><b><a href="http://blog.codahale.com/2006/04/10/content-only-caching-for-rails/">content_cache</a></b></p>
<p>Cache rendered views within the context of your layout, allowing you to mix dynamic content with cached static content.</p>
<p><b><a href="http://blog.codahale.com/2006/05/18/dollars_and_cents-a-rails-plugin/">dollars_and_cents</a></b></p>
<p>Stores prices as integers in your database, but access them as floats.</p>
<p><b><a href="http://blog.codahale.com/2006/04/08/dynamic-session-expiration-times-with-rails/">dynamic_session_exp</a></b></p>
<p>Allows you to configure Rails to serve up session cookies with expiration dates relative to the current time, instead of some fixed date in the future.</p>
<p><b><a href="http://blog.codahale.com/2006/05/23/rails-plugin-http_caching/">http_caching</a></b></p>
<p>Allows your Rails application to take advantage of the caching mechanisms built into HTTP 1.1 (i.e., 304 Not Modified return code). Inspired by a Rails cookbook entry (<a href="http://manuals.rubyonrails.com/read/chapter/62">manuals.rubyonrails.com/read/chapter/62</a>).</p>
<p><b><a href="http://blog.codahale.com/2006/04/09/rails-environments-a-plugin-for-well-rails/">rails_environments</a></b></p>
<p>Simple methods for determining which environment Rails is running.</p>
<p><b><a href="http://blog.codahale.com/2006/05/26/rails-plugin-rails_rcov/">rails_rcov</a></b></p>
<p>Find your tests’ blind spots easily with <a href="http://eigenclass.org/hiki.rb?rcov">Mauricio Fernandez’s rcov</a> code coverage tool and this set of dynamic Rake tasks.</p>
<p><b><a href="http://blog.codahale.com/2006/03/05/responsiblemarkup-v01-unit-test-your-way-to-responsible-markup/">responsible_markup</a></b></p>
<p>A series of assertions for use in Rails functional tests which allow you to check for valid markup, unobtrusive Javascript, and other hallmarks of web professionalism.</p>
<p><b><a href="http://blog.codahale.com/2006/05/11/basic-http-authentication-with-rails-simple_http_auth/">simple_http_auth</a></b></p>
<p>A quick, clean way of adding HTTP authorization to your Rails application. No need for complicated backends, gigantic user models, or other unneeded complexity. Just you, a password prompt, and whether or not someone should be allowed in.</p>
<p><b><a href="http://blog.codahale.com/2006/04/09/usps-countries-list-for-rails/">usps_countries</a></b></p>
<p>Replaces the Rails countries list with a list of countries to which the United States Postal Service can send mail. (If you’re concerned not with accurately representing people’s geographic self-identification, but rather where in the hell they want a package sent, this is for you.</p>
<p><b><a href="http://blog.codahale.com/2006/05/23/rails-plugin-xhtml_content_type/">xhtml_content_type</a></b></p>
<p>xhtml_content_type allows you to set the default MIME type for rendered .rhtml views to <tt>application/xhtml+xml</tt> if the client supports it, and only falling back to <tt>text/html</tt> for older clients.</p>
</blockquote>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Coda Hale</strong> &middot; <time datetime="2006-06-12T20:36:00+00:00">June 12, 2006 at 8:36 pm</time></p>
      <p>Thanks for the mention! Making plugins is one of the things I *love* about Ruby and Rails--the ability to crack open a chunk of the framework and make it do exactly what you need. Unlike other full-stack frameworks, almost all of Rails can be modified to suit your needs, and it's that functionality (plus the insane amount of programmer love DHH put into it) which keeps Rails from being totalitarian and instead makes it empowering. Woo!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-06-12T20:52:00+00:00">June 12, 2006 at 8:52 pm</time></p>
      <p>You're most welcome, Coda, thanks for the amazing contributions!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
