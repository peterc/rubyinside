---
title: 'Torquebox: An All-In-One Java/JBoss Powered Ruby Webapp Platform'
date: '2009-11-11'
author: grantmichaels
author_slug: grantmichaels
post_id: 2783
slug: torquebox-an-all-in-one-javajboss-powered-ruby-webapp-platform-2783
url: "/torquebox-an-all-in-one-javajboss-powered-ruby-webapp-platform-2783.html"
categories:
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2009/11/torquebox2-150x150.png" alt="torquebox2" title="torquebox2" width="120" height="120" class="alignleft size-thumbnail wp-image-2791" style="margin-right: 12px; margin-bottom: 12px; float: left">In the past two years we've seen a number of changes in the world of Ruby webapp deployment, but have you heard of <a href="http://torquebox.org/">Torquebox</a>? Built upon the Red Hat Inc. JBoss middleware, Torquebox is an enterprise-grade application server that provides scale-oriented services to your Ruby webapps, including turn-key clustering. With its latest release, Torquebox supports all Rack-based Ruby frameworks.</p>
<p>Torquebox comes with job scheduling and asynchronous task scheduling <em>out of the box</em> (no extra installs necessary), and while I've grown fond of <a href="http://www.rabbitmq.com/">RabbitMQ,</a> the ease of using the built-in <a href="http://java.sun.com/products/jms/">JMS</a> (Java Message Service) messaging is appealing, particularly if you're likely to deploy within a Java dominant environment. <strong>If you are having trouble convincing management to let you use Ruby, Torquebox is the most enterprise-oriented platform I've seen to date.</strong> Not just that, it's open-source and licensed under the LGPLv3. Their community site boasts that <a href="http://www.jboss.org/">JBoss</a> (upon which Torquebox is built) is <em>"the world's number one Java application server, and it was created by the community."</em></p>
<p>Torquebox 1.0.0.Beta18 was released within a day's time from the latest JRuby 1.4 release and you can download Torquebox from its download page, or build it yourself from <a href="http://github.com/torquebox/torquebox/">source easily obtained from GitHub</a>. If you are using Mac OS X, the following code sample will get you up and running with a simple cut and paste:</p>
<pre>
wget http://repository.torquebox.org/maven2/releases/org/torquebox/torquebox-bin/1.0.0.Beta18/torquebox-bin-1.0.0.Beta18.zip
unzip torquebox-bin-1.0.0.Beta18.zip
mv torquebox-1.0.0.Beta18-bin torquebox
export TORQUEBOX_HOME=~/torquebox
export JBOSS_HOME=$TORQUEBOX_HOME/jboss
export JRUBY_HOME=$TORQUEBOX_HOME/jruby
PATH=$JRUBY_HOME/bin:$PATH
sudo gem install jruby-openssl
sudo gem install activerecord-jdbcsqlite3-adapter
cd ~/torquebox/share/rails
rails -m template.rb ~/torquebox_rails_app
cd ~/torquebox_rails_app
rake rails:freeze:gems
emacs config/database.yml

# (now prefix sqlite3 with jdbc to become "jdbcsqlite3")

