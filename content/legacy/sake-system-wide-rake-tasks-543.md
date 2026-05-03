---
title: 'Sake: System-wide Rake Tasks'
date: '2007-06-26'
author: Hendy Irawan
author_slug: hendy-irawan
post_id: 543
slug: sake-system-wide-rake-tasks-543
url: "/sake-system-wide-rake-tasks-543.html"
categories:
- cool
- ruby-on-rails
- ruby-tricks
- tools
---

{{< rawhtml >}}
<p><a href="http://errtheblog.com/post/6069">Sake</a> is a RubyGem by <a href="http://ozmm.org/">Chris Wanstrath</a> which executes and manages system-wide Rake tasks. Whereas Rake is project-specific, Sake allows the developer to examine, install, run, and uninstall Rake files and tasks globally, much like the way Rubygems does this for Ruby libraries.</p>
<p>Sake files are for the most part just regular Rake files:</p>
<pre>namespace :db do
desc "Returns the current schema version"
task :version =&gt; :environment do
puts "Current version: " +
ActiveRecord::Migrator.current_version.to_s
end
end

desc "Show specs when testing"
task :spec do
ENV['TESTOPTS'] = '--runner=s'
Rake::Task[:test].invoke
end</pre>
<p>Installing a task is easy:</p>
<pre>$ sake -i err.rake spec
# Installing task `spec'
$ sake -T
sake spec   # Show specs when testing</pre>
<p>You can combine Sake global tasks and project-specific Rake tasks, as Sake picks them up automatically.</p>
<p>Before reading <a href="http://errtheblog.com/post/6069">Err's article on Sake</a>, you might want to install it first:</p>
<pre>gem install sake</pre>
{{< /rawhtml >}}
