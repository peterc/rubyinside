---
title: How To Get Rails 3 and RSpec 2 Running Specs Fast (From Scratch)
date: '2011-02-20'
author: Peter Cooper
author_slug: admin
post_id: 4336
slug: how-to-rails-3-and-rspec-2-4336
url: "/how-to-rails-3-and-rspec-2-4336.html"
categories:
- ruby-on-rails
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2011/02/rarrr.png" alt="" title="rarrr" width="120" height="120" class="alignnone size-full wp-image-4385" style="float: left; margin-right: 16px; margin-bottom: 8px; border: 1px solid #555"><a href="rails-3-0-released-and-22-free-videos-to-bring-you-up-to-speed-3733.html">Rails 3</a> is great. <a href="rspec-2-0-released-rubys-leading-bdd-framework-grows-up-3880.html">RSpec 2</a> is great. And <a href="ruby-1-9-2-released-3700.html">Ruby 1.9.2</a> is <em>really</em> great. Getting them all running together <em>and quickly</em>, however, isn't entirely straightforward. In this post I demonstrate how to get everything ticking over along with automatically running, super-snappy test runs.</p>
<p>The ultimate outcome is using Ruby 1.9.2 (though much of this is relevant to 1.8 still) to create a Rails 3 app, hook up RSpec 2, and be able to run specs <em>quickly.</em> The first two parts are easy(ish) but the "quickly" part requires some tinkering. Grab a coffee and carry on..</p>
<h3>Create a new Rails 3 app</h3>
<p>Got Rails 3 installed? If not, <code>gem install rails</code> will see you good. Then head on down to your favorite project folder with your shell and create a new Rails 3 app like so:</p>
<pre>rails new myapp --skip-test-unit</pre>
<p>You can retroactively bring RSpec 2 into an existing Rails 3 project, of course, but it's easier for this walkthrough to start afresh in case of application-specific issues.</p>
<h3>Hooking up RSpec 2 with RSpec-Rails</h3>
<p>Edit the <code>Gemfile</code> file in your new Rails project (<code>myapp/Gemfile</code> in this example) and add the following block to the bottom:</p>
<pre>group :development, :test do
  gem 'rspec-rails'
end</pre>
<p>This tells Bundler (a gem management and dependency tool Rails 3 likes to lean on) we want to use the <a href="https://github.com/dchelimsky/rspec-rails">rspec-rails</a> gem which will get RSpec running with Rails 3.0 for us. Next, we get Bundler to do its thing:</p>
<pre>bundle</pre>
<p>This will install all of the gems referenced in <code>Gemfile</code>, including <code>rspec-rails</code>. (You can use <code>bundle install</code> instead, if you prefer, but <code>bundle</code> on its own works too.)</p>
<p>Last but not least, we need to run RSpec's 'generator' that rspec-rails has put in place for us:</p>
<pre>rails generate rspec:install</pre>
<p>The generator creates a few files. Namely:</p>
<ul>
<li>
<code>.rspec</code> - a config file where we can store extra command line options for the <code>rspec</code> command line tool. By default it contains <code>--colour</code> which turns on colored output from RSpec.</li>
<li>
<code>spec</code> - a directory that will store all of the various model, controller, view, acceptance and other specs for your app</li>
<li>
<code>spec/spec_helper.rb</code> - a file that's loaded by every spec (not in any automatic way but most have <code>require 'spec_helper'</code> at the top). It sets the test environment, contains app level RSpec configuration items, loads support files, and more.</li>
</ul>
<p>We still can't run <code>rake</code> and see anything interesting yet because we don't have a database or any models initialized.</p>
<h3>Creating a model to test</h3>
<p>Let's take the easy way out and use the <code>scaffold</code> generator to flesh out something for us to test (as well as to see what spec files can be generated automatically):</p>
<pre>rails generate scaffold Person name:string age:integer zipcode:string</pre>
<p>It's worth noting that when you generate the scaffold numerous spec files are also created (thanks to <code>rspec-rails</code>):</p>
<pre>spec/models/person_spec.rb
spec/controllers/people_controller_spec.rb
spec/views/people/edit.html.erb_spec.rb
spec/views/people/index.html.erb_spec.rb
spec/views/people/new.html.erb_spec.rb
spec/views/people/show.html.erb_spec.rb
spec/helpers/people_helper_spec.rb
spec/routing/people_routing_spec.rb
spec/requests/people_spec.rb</pre>
<p>Now bring the database up to speed with the migration for the new model:</p>
<p><code>rake db:migrate</code></p>
<p>Now let's run <code>rake</code> - finally! The result:</p>
<pre>...............**............

