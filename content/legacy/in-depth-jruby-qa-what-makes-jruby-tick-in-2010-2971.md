---
title: 'In-depth JRuby Q&A: What Makes JRuby Tick in 2010?'
date: '2010-03-02'
author: grantmichaels
author_slug: grantmichaels
post_id: 2971
slug: in-depth-jruby-qa-what-makes-jruby-tick-in-2010-2971
url: "/in-depth-jruby-qa-what-makes-jruby-tick-in-2010-2971.html"
categories:
- jruby
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2010/02/jruby1-150x150.png" alt="jruby1" width="150" height="150" class="alignleft size-thumbnail wp-image-3028" style="float: left;margin-right: 12px;margin-bottom: 12px"><a href="http://jruby.org/">JRuby</a> is undoubtedly the most mature of the alternative Ruby implementations. Supporting Ruby 1.8.7 and 1.9.1 (mostly!) and JIT compilation, JRuby is already in use in mission critical Ruby apps and runs scarily fast on the JVM. In this interview with JRuby core member, Charles Nutter, we dig deep into what makes JRuby tick.</p>
<p>A great deal of conversation on IRC, as well as quite a number of lengthly emails, were eventually corralled into the following Q/A session between Charles Nutter and myself.</p>
<blockquote>
<p>JRuby and Rails are the ideal solution for building new enterprise web applications. With JRuby's ability to seamlessly integrate with anything Java, and Rails' strong REST principles, these new applications will be 100% WOA compliant themselves, and also may trivially extend WOA compliance to the underlying Java systems. Rails makes it easy and inexpensive, and JRuby leverages the capacity, manageability and security of existing Java deployment farms.</p>
<p><em>— Tom Mornini (@tmornini)</em></p>
</blockquote>
<blockquote>
<p>The JRuby guys are doing the hard, bone-crunching work of exposing a high-quality Ruby implementation to millions of new developers. It's not glamorous work, but the work they've been doing has already changed the landscape of Ruby, and there's much more work still to come.</p>
<p><em>— Yehuda Katz (@wycats)</em></p>
</blockquote>
<h3>The JRuby / Charles Nutter Q&amp;A</h3>
<p>It's frequently mentioned that the HotSpot JVM has 500+ man-years invested, and you've mentioned not only how infrequently you experience faults within the JVM, but at once how quickly they are addressed by the Hotspot team. How much of an advantage is it that you aren't also responsible for maintaining the VM?</p>
<blockquote>
<p>It is a tremendous advantage for anyone using an existing VM. Many folks don't realize how much effort is required to build a new VM from scratch. You need a reliable optimizing compiler that not only makes code run fast, but does not change the execution results of users' programs. You need memory management and garbage collection systems that limit pauses, keep memory usage within reasonable levels, and don't become performance problems for systems under load. You need safe and reliable native interfaces that protect the integrity of VM internals. If you can achieve those items, you may want real concurrent threading that doesn't cause the runtime to crash in unrecoverable ways. You may want tunable settings, like those added to REE to adjust garbage collection parameters. You will almost certainly want debugging and profiling interfaces that don't drastically impact performance. You may want management interfaces that allow you to monitor and configure the system at runtime. You may want security guarantees, so users can safely sandbox code and be certain it will remain within operating parameters. And ideally, you want experts working on all these subsystems. That's exactly what you get with the JVM.</p>
<p>And it goes even farther than that. There's not just one JVM, there's at least three in widespread use: Sun's Hotspot, the VM behind OpenJDK; Oracle's JRockit; and IBM's J9. Each one has whole *teams* of developers working on those subsystems. And each company has competed for years to make their JVM better than the others. There are JVMs for every platform in use; we've gotten bug reports from users on exotic systems like Z/OS and OpenVMS. There are VMs that run on the smallest embedded devices and on the largest many-core systems you can imagine (see Azul's JVM and hardware, running on hundreds of cores with hundreds of GB of memory). There have been JVMs on mobile phones for almost a decade. Every Blu-Ray player runs a JVM. There are JVMs literally everywhere.</p>
<p>It's impossible to measure how much effort we've saved by building atop the JVM ... but it's a tremendous amount.</p>
</blockquote>
<p>Garbage collection in MRI Ruby has been singled out as a significant performance issue. HotSpot has been said to have a sophisticated and excellent garbage collection strategy. How important is garbage collection for all Ruby implementations? How important is it for JRuby specifically?</p>
<blockquote>
<p>Ruby is an extremely GC-intensive language. Much of the performance improvement in the upcoming Rails 3 comes from reducing object churn and therefore reducing the amount of GC necessary. Another example of this is the success of REE, in large part due to performance-improving patches to the MRI garbage collector. There are many such examples, and as a result, you simply can't have a high-performance Ruby without a high-performance GC.</p>
<p>In JRuby's case, we can leverage the years of effort that have gone into the JVM GCs. On Hotspot, the JVM we generally test against, you have not one but as many as 5 different garbage collectors to choose from. There are collectors that optimize straight-line allocation and GC performance (like Hotspot's "throughput collector"). There are collectors that spread collection across cores to reduce pauses (the "parallel collector"). There are collectors that run nearly pauseless, running some collection phases concurrently with your application's code (the "concurrent collector"). There are collectors that focus on aggressively localizing objects of similar ages so they can be collected in groups (the G1 "garbage first" collector). These collectors can often be mixed and matched depending on how your application behaves (or how you need it to behave). And they all can be almost infinitely tuned and monitored.</p>
<p>JRuby's performance on numeric benchmarks serves as another example of how well JVMs manage memory... </p>
<p>One feature the JVM does not yet have is "fixnums". Fixnums, in the VM world, are the ability to treat certain numeric values as though they were objects, without them actually being objects. Usually, this is achieved by dedicating a range of memory addresses as "tagged integers", so that by masking off a few bits, you get the actual numeric value. This could, for example, reduce the cost of "boxing" integer values in java.lang.Integer objects to almost zero, allowing them to behave like objects but take up no memory on the heap and require no special attention from the garbage collector.</p>
<p>All the MRI-based implementations use "true fixnums", as do several of the alternative implementations. JRuby does not, since the JVM does not support fixnums yet. As a result, we have to actually allocate a fixnum object for almost every math operation or for each iteration of a numeric loop. Those objects take up heap memory and eventually have to be collected.</p>
<p>We've always accepted that we'd eventually be surpassed on numeric performance, since fixnums have a much higher cost for us. But even though some of the newer fixnum-supporting implementations have better numeric performance than JRuby, we're still able to come very close--even with all that fixnum object churn. Our numeric performance rarely impacts typical applications, and that's a testament to the performance of the JVM's memory subsystem.</p>
<p>(FWIW, there are several other JVM languages crying for "true fixnums", and I'd be very surprised if we didn't see an implementation within the next year.)</p>
</blockquote>
<p>It's a very different sensation to develop with JRuby <a href="http://blog.headius.com/2010/03/jruby-startup-time-tips.html">with regards to start-up time.</a> How are people minimizing this impact in production today, and what might be done to improves this micro-benchmark in the future?</p>
<blockquote>
<p>Start-up time is one of those areas JVM engineers have unfortunately neglected until recently. JVM engineering has, for most of its lifetime, focused on the performance of long-running applications. Indeed, the best performance of JRuby (and other JVM languages) comes after not just slow startup but after a substantial warm-up period. This works great for server-side applications, but client-side use--whether for test-driven development, command-line tooling, or quick scripting--can sometimes be painful to deal with.</p>
<p>There's also a culture clash here. Basically all JVM-based developers do their development inside an IDE, which often can run tests in the same JVM process from run to run. And JVM engineers have only recently started focusing efforts on startup performance (like the work Apple did with Java 1.5, which was built upon Hotspot).</p>
<p>But things are improving. JVMs that used to take ten or more seconds to start up may now take well under a second. That was unheard of 5 years ago. Additional work going into OpenJDK 7 and OpenJDK 6 updates promise to improve this further, and future research may even help reduce the warmup time required for maximum performance. Projects like JRuby have helped drive this work forward.</p>
<p>And we also understand the pain that slow startup can cause users. With each release we spend some time looking for ways to improve JRuby's startup. Indeed, we even use slower JVM settings by default because we want the user experience to be better (specifically, we try to force Hotspot-based JVMs to use the faster-starting but less-optimized "client" VM, with switches to turn on the optimizing "server" VM). With JRuby 1.3, we started shipping support for "Nailgun", a persistent background JVM you toss commands at (in order to reduce the spin-up and warm-up time for quick commands). There's more work to do, but we feel users' pain, and try to address it better with each release.</p>
</blockquote>
<p>Macs ship with a JVM, it's readily available for Linux distributions via packages, and a number of Windows machine vendors have it pre-installed nowadays. Despite that, a number of Rubyists somewhat disregard JRuby for having any relationship whatsoever to Java. Are they throwing the baby out with the bathwater?</p>
<blockquote>
<p>They certainly are, but we also accept that JRuby isn't for everyone. Maybe the startup time is a show-stopper. Maybe it's JRuby's less-than-perfect support for exact POSIX IO and subprocess behavior. Maybe it's the lack of support for C extensions. There are certainly reasons why JRuby wouldn't be the best choice for certain problem domains. But there's also tremendous potential for JRuby to bring Ruby to problem domains, organizations, and platforms that it might never have been able to reach. JRuby opens up a huge world of opportunity for Rubyists and brings Ruby to the huge world of JVM-based developers. It's such a beautiful match that I spent 20-30 hours per week on JRuby for almost a year before being hired by Sun ... all in my spare time, because I was so excited about the possibilities.</p>
<p>What really depresses me is that many of the folks dismissing JRuby are exactly the folks who could help us make Ruby a better option for developers on the JVM. We need Rubyists skilled in building DSLs, skilled in designing libraries, skilled in integrating systems. We need day-to-day Rubyists to show Java developers how much better things could be for them. We need the amazing Ruby community to help us bring Ruby to a much larger world. There's no time for platform bigotry ... we all want the same thing: Ruby everywhere!</p>
</blockquote>
<p>What can you tell the common Rubyist about application platform layers like the ones provided by Torquebox and Glassfish?</p>
<blockquote>
<p>Both Torquebox (JBoss's set of excellent Ruby wrappers around key server-side Java APIs and tools for deploying JRuby on Rails applications) and GlassFish (Sun Microsystem's modular Java-based server, with lightweight "embedded" JRuby deployment support and a few similar API wrappers) are examples of how the best parts of the Java/JVM ecosystem can be repurposed (and improved) using a little Ruby knowhow. In both cases, you get simple, one-shot deployment (of multiple applications, I might add), along with well-designed service APIs and management tooling.</p>
<p>We would love to see the "Torquebox approach" or the "GlassFish way" applied to other popular Java APIs for persistence, networking, web services, and more. We'll try to tackle some of the key libraries ourselves, but again we need help from the Ruby community. And in return we'll promise to faithfully support Rubyists and to continue improving JRuby.</p>
</blockquote>
<p>Github used JRuby to allow for code obfuscation and I'm assuming to best integrate with the kinds of customers who would pay for it. Do you see this type of decision making driving JRuby adoption as Ruby becomes more commonplace in the enterprise?</p>
<blockquote>
<p>As long as there's demand for Ruby, there will be demand for features unique to JRuby like easy deployment on Java services and compiled "obfuscation" like the Github folks needed. And these are only the beginning. JRuby can make it possible to write Ruby-based Android applications. JRuby can produce fully-compiled desktop applications in a single executable file that runs wherever there's a standard JVM. JRuby can integrate easily with other JVM languages and access the vast world of JVM libraries. And it can do all this while still being true to Ruby.</p>
<p>All we have ever wanted is for JRuby to be a powerful, useful tool for JVM users and Ruby fans alike. And anyone who has talked to us knows we put the needs of our users first. Why not become a JRuby user today?</p>
</blockquote>
<p>Gartner Inc. predicts that Android will make up 14% of the smartphone market in the year 2012, second only to the Symbian OS that powers some popular Nokia phones. What can you tell us about working with Android via JRuby?</p>
<blockquote>
<p>It's still early days for "<a href="http://blog.headius.com/2009/02/ruboto-is-your-friend.html">Ruboto</a>" (JRuby on Android), but there's a lot of potential. I've been hearing from a few people every week interested in using Ruby as their Android language of choice, so the demand is certainly there. And with the Android 1.6 and 2.0 updates, JRuby appears to work fully on Android without any modifications.</p>
<p>For an early example of what's possible, check out my ruboto-irb project on Github (link), which is basically an interactive Ruby session that runs directly on the device. You can do everything you would normally do with Ruby in IRB, plus construct and call Android core classes. It's great fun, and with a bit more work I could see JRuby being ready for production use on Android.</p>
</blockquote>
<p>Recently I've noticed some dialogue with regard to JRuby and Maven. I've seen references to Maven v3, and also to "Polyglot Maven." Can you shed some light on the implications of this new interoperability for the everyday JRubyist?</p>
<blockquote>
<p>There are two projects for JRuby and Maven integration.</p>
<p>The first is a prototype Maven server that looks and feels like a RubyGems source. By setting this server as a source (or passing it to the gem command), any Java library in the world is installable as a gem. Let me repeat that: ANY Java library in the world, installable as a gem. This means you can also use Maven artifacts as dependencies in regular Ruby gems, and it additionally means we won't have to re-release jar files into their own duplicate gems on the standard repositories. It's very exciting, and we hope to have it ready for JRuby 1.5.</p>
<p>The second project is part of the official "Polyglot Maven" work started by Jason van Zyl and the Sonatype folks. That project intends to provide standard DSLs for popular JVM languages, allowing you to use those languages in place of the XML-based POM files so many people hate. In addition, those DSLs would have access to Maven's workflow and data model classes, providing fully-scriptable Maven builds without a lot of the noise of a typical Maven project. This work is still in early days for JRuby; I've only committed a couple prototype scripts to <a href="http://github.com/sonatype/polyglot-maven">the repository.</a> We would love to have help here, since we're not really Maven experts.</p>
</blockquote>
<h3>Generic Q/A</h3>
<p>There are ~150 native extension gems for Ruby, some of which are prolific and often depended upon by other gems. Does your Ruby implementation support FFI (foreign function interface) at present, and/or how much of a priority is running native extension gems going forward?</p>
<blockquote>
<p>I believe that native extensions are the #1 thing holding the standard Ruby implementation (MRI) back. If you look at archives of the Ruby mailing lists going back for years, maintaining extension compatibility has always come at the expense of improving MRI. You want a better GC that's generational and compacting? Sorry, that wouldn't be compatible with current extensions without a big performance hit. How about real concurrent threads? Nope, without adding fine-grained locks or safepoints around all extension calls, you're sure to segfault somewhere.</p>
<p>JRuby does support FFI, and has for well over a year now. In fact, Wayne Meissner of the JRuby team is largely responsible for FFI being a viable alternative to C extensions, since he implemented the FFI gem for MRI and has been working closely with the FFI community ever since. We believe FFI, or mechanisms like it, are the best way to call C libraries from Ruby, regardless of the implementation, and we encourage people to use FFI if there's a native library they simply must use.</p>
<p>As far as real native extension support... anything's possible, but we have no plans to support MRI's C API in JRuby. The API is unfortunately very invasive, giving direct memory access to object internals in many places. In order to support this on JRuby, we would need to copy lots of data back and forth on every call, not to mention locking down extension calls per-thread completely to ensure they weren't stepping on each others' data. It might be possible to get a limited subset of the MRI extension API implemented for JRuby, but existing extensions would require some rework and performance would probably end up worse than FFI due to the amount of copying and locking required.</p>
<p>In general, the only 100% answer for JRuby is to port extensions to a JVM language or wrap existing JVM libraries (and there are literally tens of thousands of libraries available). FFI provides a good stopgap or bandaid for the problem, but it still requires us to load a native library which many deployment environments will disallow. Only pure-"Java" libraries (where by "Java" I mean "some JVM language") will have the best possible chance of running on all target systems.</p>
</blockquote>
<p>Passing <a href="http://rubyspec.org/">RubySpec</a> tests is fundamentally important. Has this compliance lowered the theoretical performance ceiling of your implementation considerably?</p>
<blockquote>
<p>Ruby is a difficult language to implement. JRuby is arguably the only production-quality alternative Ruby, and that quality has come after literally dozens of man-years of work. We've also managed to achieve production-level compatibility while turning JRuby into one of the best-performing implementations, so we have a solid understanding of the challenges involved.</p>
<p>There's no doubt about it: Ruby has lots of features that make optimization really hard. Being able to use a block as the binding to an "eval" call forces us to keep all of the block's surrounding state, even if the block itself doesn't need it. Backref and lastline references ($~ and $_ variables) require a called method to be able to modify the caller's context, even if the method itself never accesses those values. The ability to replace methods on core classes - even super-important ones like Fixnum#+ - means we have to always check for those modifications. Even simple things like "eval" and "send" force us to deoptimize more code than we'd like.</p>
<p>We have managed to work around many of these challenges, just like some of the other Ruby implementations, but many of them remain. In almost every case, we've tried first to get solid compatibility, optimizing later as much as we can. We plan to revisit those performance challenges in the future, learning from other dynamic language runtimes and other Ruby implementations about new ways to optimized. But right now we're pretty happy with JRuby's performance, which puts us at least on par with Ruby 1.9 for almost everything (and faster for many things).</p>
</blockquote>
<p>Closures, continuations, and tail-call optimizations are often discussed in terms of programming language VM's. Which of these attributes are implementable at present, which are expected to be implemented, and which are not possible by design?</p>
<blockquote>
<p>Closures are probably the easiest one. If you can save some local context and pass it around with a function reference, you've got closures. There's plenty of details, like making non-local flow control work (break or return inside a block), but in general they're not difficult to support.</p>
<p>Continuations and tail-calls unfortunately both require VM-level support to do well.</p>
<p>JRuby does not support Ruby's continuations because the JVM does not (yet) support continuations. In order for us to implement continuations atop the JVM, we would have to forgo standard Java method dispatch for <em>all</em> of JRuby, since any calls that would deepen the stack would make saving a continuation impossible. The performance impact of this would be tremendous: the JVM gets its performance because it's able to optimize normal chains of calls; by trampolining in and out of methods at the same stack depth, practically none of the standard optimizations would fire. We actually did try a "stackless" implementation in 2005, and I demoed it at RubyConf that year. It could calculate a recursive fib(1_000_000), but it ran so incredibly slow (orders of magnitude slower than what we have right now) that it simply wasn't feasible.</p>
<p>For tail calls, VM support is necessary to do a 100% job, but you *can* fake some recursive tail-call optimization by branching back to the top of a method body. We have not implemented any "tricky" tail-call optimization yet, but it's a possibility for future versions of JRuby.</p>
<p>And in both cases, there's some interesting work on the horizon. Both tail calls ("true" tail calls) and continuations are being developed against the Multi-Language VM subproject of OpenJDK, and both actually have working patches right now. There's a good chance that a future version of the JVM will have support for true tail calls, and a slim chance that delimited continuations (coroutines) might arrive as well. That's part of the beauty of JRuby: there's dozens or hundreds of JVM engineers out there working to make it faster, working to add features, and competing with each other. JRuby users directly benefit from all that work.</p>
</blockquote>
<p>How integral is dynamic feedback-based optimization to reaching a high level of performance? Do you feel it will be possible to maintain acceptable speed into the future without embracing these strategies or are there less well-known alternatives which are potentially more effective?</p>
<blockquote>
<p>Because we run on the JVM, we already benefit from a tremendous amount of runtime optimization. JRuby's core classes (Hash, Array, etc) are perhaps the fastest implementations of any Ruby, largely because they're all written in Java and benefit from the very best JVM optimizations available. At the end of the day, the vast amount of Ruby execution is in the core class implementations, so they really need to be as fast as possible, and Java is our "C" for doing that.</p>
<p>We also benefit from feedback-based optimization when running Ruby code, though we still have a lot of opportunity here. Currently, JRuby's Ruby compiler is fairly "dumb": it doesn't use runtime profiling *at all* and only does a few limited static optimizations. Now of course the JVM is able to pick up a lot of slack, using its own runtime profiling to make our "dumb" generated code run really well. But because we recognize that we need to help the JVM out a bit more, we do have plans to introduce more runtime feedback into our Just-In-Time compiler subsystem. Expect to see more work on JRuby performance in 2010.</p>
<p>There's also a Java 7 feature we've started to play with: fast dynamic invocation. JSR-292, the "invokedynamic" JSR, is adding a new bytecode called "invokedynamic" to the JVM. The invokedynamic bytecode allows us to wire up (for example) Ruby method invocation directly into the JVM's call protocols. As a result, the JVM can do all its usual inlining and optimization even across Ruby calls. Early results have been promising... even without a lot of optimization, the current invokedynamic implementation is 20-30% faster than our old call protocols. We've been working closely with Hotspot engineers throughout their development, and we're really looking forward to seeing how well JRuby runs on invokedynamic in the coming months.</p>
</blockquote>
<p>Which of 1.8.7 and 1.9.x is your implementation compatible with?</p>
<blockquote><p>JRuby 1.4 made the move to Ruby 1.8.7 compatibility, because we felt that 1.8.7 has become established enough (and because we were tired of getting bug reports about 1.8.7 features being missing). We also have done a lot of work on supporting Ruby 1.9, though that's still a bit of a moving target. We're hoping that in the first half of 2010 we'll be able to reach feature-parity with the upcoming Ruby 1.9.2. We'll definitely need help from the community.</p></blockquote>
<p>Do you think further acceptance of Ruby is driven equally by spending man-hours working on performance and by meeting an international body’s specification?</p>
<blockquote>
<p>I think performance is somewhat of a red herring, and as I mentioned before it can be a tremendous resource sink. We will, just like the other implementations, continue incrementally improving performance. But given JRuby's unique features, our current level of performance is good enough for us to focus on other areas for a while. We won't ignore performance, and we don't want to fall behind in the endless performance wars, but we have to balance features, compatibility, and stability at the same time.</p>
<p>As far as specification goes... I think it's only useful for entities that require specifications. If it's true that many organizations worldwide will refuse to adopt Ruby due to a lack of a specification, then time spent preparing such a specification is probably worthwhile. Since there's already such an effort, I sincerely hope it will help increase Ruby adoption.</p>
</blockquote>
<p>What are your team's goals for the next quarter, the next year?</p>
<blockquote>
<p>The number one goal for me is Java integration. Java integration means many things:</p>
<ul>
<li>ability to generate *real* Java classes for Ruby classes, both at runtime and ahead-of-time</li>
<li>fast-as-possible Ruby-to-Java invocation</li>
<li>ecosystem integration, like our recent work to make all Maven artifacts in the world transparently installable as gems</li>
<li>platform integration, like making Rails work naturally as a Java-land web framework, and making Java-land frameworks like Hibernate fit naturally into Rails</li>
</ul>
<p>I also want to return to performance work, most likely by continuing the work that Subbu Sastry has already begun on JRuby's new optimizing compiler. The potential here is to do a large amount of optimization before feeding bytecode to the JVM, allowing us to approach the performance of statically-typed languages over the same code. We want to make Ruby run as well as possible on the JVM, and I think the new compiler work will be a big part of that.</p>
</blockquote>
<p>Besides any obvious platform niche, why might someone benefit from electing to use your Ruby Implementation?</p>
<blockquote><p>Well, we've got several years of production users under our belt! The value of having real users for several years can't be understated, and we learned very quickly that getting a 1.0 release out is just the beginning.</p></blockquote>
<h3>JRuby Installation</h3>
<p>If you've still not given JRuby a proper try, you can learn more at <a href="http://jruby.org/">the official JRuby site</a> or if you're using the RVM (Ruby Version Manager) you can be up and running on the latest main build (1.4.0) with:</p>
<pre><code>rvm install jruby</code></pre>
<h3>Recent Confreaks Presentations</h3>
<p>You can watch the full keynote "JRuby State of the Union" by Charles Nutter and Tom Enebo <a href="http://jrubyconf2009.confreaks.com/22-nov-2009-10-00-jruby-state-of-the-union-charles-nutter-and-tom-enebo.html">here at Confreaks' site</a> or you can <a href="http://jrubyconf2009.confreaks.com/videos/22-nov-2009-10-00-jruby-state-of-the-union-charles-nutter-and-tom-enebo-small.mp4">go directly to the video (MPEG 4) file here.</a></p>
<h3>Conclusion</h3>
<p>During their respective funding periods, Sun and Engine Yard have both had a strong commitment to JRuby. For Ruby to thrive, it ultimately needs to be deployed in numbers that achieve a lasting critical mass.  There is a reportedly massive amount of existing infrastructure based on the JVM, which makes JRuby a noteworthy stepping stone to many interesting destinations, and based on what we've discussed here, why would anyone obstinately ignore JRuby any longer?</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>commenter</strong> &middot; <time datetime="2010-03-02T19:16:00+00:00">March 2, 2010 at 7:16 pm</time></p>
      <p>Hi, sorry to go off topic, but did you know that you cant use space or page down to scroll down webpages on this site? If you do, you'll miss a couple of lines that get obscured by the red RubyInside banner.<br>
