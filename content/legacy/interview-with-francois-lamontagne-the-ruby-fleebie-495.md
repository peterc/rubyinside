---
title: Interview with Francois Lamontagne, the “Ruby Fleebie”
date: '2007-05-16'
author: Peter Cooper
author_slug: admin
post_id: 495
slug: interview-with-francois-lamontagne-the-ruby-fleebie-495
url: "/interview-with-francois-lamontagne-the-ruby-fleebie-495.html"
categories:
- elsewhere
- miscellaneous
- nonsense
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2007/05/Frank.png" height="80" width="50" border="1" hspace="4" vspace="4" alt="Frank"></p>
<p>Francois Lamontagne is a Québecois Ruby and Rails developer whose blog, <a href="http://www.rubyfleebie.com/">Ruby Fleebie</a>, has recently become quite popular due to both having some great tutorial / reference-type posts, and Francois' rather proactive methods of promoting it on <a href="http://www.dzone.com/">DZone</a>.<br>
<img src="/assets/2007/05/ecstatik.jpg" height="225" width="312" border="1" hspace="4" vspace="4" alt="Ecstatik"></p>
<p>Francois has also released <a href="http://www.ecstatik.com/">Ecstatik</a>, a Rails-powered Digg-like site that presents humorous links (to photos and videos, etc). In many regards it feels like a user-driven equivalent of <a href="http://www.fark.com/">Fark</a>, although the focus is on funny links over community (for now). </p>
<p>I decided to ask Francois some questions about the Ruby Fleebie blog and how Ecstatik was developed and deployed. Read on after the break..<br>
<span id="more-495"></span><br>
<strong><em>Ruby Inside</em></strong><strong>: I first heard of you from your Ruby Fleebie blog which only started in March 2007 but already has a lot of useful, tutorial / reference style posts on it. What's your history with Ruby (and Rails?), and why did you decide to start the blog?</strong></p>
<blockquote>
<p><em>Francois Lamontagne</em>: I discovered Ruby in a moment of my life where I was starting to get bored with programming. I felt like I had stagnated and that I needed to push more if I wanted to become a better developer overall. That's how I luckily stumbled upon Ruby. I played a lot with that great online tutorial you can find on the official website. I loved the syntax, the dynamic stuff, the code blocks, the symbols... I was amazed by anything ruby was throwing at me. I was like a kid in the 80ies who unpacked the G.I. Joe base for Christmas. I wanted to know more and more about the language. I knew that my career as a web developer had just taken a new direction.</p>
<p>Then I discovered Rails... and I went completely nuts. I bought the famous "Agile Web Development With Rails" book and read it almost entirely in 2 or 3 days in my holiday. Everyone around me thought I was crazy to waste my spare time like that, but I told them that it wasn't "work" to me and that I was enjoying every single pages of this book... so I looked even more crazy. Hey, I'm not as freak as you can think, it was raining outside... so reading a programming book was completely acceptable, isn't it?</p>
<p>A friend of mine told me he wanted to start a blog about JavaScript, a language that he thinks is underrated. One day he told me, "Hey, you should start a blog on ruby, I'm sure it would work". I immediately liked the idea. I had another blog project going on at this time and I decided to push it aside to start working on my ruby blog right away. A few days later, pratically at the same time, <a href="http://www.javascriptkata.com/">javascriptkata.com</a> and <a href="http://www.rubyfleebie.com/">rubyfleebie.com</a> were born!</p>
</blockquote>
<p><strong>Ruby Fleebie seems to have become quite popular very quickly. How did you promote the blog and what's been your strategy in developing it?</strong></p>
<blockquote>
<p>I like to say that my goal with Rubyfleebie is to "learn and share". First I start at the "learning phase": I learn a concept the best as I can, I test my stuff with IRB, I make some rough drawings of my progress on paper, I go take a walk thinking about that concept I'm trying to grasp, I test with IRB again, etc. Once I think I know enough, I switch to the "sharing phase". In this phase I have a single goal: I want people to understand my explanations and leave my website with the feeling that they have learnt something. I try to think of all the things that confused me when I was in the learning phase and I put more emphasis on them. I tweak my post as much as I can, adding bold to key concepts, removing confusing sentences, adding relevant information, etc. If someone proves me wrong about something I wrote, I update the original post to correct the mistake and I link to the person who made the comment.</p>
<p>The main promotion tool I use with Ruby Fleebie is DZone. It's an amazing service that gives extremely good results. The second most effective promotion tool I am using is StumbleUpon. It's a fact : StumbleUpon users are curious. Most of them don't leave my blog after the first page, that's what the Google Analytics stats are saying. Ruby inside and Javascript Kata bring me some great traffic too. The rest is almost all Google. After this interview however, I expect Ruby inside to crush the competion for a while!</p>
</blockquote>
<p><strong>What advice would you give other developers who want to start a Ruby or Rails related blog who haven't done so already?</strong></p>
<blockquote>
<p>I'd just tell them to put a lot of effort into it. I think that publishing a blog post should never be an afterthought. Before hitting the publish button, we must realize that we are about to share something with the rest of the world. I don't know for you, but I don't want to share "drafts", I prefer to share something that, without being perfect, feels more polished.</p>
<p>Using promotion tools is also very important. Take time to find as many as possible. DZone, StumbleUpon, Digg, Reddit, 101out, del.icio.us, furl, netvouz, Simpy, blinklist, etc. Some doesn't work too well, but you should try them all at least once to see for yourself. Also, submit your RSS feed everywhere. A good starting place for this is <a href="http://www.rss-specifications.com/rss-submission.htm">here</a>.</p>
<p>The design is important, too. Use a big font that is easy to read, use bold to draw the attention of your readers, use short paragraphs, use a light background-color. To be effective, a blog must breath and be pleasing to the eyes. A long paragraph written with a tiny font is a turn off for a majority of web users.</p>
<p>The last and most important advice I would give? Bring something of your own. May it be your writing style or your sense of humor, make it so that your blog becomes a unique experience for your readers.</p>
</blockquote>
<p><strong>What was involved in the Ecstatik development process?</strong></p>
<blockquote>
<p>Developing Ecstatik took way less time than what we expected. I think there are 3 reasons for that. #1 The project in itself was simple, #2 We had some meaningful experience with web development, #3 We used Rails. The other person behind Ecstatik! is Dan Simard, the maintainer of Javascript Kata. Other collaborators are expected to join the project in the near future and we're really excited about that.</p>
<p>We didn't encounter a lot of problems because our objective was to keep the first version as simple as possible. No fancy features, No "perhaps we could add this..." features. Just the basic stuff you expect with these kind of services : Registering, Voting, Submitting, Watching the hottest stuff. We wanted to release fast. Too often we have great ideas that remain great ideas. We didn't want Ecstatik! to be just an idea. We wanted it to live! Now it's online and we can enjoy that great feeling of achievement. We're now ready to adapt. We'll add features over time, we'll tweak the code, we'll change our hosting plan if scaling becomes an issue. We are humans, we cannot know what will happen in advance. We believe that releasing early was the best thing we did with Ecstatik! Future will tell us if we were right or wrong.</p>
</blockquote>
<p><strong>How is Ecstatik deployed?</strong></p>
<blockquote><p>I hate to say this, but at the moment our setup is (the least we could say) subpar. I would lie if I told you that we're not a little bit worried about scaling issues. Nonetheless we're ready to implement "Plan B." We're currently hosted on <a href="http://www.hostmonster.com/">HostMonster</a>, which isn't bad, but the fact that we ran into stability issues at a couple of occasions is worrying to say the least. For now, we have deployed "by hand" (the dirty way). We're not hiding the fact that our initial setup is a little bit chaotic. Our "real" setup will consist of a stable and fast hosting plan, a Mongrel server and we'll make use of Capistrano as well as migrations. We're already working on this. Like I've said earlier, the objective with the first version was to release early. The current objective is now to get serious and efficient in our deployments.</p></blockquote>
{{< /rawhtml >}}
