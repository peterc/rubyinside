---
title: Protect Your Rails Application Against Spam with Akismet
date: '2006-10-05'
author: Peter Cooper
author_slug: admin
post_id: 256
slug: protect-your-rails-application-against-spam-with-akismet-256
url: "/protect-your-rails-application-against-spam-with-akismet-256.html"
categories:
- miscellaneous
- ruby-on-rails
- tutorials
---

{{< rawhtml >}}
<p>Austrian development agency, Sparkling Studios, look at how to use the <a href="http://akismet.com/">Akismet</a> anti-spam system to <a href="http://sas.sparklingstudios.com/articles/2006/10/01/how-to-protect-a-rails-application-against-spam-with-akismet">check data submitted to your site and protect your application from spam</a>. It works by signing up for a key from Akismet and using a <a href="http://sas.sparklingstudios.com/files/akismet.rb">Ruby Akismet library</a>. Then whenever you want to check your data, you make a simple call and Akismet returns a true or false based on whether the system believes the data to be spam.</p>
<p>It should be noted that this method is primarily useful for blog comment and trackback related spam, but could be useful on other data that fits the same structure.</p>
{{< /rawhtml >}}