Pending:
  PeopleHelper add some examples to (or delete) /Users/peter/dev/rails/myapp/spec/helpers/people_helper_spec.rb
    # Not Yet Implemented
    # ./spec/helpers/people_helper_spec.rb:14
  Person add some examples to (or delete) /Users/peter/dev/rails/myapp/spec/models/person_spec.rb
    # Not Yet Implemented
    # ./spec/models/person_spec.rb:4

Finished in 0.31043 seconds
29 examples, 0 failures, 2 pending</pre>
<p>Rock and roll. We're up and running. Sort of. Let's put in some "real" specs to be sure things are working nicely.</p>
<p>Change <code>spec/models/person_spec.rb</code> to the following rather contrived pair of specs:</p>
<pre>require 'spec_helper'

describe Person do
  it "can be instantiated" do
    Person.new.should be_an_instance_of(Person)
  end

  it "can be saved successfully" do
    Person.create.should be_persisted
  end
end</pre>
<p>Not the most useful things to spec out, admittedly, but you get a little database action and get rid of a <code>pending</code> spec we had cluttering things up. We haven't got anything else we can seriously test yet anyway.</p>
<p>Now let's run <code>rake spec:models</code> to focus our efforts on what we've just done:</p>
<pre>..

Finished in 0.09378 seconds
2 examples, 0 failures</pre>
<h3>How to have specs run automatically with Watchr</h3>
<p>Let's assume we've progressed with developing our app and we're working on models and controllers, testing along the way. Rather than running <code>rake</code> or <code>bundle exec rspec</code> all of the time, wouldn't it be great to have the relevant spec run <em>automatically</em> when we either edit the spec or a model/controller that has a spec? Well, with <a href="https://github.com/mynyml/watchr">watchr</a>, we can. <em>(Note: Some people prefer <a href="http://ph7spot.com/musings/getting-started-with-autotest">autotest</a>. I find watchr more flexible and useful for other things beyond just running specs.)</em></p>
<p><em>But if you really want to use autotest, Mike Bethany explains <a href="http://mikbe.tk/2011/02/10/blazingly-fast-tests/">how to set it up in a similar scenario</a> in a post of his own, along with autotest-growl for OS X notifications.</em></p>
<p>Add <code>watchr</code> to your <code>Gemfile</code>'s testing and production gem section:</p>
<pre>group :development, :test do
  gem 'rspec-rails'
  gem 'watchr'
end</pre>
<p>Then run <code>bundle</code> to install it.</p>
<p>Next, create a file called <code>.watchr</code> in your app's root folder and populate it with this code:</p>
<pre>def run_spec(file)
  unless File.exist?(file)
    puts "#{file} does not exist"
    return
  end

  puts "Running #{file}"
  system "bundle exec rspec #{file}"
  puts
end

watch("spec/.*/*_spec.rb") do |match|
  run_spec match[0]
end

