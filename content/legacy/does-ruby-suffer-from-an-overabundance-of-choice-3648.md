---
title: Does Ruby Suffer From An Overabundance Of Choice?
date: '2010-08-11'
author: Peter Cooper
author_slug: admin
post_id: 3648
slug: does-ruby-suffer-from-an-overabundance-of-choice-3648
url: "/does-ruby-suffer-from-an-overabundance-of-choice-3648.html"
categories:
- controversy
---

{{< rawhtml >}}
<p>In <a href="http://www.kevingisi.com/2010/08/09/so-you-want-to-be-a-ruby-dev.html"><em>"So You Want To Be a Ruby Dev"</em></a> Kevin W Gisi  presents a tongue in cheek narrative of a new Ruby developer being guided through the choices they have to make. (It's <a href="http://news.ycombinator.com/item?id=1590955">being discussed on Hacker News</a> too - some good comments there.)</p>
<p>He asks a lot of questions: Which Ruby implementation to use? Which Web framework? Which Gems? Which version of Rails should you use? Which database adapter? And he caps it off with a conclusion of sorts:</p>
<blockquote class="stylized"><p><strong>Remember when Ruby and Rails was about getting stuff done?</strong> Note: New developers, Ruby is still a great place to be - even if there is an overabundance of choice at the moment.</p></blockquote>
<p><cite>Kevin W Gisi</cite></p>
<p>I like <a href="http://twitter.com/gisikw">Kevin</a> and I saw merit in his satirical tale (for without any merit something is not satire), but right away my <em>gut</em> felt his <em>conclusion</em> was bogus. I wondered.. is there another problem here or does Ruby <em>really</em> suffer from an overabundance of choice?</p>
<p>If we're talking about the number of tools, implementations, or libraries, <strong>no.</strong> Abundance is Ruby's <em>strength.</em> It's the <a href="http://en.wikipedia.org/wiki/There's_more_than_one_way_to_do_it">TIMTOWTDI</a> (There Is More Than One Way To Do It) philosophy Ruby inherited from Perl, in contrast to Python's preference for only one obvious way to complete an operation. It's Ruby canon that Matz designed Ruby to be a fun programming language for himself but, also, a language flexible enough to adapt to other people's fancies and preferences. Rather than all of us reading from the same hymn sheets, we can bend, bolt onto, and monkey patch Ruby to fit our own personal or team preferences. This approach has its (much discussed) failings, but it's a philosophy nonetheless.</p>
<h3>The overabundance is in the options we <em>present</em>
</h3>
<p>Still, I detected truth in Kevin's narrative. I realized, though, that it's not that Ruby is no longer about "getting stuff done" or that there's an "overabundance of choice" in libraries or tools. The problem is that Ruby's documentation, main advocacy sites, and even most sites for popular Ruby libraries (with one <em>major</em> exception - coming later) try too hard to demonstrate freedom, flexibility and choice from the get go without giving an opinionated, direct instructional approach for newcomers.</p>
<p>Let's take a cheap example (cheap, because the official Ruby site is really good, it could just be even better!) Consider the first thing some budding Rubyists will check out: the official <a href="http://www.ruby-lang.org/en/downloads/">Ruby download page</a>. The first paragraph asks you to read Ruby's <em>license</em> before moving on to Ruby's source code and then Ruby on Windows. Instructions for Linux and OS X (the latter of which is out of date) are way down the page. Compare and contrast with <a href="http://python.org/download/">python.org</a>'s approach - python.org's not perfect, but the link you want is almost guaranteed to be above the fold.</p>
<p><img src="/assets/2010/08/rubyfu1.jpg" alt="" title="rubyfu" width="560" height="607" class="alignnone size-full wp-image-3667" style="border: 2px solid #000"></p>
<p>We need to be more specific in our READMEs and Web sites where we can and think about what a smart newcomer would want to see. We need "Getting Started" or "For Newcomers" pages that tell people exactly what to do without bending over backwards to cover edge cases or show off esoteric features. Tours that don't take diversions. Download X. Type Y. Run code Z. Instructing, rather than showing a smorgasbord of options, from which a new, confused user would choose none. Rather than offer 5 vaguely different alternatives on a "How To Install" page, give the simplest, most generic route, <em>then</em> discuss the alternatives for "advanced users."</p>
<p>Books are great at this sort of direction. Take almost any instructional Ruby book and even if it's out of date or not doing things "the accepted way", it will take a position and stick to it. Novices can follow along and make smarter judgements later. Let's bring that to our own work too, where we can (and I'm certainly aware there are people who <em>do</em> do this already - that's great!). I'll be going through my own libraries and future blog posts to keep an eye out for this and figure out how a newcomer might perceive them. Satish Talim's <a href="http://rubylearning.com/blog/">RubyLearning</a> blog and courses have proven there's a gigantic population of people who consider themselves Ruby "newbies" reading what we write - it would be great if any of them could have a defined route to try out almost any library they stumble across.</p>
<h3>Rails gets it right</h3>
<p><a href="http://rubyonrails.org/">Rails</a> has been good at the instructional approach over the years. The "type this, type that, start a server, and bam, you've got an app" approach has been instrumental in the boom of Rails' popularity. Things like the "build a blog system in 15 minutes" screencasts were huge hits. Even complete non Rubyists could follow the same moves precisely and get the same results which they could then play around with further. Imagine if every good Ruby library had similar resources? (And if <a href="http://railscasts.com/">Railscasts</a> has done a video for your library or tool and you're not making it a centerpiece of your site or README, sort that out!)</p>
<p>It's easy to forget that when we write about Ruby, the jargon and "do what you like" approach we frequently celebrate can seem alien to even the most intelligent newcomers who may well be used to more structured, directed "do X, then Y, just because" environments. We should provide hard and fast answers for those people, even if we run the risk of being a little wrong from time to time, without jeopardizing the richness of the number of tools, libraries, or implementations that exist.</p>
<p><em>Update 1: And I'm acutely aware now that Ruby Inside itself is not living up to the ideals professed here. I intend to resolve that. I only came up with this right now ;-)</em></p>
<p><em>Update 2: To be fair to Kevin, it seems he shares most of these opinions and that, perhaps, this line of thinking was his ultimate intention, judging by his tweets since he wrote the article.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>FrancoB411</strong> &middot; <time datetime="2010-08-11T05:11:00+00:00">August 11, 2010 at 5:11 am</time></p>
      <p>I agree.</p><p>As a nuby trying to learn this stuff, most of the tutorials assumed so much knowledge on my part, that even things that seemed simple required this setting or that software downloaded. So I've started collecting 7 writing Nuby focused ruby tutorials. Posted the first one on setting up rvm here: <a href="http://francob411.posterous.com/how-to-install-ruby-version-manager-rvm-in-os" rel="nofollow">http://francob411.posterous.com/how-to-install-ruby-version-manager-rvm-in-os</a></p><p>Would appreciate any suggestions on how to improve it from more seasoned coders.</p><p>Best,</p><p>F</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael Hoitomt</strong> &middot; <time datetime="2010-08-11T05:44:00+00:00">August 11, 2010 at 5:44 am</time></p>
      <p>Excellent Post.  You're right on the mark. Too often the articles teaching ruby are trying to show flexibility. The highly-regarded (by most, it seems) Pickaxe book is full of this and as a result is almost unusable as a learning book for Ruby Nuby's.  Thank for enunciating that point.</p><p>Mike</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kevin W. Gisi</strong> &middot; <time datetime="2010-08-11T06:40:00+00:00">August 11, 2010 at 6:40 am</time></p>
      <p>Absolutely spot on - I'll freely admit I didn't do a great job of providing a good solution in my initial post. It's absolutely to be celebrated that we have so many choices, and for the seasoned developer, it's often necessary to fork a project to get the desired results. It's precisely why we love Ruby.</p><p>But the beautiful thing about many of experiences with Ruby and Rails was the idea of convention over configuration, and quite literally in that order. You followed the Railscast or DHH's blog screencast, or whatever tutorial to the letter. And then you had the opportunity to tweak the configuration and make it your own.</p><p>It's fantastic that we have so many options available, and it means that for us mid-level to upper-level developers, we save a LOT of time.</p><p>But we really need to make it a priority to encourage new developers, whether by providing more step-by-step tutorials (and keeping them up to date, and deleting deprecated ones), or by providing one-on-one support.</p><p>It's been great to see the positive responses, and I hope we see more developers signing up for RailsMentors.org (whether to learn or to teach), and that we see many more step-by-step examples going forward.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Chalkley</strong> &middot; <time datetime="2010-08-11T08:44:00+00:00">August 11, 2010 at 8:44 am</time></p>
      <p>I feel the fffffffuuuuuuuuuu that @gisikw is pointing at. I am dancing between rails and gems and plugins and versions and not getting much done.</p><p>It feels like we're in limbo at the moment waiting for Rails 3 to restore some order. I hope they'll wait a long time for Rails 3.1 to be released!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Arnaud Meuret</strong> &middot; <time datetime="2010-08-11T09:04:00+00:00">August 11, 2010 at 9:04 am</time></p>
      <p>We need _why.</p><p>(/me remembers the first time he launched the Shoes app)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Steve Smith</strong> &middot; <time datetime="2010-08-11T12:45:00+00:00">August 11, 2010 at 12:45 pm</time></p>
      <p>This is a really interesting piece. I recently had a conversation with someone at HackCamp that was new to Ruby but specifically wanted to use Rails. They were having real trouble understanding many of the concepts.  I think its very hard to forget how difficult things might be for new people coming to Ruby. Those of us who have followed along since the early days the options are clear but for someone on the outside knowing which options to choose to get started could be hard.</p><p>I especially agree with the comment that with Rails 3 in place at least that choice will be a little simpler and it will be safe to refer people all the Gems/Plugins knowing they all work without hassle.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Scott Thompson</strong> &middot; <time datetime="2010-08-11T16:08:00+00:00">August 11, 2010 at 4:08 pm</time></p>
      <p>I am also frequently frustrated by the focus of Ruby technologies on Rails.  For much of my career, I have been a desktop application developer and I have never worked on a web application. (well, not professionally).  From that standpoint, I don't need Rails.</p><p>I do, however, enjoy the Ruby language and I have occasionally found the need to use web technologies.  Tools like Sinatra, Rack, or Passenger are a big boon for my needs. Those usually involve small, one-off projects for which Rails would be swatting a fly with a sledge hammer.</p><p>I often find that getting information about how to use these technologies outside of a Rails-centered environment is mining for gold.  It's a lot of hard work, but when it pays off, it really pays off.</p><p>One issue I run into, personally, is the fact that most of the documentation for these technologies assumes a certain level of knowledge in the architecture of web applications that I don't have. I end up asking questions like "What is a 'Virtual Host' and do I need one to make this Sinatra app available to three people in my office?".  </p><p>That's mostly me needing the web site "Web Application Deployment For Dummies : Special Edition - for those who want it fast, not scaleable".</p><p>Another issue, however, is that much of the tutorial documentation focuses so heavily on Rails.  "Here's how you can integrate a Sinatra app into your Rails stack".  "Here's how to write Rack intermediaries that sit on top of Rails".  To use the technology effectively, I have to learn Rails, understand how the technology fits in there, then abstract out that concept to use it in the way I want to.</p><p>(And don't get me wrong.  It's not that learning Rails is a bad idea. Personally I enjoy it. Professionally, however, my focus could more effectively be directed elsewhere)</p><p>I am very much aware that I'm shouting at the storm here. Folks don't devote a lot of documentation to using their technologies outside of Rails because of the 80/20 rule (with me squarely in the 20).  </p><p>By the same token, I find that a lot of these technologies have a beauty in their own right and I'd love it if that was easier to see.  Perhaps if it was, the 80/20 split might shift.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nathan Youngman</strong> &middot; <time datetime="2010-08-11T16:22:00+00:00">August 11, 2010 at 4:22 pm</time></p>
      <p>Hey Peter,<br>
