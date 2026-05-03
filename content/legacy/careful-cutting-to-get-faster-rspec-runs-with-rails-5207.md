---
title: Careful Cutting To Get Faster RSpec Runs with Rails
date: '2011-08-02'
author: Jon Frisby
author_slug: jonfrisby
post_id: 5207
slug: careful-cutting-to-get-faster-rspec-runs-with-rails-5207
url: "/careful-cutting-to-get-faster-rspec-runs-with-rails-5207.html"
categories:
- controversy
- ruby-on-rails
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2011/07/cutting.jpg" alt="" title="cutting" width="120" height="120" class="alignright size-full wp-image-5224" style="float: left; margin-right: 12px; margin-bottom: 12px">
</p>
<p>A few months ago, Ruby Inside wrote about <a href="how-to-rails-3-and-rspec-2-4336.html">using Spork with RSpec 2 and Rails 3</a> in order to get a more sprightly spec run. Unfortunately, using the techniques in the article with our fledgling codebase's test suite left us with somewhat disappointing results, so I decided to dig deeper and see if I could do better.</p>
<p><em>Note: This is a guest post by Jon Frisby of <a href="http://cloudability.com/">Cloudability.</a> See the post footer for more info.</em></p>
<h3>With and Without Spork</h3>
<p>First, let's see what things look like with and without <a href="http://spork.rubyforge.org/">Spork</a> running on our raw test suite.</p>
<p><em>Note: The machine I'm using is a spanking-new 15" MacBook Pro with the 2.2Ghz quad i7 and running Ruby 1.9.2-p180.</em></p>
<p><em>"time rspec spec" without Spork running:</em></p>
<pre><code>Finished in 15.78 seconds
75 examples

real    0m22.334s
user    0m17.952s
sys     0m2.643s
</code></pre>
<p>We can see that we're not overly I/O bound (real vs. user+sys), but we are spending a LOT of time doing "real work".  Ugh.</p>
<p><em>"time rspec spec" with Spork running:</em></p>
<pre><code>Finished in 16.82 seconds
75 examples

real    0m17.340s
user    0m0.214s
sys   0m0.065s
</code></pre>
<p>This didn't exactly equate to a big boost! <em>(Editor notes: Most of Spork's win is in running specs over and over rather than once-off speed, but I'll let this slide for now ;-))</em> Just for clarity, here's our barebones spec_helper.rb file showing what runs in the prefork as well as on each further run:</p>
<pre>require 'spork'

Spork.prefork do
  ENV["RAILS_ENV"] ||= 'test'
  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'

  RSpec.configure do |config|
    config.mock_with :rspec
    config.use_transactional_fixtures = true
  end
end

Spork.each_run do
  # This code will be run each time you run your specs.
  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}
end</pre>
<h3 id='\"cutting_out_mysql\"'>Cutting out MySQL</h3>
<p>So, where are we spending out time and what can we do about it?  First I'll try cutting MySQL out of the picture and use an in-memory SQLite DB for our tests. <a href="http://www.osmonov.com/2011/01/in-memory-sqlite-database-for-testing.html">This article</a> was a helpful starting point for me, but I discovered quickly that the spec_helper.rb addition needed must be placed in the <code>Spork.each_run</code> block - not the <code>Spork.prefork</code> block.  </p>
<p>Unfortunately, the <code>silence_stream</code> call winds up being superfluous because Spork has captured it already, and ActiveRecord isn't writing to <code>STDOUT</code> anymore.  This will make the tests a bit noisier when the Spork server is running, but that's not a huge deal.</p>
<p>Our spec_helper.rb file's <code>each_run</code> section now becomes this:</p>
<pre>Spork.each_run do
  # This code will be run each time you run your specs.
  load_schema = lambda {
    load "#{Rails.root.to_s}/db/schema.rb" # use db agnostic schema by default
    # ActiveRecord::Migrator.up('db/migrate') # use migrations
  }
  silence_stream(STDOUT, &amp;load_schema)

  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}
end</pre>
<p><em>"time rspec spec" without Spork running:</em></p>
<pre><code>Finished in 14.95 seconds
75 examples

