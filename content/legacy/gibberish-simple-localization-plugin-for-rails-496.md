---
title: 'Gibberish: Simple Localization Plugin for Rails'
date: '2007-05-17'
author: Hendy Irawan
author_slug: hendy-irawan
post_id: 496
slug: gibberish-simple-localization-plugin-for-rails-496
url: "/gibberish-simple-localization-plugin-for-rails-496.html"
categories:
- cool
- news
- ruby-on-rails
- ruby-tricks
- tools
---

{{< rawhtml >}}
<p><a href="http://errtheblog.com/post/4396">Gibberish</a> is a Rails plugin developed by <a href="http://ozmm.org/">Chris Wanstrath</a> which provides a hassle-free text translation capability for your Rails applications. The first application to use it is the <a href="http://beast.caboo.se/">Beast</a> forum system.</p>
<p>Most localization tools use either key-string or original-message based translation. Gibberish strikes the balance between these techniques. Consider:</p>
<pre>&lt;%= "See you!"[] %&gt;</pre>
<p>By default, the translation keys use lowercase and underscored version of the original message, but a key can be provided as a symbol within the [] construction. Translation files are made up of simple YAML. An example <em>id.yml</em> for the above message would be:</p>
<pre>see_you: Sampai jumpa!</pre>
<p>If you're wondering about parameters in a message (e.g. "Hello, {user}!"), Gibberish also has support for that. All this and more is covered in an <a href="http://errtheblog.com/post/4396">Err blog post</a>.</p>
<p><em>Other localization alternatives: </em><a href="http://www.globalize-rails.org/globalize/">Globalize</a>, <a href="http://dev.rubyonrails.org/svn/rails/plugins/localization/">Localization plugin</a>.</p>
{{< /rawhtml >}}