watch("app/(.*/.*).rb") do |match|
  run_spec %{spec/#{match[1]}_spec.rb}
end</pre>
<p>This 'watchr script' directs a running watchr process to do a few things:</p>
<ul>
<li>If any file ending in <code>_spec.rb</code> under the <code>spec/</code> directory changes, run the <code>run_spec</code> method with its filename.</li>
<li>If any <code>.rb</code> file under the <code>app/</code> directory changes, call the <code>run_spec</code> method with an equivalently named <code>_spec.rb</code> file under <code>spec</code>.</li>
<li>
<code>run_file</code> accepts a filename for a spec file, checks it exists, and tells the system to run it (using <code>system</code>)</li>
</ul>
<p>If you now run <code>watchr .watchr</code> to use the <code>.watchr</code> script, not much will happen. But if you make any change (or even just re-save) to, say, <code>spec/models/person_spec.rb</code>, that spec will run automatically. Make a change to <code>app/models/person.rb</code> and it's the same deal. To stop watchr, CTRL+C saves the day.</p>
<p>Watchr can be used for a lot more than this but this is just for starters ;-)</p>
<p>Optionally, you might also like to create <code>lib/tasks/watchr.rake</code> and include the following code so you can just remember to run <code>rake watchr</code> instead (it's nice to have anything you run within a project contained in one place):</p>
<pre>desc "Run watchr"
task :watchr do
  sh %{bundle exec watchr .watchr}
end</pre>
<h3>How to get faster spec runs with Spork</h3>
<p>We've got Rails 3 running with RSpec 2 and watchr's giving us some automatically-running-spec love. But do you notice how slow it is? Specs run quickly once they're loaded but there are several seconds of waiting beforehand.</p>
<p><img src="/assets/2011/02/yslow.png" alt="" title="yslow" width="130" height="106" style="float: right; margin-left: 18px">If you run <code>time rake spec:models</code> with Ruby 1.9.2, you'll probably see a wallclock time of over 5 seconds (5.204s on my machine and I'm SSDed up) - holy splingledoops! If not, you're lucky, but it's <a href="http://groups.google.com/group/rubyonrails-core/browse_thread/thread/88519ef5a53088a1/c01ba447c6dc0de7?lnk=raot">a commonly reported problem</a> with some improvements expected in Ruby 1.9.3. We can't wait that long though..</p>
<p>Enter <a href="https://github.com/timcharper/spork">Spork</a>. Spork is a tool that loads the Rails environment and then <em>forks</em> each time you want to run some specs (or tests, it can be set up to run with <code>Test::Unit</code> too). In this way, the whole Rails initialization process is skipped, shaving valuable seconds off of your spec runs.</p>
<p><img src="/assets/2011/02/horriblediagram1.png" alt="" title="horriblediagram" width="250" height="211" class="alignnone size-full wp-image-4414" style="float: right; margin-left: 16px; margin-bottom: 8px">Edit your <code>Gemfile</code> again and include Spork:</p>
<pre>gem 'spork', '~&gt; 0.9.0.rc'</pre>
<p>Run <code>bundle</code> to install Spork.</p>
<p>Next, Spork needs to make some changes to your <code>spec/spec_helper.rb</code> file. Because it only initializes the Rails environment once and then forks it, you might have initialization features that you <em>need</em> to run on each test run. Spork will let you do this but it needs to make those changes first. Run:</p>
<pre>spork --bootstrap</pre>
<p>The result:</p>
<pre>Using RSpec
Bootstrapping /Users/peter/dev/rails/myapp/spec/spec_helper.rb.
Done. Edit /Users/peter/dev/rails/myapp/spec/spec_helper.rb now with your favorite text editor and follow the instructions.</pre>
<p>Bring up <code>spec/spec_helper.rb</code>. All <code>spork --bootstrap</code> has done is add some extra code to the top of the file. Read the comments there to get a better feel for what to do and what Spork requires and keep them in mind as we progress (in case you want to do something differently).</p>
<p>Get rid of <code>require 'rubygems'</code> from the first line - we're using Bundler so it's not necessary.</p>
<p>Next, <em>cut</em> and paste all of the 'old' contents of <code>spec_helper.rb</code> into the <code>Spork.prefork</code> block. Since we're running an empty(ish) project, there's nothing special we've added that we need to run on each run using the <code>Spork.each_run</code> block. We can leave that empty.</p>
<p>You'll end up with a <code>spec_helper.rb</code> file that looks like this:</p>
<pre>require 'spork'

