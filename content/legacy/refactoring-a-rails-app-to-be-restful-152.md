---
title: Refactoring a Rails app to be RESTful
date: '2006-07-20'
author: Peter Cooper
author_slug: admin
post_id: 152
slug: refactoring-a-rails-app-to-be-restful-152
url: "/refactoring-a-rails-app-to-be-restful-152.html"
categories:
- elsewhere
- ruby-on-rails
---

{{< rawhtml >}}
<p>Scott Raymond has written a <a href="http://scottraymond.net/articles/2006/07/20/refactoring-to-rest">useful article showing the thinking behind his refactoring of IconBuffet.com</a> from an action-heavy URL scheme to a REST based URL scheme.<br>
The application behind <a href="http://www.iconbuffet.com/">IconBuffet.com</a>, a royalty-free stock icon store, went from 10 controllers and 76 actions to 13 controllers that more closely followed the models involved, and 58 total actions. Most of the new actions are uniform and match to the <a href="http://www.loudthinking.com/arc/000593.html">new Rails methodology of mapping HTTP verbs</a> (GET, PUT, POST, DELETE, etc.) to Rails controller actions. You can learn more about this structure from <a href="http://www.loudthinking.com/lt-files/worldofresources.pdf">David Heinemeier Hansson's slides</a> (PDF) from RailsConf, or watch <a href="http://blog.scribestudio.com/articles/2006/07/09/david-heinemeier-hansson-railsconf-2006-keynote-address">the video of his keynote presentation</a>.</p>
{{< /rawhtml >}}