real    0m21.866s
user    0m17.826s
sys   0m2.688s
</code></pre>
<p>A little bit better - and every win helps - but not huge.  Let's see how things look with the Spork server running.</p>
<p><em>"time rspec spec" with Spork running:</em></p>
<pre><code>Finished in 14.83 seconds
75 examples

real    0m15.504s
user    0m0.222s
sys 0m0.064s
</code></pre>
<p>Things are beginning to look a bit better, but there is still room for improvement.</p>
<h3 id='\"cutting_out_garbage_collection\"'>Cutting out Garbage Collection</h3>
<p>The most obvious candidate is garbage collection. Turning off GC outright makes things faster, but at an unacceptable cost:  The spec runner bloats from a peak of 81MB to a peak of 418MB.  It turns out though that we can make a bit of a trade-off here by explicitly running GC periodically and finding a sweet-spot between too much time spent in GC and too much memory growth.</p>
<p>Our new spec_helper.rb disables GC in general, and forces a run after every 10th test. I didn't go for an exhaustive analysis of the time/space tradeoff here, but converged to this as a "good enough" option after a handful of tests.</p>
<p>Here's the new spec_helper.rb file (a lot more changes this time):</p>
<pre>Spork.prefork do
  # Loading more in this block will cause your tests to run faster. However,
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.
  ENV["RAILS_ENV"] ||= 'test'
  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'

  counter = -1
  RSpec.configure do |config|
    config.mock_with :rspec
    config.use_transactional_fixtures = true

    config.after(:each) do
      counter += 1
      if counter &gt; 9
        GC.enable
        GC.start
        GC.disable
        counter = 0
      end
    end

    config.after(:suite) do
      counter = 0
    end
  end
end

Spork.each_run do
  GC.disable

  # From: http://www.osmonov.com/2011/01/in-memory-sqlite-database-for-testing.html
  load_schema = lambda {
    load "#{Rails.root.to_s}/db/schema.rb" # use db agnostic schema by default
    # ActiveRecord::Migrator.up('db/migrate') # use migrations
  }
  silence_stream(STDOUT, &amp;load_schema)

  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}
end</pre>
<p><em>"time rspec spec" without Spork running:</em></p>
<pre><code>Finished in 14.78 seconds
75 examples

real    0m21.384s
user    0m16.421s
sys   0m2.830s
</code></pre>
<p><em>"time rspec spec" with Spork running:</em></p>
<pre><code>Finished in 13.36 seconds
75 examples

real    0m13.981s
user    0m0.218s
sys   0m0.061s
</code></pre>
<p>These runs used 145MB and 142MB of memory respectively.  A considerable increase in memory, but not bad given the time win for controlling our GC behavior.  The tradeoff time-wise (versus just disabling GC) turns out to be small — about half a second.  I can live with that.</p>
<p>But all we've really been doing so far is shaving off some rough corners.  We haven't addressed the real issue head-on — the 13+ seconds of "real work" being done.</p>
<h3 id='\"taming_devise\"'>Taming Devise</h3>
<p>My next step was to bust out <code>perftools.rb</code> and do some for-real profiling.  I'm going to get a bit hand-wavy, cut to the chase and tell you what I found to be the single biggest culprit: <a href="https://github.com/plataformatec/devise">Devise</a>.</p>
<p>As with many in Rails-land, we're using Devise to implement our user account and authentication functionality.  Devise utilizes a "work factor" mechanism to make the computational cost of computing a password hash relatively high.  This is to make brute-forcing the system that much harder for potential attackers, and it's a very important mechanism.</p>
<p>Most of our models have an association to our User class, and we're using the Devise-recommended choice of <a href="http://bcrypt-ruby.rubyforge.org/">bcrypt</a> with the default 10 stretches for hashing passwords right now.  Obviously, anything that involves creating users is going to add up relatively fast.  In hind-sight, this should have been fairly obvious.  D'oh.</p>
<p>So, what do we do in test-mode?  In test-mode we don't care is the test data includes easy-to-brute-force passwords.  We can't <em>just</em> set stretches to 0, because bcrypt won't let us.  One little monkey-patch to Devise later, and we can get past that!</p>
<p>Our updated spec_helper.rb has an extended <code>Spork.prefork</code> section:</p>
<pre>Spork.prefork do
  # Loading more in this block will cause your tests to run faster. However,
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.
  ENV["RAILS_ENV"] ||= 'test'
  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'

  # Don't need passwords in test DB to be secure, but we would like 'em to be
  # fast -- and the stretches mechanism is intended to make passwords
  # computationally expensive.
  module Devise
    module Models
      module DatabaseAuthenticatable
        protected

        def password_digest(password)
          password
        end
      end
    end
  end
  Devise.setup do |config|
    config.stretches = 0
  end

  counter = -1
  RSpec.configure do |config|
    config.mock_with :rspec
    config.use_transactional_fixtures = true

    config.after(:each) do
      counter += 1
      if counter &gt; 9
        GC.enable
        GC.start
        GC.disable
        counter = 0
      end
    end

    config.after(:suite) do
      counter = 0
    end
  end
