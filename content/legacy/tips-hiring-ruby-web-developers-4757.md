---
title: Practical Tips for Hiring Ruby Web Developers
date: '2011-05-29'
author: Tim Goh
author_slug: timgoh
post_id: 4757
slug: tips-hiring-ruby-web-developers-4757
url: "/tips-hiring-ruby-web-developers-4757.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2011/05/stapler.gif" alt="" title="stapler" width="150" height="187" class="alignnone size-full wp-image-4891" style="float: right; margin-left: 18px; margin-bottom: 10px">The topic of 'hiring' always generates a lot of discussion. And why not? Talking about hiring is a convenient way to pass judgment on large groups of people while keeping a professional, detached demeanor.. Ouch! But the topic has enough technical basis to warrant the interest of experienced developers, so here we are.</p>
<p>This post is for those who handle the technical evaluation necessary to hire candidates, especially in the Ruby and Rails scenes, although the overall strategies are language-agnostic (though I'd hope if you're hiring folks to work on missiles and nuclear power plants, all bets are off).</p>
<p style="padding: 8px; background-color: #f6f6f6"><em>This is a guest post by <a href="http://twitter.com/keyist">Tim Goh</a> of <a href="http://trikeapps.com/">Trikeapps</a>, an Australian software development company. More info at the bottom of this post.</em></p>
<h3>Some Structure</h3>
<p>While hiring processes differ, I'm organizing my advice by the following components that, assumedly, most processes include:</p>
<ul>
<li>the job posting itself</li>
<li>the coding test</li>
<li>the phone screen</li>
</ul>
<h3 id='\"the_job_posting\"'>The Job Posting</h3>
<h4 id='\"have_a_permanent_careers_page\"'>You need a permanent "Careers" page</h4>
<p>You should have a permanent careers page on your company site and constantly correspond with candidates, even if you're not hiring at the time.  The goal is to populate a <em>queue</em> of developers you can subsequently start to contact the moment you have an opening.  This way you hire only <em>after</em> the need, while identifying talent <em>before</em> the need.</p>
<p>You can also continuously refine and test your hiring process against more candidates in this way as well as get a more accurate picture of who's looking and who's available, instead of peeking out your window to see who's there <em>only</em> when you're hiring.</p>
<h4 id='\"include_a_filter_question\"'>Include a filter question</h4>
<p>You want to easily distinguish the genuinely interested from those who are simply applying everywhere (blasting resumes out semi-automatically has become <em>very</em> common in these shaky times).  With the right question you can design a mail filter around the answer and automate away those who aren't paying attention.</p>
<p>Such a question might be as simple as:</p>
<blockquote>
<p>What is the MD5 hash of the string 'I am not a resume spammer'?</p>
</blockquote>
<p>Make the question more difficult if you're getting too many resumes that qualify at this stage.  The <a href="http://www.dropbox.com/jobs/challenges">Dropbox Challenges</a> and <a href="http://www.facebook.com/careers/puzzles.php">Facebook Puzzles</a> pages have good examples of non-trivial coding questions.</p>
<p>Providing a larger set of questions and making some optional allows candidates to signal their desire, and gives you an easy sorting function to use on your incoming applications. If you want to hire someone who's particularly creative, their response to the question may also be an indicator of this.</p>
<h4 id='\"include_more_information_about_your_company\"'>Include more information about your company</h4>
<p>Qualified applicants will be more choosy and select a small group of job ads to send their resumes to.  Help them make that decision by providing as much information about your company and the role you're hiring for as possible. Just as you would balk at a resume that solely said 'I've been coding in Ruby since 2008', a job description of 'develop web applications using Rails' would deny valuable data to the talent you're looking for.</p>
<p>In days of yore it was popular to include the <a href="http://www.joelonsoftware.com/articles/fog0000000043.html">Joel Test</a> in job postings.  This is a high signal way to communicate about your company's processes, and you could follow a similar template.</p>
<p>Job boards may not allow for the best presentation of your company <em>(Ed: Tim is lying, the <a href="http://jobs.rubyinside.com/">Ruby Inside Jobs Board</a> is undoubtedly awesome! ;-))</em>.  Keep the big information dumps on specific landing pages on your site that you link to — this way you can use analytics to determine how often your ad is read by candidates who are really interested, not to mention which job site sends over more of those candidates.</p>
<p>The <a href="http://www.matasano.com/careers/">Matasano careers page</a> is an excellent template to follow.  It goes into exquisite detail and serves as a permanent ad for working at the company. Bonus points for describing their hiring process and even including an FAQ.</p>
<p>It is particularly important to describe what your existing developers are opinionated and passionate about.  While you don't want to turn away qualified candidates, being upfront about potential deal-breakers avoids wasting their time and yours.</p>
<p>Take a look at <a href="http://news.ycombinator.com/item?id=2416907">this YC W11 startup job ad</a>.  Although the name of the company and what it does is not revealed, you get a very good idea of what they're like and who they're looking for.</p>
<h3 id='\"a_philosophical_interlude\"'>A Philosophical Interlude</h3>
<p>The tips for the coding test and phone screen assume a set of principles.  It is important to have some guiding philosophy when it comes to personnel at your company, lest your culture becomes scattershot and non-discerning.</p>
<p>Most of the time your principles can be boiled down to a single catchphrase, a motto if you will.  Perhaps the most famous for developers is Spolsky's <a href="http://www.joelonsoftware.com/articles/GuerrillaInterviewing3.html">'smart and gets things done'</a>. Google has the <a href="http://googleresearch.blogspot.com/2006/03/hiring-lake-wobegon-strategy.html">Lake Wobegon strategy</a> Investment banks and law firms often follow some variant of 'hire alpha male assholes'.</p>
<p>The philosophy I go by when hiring is: <em>test for the first derivative.</em></p>
<p>Eric Sink's post on <a href="http://www.ericsink.com/Career_Calculus.html">Career Calculus</a> describes a formula C = G + LT as follows:</p>
<blockquote>
<p>C is Cluefulness. It is the measure of how valuable you are to an employer.</p>
<p>G is Gifting.  It is defined as the amount of natural cluefulness you were given 'at the factory'.</p>
<p>L is Learning.  It is defined as the rate at which you gain (or lose) cluefulness over time.</p>
<p>T is Time.  It is on the horizontal axis of your career graph.</p>
</blockquote>
<p>My adaptation: C is redefined 'cluefulness about your company's technology stack'. G then naturally becomes 'existing knowledge of your stack'.</p>
<p><strong>A High-L candidate is a better investment than a High-G</strong></p>
<p>Unless you have a short-term need you have to absolutely fill ASAP, you should always prioritize L.  So you should open your positions to Ruby experts who don't know web development too well, or a highly experienced web developer who does not know Ruby.  The latter is particularly valuable because they'll bring a wealth of experience of alternate solutions for common web development problems.</p>
<p>Testing for G is easy — it's a pre-defined set of knowledge determined by what you use.  The coding test tips and phone screen tips that follow are geared more towards finding L, which dominates the final productivity of the candidate (ie the area under the graph) over time.</p>
<p>Another way of stating this principle is that you're testing for second-order effects.  What a candidate knows may be useful information; but we're interested in <em>actionable</em> information: what a candidate can do with what they know.</p>
<h3 id='\"the_coding_tests\"'>The Coding Test(s)</h3>
<p>Do not hire without seeing code written under time constraints.  Code samples and open source contributions are great, but not entirely reliable: they often do not give an adequate idea of timeframe involved, plus most developers will naturally choose to code what they like/know.</p>
<p>In the same way you extract frameworks from an app, interview questions should be extracted from actual problems you encountered at work.  Chances are you haven't ever had to write <tt>atoi</tt> or <a href="http://en.wikipedia.org/wiki/Quicksort">quicksort</a> recently.  And I've certainly never output '<a href="http://en.wikipedia.org/wiki/Bizz_buzz">Fizz</a>' in any production code.  By basing interview questions on a recently-solved problem, you already have a in-house solution to test against, and it is as accurate a simulation of real work you can get.</p>
<p>Note that when picking a recently-solved problem to include in an interview you have the benefit of context and hindsight, both of which the candidate will lack.  Test your question on someone unfamiliar with it to gauge its difficulty.</p>
<p>The goal is to test for as many of the following as you can include in a short question: </p>
<ul>
<li>data munging</li>
<li>corner case identification</li>
<li>working with existing code</li>
<li>understanding of complexity</li>
</ul>
<h4 id='\"data_munging\"'>Data Munging</h4>
<p>One of the most common programming tasks is to take data in one structure/format and convert it into another.  Some developers will do this elegantly in one line, chaining appropriate Enumerable/etc methods.  Others will introduce intermediate variables, open up a core class or two ('because <code>my_array.extract_hash_elements</code> just reads better!'), use a Tempfile, and hit S3 before their curtain call to the xmltojsonfordummies.com API.</p>
<p>A simple way to test this is to have a candidate access a web API that returns xml/json and have them munge the result into a particular format.  Code smells to look out for: populating a Hash by hand instead of with <code>inject</code>, unnecessary use of nested arrays, clumsiness with string manipulation.</p>
<p>Here's a template you can use to base such questions around:</p>
<p>Take the result from <code>http://api.twitter.com/version/statuses/public_timeline.json</code> and output an array that meets the following criteria:</p>
<ul>
<li>has usernames as elements</li>
<li>that has the text 'Ruby' somewhere in the tweet</li>
<li>ordered by follower count of user who posted</li>
</ul>
<p>If a candidate bloats a simple data munge in an interview, imagine the obesity they can inflict on a code base they work on daily.  No hire.</p>
<h4 id='\"corner_case_identification\"'>Corner case identification</h4>
<p>Even more destructive than a bloaty munger is the eternal optimist coder, who lives in a fantasy land where every input is sanitized, HTTP calls never time out, and exceptions are never raised.</p>
<p>Not being able to identify and deal with edge cases is a straight No Hire. Such developers are a tax on the rest of the team's focus.</p>
<p>You shouldn't have to gear a question specifically towards seeing how well candidates do in this regard — most questions have them for free.  Just be sure to check for error handling when you review their answers.</p>
<h4 id='\"working_with_existing_code\"'>Working with existing code</h4>
<p>It is much easier to write new code than to grok and work with code you didn't write.  We need to test if a candidate can figure out <em>where</em> to add/remove code, given someone else's coding style and assumptions.</p>
<p>This is one area that open source contributions predict very well, but should the candidate not have those available, there are many ways to test this:</p>
<ul>
<li>debugging</li>
<li>refactoring</li>
<li>extending code to add a new feature</li>
</ul>
<p>The code snippet used here should be similar to the code they'll encounter on a regular basis.  A simple source for such questions is from your company's internal repository of custom patches for dependencies that never made it upstream.</p>
<p>Sample Questions:</p>
<ul>
<li>Modify Sinatra's <a href="http://rubydoc.info/github/sinatra/sinatra/master/Sinatra/Helpers:send_file"><code>send_file</code></a> method to optionally support Nginx's <a href="http://wiki.nginx.org/XSendfile">X-Accel-Redirect</a> feature</li>
<li>You are trying to profile the load times of gems to figure out why your app takes so long to load.  Show a diff of how you would modify Bundler and/or Rubygems to report the metrics you would need.</li>
</ul>
<h4 id='\"understanding_of_complexity\"'>Understanding of complexity</h4>
<p>The ideal half-hour code test question has an obvious n^2 or greater solution, and a not so obvious linear solution.  This may be difficult to fit in with the other goals (especially if you're trying not to reuse well-known questions), so it's something you may have to test elsewhere.</p>
<p>I generally use algorithmic complexity as a proxy for theoretical knowledge in general.  The industry is full of autodidacts, which is perfectly fine, but they need to have had the discipline to spend time grokking the fundamentals that would have been taught it a quality computer science curriculum instead of flitting between surface learning of the newest technologies.</p>
<h3 id='\"the_phone_screen\"'>The Phone Screen</h3>
<p>Eventually you'll want to get the candidate on the phone to get a more direct, "in-person" feel for what they're like and how they express themselves. Welcome to the good old 'phone screen.'</p>
<h4 id='\"structure_the_interview\"'>Structure the interview</h4>
<p><a href="http://www.krannert.purdue.edu/faculty/campionm/Structured_Interviewing.pdf">Research</a> (PDF) has shown that structured interviews provide a better indication of future job performance.  For each question you have, have an established scale that the person conducting the phone screen scores candidates against immediately after each answer.</p>
<p>Phone screens are typically conducted by one person, so structuring the interview reduces bias and gives a better basis for comparing candidates screened by different developers.</p>
<h4 id='\"ask_open_ended_questions\"'>Ask open-ended questions</h4>
<p>While its meta-commentary on Ruby's popularity is dated, Steve Yegge's 2006 post <a href="http://www.oreillynet.com/ruby/blog/2006/03/interviewing_ruby_programmers.html">Interviewing Ruby Programmers</a> is still a good source for questions.  You'll notice that most of his questions are very open-ended.  This is no coincidence.  This is what Stevey has to say on syntax questions:</p>
<blockquote><p>Language syntax trivia doth NOT a goode programmer maketh. Hiring based on syntax trivia is the last, desperate resort of a weak interviewer. Just say No.</p></blockquote>
<p>When you ask a specific question for which you have already determined the answer, you are limiting the amount of information you get from their answer and worse still, capping the candidate's ability to your own.</p>
<p>The basic rule of thumb:</p>
<blockquote><p>Never test something that takes less than a minute of experimentation to find out in a REPL.</p></blockquote>
<p>Sample questions:</p>
<ul>
<li>if you were writing a gem to do mocking and stubbing in Ruby, what methods do you think you would use most in your implementation?</li>
<li>how would you implement session handling for a feature where site admins can log in as a specific user to test their actions on the site?</li>
<li>Jesse Robbins's <a href="http://radar.oreilly.com/2009/05/velocity-conference-big-ideas.html">favorite interview question</a>
</li>
</ul>
<h4 id='\"have_conversations_about_trade_offs\"'>Have conversations about trade-offs</h4>
<p>This is something that happens in regular work all the time, and few interviews cater for it.  Pick a problem, describe some solutions, and have candidates enumerate trade-offs, and situations in which they would pick one solution over another.</p>
<p>Many website features can be implemented at different layers, and this makes for a rich source of such questions.</p>
<p>Sample questions (note that these aren't all mutually exclusive):</p>
<ul>
<li>Rails's use of <code>before_save</code> and <code>after_save</code> advice versus having developers override <code>save</code>.</li>
<li>config file in YAML versus configuration in Ruby</li>
<li>mocking and stubbing in tests versus hitting the database</li>
<li>ESI/SSI versus fragmented caching in templates</li>
<li>pre-rendering HTML in a template and toggling display versus adding/removing via Javascript</li>
<li>using the Accept-Language header versus IP address geolocation for i18n</li>
</ul>
<h4 id='\"prefer_why_to_how\"'>Prefer why to how</h4>
<p>This is actually a generalization of the trade-off conversation, but more geared towards specific code idioms in your language/framework.</p>
<p>Knowing why they do something is what differentiates quality developers from those who cargo cult.  It shows that they deliberate on the code they're writing and spend time understanding the internals.</p>
<p>Here's an example of a 'why' question on <a href="http://www.teamten.com/lawrence/writings/asking_why_in_interviews.html">database guidelines design</a>. In the same vein you can ask what they think of an ORM's naming conventions and the failure modes that it is designed to avoid.</p>
<h4 id='\"test_protocol_knowledge\"'>Test protocol knowledge</h4>
<p>HTTP is the most important protocol to test for, though you should also touch lightly on a candidate's knowledge of DNS and SMTP.  Candidates should know what request and response headers look like, and what the more common headers are.</p>
<p>Some quick and easy questions that serve as a minimum bar:</p>
<blockquote>
<p>On one of your sites, clicking a link to an image results in a downloading the file instead of displaying an image.  How would you fix this?</p>
<p>What is your favorite tool for inspecting HTTP traffic? Describe a situation you encountered where you needed to look at the HTTP headers to debug.</p>
</blockquote>
<h4 id='\"test_candidates_outside_of_the_framework_you_use\"'>Test candidates outside of the framework you use</h4>
<p>For many Ruby companies, this means Rails.  I've encountered a lot of candidates who can do absolutely nothing without their security blanket of ActiveSupport.  They can't perform calculations on datetimes, can't do metaprogramming without <code>constantize</code>, and generally flounder the instant they have to do something outside of a web request.</p>
<h3 id='\"conclusion\"'>Conclusion</h3>
<p>Hiring isn't that painful as people make it out to be.  By interviewing all the time and opening up positions to experienced developers unfamiliar with your stack, you should have a much larger pool of people to cull from.</p>
<p>Just make sure you evaluate candidates with the <code>-Wall</code> option enabled.  Err towards 'No hire' the moment any warning flags are raised.</p>
<h3>And while I have you..</h3>
<p>Have excellent answers to the questions in this post? My company, TrikeApps, is always looking for <a href="http://trikeapps.com/jobs/developer">Ruby developers</a> in Melbourne, Australia :-)</p>
<p style="padding: 12px; background-color: #eee;">This post was contributed to Ruby Inside by Tim Goh — Tim Goh has been the tech lead on web-based Python and Ruby projects since 2006.  He goes by 'keyist' on <a href="http://news.ycombinator.com/user?id=keyist">Hacker News</a> and <a href="http://twitter.com/keyist">Twitter</a>.</p>
<p><em>Picture credit: <a href="http://www.flickr.com/photos/mikekline/1363617274/">Milton's Red Stapler and Driving!</a> by Mike "Dakinewavamon" Kline - CC Attribution 2.0 Generic (CC BY 2.0) license.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Mark Wotton</strong> &middot; <time datetime="2011-05-29T03:01:00+00:00">May 29, 2011 at 3:01 am</time></p>
      <p>Excellent article. One thing you might have spent a little time on: a good dev is actually encouraged by a rigorous application process, because it indicates that they'll be working with people at a similar or better level. The jazz injunction to always be the worst musician in the band comes to mind...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark Wotton</strong> &middot; <time datetime="2011-05-29T03:30:00+00:00">May 29, 2011 at 3:30 am</time></p>
      <p>(full disclosure: I've gone through Tim's application process and enjoyed it immensely.)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>iri</strong> &middot; <time datetime="2011-05-29T08:29:00+00:00">May 29, 2011 at 8:29 am</time></p>
      <p>Is it only me or his coding questions are crazy hard to  do under time constraints and without google?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ian Tindale</strong> &middot; <time datetime="2011-05-29T10:25:00+00:00">May 29, 2011 at 10:25 am</time></p>
      <p>What are “missles” and what are “nuclear power planets”? Or are you merely illiterate?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Hollows</strong> &middot; <time datetime="2011-05-29T22:29:00+00:00">May 29, 2011 at 10:29 pm</time></p>
      <p>Nice post. Love the examples.</p><p>Ian Tindale's remark on this post reminded me of an important hiring consideration: Test social habits surrounding creativity.</p><p>People who habitually offer constructive feedback and encourage creativity are good for a team. If their first reaction is the intellectual status power-play, they're a straight no hire.</p><p>Missles away :D</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-05-30T13:36:00+00:00">May 30, 2011 at 1:36 pm</time></p>
      <p>I quite like the sound of nuclear power planets! It'd certainly stop some of the problems we've been having in Japan. Haha. Anyway, those errors are entirely mine and not Tim's. In my sleep deprived state I thought I'd throw in a couple of minor additions to liven up the opening and made a big booboo. Thanks for being a cranky git about it though, as it encouraged me to fix it quicker!</p><p>Peter Hollows: Quite! There was a good bit going around HN yesterday about how observing how people treat others is a crucial part of working out their personality. The guy who's a jerk to the waiter but charming to his superiors is not someone you ideally want to associate with. That's why I tend to joke with everyone - equal treatment ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rod Knowlton</strong> &middot; <time datetime="2011-06-08T15:02:00+00:00">June 8, 2011 at 3:02 pm</time></p>
      <p>Being for the most part an autodidact, Tim's comment on understanding complexity and fundamentals hit home (especially the part about flitting between new technologies).</p><p>Anyone care to recommend resources that I could use to identify the gaps in my self-education and then remedy them?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sean</strong> &middot; <time datetime="2011-06-11T21:46:00+00:00">June 11, 2011 at 9:46 pm</time></p>
      <p>I love the article, lots of great tips and advice. I really enjoyed working through the questions and the theory. I would also add, tangentially, that local Ruby user groups are excellent way to find and filter candidates.</p><p>The only issue I took with the article is the idea of posting positions when the employer has no short term intentions of filling those positions. While I understand wanting to access to a pool of candidates and choosing the best of those, it seems somewhat disingenuous.</p><p>Aside from that, great article!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
