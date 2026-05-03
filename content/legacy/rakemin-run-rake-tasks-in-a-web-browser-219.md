---
title: 'Rakemin: Run Rake tasks in a Web browser'
date: '2006-08-31'
author: Peter Cooper
author_slug: admin
post_id: 219
slug: rakemin-run-rake-tasks-in-a-web-browser-219
url: "/rakemin-run-rake-tasks-in-a-web-browser-219.html"
categories:
- miscellaneous
- ruby-on-rails
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2006/08/rakemin.jpg" height="243" width="396" border="1" hspace="4" vspace="4" alt="Rakemin"></p>
<p>One of my clients has a multi-application rollout system in place that operates on Rake tasks (Capistrano wasn't viable). The Rake tasks are centralized with the application and need to be run from the deployment boxes. As their developers aren't au-fait with the command line, they wanted an easy way to run Rake tasks on arbitrary applications over the Web. I decided I could write a tool to do this, and I have.. it's called <strong>Rakemin</strong>.</p>
<p>It's all AJAX, quick, and all you have to do is specify the 'base directory' where all of your Rails applications live, and it'll hunt out all the projects for you. These are made available from a drop down menu at the top of the screen, and upon selecting an app, the rake tasks appear in the left hand window. To run a task, click on it, type in any options you might have, and press the button. Results appear in the bottom 'console' window. This will be perfect for them to do their rollouts, as it means everything is centralized, so all developers will be using the same system (rather than quirky local variants).</p>
<p>It's pretty new, so it's not ready for me to release the source yet, but I'm just wondering if it's anything anyone would be interested in. It'll get released eventually, but if people are interested, I'll try to get a beta build publicly available sooner.</p>
<p>There's a hideously low res video demonstration next.. <em>(note, this demo video was for the client, so it's not that slick ;-))</em><br>
<span id="more-219"></span><br>
<object width="425" height="350"><param name="movie" value="https://www.youtube.com/v/US8n21d6w70">
<embed src="https://www.youtube.com/v/US8n21d6w70" type="application/x-shockwave-flash" width="425" height="350"></embed></object></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Joey</strong> &middot; <time datetime="2006-08-31T22:39:00+00:00">August 31, 2006 at 10:39 pm</time></p>
      <p>Go on Peter! Looks Good!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike</strong> &middot; <time datetime="2006-08-31T23:05:00+00:00">August 31, 2006 at 11:05 pm</time></p>
      <p>Peter, looks great.  How soon can you make it available?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-08-31T23:19:00+00:00">August 31, 2006 at 11:19 pm</time></p>
      <p>In about a week I figure. It already 'works' okay, but undoubtedly some more snafus are going to come out with the initial testing, and the code needs a little tidying (though not much).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dudley Flanders</strong> &middot; <time datetime="2006-09-01T00:53:00+00:00">September 1, 2006 at 12:53 am</time></p>
      <p>This definitely looks great. I'd love to be able to use it in a project I'm working on right now.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>IAmThatClient</strong> &middot; <time datetime="2006-09-01T07:12:00+00:00">September 1, 2006 at 7:12 am</time></p>
      <p>(note, this demo video was for the client, so it's not that slick)</p><p>surely you cant want to make it better for a load of people you dont know than the ones you do (and pay you)</p><p>tell me it aint so</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-09-01T07:49:00+00:00">September 1, 2006 at 7:49 am</time></p>
      <p>Haha, well to be honest.. when broadcasting to thousands of people a little more 'slick' is needed ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nate Murray</strong> &middot; <time datetime="2006-09-01T19:53:00+00:00">September 1, 2006 at 7:53 pm</time></p>
      <p>I think it looks fantastic. I am currently working on a project that could use it. Keep up the good work!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matt Pulver</strong> &middot; <time datetime="2006-09-01T19:58:00+00:00">September 1, 2006 at 7:58 pm</time></p>
      <p>Yes we would probably use it if it had these features:</p><p>* User management. Different secure logins with different permissions associated with each. E.g. some tasks should only be available to run only by some users.<br>
* Task locking. Some tasks should not have multiple instances run at the same time.<br>
* Task histories. Who ran which task when, and how long did the task take.<br>
* Logging. When reviewing task histories, a link would be available to the logged output of the task.</p><p>Thank you!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charles Brian Quinn</strong> &middot; <time datetime="2006-09-01T22:45:00+00:00">September 1, 2006 at 10:45 pm</time></p>
      <p>Peter -- awesome stuff.  Over at Highgroove, we wrote something similar for our Rails Day 2006 competition entry.  We called it heartbeat:  <a href="http://heartbeat.highgroove.com/" rel="nofollow">http://heartbeat.highgroove.com/</a> </p><p>We've been working on a newer version ( <a href="http://cleanair.highgroove.com/articles/2006/08/18/heartbeat-sneak-preview" rel="nofollow">http://cleanair.highgroove.com/articles/2006/08/18/heartbeat-sneak-preview</a> ) that does utilize capistrano, and therefore allows you to deploy using a webpage.  We also updated our rake task runner to employ AJAX page updates as you have.  Very cool stuff, keep up the good work!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-09-02T08:44:00+00:00">September 2, 2006 at 8:44 am</time></p>
      <p>Charles: Ack, I could have used that! ;-) I seemed to remember Heartbeat as only being a monitor, I didn't see / remember the Rake functionality. Oh well :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