jruby -S rake gems:install
jruby -S rake db:migrate
jruby -S rake torquebox:rails:deploy
jruby -S rake torquebox:server:run</pre>
<p>While waiting for JBoss to unfurl, you can close your eyes and do a mental walk-through of installing Erlang, a RabbitMQ daemon, cron, HAProxy, etc. – because you won't have to do that with Torquebox – and when you open your eyes approximately two minutes later, you should be able to see the default Rails page at <code>http://localhost:8080</code>. While everything appears the same as if you were running on it on a Mongrel, you're really experiencing Rails as it's presented from within a JBoss AS appserver, more about that in a minute.</p>
<p>Handily, Torquebox contains tried-and-true JDBC drivers for a number of databases, including Derby, H2, HSQLDB, MySQL, PostgreSQL, and of course, SQLite3. Additionally, Torquebox is Capistrano friendly – so you probably won't need to learn any new tricks to deploy – and it also has built-in support for cryptographic key-storage.</p>
<p>With an application appropriately bundled into a WAR file, you can utilize Torquebox's farming to "deploy your app to one node of the cluster, and to have that node farm it out to all of its peers." Torquebox uses <code>httpd+mod_cluster</code> out in front, so it's "intelligently aware" of your JBoss cluster, and thus, if you have a two-node cluster running, and you start two more JBoss instances on the same subdomain, they'll auto-join the cluster and then the existing nodes will auto-farm the app to them. You're app now has twice the resources and didn't need to be restarted, which in and of itself, is pretty huge.</p>
<p>So, where does Torquebox fit in? One can make the argument that it fits "everywhere." The JVM comes pre-installed on Macs, is easy enough to add to Linux or a Windows desktop, and of course deploys to a number of hosts. Scaling the JVM isn't new, and finding the people to do so is probably easier than finding dedicated Ruby programmers. I would be remiss not to point out that JBoss is hungry for RAM, and I realized quickly that Torquebox wanted more cowbell than my <em>Linode 720</em> could afford. Engine Yard Cloud greatly simplifies deployment to EC2 instances (via Chef), and the smallest instance provides a whopping 1.7GB RAM, so scaling JRuby through the company that houses the JRuby core commiters just makes sense to me. If, however, you feel better qualified to deploy Torquebox yourself, you might look at JBoss Cloud.</p>
<p>I recommend taking 10 minutes to watch the pair (<a href="http://torquebox.org/news/2009/05/screencast-getting-started-with-torquebox">1</a>, <a href="http://torquebox.org/news/2009/05/screencast-scheduled-jobs-with-torquebox">2</a>) of screencasts by Bob McWhirter, which demonstrate all of what I've highlighted here in well under a half an hour.</p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><a href="http://devver.net/caliper" rel="nofollow"><img src="/assets/2009/10/caliper-logo.png" width="98" height="42" alt="caliper-logo.png" style="float:right; margin-bottom:8px; margin-left:12px;"></a><em>[ad]</em> Find duplication, code smells, complex code and more in your Ruby code with <a href="http://devver.net/caliper" rel="nofollow">Caliper!</a> The metrics are free and setup takes just one click. <a href="http://devver.net/caliper" rel="nofollow">Get started!</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>JB</strong> &middot; <time datetime="2009-11-12T03:28:00+00:00">November 12, 2009 at 3:28 am</time></p>
      <p>I was definitely interested in Torquebox when it came out...but since that time have heard no examples of real world usage. It'd be really useful for the devs to point out any projects currently using it (if there are any)...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Martijn</strong> &middot; <time datetime="2009-11-12T16:21:00+00:00">November 12, 2009 at 4:21 pm</time></p>
      <p>Interesting.. I'm quite happy with our current Glassfish deployments, but something more community-based is always good. I've messed around with Geromino in the past but never got it to work properly.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>paulbonner</strong> &middot; <time datetime="2009-11-16T15:54:00+00:00">November 16, 2009 at 3:54 pm</time></p>
      <p>I deployed a Rails-based contract-management application to production on Torquebox several months ago, and at this point am planning on using it for all JRuby deployments. We're primarily an enterprise Java shop, and all our Java runs on JBoss, so Torguebox makes it considerably easier to fit JRuby development into our existing infrastructure and support matrix. So far, we're more than pleased with the performance and stability of the Torquebox platform -- although as the author notes it is considerably more hungry for memory than a Mongrel cluster. Some of the built-in extras are quite nice (we're using the scheduler, and have begun to use JBoss Cache as a poor-man's Memcache), but for us the primary appeal is the ability to better integrate our JRuby development into our  Java infrastructure.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Martin</strong> &middot; <time datetime="2009-11-22T14:20:00+00:00">November 22, 2009 at 2:20 pm</time></p>
      <p>doesn't work for me. I got:</p><p>NativeException in Rails/infoController#properties</p><p>java.lang.RuntimeException: Failed to read zip file: org.jboss.virtual.plugins.context.zip.ZipFileWrapper@39b57f1 - /Users/martin/torquebox_rails_app/vendor/rails</p><p>RAILS_ROOT: /Users/martin/torquebox_rails_app</p><p>Application Trace | Framework Trace | Full Trace<br>
org/jboss/virtual/plugins/context/zip/ZipEntryContext.java:628:in `ensureEntries'<br>
org/jboss/virtual/plugins/context/zip/ZipEntryContext.java:773:in `checkIfModified'<br>
org/jboss/virtual/plugins/context/zip/ZipEntryContext.java:817:in `getChild'<br>
org/jboss/virtual/plugins/context/zip/ZipEntryHandler.java:191:in `createChildHandler'<br>
org/jboss/virtual/plugins/context/AbstractVirtualFileHandler.java:684:in `structuredFindChild'<br>
org/jboss/virtual/plugins/context/zip/ZipEntryHandler.java:165:in `getChild'<br>
org/jboss/virtual/VirtualFile.java:481:in `getChild'</p><p>does anybody know a solution for this?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bob McWhirter</strong> &middot; <time datetime="2009-11-24T02:03:00+00:00">November 24, 2009 at 2:03 am</time></p>
      <p>@Martin--</p><p>If you could send a fuller stack-trace (including any Ruby portion) along with more environment/deployment information to the list, I'm sure we could track this down.</p><p>The VFS/VirtualFile bits are definitely new and quite possibly a little brittle.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tex</strong> &middot; <time datetime="2009-11-24T11:58:00+00:00">November 24, 2009 at 11:58 am</time></p>
      <p>@Martin</p><p>I had the same problem but with jrails plugin.</p><p>I've solved renaming vendor/plugins/jrails in vendor/plugins/rails-jquery (maybe jboss finding a folder named j* thinks that folder is a "zip" entry...)</p><p>Now all are working good (I'm very satisfied with torquebox !!!)</p><p>Hope this helps...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tex</strong> &middot; <time datetime="2009-11-24T12:02:00+00:00">November 24, 2009 at 12:02 pm</time></p>
      <p>@Martin</p><p>there is no reason to have rails under vendor/rails if you use rails v. 2.3.4 (torquebox already use the last rails version) so if you use 2.3.4 version try removing vendor/rails...</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
