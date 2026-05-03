---
title: 'Rackamole: Rack-Based Monitoring For Your Ruby Web Apps'
date: '2010-01-04'
author: Peter Cooper
author_slug: admin
post_id: 2918
slug: rackamole-rack-based-monitoring-for-your-ruby-web-apps-2918
url: "/rackamole-rack-based-monitoring-for-your-ruby-web-apps-2918.html"
categories:
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2010/01/rackamole.png" width="98" height="114" alt="rackamole.png" style="float:left; margin-right:12px; margin-bottom:12px;"><a href="http://rackamole.com/">Rackamole</a> <sup>(<a href="http://github.com/derailed/rackamole">GitHub repo</a>)</sup> is a <a href="http://rack.rubyforge.org/">Rack</a> application that lets you to monitor the interactions between users and your own Rack-based application (e.g. any Rails or Sinatra app). As well as pumping out information to the console or a log file, there's a Web interface called <a href="http://rackamole.com/home/screens">Wackamole</a> to give you the skinny on your app activity.</p>
<p>Rackamole's creator, Fernand Galiana (also of <a href="http://liquidrail.com/2008/8/24/ziya-gem-2-0">ZiYa charting library</a> fame), says that Rackamole is well suited for determining what parts of your application you need to work on next. It traps and records feature usage, performance issues, and application exceptions, and by integrating as a middle layer between your HTTP server and your Web app, it can work with almost any backend system out of the box.</p>
<p><img src="/assets/2010/01/wackamole.png" width="480" height="323" alt="wackamole.png"></p>
<p><i>Above: Wackamole and Rackamole in action</i></p>
<p>As well as logging data and presenting it through Wackamole, Rackamole also has a built-in e-mail notifier so you can be alerted when certain actions occur that need your attention. In this way, it's sort of like a New Relic-lite or like FiveRuns' now defunct Dash system. MongoDB fans might also appreciate that Rackamole also has support for logging to a MongoDB database out of the box.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Guillaume Noireaux</strong> &middot; <time datetime="2010-01-05T14:39:00+00:00">January 5, 2010 at 2:39 pm</time></p>
      <p>s/Rackmole/Rackamole/<br>
s/lets you to monitor/lets you monitor/</p><p>Is a comment the preferred way of letting you know about typos?</p><p>Thanks again for your purveying of quality information.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-01-05T15:24:00+00:00">January 5, 2010 at 3:24 pm</time></p>
      <p>Thanks - I've fixed it. Intriguingly, though, the logo has it as Rackmole.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