I thought I'd mention it, just in case it's not a known problem. (I'm using Chrome)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Markus</strong> &middot; <time datetime="2010-03-02T21:02:00+00:00">March 2, 2010 at 9:02 pm</time></p>
      <p>Are database operations still much slower from jRuby than from MRI 1.8?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charles Oliver Nutter</strong> &middot; <time datetime="2010-03-02T23:36:00+00:00">March 2, 2010 at 11:36 pm</time></p>
      <p>Markus: The short answer is: it depends. Some users find it faster on JRuby, some find it slower.</p><p>The long answer is: Raw ActiveRecord throughput ranges from database to database, though we've put in a lot of effort over the past year to improve it. We have not done any exploration of Rails 3's ActiveRecord, which cleans up a lot of code. Most of the performance difference in the past has been due to the MRI-based adapters getting a lot more attention, usually from people expert in those databases. For JRuby, on the other hand, we've had to support all the databases mostly on our own. I think we've done a pretty good job, and we will continue to optimize where we can.</p><p>In general, I don't know of people using ActiveRecord as a high-performance database layer in the first place, but for those using JRuby, ActiveRecord doesn't seem to be where they have to spend their performance investigation.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-03-03T00:04:00+00:00">March 3, 2010 at 12:04 am</time></p>
      <p>@commenter: What browser? I just double checked in Safari, Chrome, and Firefox and it seems to be OK on those (on OS X, at least). They make up about 95% of the audience here (4% IE, 1% others) so I don't test in anything else but I can have a look into it..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Martijn van Brandevoort</strong> &middot; <time datetime="2010-03-03T08:37:00+00:00">March 3, 2010 at 8:37 am</time></p>
      <p>Thanks, great interview. I for one love JRuby and try to use it on as many production environments as possible.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Markus</strong> &middot; <time datetime="2010-03-03T09:54:00+00:00">March 3, 2010 at 9:54 am</time></p>
      <p>Thanks Charles! I think you're doing a great job with jRuby.</p><p>I couldn't find much information on the web about AR performance on jRuby. The last line in the second table on <a href="http://blog.pluron.com/2009/05/ruby-19-performance.html" rel="nofollow">http://blog.pluron.com/2009/05/ruby-19-performance.html</a> (700 vs. 1321) reflects my own experience with mysql, jRuby 1.3.0RC2 and activerecord-jdbcmysql-adapter-0.9.1 last summer.</p><p>Anyone, please add a link if you know about a page with more recent benchmarks.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Justin Forder</strong> &middot; <time datetime="2010-03-03T23:48:00+00:00">March 3, 2010 at 11:48 pm</time></p>
      <p>Nice interview!</p><p>On OS X 10.6 I see the same problem as @commenter in Safari and Firefox, but not in Chrome.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-03-03T23:55:00+00:00">March 3, 2010 at 11:55 pm</time></p>
      <p>@Justin: You press space and the page does not scroll <em>at all</em>? Just need to ask because the static header bar is deliberate, not a bug :-) I'm on 10.6 and tested with all the major browsers and it works as intended, and this is the first time I've heard this issue raised in the 6 months this design has been live..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Justin Forder</strong> &middot; <time datetime="2010-03-04T01:36:00+00:00">March 4, 2010 at 1:36 am</time></p>
      <p>@Peter, neither commenter nor I was saying space doesn't scroll!  Go half way down the page, scroll carefully to a line boundary, press space and see if the line that was previously just off the bottom of the page is now readable at (or close to) the top. For me, Chrome keeps that line well within the visible page - in fact the line that was previously visible at the bottom doesn't vanish off the top. Safari and Firefox scroll too far - something that was just out of sight below the bottom becomes out of sight above the top after the scroll.</p><p>Clicking in the scroll bar to page has the same effect, taking you too far on Safari and Firefox but not on Chrome. Same with page up and page down keys.</p><p>On Ubuntu, Firefox also scrolls too far. On Windows XP and Windows 7 Firefox and Chrome scroll too far but IE is OK. </p><p>But this is not really inconsistency between browsers to the extent of some working properly and some not. As commenter was pointing out, the browser 'thinks' that the whole page height is available, and hitting space causes it to page up by (page height - x) where x is the height of the part that was visible at the bottom before, and remains visible at the top after the page up operation - which is necessary to give the reader a sense of continuity. The value of x clearly varies between browser/platform combinations, and the problem is that in most cases x is less than the height 'stolen' by your header.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Damien Warman</strong> &middot; <time datetime="2010-03-04T03:47:00+00:00">March 4, 2010 at 3:47 am</time></p>
      <p>@Peter, I'm noticing the same thing as @commenter: using space to page down drops a couple of lines behind the banner.  I'm on Safari 4.0.4 on OS X 10.6.2.  Skitch: <a href="http://skitch.com/damienw/n28g9/in-depth-jruby-q-a-what-makes-jruby-tick-in-2010" rel="nofollow">http://skitch.com/damienw/n28g9/in-depth-jruby-q-a-what-makes-jruby-tick-in-2010</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-03-04T06:15:00+00:00">March 4, 2010 at 6:15 am</time></p>
      <p>@Damien: That's intended behavior and has been that way since the redesign sometime mid 2009. Thanks for highlighting what the perceived issue is, though. The motivation for the feature is to provide global access to general navigation and search (in the 90s frames would have been used, this is just a modern CSS approach). Some sites put global navigational or chat features along the bottom but the top is a more common position for navigational features in my experience.</p><p>That said, the original commenter said <em>"you cant use space or page down to scroll down webpages on this site."</em> I don't believe this to be true, and it's this that I'd be interested to get to the bottom of (pun not originally intended :-)). An inability to scroll the page with the space bar or Page Down would suck and certainly be a bug.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>foobar</strong> &middot; <time datetime="2010-03-04T10:27:00+00:00">March 4, 2010 at 10:27 am</time></p>
      <p>Some of the comments are getting off-topic, Who cares about a scrolling bug? :P</p><p>I would like to thank for this great batch of questions/answers.</p><p>I have always been following JRuby's development and surely it's become the most solid alternative implementation with superb capabilities. I am also trying to use it as much as I can.</p><p>It's very exciting to read that there are tons of improvements on the way, bringing JRuby to a whole new level!.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ARJ</strong> &middot; <time datetime="2010-03-04T13:09:00+00:00">March 4, 2010 at 1:09 pm</time></p>
      <p>@Peter, @Damien, et al.:<br>
