---
title: 'Thin: A Ruby HTTP Daemon That’s Faster Than Mongrel'
date: '2008-01-05'
author: Peter Cooper
author_slug: admin
post_id: 688
slug: thin-a-ruby-http-daemon-thats-faster-than-mongrel-688
url: "/thin-a-ruby-http-daemon-thats-faster-than-mongrel-688.html"
categories:
- cool
- ruby-on-rails
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2008/01/thin.png" width="350" height="150"></p>
<p><a href="http://code.macournoyer.com/thin/">Thin</a> is a new Web server / daemon written in Ruby by Marc-André Cournoyer that uses the <a href="http://rubyeventmachine.com/">EventMachine</a>, <a href="http://rack.rubyforge.org/">Rack</a>, and <a href="http://mongrel.rubyforge.org/">Mongrel</a> libraries. EventMachine makes it super fast at processing network I/O, Rack makes it easy to integrate with existing Ruby Web app frameworks, and Mongrel helps it parse HTTP. So, yes, the title is <span style="font-style: italic;">slightly</span> misleading. Thin actually relies on Mongrel, but is ultimately faster than it, even against Mongrel's EventMachine-enhanced guise.</p>
<p>You can get started with Thin with a simple <span style="font-style: italic;">sudo gem install thin</span> and then you can use it with any Rack supporting Web app / framework. With a Rails app, for example, a simple <span style="font-style: italic;">thin start</span> in the base directory will get things moving.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Geoff</strong> &middot; <time datetime="2008-01-05T04:40:00+00:00">January 5, 2008 at 4:40 am</time></p>
      <p>Here's a link to the home page: <a href="http://code.macournoyer.com/thin/" rel="nofollow">http://code.macournoyer.com/thin/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Radarek</strong> &middot; <time datetime="2008-01-05T16:25:00+00:00">January 5, 2008 at 4:25 pm</time></p>
      <p>For clarity: it uses only mongrel parser as we can read on Thin web "the root of Mongrel speed and security".</p>
    </li>
      <li>
      <p class="comment-meta"><strong>FrankLamontagne</strong> &middot; <time datetime="2008-01-05T16:30:00+00:00">January 5, 2008 at 4:30 pm</time></p>
      <p>Marc-André Cournoyer is a prolific contributor for the Rails community. I suggest everyone to start following him on his blog : <a href="http://macournoyer.wordpress.com" rel="nofollow">http://macournoyer.wordpress.com</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stephen</strong> &middot; <time datetime="2008-01-05T20:47:00+00:00">January 5, 2008 at 8:47 pm</time></p>
      <p>Cool!</p><p>Here's a quick rake task to make a thin cluster:</p><p><code>rake thin:cluster:start</code><br>
<code>rake thin:cluster:stop</code></p><p>For the start task, you can pass in the RAILS_ENV and the SIZE of the cluster (default 4).</p><p><code>rake thin:cluster:start RAILS_ENV=production SIZE=10</code></p><p><code><br>
namespace :thin do</code></p><p>  namespace :cluster do</p><p>    desc 'Start thin cluster'<br>
    task :start =&gt; :environment do<br>
      `cd #{RAILS_ROOT}`<br>
      port_range = RAILS_ENV == 'development' ? 3 : 8<br>
      (ENV['SIZE'] ? ENV['SIZE'].to_i : 4).times do |i|<br>
        Thread.new do<br>
          port = "#{port_range}%03d" % i<br>
          str  = "thin start -d -p#{port} -Ptmp/pids/thin-#{port}.pid"<br>
          str += " -e#{RAILS_ENV}"<br>
          puts "Starting server on port #{port}..."<br>
          `#{str}`<br>
        end<br>
      end<br>
    end</p><p>    desc 'Stop thin cluster'<br>
    task :stop =&gt; :environment do<br>
      `cd #{RAILS_ROOT}`<br>
      port_range = RAILS_ENV == 'development' ? 3 : 8<br>
      Dir.new("#{RAILS_ROOT}/tmp/pids").each do |file|<br>
        Thread.new do<br>
          if file.starts_with?("thin-#{port_range}")<br>
            str  = "thin stop -Ptmp/pids/#{file}"<br>
            puts "Stopping server on port #{file[/\d+/]}..."<br>
            `#{str}`<br>
          end<br>
        end<br>
      end<br>
    end</p><p>  end<br>
end<br>
</p>
    </li>
      <li>
      <p class="comment-meta"><strong>macournoyer</strong> &middot; <time datetime="2008-01-05T22:36:00+00:00">January 5, 2008 at 10:36 pm</time></p>
      <p>I swear I posted a comment yesterday!?</p><p>Thx a lot Peter for talking about my project.</p><p>Just to be clear, Thin doesn't depend on Mongrel. But the Thin parser is a fork of the excellent Mongrel parser, customize for greater performances with Rack.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Robert Dempsey</strong> &middot; <time datetime="2008-01-06T14:48:00+00:00">January 6, 2008 at 2:48 pm</time></p>
      <p>@macournoyer: how is the memory use with Thin (i.e. Thin taking up memory as time goes on)? Thanks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>McD</strong> &middot; <time datetime="2008-01-06T22:09:00+00:00">January 6, 2008 at 10:09 pm</time></p>
      <p>I create a new Rails project and run thin with:</p><p>rails depot<br>
cd depot<br>
thin start</p><p>Then I browse to <a href="http://localhost:3000" rel="nofollow">http://localhost:3000</a> I get this rrouting error:</p><p>no route found to match "/" with {:method=&gt;:get}</p><p>If I start mongrel:<br>
script/server</p><p>I get the typical "Welcome Aboard" Rails page.</p><p>What's missing in my process to use thin for the webserver?<br>
I may be back a rev on Rails fro example.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>macournoyer</strong> &middot; <time datetime="2008-01-07T00:15:00+00:00">January 7, 2008 at 12:15 am</time></p>
      <p>@Robert: Thin takes a little less memory then mongrel since it doesn't use threads.</p><p>@McD: yeah, that url rewriting part hasn't been implemented yet, it's on the TODO list though :) So page caching and the /index.html page won't work for now but the rest should.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Derek</strong> &middot; <time datetime="2008-01-07T17:49:00+00:00">January 7, 2008 at 5:49 pm</time></p>
      <p>I hope the Ruby/Rails sharks don't cause Marc-André Cournoyer to become unemployed and homeless.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Floyd Price</strong> &middot; <time datetime="2008-01-07T22:33:00+00:00">January 7, 2008 at 10:33 pm</time></p>
      <p>Maybe this new competition will force *** back into mongrel development?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://railsmagnet.com/2008/01/new-web-server-rails-and-it-thin" rel="external nofollow" class="url">Rails Magnet</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark</strong> &middot; <time datetime="2008-01-23T23:23:00+00:00">January 23, 2008 at 11:23 pm</time></p>
      <p>lol @ Derek... literally too, thanks for that :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