end</pre>
<p><em>"time rspec spec" without Spork running:</em></p>
<pre><code>Finished in 6.34 seconds
75 examples

real    0m12.982s
user    0m9.567s
sys   0m2.699s
</code></pre>
<p><em>"time rspec spec" with Spork running:</em></p>
<pre><code>Finished in 6.32 seconds
75 examples

real    0m6.935s
user    0m0.219s
sys   0m0.058s
</code></pre>
<p>Bingo. <em>So now we've gone from around 17s to around 7s.</em> And <em>that</em> is how you make your specs faster.</p>
<p>While Spork can make multiple runs faster, it's not the be-all and end-all of making your spec runs faster <em>generally</em>, so see if there are other wins to be had as well.</p>
<p style="background-color: #ff9; padding: 12px"><a href="http://cloudability.com/"><img src="/assets/2011/07/blue-stacked-180.png" alt="" title="blue-stacked-180" width="180" height="128" class="alignright size-full wp-image-5220" style="float: right; margin-left: 18px; border-width: 0px"></a><strong>Jon Frisby</strong> is a jack-of-all-trades coder and is currently the co-founder of <a href="http://cloudability.com/">Cloudability</a>, which aims to be the Mint.com for cloud spending. He's a veteran of the startup world and even after being co-founder or founder of 4 companies, he insists that he still has some of his sanity left.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Alan</strong> &middot; <time datetime="2011-08-02T23:18:00+00:00">August 2, 2011 at 11:18 pm</time></p>
      <p>After finding myself annoyed by schema load output I spent way too much time playing with STDOUT and silence_stream only to find the following option works great:</p><p>ActiveRecord::Schema.verbose = false<br>
