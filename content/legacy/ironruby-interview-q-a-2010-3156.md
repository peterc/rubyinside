---
title: IronRuby Q&A – What’s Down With Microsoft’s Ruby Implementation In 2010?
date: '2010-03-23'
author: grantmichaels
author_slug: grantmichaels
post_id: 3156
slug: ironruby-interview-q-a-2010-3156
url: "/ironruby-interview-q-a-2010-3156.html"
categories:
- interviews
- microsoft-windows
---

{{< rawhtml >}}
<p><img src="/assets/2010/03/ironruby1.png" class="alignleft size-thumbnail notbordered"><a href="http://ironruby.net/">IronRuby</a> is an open source Ruby implementation being developed at Microsoft with the .<span class="caps">NET</span> <acronym title="Common Language Runtime"><span class="caps">CLR</span></acronym> in mind. It's reasonably mature and as well being a regular implementation, it provides the ability to use Ruby directly within the Web browser through <a href="http://en.wikipedia.org/wiki/Microsoft_Silverlight">Microsoft's Silverlight</a> Flash-esque framework. Windows seems to get a bad rap in the Ruby community so we thought we'd turn the spotlight on some of the cool things IronRuby's doing nowadays.</p>
<p>Being based on the .<span class="caps">NET</span> <acronym title="Common Language Runtime"><span class="caps">CLR</span></acronym> presents some unique challenges for IronRuby. So far <a href="http://ironruby.info/">IronRuby passes 86% of the RubySpec</a> (compared to a 98% pass rate for the <span class="caps">MRI</span> on Windows) but this number is creeping up every week. To learn more, I caught up with developer Jimmy Schementi of Microsoft to ask some questions about the project and its workings.</p>
<p><strong>grantmichaels:</strong> There are ~150 native extension gems for Ruby, some of which are prolific and often depended upon by other gems. Does your Ruby implementation support <span class="caps">FFI</span> (foreign function interface) at present, and/or how much of a priority is running native extension gems going forward?</p>
<blockquote>
<p><strong>Jimmy Schementi:</strong> IronRuby does not support the Ruby C <span class="caps">API</span> which extensions depend on today, and there are no plans to support it either; it’s too difficult to support 100%. However, we do have plans post 1.0 to support <span class="caps">FFI</span>, as native code interop from Ruby is very important to IronRuby; it'll make the implementation able to talk directly to native code when running on .<span class="caps">NET</span> or Mono. Keep in mind the Win32API is supported in IronRuby, so you can call Win32 functions without writing C#. Today IronRuby developers have to write some C# code which can interface with non-Win32 native code, through the <a href="http://msdn.microsoft.com/en-us/library/aa288468%28VS.71%29.aspx">platform invoke APIs</a>, which turns out to be not any more work than using <span class="caps">FFI</span> would be, but it does require breaking outside of IronRuby. From there IronRuby lets you consume the C# code without an interop layer.</p>
</blockquote>
<p>Passing <a href="http://rubyspec.org/">RubySpec</a> tests is fundamentally important for a modern, robust Ruby implementation. Has this compliance lowered the theoretical performance ceiling of your implementation considerably?</p>
<blockquote>
<p>Of course, but can you think of another way? I think every language implementation will tell you that during the very early stages of development they were blazing fast, but as they got closer to implementing compliant Ruby functionality, performance suffered, or it just got harder and harder to keep the implementation at the same level of performance. But that's understandable for a language like Ruby; it puts the burden of cleverness on the language, rather than developer writing applications in Ruby.</p>
<p>Keep in mind though, RubySpec is not for performance testing. And while the ruby-benchmark suite is a fine benchmark suite, the most beneficial performance improvements for IronRuby have come from analyzing and optimizing actual programs, like Rails, RSpec, RubyGems, Cucumber, <span class="caps">IRB</span>, etc. RubySpec did play a role here, as it helped make sure we didn't degrade in compliance while using the real applications for performance tuning. Also, we have analyzed MSpec (RubySpec's test runner) on IronRuby for startup and throughput performance.</p>
</blockquote>
<p>Closures, continuations, and tail-call optimizations are often discussed in terms of programming language VM's. Which of these attributes are implementable at present, which are expected to be implemented, and which are not possible by design?</p>
<blockquote>
<p>Closures aren't really a VM feature, as they are just a block of code executing in a context. As the Dynamic Language Runtime is a language-implementing tool, it does support closures, but IronRuby does not use them; they are forked in IronRuby, though we'd like to put our updates in the next version of the <acronym title="Dynamic Language Runtime"><span class="caps">DLR</span></acronym>. </p>
<p>However, the Common Language Infrastructure does provide a big part of what a closure is; the block of code, which is called a Delegate. Delegates are essentially function pointers, though they are first-class objects in the <span class="caps">CLR</span>, so the can be part of a method signature, stored on other objects, garbage collected, and have any other properties that objects have. Coupled with DynamicMethods, which allow for at-runtime IL (the CLR's intermediate language) generation and conversion to delegates, IronRuby is able to directly invoke <span class="caps">CLR</span> code, as well as expose Ruby methods as delegates for <span class="caps">CLR</span> code to use.</p>
<p>Although continuations are not part of the <span class="caps">ISO</span> <span class="caps">CLI</span>, though <a href="http://www.mono-project.com/Continuations">Mono now supports microthreading and coroutines on top of the <span class="caps">CLI</span>.</a> which allows them to implement continuations. Microsoft's <span class="caps">CLR</span> does not support continuations, so IronRuby does not have support for the "callcc" today. IronRuby could support true continuations only when running on Mono, but only if IronRuby users pushed for it, and even then we'd really like to avoid different behavior based on the runtime.</p>
<p>IronRuby does not have any support for tail-call optimization. Tail-call optimization is supported by the <span class="caps">CLR</span>, but it's not automatic; IronRuby must detect this and correctly emit the <a href="http://msdn.microsoft.com/en-us/library/system.reflection.emit.opcodes.tailcall(VS.95).aspx">opcode</a> for tail-call optimizations, and even then the code needs to fit a specific criteria for the just-in-time compiler to recognize the opcode. However, the CLR's way of supporting it is not why IronRuby doesn't support it; in real Ruby code you'd probably never see tail-call optimization happening, so we haven't seen a need for optimizing this. Tail-call optimization's main benefit in functional languages is to reuse the caller's frame by replacing recursion with a loop, rather than creating a new frame for each recursive call. In Ruby this optimization would be irrelevant if a block or proc was used in the caller, since a new frame would be required for each.</p>
</blockquote>
<p>How integral is dynamic feedback-based optimization to reaching a high level of performance? Do you feel it will be possible to maintain acceptable speed into the future without embracing these strategies or are there less well-known alternatives which are potentially more effective?</p>
<blockquote>
<p>If by "dynamic feedback-based optimization" you mean "inline caching", then it is very integral to performance of IronRuby. The Dynamic Language Runtime, which IronRuby uses for a target syntax tree, code generation, and interop with the <span class="caps">CLR</span>, uses "polymorphic inline caching", which means it caches all call signature a method encounters, turning subsequent calls to the same method (with the same signature) into a cache lookup for a delegate representing the method.</p>
</blockquote>
<p>What are your thoughts on the Ruby programming language in the context of distributed programming?</p>
<blockquote>
<p>As the number of processors are becoming more and more crucial to the overall speed of CPUs, Ruby needs to make distributed programming a first-class concept in the language to ensure it's continued usage in this changing computing landscape.</p>
<p>The Ruby language is very expressive, and I have no doubt the distributed programming paradigm will fit seamlessly into Ruby's syntax. Ruby's first-class closures and syntactic-sugar around them (blocks) are a natural way of expressing parallel operations. Also Ruby's enumerators and future features like a lazy-array provide the right tools to make parallel programming even easier.</p>
<p>However, Ruby does not have native thread support, so anything that will run truly in parallel will need to run cross-process. While this will work great for <span class="caps">MRI</span>, other implementations will have to find ways to make this work well on their platform. I see this as place where the various implementations of Ruby can step up and provide a native runtime-based way of running programs in parallel. For IronRuby, we could utilize the <a href="http://msdn.microsoft.com/en-us/library/dd460693(VS.100).aspx">Parallel Extensions</a> libraries to build any Ruby-based parallel support on-top of. In fact, these libraries could be used directly from IronRuby today. For more information about writing parallel software on the <span class="caps">CLR</span>, there is <a href="http://www.microsoft.com/downloads/details.aspx?FamilyID=86b3d32b-ad26-4bb8-a3ae-c1637026c3ee&amp;displaylang=en">a detailed paper</a> as well as <a href="http://blogs.msdn.com/pfxteam/archive/2009/12/09/9934811.aspx">a good amount of examples.</a></p>
</blockquote>
<p>Which of 1.8.7 and 1.9.x is your implementation compatible with?</p>
<blockquote>
<p>IronRuby 1.0 targets compatibility with the latest patch-level of 1.8.6. IronRuby does have a "-19" flag to enable any Ruby 1.9 features implemented along the way, but it will be disabled for the 1.0 release.</p>
<p>IronRuby 1.x will drop 1.8.6 support and only target the latest version of 1.9. There won't be a specific version which targets Ruby 1.8.7, but those features will probably be the first set of things implemented in the 1.x branch. IronRuby 1.0.x will be a servicing branch for IronRuby 1.0, and that branch will continue to only support 1.8.6.</p>
</blockquote>
<p>Do you think further acceptance of Ruby is driven equally by spending man-hours working on performance and by meeting an international body’s specification?</p>
<blockquote>
<p>As a Ruby implementer, I welcome a specification for Ruby that everyone agrees on as what makes Ruby the excellent language it is, as long as it doesn't hinder adding future features to the language. Having a specification will probably make it easier for implementations to achieve acceptable performance, because they can design their system with all the requirements of Ruby in sight.</p>
</blockquote>
<p>What are your team’s goals for the next quarter, the next year?</p>
<blockquote>
<p>IronRuby 1.0 will be released withing the next quarter, with the goals of improving startup significantly, getting RubySpec passing at over 95% across the board, and ensuring compatibility with popular application test suites and scenarios. We will also invest some time in taking advantage of the new features in .<span class="caps">NET</span> 4 and Silverlight 4, as well as a push to ensure compatibility with the latest version of Mono.</p>
<p>For the next year, the IronRuby team will focus on 1.9 compatibility, explore tooling options in Visual Studio 2010, and support Ruby and Windows developers to make IronRuby a premier Ruby implementation for Windows.</p>
</blockquote>
<p>Besides any obvious platform niche, why might someone benefit from electing to use your Ruby Implementation?</p>
<blockquote>
<p>When you ignore the platform niche all implementations of Ruby are pretty similar. In fact, it's the underlying platform that gives one flavor of Ruby advantages over another. For example, <span class="caps">MRI</span> has extremely fast startup compared to other flavors, but lacks the rich graphical libraries that Java and .<span class="caps">NET</span> have. In the end it’s all about what’s most important to the Ruby user, and in IronRuby’s case there are lots of platform-related benefits, some of which include .NET's integration into the native Windows <span class="caps">GUI</span> system, running Rails on Windows through <acronym title="Internet Information Services"><span class="caps">IIS</span></acronym> — along-side other <span class="caps">ASP</span>.<span class="caps">NET</span> website, running in the browser through Silverlight, and <a href="http://msdn.microsoft.com/en-us/library/dd460693(VS.100).aspx">the Parallel Extensions library</a> I mentioned earlier.</p>
</blockquote>
<p>How much of an advantage is it that you aren't also responsible for maintaining the VM?</p>
<blockquote>
<p>Well, for starters it's one less place we have to be responsible for bugs, though working-around any bugs is our responsibility. We don't have to worry about VM issues across different platforms, as the <span class="caps">CLR</span> and Mono take care of that for us. Mono is extremely fast in fixing any bugs we discover, like a matter of days, which definitely beats fixing them ourselves. From a ecosystem point-of-view, other things that built on-top of the <span class="caps">CLR</span> get interop with Ruby code for free, like running in the browser through Silverlight/Moonlight, and <span class="caps">CLR</span>-based debuggers (like MDbg, Visual Studio, and MonoDevelop).</p>
</blockquote>
<p>Windows Vista and aboves with .<span class="caps">NET</span> pre-installed, most Linux distributions pre-install Mono or it's readily available via packages, and Mono is also easily installable on Macs. Despite that, a number of Rubyists somewhat disregard IronRuby for having any relationship whatsoever to .<span class="caps">NET</span>. Are they throwing the baby out with the bathwater?</p>
<blockquote>
<p>I'd say so, but they don't necessarily need to "switch" to IronRuby; all Ruby implementations have their own uses. Ruby is unique in that it runs almost anywhere, giving Rubyists a plethora of tools to choose from to solve their problems, while still writing code in Ruby. In fact, this ubiquity makes Rubyists more valuable developers. As Ruby becomes a more accepted language for .<span class="caps">NET</span> shops to use, Ruby developers will be in high demand.</p>
</blockquote>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>commenter</strong> &middot; <time datetime="2010-03-23T18:20:00+00:00">March 23, 2010 at 6:20 pm</time></p>
      <p>I love IronRuby - I've added a scripting console to my .NET application. I'm looking forward to what you guys do with tooling (stepping through ruby in Visual Studio? I can but dream).<br>
I have a bunch of scripts that I run under MRI, but haven't tried them with IR, as I'm using version 1.9, and I suspect I've used some native gems.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aslak Hellesøy</strong> &middot; <time datetime="2010-03-23T22:05:00+00:00">March 23, 2010 at 10:05 pm</time></p>
      <p>IronRuby is getting there, but until the IronRuby team gets their act together and makes binary downloads available for rvm, it's just too hard to install on a OS X and Linux.</p><p>What's with that super annoying confirm box on CodePlex? All we want is a simple URL so it can be fetched with cURL (so that rvm can install it).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jimmy Schementi</strong> &middot; <time datetime="2010-03-23T23:30:00+00:00">March 23, 2010 at 11:30 pm</time></p>
      <p>@commenter#1 You can actually attach the VS debugger to an IronRuby process and step through top-level Ruby code.</p><p>@aslak True, that confirm box on CodePlex is annoying, but it's CodePlex's policy to prompt the license before downloading, and we can't disable it. However, we also post binaries on RubyForge, so you can download them directly from there: <a href="http://rubyforge.org/frs/?group_id=4359&amp;release_id=42994" rel="nofollow">http://rubyforge.org/frs/?group_id=4359&amp;release_id=42994</a>. And when the new IronRuby.net website is online, it'll have a nicer URL to download the latest version.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-03-23T23:38:00+00:00">March 23, 2010 at 11:38 pm</time></p>
      <p><em>it's just too hard to install on a OS X and Linux.</em></p><p>Why would we want to? Serious question. I know there's Mono but still..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aslak Hellesøy</strong> &middot; <time datetime="2010-03-25T15:31:00+00:00">March 25, 2010 at 3:31 pm</time></p>
      <p>Peter Cooper: As a tool developer (Cucumber) I want to verify that it works on as many rubies as possible. Having to boot effin Windows to make sure it does is way too much friction for me. I'm on OS X and plan to stay there.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Randall Beck</strong> &middot; <time datetime="2010-03-29T02:40:00+00:00">March 29, 2010 at 2:40 am</time></p>
      <p>Let the debate start now!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
