---
title: 'Capistrano 2.0: Flexible Automated Deployment System'
date: '2007-07-22'
author: Hendy Irawan
author_slug: hendy-irawan
post_id: 541
slug: capistrano-20-flexible-automated-deployment-system-541
url: "/capistrano-20-flexible-automated-deployment-system-541.html"
categories:
- enterprise
- news
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2007/06/capistrano-logo-small.png"></p>
<p><a href="http://www.capify.org/">Capistrano</a> is a deployment system written in Ruby by <a href="http://weblog.jamisbuck.org/">Jamis Buck</a>. It has been the <em>de facto</em> standard for deploying Rails applications and automating remote tasks via SSH.</p>
<p>The recently released version 2.0 expands its usefulness not just for Rails developers, but for general automation tasks as well. <a href="http://www.capify.org/upgrade/whats-new">New features</a> include:</p>
<ul>
<li>
<em>Namespaces.</em> Tasks may be defined within namespaces, nested arbitrarily deep. No more worrying of task name collision.</li>
<li>
<em>Deployment strategies.</em> Besides Subversion checkout, you can now specify other deployment strategies: export, copy, tar/gzip, etc.</li>
<li>
<em>Opt-in deployment tasks.</em> Deployment tasks are now opt-in; you don't get them, unless you ask for them.</li>
<li>
<em>Event framework</em>. Define hooks into other libraries easily.</li>
<li>
<tt>capify</tt> <em>script.</em> Autogenerate a minimal Capfile, and not just for Rails.</li>
<li>
<em>Scoped execution.</em> Scope a single invocation to a specific host, set of hosts, or role.</li>
</ul>
<p>To install:</p>
<pre>gem install capistrano</pre>
<p>Capify your app:</p>
<pre>capify .</pre>
<p>Read <a href="http://www.capify.org/getting-started/basics">Capistrano Basics</a> for a quick start, and if you're a Rails developer, <a href="http://www.capify.org/getting-started/rails">Using Capistrano with Rails</a>. If you've used Capistrano 1.x before, be sure to read <a href="http://www.capify.org/upgrade">Upgrading to Capistrano 2.0</a>.</p>
<p>Several useful Capistrano-related resources: <em>(most are written with Capistrano 1.x in mind, but the concepts still apply to 2.0)</em></p>
<ul>
<li><a href="http://devthatweb.com/view/deploy-any-project-using-capistrano-2">Deploy Any Project Using Capistrano 2</a></li>
<li>
<a href="http://www.unessa.net/en/hoyci/2007/06/using-capistrano-deploy-django-apps/">Using Capistrano to Deploy Django Apps</a><br>
(Proof of concept that you <em>can</em> use Capistrano 2 not just with Rails)</li>
<li><a href="http://www.softiesonrails.com/2007/4/5/the-absolute-moron-s-guide-to-capistrano">Softies on Rails' Guide to Capistrano</a></li>
<li><a href="http://tynerblain.com/blog/2007/05/09/first-five-capistrano-tips/">First Five Capistrano “Oh Crap!  Oh No!” Tips</a></li>
<li><a href="http://www.oreillynet.com/ruby/blog/2007/04/capistrano_20_not_just_for_rai.html">Capistrano 2.0: Not Just for Rails</a></li>
<li><a href="http://niblets.wordpress.com/2007/02/12/capistrano-ec2-sitting-in-a-tree-k-i-s-s-i-n-g/">Deploying with Capistrano to Amazon EC2</a></li>
<li>
<a href="http://woss.name/2007/06/24/integrating-capistrano-with-smf/">Integrating Capistrano with Solaris SMF</a> (<a href="http://www.opensolaris.org/os/community/smf/">Service Management Facility</a>)</li>
<li>
<a href="http://www.hostingrails.com/forums/wiki_thread/5">Deploying with Capistrano on HostingRails.com</a><br>
(a HostingRails-centric tutorial, but most of it may also apply to your web hosting provider)</li>
<li><a href="http://ryandaigle.com/articles/2007/6/22/using-command-line-parameters-w-rake-and-capistrano">Using Command Line Parameters with Rake and Capistrano</a></li>
<li><a href="http://rubyforge.org/projects/capistrano/">Capistrano Rubyforge Project</a></li>
</ul>
<p>Jamis has written <a href="http://weblog.rubyonrails.com/2007/7/22/capistrano-2-0">more information over at the official Rails blog</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://www.adaruby.com/2007/08/14/deploying-joomla-using-capistrano-20/" rel="external nofollow" class="url">Web 2.0 with Ruby on Rails</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