load "#{Rails.root.to_s}/db/schema.rb"</p><p>No noisy output!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Federico</strong> &middot; <time datetime="2011-08-02T23:39:00+00:00">August 2, 2011 at 11:39 pm</time></p>
      <p>Jon, I might be the only one here but would you mind telling us a bit about what you did with perftools.rb? I think seeing how other people has approached this problem might help everyone else debug their long spec runs (26m here :( ).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alex Sharp</strong> &middot; <time datetime="2011-08-03T04:52:00+00:00">August 3, 2011 at 4:52 am</time></p>
      <p>Yep, we discovered the exact same thing with warden and devise. Hey, at least bcrypt is doing it's job!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kieran</strong> &middot; <time datetime="2011-08-03T06:18:00+00:00">August 3, 2011 at 6:18 am</time></p>
      <p>Awesome tip. Using 'rspec spec' instead of 'rake', and putting that devise hack in place, I got our tests down from 1:40.49 to 43.569. Awesome!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kieran</strong> &middot; <time datetime="2011-08-03T06:31:00+00:00">August 3, 2011 at 6:31 am</time></p>
      <p>One note: This breaks <code>user.valid_password?('something')</code> in tests. But then, you shouldn't be testing devise functionality in apps anyway, cause devise already tests it's own stuff.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kieran</strong> &middot; <time datetime="2011-08-03T06:59:00+00:00">August 3, 2011 at 6:59 am</time></p>
      <p>Interestingly, I can't seem to get the in-memory database to work. When I run tests after making the changes, I get this:</p><p>/Users/kieran/.rvm/gems/ruby-1.9.2-p290@blog/gems/activerecord-3.0.9/lib/active_record/connection_adapters/sqlite_adapter.rb:295:in `table_structure': Could not find table 'posts' (ActiveRecord::StatementInvalid)</p><p>Happens even when db/test.sqlite3 exists, and the schema file is loaded :-S rake db:schema:load  has the same problem :-S</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rémy</strong> &middot; <time datetime="2011-08-03T08:00:00+00:00">August 3, 2011 at 8:00 am</time></p>
      <p>Hi,</p><p>FYI, the tip about minimizing the stretches is documented here: <a href="https://github.com/plataformatec/devise/wiki/Speed-up-your-unit-tests" rel="nofollow">https://github.com/plataformatec/devise/wiki/Speed-up-your-unit-tests</a></p><p>Also, the point of Spork is really not to speed up the running time of your tests but to speed up their starting time after the first load (i.e. after Spork has done its heavy "prefork" job).</p><p>By the way, if you're doing continuous testing, you may be interested in Spork + RSpec + <a href="https://github.com/guard/guard" rel="nofollow">Guard</a> (in brief, Guard will run your specs for you on files modification).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Max</strong> &middot; <time datetime="2011-08-03T08:09:00+00:00">August 3, 2011 at 8:09 am</time></p>
      <p>So your real speedup came from lower the devise stretches..   </p><p>Isn't this covered in the Wiki?  <a href="https://github.com/plataformatec/devise/wiki/Speed-up-your-unit-tests" rel="nofollow">https://github.com/plataformatec/devise/wiki/Speed-up-your-unit-tests</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joel</strong> &middot; <time datetime="2011-08-03T18:27:00+00:00">August 3, 2011 at 6:27 pm</time></p>
      <p>I'd seen the Devise trick before somewhere but completely forgot about implementing it ... and the GC changes are a nice added bonus. So, just those two things took my suite from ~ 18 seconds to ~ 4 seconds.</p><p>Awesome stuff. Thanks guys!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jon Frisby</strong> &middot; <time datetime="2011-08-03T21:36:00+00:00">August 3, 2011 at 9:36 pm</time></p>
      <p>@Alan: Aha!  Good tip!  Thanks!</p><p>@Federico: Nothing especially fancy, just a very simple CPU-profile-capture.  The sampling-based approach was a bit problematic for me because my test suite runs in such a short amount of time but you should see more robust data from it.  Just look at the biggest time-sinks and proceed accordingly.</p><p>@Kieran: If you're seeing that big a jump just by switching from "rake spec" to "rspec spec" then it sounds like you've got a LOT of gems / application code loading.  I don't envy you that situation!  And thanks for the heads-up on Devise breakage.  As for in-memory schemas -- if you're using ":memory:" as the file, then db/test.sqlite3 shouldn't ever be created, OR loaded.  It sounds like you're loading the schema up at the wrong point in the lifecycle of things -- it must happen after Spork has forked.  If you're following my code examples, that shouldn't be a problem.  Beyond that, up to you I'm afraid -- I'm not a master of using SQLite, nor am I a master of the Rails object/process lifecycle so I don't have much intuition about what might be going on.</p><p>@Remy: Hadn't seen that wiki page but I did attempt using stretches=1 in a test run and while it was a big win, Devise still showed up as a big time-sink.  That is why I went through the effort of stubbing out the password hashing.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jon Frisby</strong> &middot; <time datetime="2011-08-03T23:22:00+00:00">August 3, 2011 at 11:22 pm</time></p>
      <p>Just to clarify a couple items...</p><p>1) All the test-times are taken after doing two 'primer runs' of the same command, to ensure disk caches are primed and that I'm benchmarking the impact of my change with less impact from external variables.</p><p>2) The with-Spork times do not include the overhead of Spork itself, of course.</p><p>3) I include both the with/without Spork times because I find myself often editing code that does not get reloaded under Spork -- things like code in the lib/ directory, require'd via initializers.  In that scenario, it's not worth it to start Spork, wait for it to come up, then switch tabs and run "rspec spec", it's net better to just do "rspec spec" without Spork running at all.</p><p>So of course one has to project this out to one's workflow:</p><p>When Spork is appropriate:  S + N * I<br>
