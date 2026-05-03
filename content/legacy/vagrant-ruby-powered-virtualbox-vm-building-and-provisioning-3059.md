---
title: 'Vagrant: EC2-Like Virtual Machine Building and Provisioning from Ruby'
date: '2010-03-08'
author: Peter Cooper
author_slug: admin
post_id: 3059
slug: vagrant-ruby-powered-virtualbox-vm-building-and-provisioning-3059
url: "/vagrant-ruby-powered-virtualbox-vm-building-and-provisioning-3059.html"
categories:
- cool
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2010/03/vagrant_chilling.png" width="121" height="120" alt="vagrant_chilling.png" style="float:left; margin-right:12px; margin-bottom:12px;"><a href="http://vagrantup.com/">Vagrant</a> is a Ruby-based tool for building and deploying virtualized development environments. It uses Oracle's open-source <a href="http://www.virtualbox.org/">VirtualBox</a> virtualization system along with the <a href="chef-tasty-server-configuraiton-2162.html">Chef</a> configuration management engine along with lots of Ruby goodness to automate the creation and provisioning of virtual machines for development purposes.</p>
<p>If you thought rolling out new VMs using Amazon EC2 was easy, Vagrant brings an even simpler system to your local development machine. From the command line, starting is as easy as:</p>
<pre><code>sudo gem install vagrant
vagrant box add base http://files.vagrantup.com/base.box
mkdir vagrant
vagrant init
vagrant up</code></pre>
<p>Be warned, though - as a 370MB download, adding that box image isn't a quick process! Once you've got it though, you can keep rolling out VMs based on it at will.</p>
<p><strong>Note that VirtualBox is a separate dependency for Vagrant. Vagrant does not come with VirtualBox built in or anything like that. <a href="http://www.virtualbox.org/wiki/Downloads">Download VirtualBox</a> for your OS if you want to try Vagrant.</strong></p>
<p>Beyond the basics of getting a VM running, Vagrant can take care of port forwarding, distribution, environment setup, SSH access, shared folders and, importantly, <a href="http://vagrantup.com/docs/provisioning.html">the provisioning of software onto the VM</a> using Chef. If you want to automatically roll out a VM with Apache 2, <a href="http://www.railsinside.com/">Rails</a>, Phusion Passenger, or <a href="http://github.com/opscode/cookbooks">the like</a>, Chef and Vagrant will take care of it for you. This is powerful stuff!</p>
<p>In terms of documentation and having a straight forward <a href="http://vagrantup.com/">official homepage</a>, Vagrant sets a solid benchmark. There's a straightforward <a href="http://vagrantup.com/docs/getting-started/index.html">guide to getting started with Vagrant</a>, lots of <a href="http://vagrantup.com/docs/index.html">documentation</a>, and a 12 minute <a href="http://vimeo.com/9976342">getting started video/screencast</a>. Great work guys!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-03-08T23:00:00+00:00">March 8, 2010 at 11:00 pm</time></p>
      <p>Serves me right for finishing the post while downloading that box image.. when I did vagrant up, I get an error message *groan*:</p><pre>[22:59:17 ~]$ vagrant up
[INFO 03-08-2010 22:59:21] Vagrant: Reloading configuration to account for loaded box...
/Library/Ruby/Gems/1.8/gems/vagrant-0.1.1/bin/../lib/../lib/vagrant/env.rb:75:in `read': Is a directory - /Users/peter/.vagrant (Errno::EISDIR)</pre><p>If I get it sorted out, I'll post again. This is on OS X 10.6..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-03-08T23:03:00+00:00">March 8, 2010 at 11:03 pm</time></p>
      <p>Digging deeper into the instructions seems to show that making a separate folder then running vagrant init is better. I tried that and got a totally different exception:</p><pre>[23:02:32 ~/Sandbox/v]$ vagrant up
[INFO 03-08-2010 23:02:35] Vagrant: Reloading configuration to account for loaded box...
[INFO 03-08-2010 23:02:35] Vagrant: Importing base VM (/Users/peter/.vagrant/boxes/base/box.ovf)...
/Library/Ruby/Gems/1.8/gems/vagrant-0.1.1/bin/../lib/../lib/vagrant/env.rb:74: command not found: VBoxManage -q import /Users/peter/.vagrant/boxes/base/box.ovf</pre>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-03-08T23:06:00+00:00">March 8, 2010 at 11:06 pm</time></p>
      <p>Suspecting this isn't as clever as I thought it was and that I actually need to install VirtualBox separately first ;-) Giving that a go.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-03-08T23:11:00+00:00">March 8, 2010 at 11:11 pm</time></p>
      <p>Aha, that's a bingo! Updating post..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-03-08T23:23:00+00:00">March 8, 2010 at 11:23 pm</time></p>
      <p>All working now and post has been updated with further instructions. Still having issues rolling out multiple VMs at a time though, but investigating that further.. will post anything useful I get.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-03-08T23:28:00+00:00">March 8, 2010 at 11:28 pm</time></p>
      <p>OK. If you want multiple VMs for now, create multiple directories, do vagrant init in each, then add a config setting to each Vagrantfile forwarding a different port to each for SSH (or other) purposes, e.g:</p><p>config.vm.forward_port("ssh", 22, 10001)</p><p>And on another..</p><p>config.vm.forward_port("ssh", 22, 10002)</p><p>And so forth.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mitchell Hashimoto</strong> &middot; <time datetime="2010-03-08T23:51:00+00:00">March 8, 2010 at 11:51 pm</time></p>
      <p>Peter,</p><p>Thanks for the article! Quick, too! </p><p>Sorry about the trouble you had getting multiple VMs up at the same time. Multiple VMs within a single project is something I'd like to do in the future so Vagrant can be used to model more complex web applications more accurately (such as load balancers, separate utility servers, and so on), but its something which was just too complicated to get out with an initial release.</p><p>It seems that John helped you get it all working. Fantastic.</p><p>Thanks again!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
