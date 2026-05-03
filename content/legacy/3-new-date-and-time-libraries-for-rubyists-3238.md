---
title: 3 New Date and Time Libraries for Rubyists
date: '2010-05-05'
author: Peter Cooper
author_slug: admin
post_id: 3238
slug: 3-new-date-and-time-libraries-for-rubyists-3238
url: "/3-new-date-and-time-libraries-for-rubyists-3238.html"
categories:
- compilations
- cool
- ruby-tricks
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2010/05/oscilloclock.png" class="alignleft size-thumbnail bordered">In the UK there's a cliché that goes: "You wait hours for a bus, and then three come along at once!" So it went with these three Ruby date and time libraries. They all made an appearance on <a href="http://www.rubyflow.com/">RubyFlow</a> last week and are all useful in their own ways, depending on how you're working with dates and times.</p>
<h3>ice_cube - Fast querying and expansion of event recurrence rules</h3>
<p><a href="http://seejohnrun.github.com/ice_cube/">ice_cube</a> is a library by John Crepezzi that provides "fast querying and expansion of recurrence rules in Ruby." What this means is that you can create schedules powered by date recurrence rules that can be quite complex (e.g. every 4 years on a Tuesday in the first week of November). Rules like these are defined by chaining methods together, rather than using natural language.</p>
<p>To install:</p>
<pre><code>gem install ice_cube</code></pre>
<p>To use:</p>
<pre><code>require 'ice_cube'
rule = IceCube::Rule.yearly(4).month_of_year(:november).day(:tuesday).day_of_month(2, 3, 4, 5, 6, 7, 8)
schedule = IceCube::Schedule.new(Time.now)
schedule.add_recurrence_rule rule
schedule.first(3)
# =&gt; [Tue Nov 02 05:04:38 +0000 2010, Tue Nov 04 05:04:38 +0000 2014, Tue Nov 06 05:04:38 +0000 2018]</code></pre>
<p>ice_cube also supports exporting rules into iCal and <span class="caps">YAML</span> formats as well as a natural language equivalent.</p>
<p>John has put together a <a href="http://seejohnrun.github.com/ice_cube/static/ice_cube_ruby_nyc.pdf"><span class="caps">PDF</span> presentation</a> that shows off more usage, and there are some simple examples on the <a href="http://seejohnrun.github.com/ice_cube/">official site</a> too.</p>
<h3>tickle - A natural language parser for recurring events</h3>
<p><a href="http://github.com/noctivityinc/tickle">tickle</a> is a natural language parser for recurring events by Joshua Lippiner that stands in contrast to ice_cube's method driven approach. It depends on the popular <a href="chronic-natural-date-parsing-for-ruby-229.html">chronic</a> natural language date parser and appears (through my experience) to be for Ruby 1.9+ only.</p>
<p>tickle lets you throw it things like <code>every 4 days starting next saturday</code>, <code>every other week</code>, <code>the tenth of the month</code> and similar (there are a lot of examples on <a href="http://github.com/noctivityinc/tickle">tickle's GitHub page</a>). You pass these to the <code>Tickle.parse</code> method and you get the next occurrence of the rule.</p>
<p>To install:</p>
<pre><code>gem install tickle</code></pre>
<p>To use:</p>
<pre><code>require 'tickle'
Tickle.parse('every 4 days starting next saturday')
# =&gt; 2010-05-01 12:00:00 +0000
</code></pre>
<p>tickle isn't particularly mature yet and it only makes it easy to get the <em>next</em> occurrence of your rule, but the developer suggests that once an event has occurred, you automatically run Tickle again to get the next date. In this way, it seems tickle is well suited for situations where only the <em>next</em> occurrence needs to be stored and the rule can be kept in a separate database column or similar.</p>
<h3>business_time - Time and date offsets based on "business time/hours"</h3>
<p><a href="http://blog.codesherpas.com/on_the_path/2010/04/introducing-business_time.html">business_time</a> is a new library that works with the concept of "business time" or "business hours." Rather than just letting you perform operations on dates by absolute numbers of days or hours, you can now work with business days and hours of your own definition. business_time depends heavily on Active Support.</p>
<p>To install:</p>
<pre><code>gem install business_time</code></pre>
<p><em>Note: business_time depends on Active Support (gem: <code>activesupport</code>)</em></p>
<p>To use:</p>
<pre><code>require 'active_support'
require 'business_time'
# Examples "from now"
4.business_hours.from_now
5.business_days.from_now
# Using user supplied dates
my_birthday = Date.parse("August 4th, 2010")
10.business_days.before(my_birthday)
# Add a day to not count as a business day
BusinessTime::Config.holidays &lt;&lt; my_birthday
# Overlapping days are OK
6.business_hours.after(Time.parse("August 3rd, 3:00pm"))
</code></pre>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Joshua Hull</strong> &middot; <time datetime="2010-05-05T18:46:00+00:00">May 5, 2010 at 6:46 pm</time></p>
      <p>I made <a href="http://github.com/joshbuddy/spanner" rel="nofollow">http://github.com/joshbuddy/spanner</a> the other day because I was shocked to discover Chronic didn't parse time spans. I feel like we should bundle up Chronic, Tickle, Spanner et al and make an all-encompassing natural language time parsing library. There is probably a lot of overlap here.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nils Jonsson</strong> &middot; <time datetime="2010-05-06T02:45:00+00:00">May 6, 2010 at 2:45 am</time></p>
      <p>I can't help but think of the Flight of the Conchords song "Business Time." <a href="http://www.youtube.com/watch?v=WGOohBytKTU" rel="nofollow">http://www.youtube.com/watch?v=WGOohBytKTU</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sohan</strong> &middot; <time datetime="2010-05-06T14:35:00+00:00">May 6, 2010 at 2:35 pm</time></p>
      <p>Your post has been linked at DrinkRails.com as one of the top ruby on rails blogs of the day.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Trans</strong> &middot; <time datetime="2010-05-07T00:30:00+00:00">May 7, 2010 at 12:30 am</time></p>
      <p>The state of time and date libs for ruby are quite the tangle. Ruby itself has Time, Date and DateTime, plus standard lib extensions 'time.rb' and 'date.rb', and then there's all the ActiveSupport extensions. Then there is tzinfo and also chronic. And I'm sure there are more. Plus these three libs...</p><p>I really would be nice if someone very detail minded sat down and just created the ultimate time/date library that took care of all this stuff.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Josh</strong> &middot; <time datetime="2010-05-10T21:32:00+00:00">May 10, 2010 at 9:32 pm</time></p>
      <p>Thanks for the mention.  Just FYI to all that I've updated Tickle with a full set of unit tests as well as US Holiday support.  I agree with Joshua Hull regarding the overlap and given that Chronic has a number of oddities with it, might be nice to bring them all together.  There is a bunch in Tickle, such as the holiday support, that feels like it should be in Chronic as it's more point in time then recurring.</p><p>Latest version is here: <a href="http://github.com/noctivityinc/tickle" rel="nofollow">http://github.com/noctivityinc/tickle</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ben</strong> &middot; <time datetime="2010-05-11T21:37:00+00:00">May 11, 2010 at 9:37 pm</time></p>
      <p>Already using Runt (<a href="http://runt.rubyforge.org/" rel="nofollow">http://runt.rubyforge.org/</a>), but I'll take a peek at ice_cube</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