Spork.prefork do
  # Loading more in this block will cause your tests to run faster. However,
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.
  # This file is copied to spec/ when you run 'rails generate rspec:install'
  ENV["RAILS_ENV"] ||= 'test'
  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'

  # Requires supporting ruby files with custom matchers and macros, etc,
  # in spec/support/ and its subdirectories.
  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

  RSpec.configure do |config|
    # == Mock Framework
    #
    # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
    #
    # config.mock_with :mocha
    # config.mock_with :flexmock
    # config.mock_with :rr
    config.mock_with :rspec

    # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
    config.fixture_path = "#{::Rails.root}/spec/fixtures"

    # If you're not using ActiveRecord, or you'd prefer not to run each of your
    # examples within a transaction, remove the following line or assign false
    # instead of true.
    config.use_transactional_fixtures = true
  end
end

Spork.each_run do
  # This code will be run each time you run your specs.
end</pre>
<p>Head back to your shell and the root of your project and run <code>spork</code>:</p>
<pre>Using RSpec
Loading Spork.prefork block...
Spork is ready and listening on 8989!</pre>
<p>Now we're cooking with gas. Open another shell, head to the root of your project, and run <code>watchr .watchr</code> too. Then head to <code>spec/models/person_spec.rb</code> in your text editor and re-save it (or even make a change if you want). Your specs run but.. they're no faster! What's wrong?</p>
<p>It turns out we need to make another change so that RSpec knows we're running Spork. Edit the <code>.rspec</code> file (mentioned earlier) and add <code>--drb</code> to the line (so it probably reads <code>--colour --drb</code>). <em>Now</em>, edit the spec again, save, and.. fast!</p>
<p>You should note that if you use <code>rake</code> at this point to run your entire suite, it'll still not be particularly fast because <em>rake</em> itself is initializing Rails in order to do its job. But if you want to run your entire suite quickly, just run:</p>
<pre>rspec spec</pre>
<p>With our dummy app and on my machine, this runs in a wallclock time of 0.759s - a serious improvement over 5.2 seconds.</p>
<p>We have Rails 3, RSpec 2, watchr, spork, and SUPER-DUPER FAST SPECS all running on Ruby 1.9.2. Score!</p>
<p>A minor snafu will remain, though. If you update <code>app/models/person.rb</code>, the change won't take effect in your tests since Spork has the <em>old</em> <code>Person</code> still in memory. One way around this is to edit <code>config/environments/test.rb</code> and change:</p>
<pre>config.cache_classes = true</pre>
<p>To:</p>
<pre>config.cache_classes = false</pre>
<p>Now your app's classes are reloaded when necessary.</p>
<p></p>
<center><img src="/assets/2011/02/awyeah.jpeg" alt="" title="awyeah" width="348" height="232" style="text-align: center; margin-left: auto; margin-right: auto"></center>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Dan Kubb</strong> &middot; <time datetime="2011-02-20T17:51:00+00:00">February 20, 2011 at 5:51 pm</time></p>
      <p>While watchr is nice, the last few weeks I've been testing out guard, with guard-rspec and guard-spork (among others) and I've been really liking it. There's a ton of plugins, and like watchr you can do much more than run tests automatically, you can even execute arbitrary commands when a file changes.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Walter kharma@<!--*-->gmail.com</strong> &middot; <time datetime="2011-02-20T18:13:00+00:00">February 20, 2011 at 6:13 pm</time></p>
      <p>Thank for writing this up, it is extends the normal setup of rspec, autotest (my preference) and spork. Nice touch with the graphics!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jimmy Cuadra</strong> &middot; <time datetime="2011-02-20T18:28:00+00:00">February 20, 2011 at 6:28 pm</time></p>
      <p>I like the way autotest runs all the specs when you first start it, and again when you hit control-C, in addition to watching files that change. Is there a way to make watchr behave similarly?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-02-20T20:56:00+00:00">February 20, 2011 at 8:56 pm</time></p>
      <p>I use guard to run spork (and restart it under certain conditions) as well as Watchr. I must admit, though, I hadn't looked into the differences between the two. I'd just assumed guard was better at managing processes, perhaps. I'll have to look into it again.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-02-20T20:59:00+00:00">February 20, 2011 at 8:59 pm</time></p>
      <p>I knew I'd seen this before, Jimmy, and just dug it out again. The answer is.. yes :-)</p><p>See <a href="https://github.com/intridea/oauth2/blob/master/specs.watchr" rel="nofollow">https://github.com/intridea/oauth2/blob/master/specs.watchr</a></p><p>Essentially it adds a <code>Signal.trap 'INT' do .. end</code> block to .watchr to perform those tasks on a single Ctrl+C (and quit for real with a double CTRL+C). I rarely run the entire suite so I haven't found need for it, but it's possible.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joe Ellis</strong> &middot; <time datetime="2011-02-21T01:19:00+00:00">February 21, 2011 at 1:19 am</time></p>
      <p>Thanks for this, I was wondering just yesterday how I could speed up rspec.  Perfect timing, thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Arun Agrawal</strong> &middot; <time datetime="2011-02-21T07:36:00+00:00">February 21, 2011 at 7:36 am</time></p>
      <p>Very nice. Using Spork before.</p><p>I will use watchr now.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Vladimir Zhukov</strong> &middot; <time datetime="2011-02-21T10:47:00+00:00">February 21, 2011 at 10:47 am</time></p>
      <p>I use Spork with Rubymine. Rubymine has autospec support. The one annoying thing was that I had experienced the problem when I change my models, there were no effect in tests. I was wonder why even after setting `config.cache_classes = false` in test environment a change won't take effect in my tests.</p><p>So with additional discovery I found that the reason was in my <b>Mongoid</b> and in <b>Devise</b>. So the solutions came from this <a href="https://github.com/timcharper/spork/wiki/Spork.trap_method-Jujutsu" rel="nofollow">wiki:</a></p><pre># Mongoid likes to preload all of your models in rails, making Spork a near worthless experience.
  # It can be defeated with this code:
  require "rails/mongoid"
  Spork.trap_class_method(Rails::Mongoid, :load_models)

  # Devise likes to load the User model. We want to avoid this. Delay route loading:
  require "rails/application"
  Spork.trap_method(Rails::Application, :reload_routes!)