The "can't scroll properly using PgDn or Space, without missing valuable content, bug/feature" is present for me on all my browsers (FF3.5, IE8, Opera 10.10, and Safari 4.0). This page design flaw/feature would mean that those keys cannot be used [alone] by readers since certain valuable content--like content in this great article--would be missed. Users can only work around the flaw/feature by resorting to other scroll methods, getting at the missed content via scrollbar, mouse wheel, etc. The feature/flaw may be intentional, but at least with our consultants we'd argue intentionality doesn't negate a design-level bug (but different contexts, different rules). Interestingly, for us, modernness doesn't imply correctness either; old, tried, and tested methods based on standards that don't have design flaws are--for us--superior to less correct implementations motivated only by modernness (i.e. modernness is not related to goodness). But if a modern approaches are easier to maintain, result in fewer other bugs, are more portable...well then, those characteristics can justify the modern approach even if it has a very minor flaw (very very very minor IMO, heh) in the balance.</p><p>Myself, I don't care, because I don't use that mode of page scrolling. I like my mouse wheel. And I like RubyInside a _lot_, and this article/interview was quite interesting and long (which is good, lots of content and not superficial). Peter does a great job having this site and collecting articles of interest--both local and external. In that sense, content-is-king for me. I did find this wholly off-topic discussion and the perceptions of correctness/OKness intriguing though. Sorry.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>commenter, for it is he</strong> &middot; <time datetime="2010-03-04T20:30:00+00:00">March 4, 2010 at 8:30 pm</time></p>
      <p>Hi Peter,<br>
