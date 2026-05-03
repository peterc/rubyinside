---
title: Making Ruby Methods Immutable
date: '2008-09-24'
author: Peter Cooper
author_slug: admin
post_id: 1217
slug: making-ruby-methods-immutable-1217
url: "/making-ruby-methods-immutable-1217.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2008/09/puzzle-lock.jpg" width="87" height="73" alt="puzzle_lock.jpg" style="float:left; margin-right:12px; margin-bottom:12px;">Garry Dolley has developed <a href="http://scie.nti.st/2008/9/17/making-methods-immutable-in-ruby">a Ruby module called "Immutable"</a> (<a href="http://github.com/up_the_irons/immutable/tree/master">Github repository</a>). It allows you to make your methods immutable. As Gary says, "provide it a list of methods you don’t want touched and it’ll make sure they can’t be redefined." Effectively, it's a smack-down against monkeypatching.</p>
<p>Gary developed <em>immutable</em> to ensure that ActiveSupport wouldn't interfere with his attempts to improve Rails' loading time by reimplementing some ActiveSupport methods in C (by redefining his own changes).</p>
{{< /rawhtml >}}