</pre><p>Thanks for article! Now my tests are super-duper fast!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-02-22T00:05:00+00:00">February 22, 2011 at 12:05 am</time></p>
      <p>@Vladimir: I'd been bumping into that issue with Devise! Thanks for the solution :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-02-22T00:06:00+00:00">February 22, 2011 at 12:06 am</time></p>
      <p>Eugh, WordPress is borking your comment. I'll need to look into this..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael Hartl</strong> &middot; <time datetime="2011-02-22T04:04:00+00:00">February 22, 2011 at 4:04 am</time></p>
      <p>The config.cache_classes = false line doesn't seem to be necessary on my system. Changing, e.g., the User model in the <a href="http://railstutorial.org/" rel="nofollow">Rails Tutorial</a> sample application seems to change the model used by Spork just fine. I can run rspec spec/models/, change the model to break the test, and then run rspec again to watch the test fail. It works with Autotest, too. If you want to reproduce my setup, you can clone the <a href="https://github.com/railstutorial/sample_app" rel="nofollow">sample app repo</a> from GitHub.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-02-22T04:40:00+00:00">February 22, 2011 at 4:40 am</time></p>
      <p>Interesting - I'll have to give it a go. I had no joy with updates of any models without that change. Perhaps I'm just being dense though.. wouldn't be the first time ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Graeme Mathieson</strong> &middot; <time datetime="2011-02-22T14:13:00+00:00">February 22, 2011 at 2:13 pm</time></p>
      <p>So, is <code>.foo</code> the new <code>Foofile</code>? ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aslam Najeebdeen</strong> &middot; <time datetime="2011-02-22T14:24:00+00:00">February 22, 2011 at 2:24 pm</time></p>
      <p>Thanks you very much for the write up.</p><p>I was skeptic why is the spork doesn't load my models. Now everything work perfect!</p><p>Cheers!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Steve Lorek</strong> &middot; <time datetime="2011-02-23T11:52:00+00:00">February 23, 2011 at 11:52 am</time></p>
      <p>Thanks for the quick walkthrough. If anyone plans to use Shoulda in their tests, please bear this in mind: <a href="http://stackoverflow.com/questions/3894232/rspec-shoulda-and-spork-does-not-work-together" rel="nofollow">StackOverflow: Rspec, shoulda and spork does not work together</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Bethany</strong> &middot; <time datetime="2011-02-23T17:50:00+00:00">February 23, 2011 at 5:50 pm</time></p>
      <p>This look suspiciously like an article I posted 10 days earlier. <a href="http://mikbe.tk/2011/02/10/blazingly-fast-tests/" rel="nofollow">http://mikbe.tk/2011/02/10/blazingly-fast-tests/</a>.</p><p>It's different enough, and better written, since he used Spork 0.9.0rc and Watchr but the structure and some of the phrases are eerily similar.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dennis</strong> &middot; <time datetime="2011-02-24T02:36:00+00:00">February 24, 2011 at 2:36 am</time></p>
      <p>Is it Windows doing me in again? - some day I hope to get that Mac ...</p><p>I would love to get spork working -  "the error message you must call Spork.using_spork!" makes little sense to me</p><p>C:\Rails\rcia&gt;spork<br>