This reminded me of an old blog post by Dave Thomas called "The Hero's Journey". It talks about the "Dreyfus Model of Skills Acquisition" - the idea the new users just want the steps to do, where as experienced users want to know more of the inner workings and choices. Here's the link:<br>
<a href="http://pragdave.blogs.pragprog.com/pragdave/2007/03/sywtwab_3_the_h.html" rel="nofollow">http://pragdave.blogs.pragprog.com/pragdave/2007/03/sywtwab_3_the_h.html</a><br>
Rails does a pretty good job, the whole "Burger King" model in Rails 3 seems to fit well with the Dreyfus Model. Ruby-lang could definitely use some love.</p><p>@Scott A number of Ruby developers came to Ruby because of Rails, which would explain the Rails-centric focus in the community.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>jinushaun</strong> &middot; <time datetime="2010-08-11T17:42:00+00:00">August 11, 2010 at 5:42 pm</time></p>
      <p>I agree with Scott. Too many Ruby tutorials are tied to Rails. It's Hello World and then straight to Rails code. When I first started learning Ruby, I thought Rails (and its conventions) was Ruby. It's off-putting to newbs who just want to learn the language and use it for non-website purposes.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Grimm</strong> &middot; <time datetime="2010-08-11T23:50:00+00:00">August 11, 2010 at 11:50 pm</time></p>
      <p>Just the other day, a rubyist remarked to me that we always go after "the new shiny".</p><p>I haven't read through all the comments there yet, but ... some people are suffering from a SenseOfHumorNotFound exception!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris Kottom</strong> &middot; <time datetime="2010-08-12T05:00:00+00:00">August 12, 2010 at 5:00 am</time></p>
      <p>Rails is a framework designed for a very specific type of application, that being database-backed web applications, and Ruby is a general purpose programming language.  The Rails core team has been pretty good over the years about trying to maintain that focus in order to keep Rails as compact and coherent as it can be while still making it more useful for their target niche of applications.  Ruby on the other hand, while still not trying to be all things to all people, serves a wider set of needs and whims (sudo gem install kitty &amp;&amp; kitty) and therefore I suppose that lack of inherent context can be sort of overwhelming to the uninitiated.  Or even to the initiated.</p><p>The focus of documentation might be a symptom of this rather than the fundamental problem.  Rails provides a single-track description of how to install and get started, but it's only able to do this because of the fact that it lives in the Ruby/Rubygems environment.  If it were forced to live as a first-class resident of the general computing environment like Ruby, then I suspect that you'd have the same issues with deciding what to describe first and pissing off half your readership.  (Though I do agree with you, Peter, that the page layout could be a little better organized.)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Greg Barnett</strong> &middot; <time datetime="2010-08-21T17:42:00+00:00">August 21, 2010 at 5:42 pm</time></p>
      <p>I recently started a site (railsconsens.us) to help with a subset of this problem.  The intention of RailsConsens.us is to help sort out which component is the best default solution for particular tasks involved in building a Rails site.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
