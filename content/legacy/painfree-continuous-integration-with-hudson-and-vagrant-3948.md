---
title: Painfree Continuous Integration with Hudson and Vagrant
date: '2010-11-10'
author: Peter Cooper
author_slug: admin
post_id: 3948
slug: painfree-continuous-integration-with-hudson-and-vagrant-3948
url: "/painfree-continuous-integration-with-hudson-and-vagrant-3948.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p>In <strong><a href="http://drnicwilliams.com/2010/11/09/making-ci-easier-to-do-than-not-to-with-hudson-ci-and-vagrant/">Making CI easier to do than not to with Hudson CI and Vagrant</a></strong>, Dr Nic Williams (of EngineYard) presents a walkthrough of setting up a VM-based continuous integration system in order to reliably test your apps across multiple setups:</p>
<blockquote class="stylized">
<p>It irked me a little that I could develop on one stack (OS X, Rubinius, Sqlite3), run continuous integration (CI) on another stack (Ubuntu, Ruby 1.8.7, Postgresql), and deploy into another stack (Gentoo, Ruby 1.9.2, MySQL). I think what irks and worries me is that there are three sets of differences to be aware of. A bug in production? Was it a missing test scenario or one of the many differences between production and CI environments?</p>
<p>[A solution is to] use a VM that matches the production environment. Each different production environment would mean another VM. If you are managing your own production environment, then all you need is the tools (described in this article) to recreate your production environment in a VM.</p>
</blockquote>
<p><cite>Dr Nic</cite></p>
<p>It's typically good stuff from everyone's favorite doctor of Ruby.</p>
{{< /rawhtml >}}