(S = Spork startup time, N = number of iterations/code-changes to test, I = incremental time to run a test, I.E. "time rspec spec" when Spork is running.)</p><p>When Spork is not appropriate:  N * C<br>
(N = as above, C = total time to run a test, I.E. "time rspec spec" when Spork is NOT running.)</p><p>So you can see that these wind up looking as follows here:</p><p>First variant, with Spork: 5 + N * 17<br>
First variant, without Spork: N * 22</p><p>Last variant, with Spork: 6 + N * 7<br>
Last variant, without Spork: N * 13</p><p>So given a hypothetical situation where I change my code 30 times and want to run tests after each one, I can expect to sit and wait on my machine, slipping out of flow, for:</p><p>First variant, with Spork: 515 seconds<br>
First variant, without Spork: 660 seconds</p><p>Last variant, with Spork: 216 seconds<br>
Last variant, without Spork: 390 seconds</p><p>So for both workflows there's some pretty big wins here although how big is a function of how much you can use Spork.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jon Frisby</strong> &middot; <time datetime="2011-08-03T23:23:00+00:00">August 3, 2011 at 11:23 pm</time></p>
      <p>Gah.  #2 should say "do not include the overhead of <b>starting</b> Spork itself".</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bogdan Gusiev</strong> &middot; <time datetime="2011-08-04T07:15:00+00:00">August 4, 2011 at 7:15 am</time></p>
      <p>Rspec test suite performance should be split in two tasks.</p><p>The first one is run a single spec file in development environment.<br>
The second one is run entire large test suite with 500+ tests.</p><p>The benchmarks you've done here don't cover any on these use case. You are optimizing very young project that doesn't have enough code yet.  </p><p>So IMHO this could not fit well real world optimization problems.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jon Frisby</strong> &middot; <time datetime="2011-08-04T20:29:00+00:00">August 4, 2011 at 8:29 pm</time></p>
      <p>@Bogdan:  It's a fair point that there are several major use-cases to testing, and that this isn't quite addressing two of them.  A third major use-case is editing or refactoring of cross-cutting concerns, where you may uncover hidden/unexpected assumptions more readily than you would in most code.  This article suits that scenario fairly well, as you have the frequent-iteration but the need to run many tests.</p><p>However I should note that as the code and test suite has scaled up (the article was written a few weeks ago), the benefits have held up fairly well so far.</p><p>The benchmarks in the article are actually quite relevant for larger test suites though:  Things like the Devise overhead will amplify and impact larger test suites disproportionately since in many apps, most things will need a User object.  The same goes for the GC tweaks, which are apparently knocking about a third off the execution time of the whole test suite as of today (based on a quick comparison with/without GC tweaks).</p><p>The single-spec scenario, not being well addressed, deserves a bit of a second look, so let's revisit it here.  I've actually moved over to primarily using Cucumber on this project so I'll need to establish a bit of a baseline and then we'll proceed with what things look like when using Spork to run one single Cucumber feature.</p><p>Baseline - single Feature, Spork is running, no tweaks to Devise, no GC tweaks, MySQL for the test DB:<br>
<code><br>
  5 scenarios (5 passed)<br>
  22 steps (22 passed)<br>
  0m0.988s</code></p><p>  real	0m2.944s<br>
  user	0m1.508s<br>
  sys	0m0.260s<br>
</p><p>Setting the # of stretches in Devise to 1:<br>
<code><br>
  5 scenarios (5 passed)<br>
  22 steps (22 passed)<br>
  0m0.491s</code></p><p>  real	0m2.432s<br>
  user	0m1.517s<br>
  sys	0m0.255s<br>
</p><p>Disabling hashing completely in Devise:<br>
<code><br>
  5 scenarios (5 passed)<br>
  22 steps (22 passed)<br>
  0m0.459s</code></p><p>  real	0m2.414s<br>
  user	0m1.516s<br>
  sys	0m0.259s<br>
</p><p>Using SQLite for the test DB (using the DB-neutral schema loading option -- not running migrations, run once when Spork forks, and using DatabaseCleaner with the Transaction strategy before each individual test):<br>
<code><br>
  5 scenarios (5 passed)<br>
  22 steps (22 passed)<br>
  0m0.506s</code></p><p>  real	0m2.612s<br>
  user	0m1.525s<br>
  sys	0m0.255s<br>