Using RSpec<br>
  -- Rinda Ring Server listening for connections...</p><p>  -- Starting to fill pool...<br>
     Wait until at least one slave is provided before running tests...<br>
  ** CTRL+BREAK to stop Spork and kill all ruby slave processes **<br>
you must call Spork.using_spork! before starting the server (RuntimeError)<br>
C:/Ruby192/lib/ruby/gems/1.9.1/gems/spork-0.9.0.rc3/lib/spork/server.rb:25:in `listen'<br>
C:/Ruby192/lib/ruby/gems/1.9.1/gems/spork-0.9.0.rc3/lib/spork/server.rb:20:in `run'<br>
C:/Ruby192/lib/ruby/gems/1.9.1/gems/spork-0.9.0.rc3/lib/spork/runner.rb:75:in `run'<br>
C:/Ruby192/lib/ruby/gems/1.9.1/gems/spork-0.9.0.rc3/lib/spork/runner.rb:10:in `run'<br>
C:/Ruby192/lib/ruby/gems/1.9.1/gems/spork-0.9.0.rc3/bin/spork:10:in `'<br>
C:/Ruby192/lib/ruby/gems/1.9.1/bin/spork:19:in `load'<br>
C:/Ruby192/lib/ruby/gems/1.9.1/bin/spork:19:in `'</p><p>C:\Rails\rcia&gt;:29:in `require':29:in `require': : no such file to load -- magazine_slaveno such file to load -- magazine_slave ( (LoadErroLoadErrorr)<br>
)<br>
        from :29:in `require'     from :29:in `require'</p><p>        from magazine_slave_provider.rb:5:in `'   from magazine_slave_provider.rb:5:in `'</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-02-24T04:09:00+00:00">February 24, 2011 at 4:09 am</time></p>
      <p>@Mike: Just to clear the air, I hadn't seen your post (or even your blog, till now) and, unusually, didn't refer to or check against any other blog posts while writing this one. I had to do this process when I started a project for a new client in mid January where I referred to several blog posts that covered different parts of this process but then I just redid it from memory for this. So I didn't rip you off - sorry(?) :-) I come from a journalistic background and I have too much to lose to lift people's work (though like most writers, I do "steal" the odd idea here and there!)</p><p>You seem to do some different things in yours like the method deletion/loading part - I don't know if that's needed in Spork 0.9 though I haven't seemed to need it so far. You also have the file reloading and dependency clearing which hasn't seemed necessary for my project either.</p><p>I'm intrigued which phrases are eerily similar though. Our writing styles are quite different and nothing stuck out to me..</p><p>Also, where is autotest mentioned in yours? Or does it just work automatically? I was going to link to your post somehow if it takes a different angle with the toolset because some people might prefer to use autotest, but I didn't see where it went into this.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Greg Lappen</strong> &middot; <time datetime="2011-02-24T18:03:00+00:00">February 24, 2011 at 6:03 pm</time></p>
      <p>Nice article, tempted to try spork out as rspec/autotest is quite slow.  It would be nice if there were an easy way to have it run under spork on my machine, but still run the traditional way on someone else's machine or on a CI server...guess it would be a matter of putting some conditional logic in spec_helper to do this.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Bethany</strong> &middot; <time datetime="2011-02-26T03:08:00+00:00">February 26, 2011 at 3:08 am</time></p>
      <p>Peter Cooper, I agree. I re-read your article and it's very different. Some of the phrases struck me as similar at the time but in retrospect I'm wrong. It was just synchronicity and I apologize for my hasty mischaracterization. </p><p>I use autotest and originally had it in my post but removed that portion from my article when I was trying to edit it down to the most important parts. That bit was still in my head though when I read your article.</p><p>Your article is vastly superior in every way. It makes me realize I have to step up my game and do a much better job. I again apologize for seeing smoke where there was no fire. Please feel free to delete my previous post with my humblest apologies.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-02-26T03:16:00+00:00">February 26, 2011 at 3:16 am</time></p>
      <p>Don't be so down on yourself - no offence taken! :-)</p><p>Perhaps you would be interested in reviving your autotest work or writing a new article about how you'd use autotest with the RSpec &amp; spork mechanism? There are clearly people who prefer it and I would link to it from here so that people have the choice. If you do anything like this, just post a link here and I'll sort it out.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Bethany</strong> &middot; <time datetime="2011-02-26T06:43:00+00:00">February 26, 2011 at 6:43 am</time></p>
      <p>Done, I've added the Autotest info and cleaned up my article a bit.</p><p><a href="http://mikbe.tk/2011/02/10/blazingly-fast-tests/" rel="nofollow">http://mikbe.tk/2011/02/10/blazingly-fast-tests/</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jacob</strong> &middot; <time datetime="2011-02-26T20:50:00+00:00">February 26, 2011 at 8:50 pm</time></p>
      <p>This article has made my life better.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-02-27T02:43:00+00:00">February 27, 2011 at 2:43 am</time></p>
      <p>Thanks Mike - I've added a link in the relevant section.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>George Anderson</strong> &middot; <time datetime="2011-03-02T18:55:00+00:00">March 2, 2011 at 6:55 pm</time></p>
      <p>"run_file accepts a filename for a spec file..." =&gt; "run_spec accepts a filename for a spec file..."</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kresimir Bojcic</strong> &middot; <time datetime="2011-03-02T20:06:00+00:00">March 2, 2011 at 8:06 pm</time></p>
      <p>Thanks, exactly what I was looking for... Now only to learn RSpec :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://renovation.niobiumlabs.com/athens-ruby-meetup-5/" rel="external nofollow" class="url">Athens Ruby Meetup #5 | Niobium Labs</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Torsten</strong> &middot; <time datetime="2011-03-09T23:01:00+00:00">March 9, 2011 at 11:01 pm</time></p>
      <p>Hello</p><p>for me the <em>config.cache_classes = false</em> in test.rb doesnt work under Windows 7 and Ruby 1.9.2. Is there anybody with a Windows machine and reloading model classes?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Suraj Kurapati</strong> &middot; <time datetime="2011-03-29T05:11:00+00:00">March 29, 2011 at 5:11 am</time></p>
      <p>There is also <a href="https://github.com/sunaku/test-loop" rel="nofollow">test-loop</a>, my answer to Autotest, Spork, and friends.  Simply run `test-loop` in any Ruby project and you've got yourself a continuous testing daemon.  For Rails integration and OSD notifications, simply require 'test/loop/rails' and 'test/loop/notify' respectively in a `.test-loop` file in the current directory or in your test/spec helper file.  Cheers.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Corey</strong> &middot; <time datetime="2011-04-27T15:41:00+00:00">April 27, 2011 at 3:41 pm</time></p>
      <p>Thanks for this write up!! Everything works perfect!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ylluminate</strong> &middot; <time datetime="2011-05-09T03:20:00+00:00">May 9, 2011 at 3:20 am</time></p>
      <p>I don't know, after a lot of playing and fiddling, it really seems that guard-spork + guard-rspec may be better than spork + autotest.  I don't feel that I have a solid handle on it all yet due to being so new to ruby, so if anyone could put together a very solid writeup I think we'd all benefit greatly from it.</p><p>The guard series of gems seem to work really well together.  Was interested to see guard-pow from 37signals.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
