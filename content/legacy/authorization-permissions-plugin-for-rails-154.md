---
title: Authorization / Permissions plugin for Rails
date: '2006-07-21'
author: Peter Cooper
author_slug: admin
post_id: 154
slug: authorization-permissions-plugin-for-rails-154
url: "/authorization-permissions-plugin-for-rails-154.html"
categories:
- cool
- elsewhere
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2006/07/authorizationplugin.jpg" height="142" width="385" border="1" hspace="4" vspace="4" alt="Authorizationplugin"></p>
<p>The "<a href="http://www.writertopia.com/developers/authorization">Authorization plugin</a>" is an interesting plugin for Ruby on Rails that provides role based authorization for your app. It's particularly interesting because it includes some 'English-like' dynamic methods that can use the defined roles. For example, <em>user.is_fan_of angelina</em> and <em>angelina.has_fans?</em> where 'fans' are defined in the roles table. Also look at the code example in the graphic above.</p>
<p>You can also do things like <em>user.is_eligible_for_what</em> (returns an array of authorized objects on which the user has the 'eligibile' role) and <em>user.is_moderator_of?(group)</em> (returning true or false if the user has the moderator role upon <em>group</em>). Powerful stuff!</p>
<p>The latest version was released just a few days ago so it should all be ready for full Rails 1.1 goodness.</p>
{{< /rawhtml >}}