</p><p>Undoing the SQLite3 change, and adding the GC change:<br>
<code><br>
  5 scenarios (5 passed)<br>
  22 steps (22 passed)<br>
  0m0.399s</code></p><p>  real	0m2.271s<br>
  user	0m1.518s<br>
  sys	0m0.257s<br>
</p><p>So what do we see?</p><p>1) The incremental benefit of going from 1 stretch to none is lost in the noise at this scale even if it is more meaningful when one has dozens or hundreds of tests.</p><p>2) SQLite3 is a net-loss for the focused-test-execution route.</p><p>3) The GC change winds up being slightly beneficial here, although in practice it's just disabling the GC outright since I don't have 10+ scenarios.</p><p>The net result of combining the no-hashing-in-Devise, and GC tweaks is a more-than-20% improvement in single-feature-execution time -- modest, but nice to have.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Bigg</strong> &middot; <time datetime="2011-08-05T01:29:00+00:00">August 5, 2011 at 1:29 am</time></p>
      <p>At first, I was skeptical. How could so few changes result in such a massive speedup?</p><p>Then I did them on an application here that has a test suite that took 700 seconds.</p><p>It now takes 440. This is a *massive* improvement and with further improvements I'm sure it can be made faster.</p><p>Thank you, thank you, thank you. I will be doing this for every application I can now.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>David Chelimsky</strong> &middot; <time datetime="2011-08-05T12:21:00+00:00">August 5, 2011 at 12:21 pm</time></p>
      <p>Good stuff! I'm going to add an option to rspec-core's config to set the GC frequency: <a href="https://github.com/rspec/rspec-core/issues/433" rel="nofollow">https://github.com/rspec/rspec-core/issues/433</a>.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jon Frisby</strong> &middot; <time datetime="2011-08-05T19:40:00+00:00">August 5, 2011 at 7:40 pm</time></p>
      <p>@Ryan:  Glad to hear it helped you, and I'd love to know what else you find as you dig into your test suite's performance characteristics.</p><p>@David: Awesome!  I look forward to the release that includes it!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jared Fraser</strong> &middot; <time datetime="2011-08-07T22:39:00+00:00">August 7, 2011 at 10:39 pm</time></p>
      <p>This GC approach didn't segfault like some of the other solutions out there (and ones i've built myself), so thats great! Shaved ~70 seconds off a 400 sec rspec suite.</p><p>In-memory SQLite actually *added* 20-30 seconds on the total suite.</p><p>The devise solution didn't seem to have much of an effect, but still took off about 20 seconds.</p><p>Thanks for the article!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jared Fraser</strong> &middot; <time datetime="2011-08-07T22:45:00+00:00">August 7, 2011 at 10:45 pm</time></p>
      <p>Cancel that; segfaults on 1.9.2 but not 1.9.3.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jon Frisby</strong> &middot; <time datetime="2011-08-09T19:58:00+00:00">August 9, 2011 at 7:58 pm</time></p>
      <p>@Jared:  The SQLite3 thing seems like there could easily be scenarios where the front-loaded costs of an app are higher than the incremental costs.  If you're not actually doing a "lot" of DB operations in your tests -- particularly if you have a large/complex schema, that could easily account for why SQLite is a net loss.  As to why the Devise change isn't as big for you, sounds like your models are less tightly coupled to your User model than perhaps mine are.</p><p>And in terms of segfaulting, that's strange and a bit beyond my ken but I can report that I've had no problems on an rvm-installed Ruby 1.9.2p180.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Benjamin Quorning</strong> &middot; <time datetime="2011-08-15T12:08:00+00:00">August 15, 2011 at 12:08 pm</time></p>
      <p>As Kieran mentioned, I <code>valid_password?</code> may fail now. And when doing integration tests, it did. So I fixed it this way: <a href="https://gist.github.com/1146099" rel="nofollow">https://gist.github.com/1146099</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>zoras</strong> &middot; <time datetime="2011-08-30T08:33:00+00:00">August 30, 2011 at 8:33 am</time></p>
      <p>Is there a workaround to use <code>load_schema</code> for schemaless databases like mongodb(mongoid)?</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
