---
title: 'BackgrounDRb: Run long running tasks in the background, and not in your Rails
  app'
date: '2006-06-12'
author: Peter Cooper
author_slug: admin
post_id: 72
slug: backgroundrb-run-long-running-tasks-in-the-background-and-not-in-your-rails-app-72
url: "/backgroundrb-run-long-running-tasks-in-the-background-and-not-in-your-rails-app-72.html"
categories:
- cool
- enterprise
- ruby-on-rails
---

{{< rawhtml >}}
<p><a href="http://brainspl.at/articles/2006/05/25/backgroundrb-new-release">BackgrounDRb</a>, by <a href="http://brainspl.at/">Ezra Zygmuntowicz</a>, is a system that lets you run long running tasks in the background, and not in the scope of your application. For example, you might have a Rails application that needs to send 100 e-mails, but rather than tie it to an HTTP request, you can simply pass off the job to a BackgrounDRb object and let the user know everything is proceeding as planned. There's <a href="http://backgroundrb.rubyforge.org/">more information here</a>.</p>
<p>It's powerful stuff, and worth looking into if you have anything like mass mailing or other remote communications that isn't request dependent, but still needs to be carried out.</p>
{{< /rawhtml >}}