When I said 'you can't etc' I meant that if you use this mechanism, you can't read the page, because it scrolls too far (the 'header' covering some of the text) with each key press.<br>
It's a method I use a lot to page down through a webpage. Other commenters got it right I think - browser thinks the entire page height is visible so scrolls the entire page, but the header is always covering a few lines.</p><p>By the way, for anyone who is interested, that Readability bookmarklet solves the problem: <a href="http://lab.arc90.com/experiments/readability/" rel="nofollow">http://lab.arc90.com/experiments/readability/</a>.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-03-04T22:50:00+00:00">March 4, 2010 at 10:50 pm</time></p>
      <p>I think I'm starting to see what the issue is here. It's not that the content "can't" be scrolled but that when you <em>do</em> scroll it, the amount of scroll applied by Page Down/Space techniques is based on the total viewport height and doesn't take the navigation bar into account resulting in a line or two being "skipped"? If so, I get the point now :-) </p><p>This seems like a reasonable complaint, so I've deactivated the fixed navigational bar for now, pending further improvements.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-03-04T22:51:00+00:00">March 4, 2010 at 10:51 pm</time></p>
      <p>Okay, should all be okay now. I tried it and it seems to work with space bar. I couldn't ever read it using that method though.. it takes a couple of seconds to re-find my place and I lose my flow :-( But still, fixed! :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Justin Forder</strong> &middot; <time datetime="2010-03-05T01:07:00+00:00">March 5, 2010 at 1:07 am</time></p>
      <p>@Peter: Well done! I think you would find a little practice with the space bar cuts out that couple of seconds. This s a great blog, and I'm sorry to have contributed to taking things off topic for a little while.</p><p>I love Ruby, and given that all my work is 'enterprisey' and in Java, having more comfortable options for the JVM is great. Good to hear about NailGun - as someone normally using Java tools I find it exhilarating to get instant response when running a script from the command line (if you want to see the other end of the spectrum, run through a Grails tutorial and experience the 10-second delay when using the command line scripts to create domain classes and controllers...).</p><p>@Charlie,  thanks for the huge effort you, Thomas and others have put into JRuby. I hope it is still fun, and stays that way for many years to come.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>EdS</strong> &middot; <time datetime="2010-03-05T20:19:00+00:00">March 5, 2010 at 8:19 pm</time></p>
      <p>I found jruby and jsr223 work very well in java 6. We were able to build a simple but capable extensibility feature with jruby for our core spring based j2ee application.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Grimm</strong> &middot; <time datetime="2010-03-07T22:58:00+00:00">March 7, 2010 at 10:58 pm</time></p>
      <p>It doesn't seem to be "fixed" for firefox. Is anyone able to reproduce?</p><p>A related problem is that if you search for text in reverse (eg search for Nutter in reverse from the bottom of the page), the "hit" gets hidden by the navigation bar.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2010-03-24T20:42:00+00:00">March 24, 2010 at 8:42 pm</time></p>
      <p>I get the odd scrolling, too.  Thought it was just me... (FF)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
